package com.verizon.ads.vastcontroller;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.View;
import android.view.ViewGroup;
import com.verizon.ads.AdSession;
import com.verizon.ads.EnvironmentInfo;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.support.utils.ViewUtils;
import com.verizon.ads.utils.HttpUtils;
import com.verizon.ads.utils.TextUtils;
import com.verizon.ads.utils.ThreadUtils;
import com.verizon.ads.vastcontroller.VASTParser;
import com.verizon.ads.vastcontroller.VASTVideoView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTController.class */
public class VASTController {

    /* renamed from: c */
    private static final Logger f61799c = Logger.getInstance(VASTController.class);

    /* renamed from: d */
    private static final String f61800d = VASTController.class.getSimpleName();

    /* renamed from: e */
    private static final HandlerThread f61801e;

    /* renamed from: f */
    private static final Handler f61802f;

    /* renamed from: a */
    VASTParser.InLineAd f61803a;

    /* renamed from: b */
    List<VASTParser.WrapperAd> f61804b;

    /* renamed from: g */
    private boolean f61805g;

    /* renamed from: h */
    private volatile Runnable f61806h;

    /* renamed from: i */
    private VASTControllerListener f61807i;

    /* renamed from: j */
    private ViewGroup f61808j;

    /* renamed from: k */
    private List<String> f61809k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.verizon.ads.vastcontroller.VASTController$1 */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTController$1.class */
    public class RunnableC174651 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ Context f61810a;

        /* renamed from: b */
        final /* synthetic */ LoadListener f61811b;

        /* renamed from: c */
        final /* synthetic */ int f61812c;

        RunnableC174651(Context context, LoadListener loadListener, int i) {
            VASTController.this = r4;
            this.f61810a = context;
            this.f61811b = loadListener;
            this.f61812c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            VASTController vASTController = VASTController.this;
            VASTVideoView vASTVideoView = new VASTVideoView(new MutableContextWrapper(this.f61810a), vASTController.f61803a, vASTController.f61804b);
            VASTController.this.f61808j = vASTVideoView;
            vASTVideoView.setInteractionListener(new VASTVideoView.InteractionListener() { // from class: com.verizon.ads.vastcontroller.VASTController.1.1
                @Override // com.verizon.ads.vastcontroller.VASTVideoView.InteractionListener
                public void close() {
                    VASTController.this.close();
                }

                @Override // com.verizon.ads.vastcontroller.VASTVideoView.InteractionListener
                public void onAdLeftApplication() {
                    VASTController.this.f61807i.onAdLeftApplication();
                }

                @Override // com.verizon.ads.vastcontroller.VASTVideoView.InteractionListener
                public void onClicked() {
                    VASTController.this.f61807i.onClicked();
                }
            });
            vASTVideoView.setPlaybackListener(new VASTVideoView.PlaybackListener() { // from class: com.verizon.ads.vastcontroller.VASTController.1.2
                @Override // com.verizon.ads.vastcontroller.VASTVideoView.PlaybackListener
                public void onComplete() {
                    VASTController.this.f61807i.onVideoComplete();
                }
            });
            vASTVideoView.load(new VASTVideoView.LoadListener() { // from class: com.verizon.ads.vastcontroller.VASTController.1.3
                @Override // com.verizon.ads.vastcontroller.VASTVideoView.LoadListener
                public void onComplete(final ErrorInfo errorInfo) {
                    VASTController.f61802f.post(new Runnable() { // from class: com.verizon.ads.vastcontroller.VASTController.1.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (VASTController.this.f61805g) {
                                RunnableC174651.this.f61811b.onComplete(new ErrorInfo(VASTController.f61800d, "load timed out", -8));
                                return;
                            }
                            VASTController.m5280c(VASTController.this);
                            if (errorInfo != null) {
                                VASTController.this.m5281c();
                            }
                            RunnableC174651.this.f61811b.onComplete(errorInfo);
                        }
                    });
                }
            }, this.f61812c);
            VASTController.this.f61808j.setTag("VastVideoView");
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTController$AttachListener.class */
    public interface AttachListener {
        void onComplete(ErrorInfo errorInfo);
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTController$LoadListener.class */
    public interface LoadListener {
        void onComplete(ErrorInfo errorInfo);
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTController$VASTControllerListener.class */
    public interface VASTControllerListener {
        void close();

        void onAdLeftApplication();

        void onClicked();

        void onVideoComplete();
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTController$VideoViewActions.class */
    public interface VideoViewActions {
        boolean onBackPressed();

        void release();

        void updateLayout();
    }

    static {
        HandlerThread handlerThread = new HandlerThread(VASTController.class.getName());
        f61801e = handlerThread;
        handlerThread.start();
        f61802f = new Handler(handlerThread.getLooper());
    }

    /* renamed from: a */
    private void m5284a(String str) throws XmlPullParserException, IOException {
        this.f61809k.add(str);
        VASTParser.C17472Ad parse = VASTParser.parse(str);
        if (parse == null) {
            f61799c.m5565e("No Ad found in VAST content");
        } else if (parse instanceof VASTParser.InLineAd) {
            this.f61803a = (VASTParser.InLineAd) parse;
        } else if (!(parse instanceof VASTParser.WrapperAd)) {
        } else {
            VASTParser.WrapperAd wrapperAd = (VASTParser.WrapperAd) parse;
            this.f61804b.add(wrapperAd);
            if (this.f61804b.size() > 3 || wrapperAd.adTagURI == null || wrapperAd.adTagURI.isEmpty()) {
                f61799c.m5565e("VAST wrapper did not contain a valid ad tag URI or MAX VAST Redirects exceeded.");
                return;
            }
            if (Logger.isLogLevelEnabled(3)) {
                Logger logger = f61799c;
                logger.m5567d("Requesting VAST tag URI = " + wrapperAd.adTagURI);
            }
            HttpUtils.Response contentFromGetRequest = HttpUtils.getContentFromGetRequest(wrapperAd.adTagURI);
            if (contentFromGetRequest.code == 200) {
                m5284a(contentFromGetRequest.content);
                return;
            }
            Logger logger2 = f61799c;
            logger2.m5565e("Received HTTP status code = " + contentFromGetRequest.code + " when processing ad tag URI = " + wrapperAd.adTagURI);
        }
    }

    /* renamed from: c */
    public void m5281c() {
        ArrayList arrayList = new ArrayList();
        VASTParser.InLineAd inLineAd = this.f61803a;
        if (inLineAd != null && !TextUtils.isEmpty(inLineAd.error)) {
            arrayList.add(new TrackingEvent("error", this.f61803a.error));
        }
        List<VASTParser.WrapperAd> list = this.f61804b;
        if (list != null) {
            for (VASTParser.WrapperAd wrapperAd : list) {
                if (!TextUtils.isEmpty(wrapperAd.error)) {
                    arrayList.add(new TrackingEvent("error", wrapperAd.error));
                }
            }
        }
        TrackingEvent.fireEvents(arrayList);
    }

    /* renamed from: c */
    static /* synthetic */ void m5280c(VASTController vASTController) {
        if (vASTController.f61806h != null) {
            f61799c.m5567d("Stopping load timer");
            f61802f.removeCallbacks(vASTController.f61806h);
            vASTController.f61806h = null;
        }
    }

    public void attach(ViewGroup viewGroup, AttachListener attachListener) {
        if (viewGroup == null) {
            attachListener.onComplete(new ErrorInfo(f61800d, "parent view was null.", -6));
        } else if (!(viewGroup.getContext() instanceof Activity)) {
            attachListener.onComplete(new ErrorInfo(f61800d, "parent view context must be an Activity.", -6));
        } else {
            ViewGroup viewGroup2 = this.f61808j;
            if (viewGroup2 == null) {
                f61799c.m5565e("videoPlayerView instance is null, unable to attach");
                attachListener.onComplete(new ErrorInfo(f61800d, "videoPlayerView instance was null", -6));
                return;
            }
            viewGroup2.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads.vastcontroller.VASTController.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    VASTController.this.f61807i.onClicked();
                }
            });
            ViewGroup viewGroup3 = this.f61808j;
            if (viewGroup3 instanceof VideoViewActions) {
                ((VideoViewActions) viewGroup3).updateLayout();
            }
            ViewUtils.attachView(viewGroup, this.f61808j);
            attachListener.onComplete(null);
        }
    }

    public void close() {
        VASTControllerListener vASTControllerListener = this.f61807i;
        if (vASTControllerListener != null) {
            vASTControllerListener.close();
        }
    }

    public void load(Context context, int i, LoadListener loadListener) {
        if (loadListener == null) {
            f61799c.m5565e("loadListener cannot be null.");
        } else if (context == null) {
            f61799c.m5565e("context cannot be null.");
            loadListener.onComplete(new ErrorInfo(f61800d, "context cannot be null.", -7));
        } else if (!new EnvironmentInfo(context).getDeviceInfo().isExternalStorageWritable()) {
            f61799c.m5559w("External storage is not writable.");
            loadListener.onComplete(new ErrorInfo(f61800d, "External storage is not writable.", -5));
        } else {
            long j = i;
            synchronized (this) {
                if (this.f61806h != null) {
                    f61799c.m5565e("Timeout timer already running");
                } else if (j != 0) {
                    if (Logger.isLogLevelEnabled(3)) {
                        f61799c.m5567d(String.format("Load will timeout in %d ms", Long.valueOf(j)));
                    }
                    this.f61806h = new Runnable() { // from class: com.verizon.ads.vastcontroller.VASTController.3
                        @Override // java.lang.Runnable
                        public void run() {
                            VASTController.this.f61805g = true;
                        }
                    };
                    f61802f.postDelayed(this.f61806h, j);
                }
            }
            ThreadUtils.postOnUiThread(new RunnableC174651(context, loadListener, i));
        }
    }

    public boolean onBackPressed() {
        ViewGroup viewGroup = this.f61808j;
        return !(viewGroup instanceof VideoViewActions) || ((VideoViewActions) viewGroup).onBackPressed();
    }

    public ErrorInfo prepare(AdSession adSession, String str) {
        this.f61804b = new ArrayList();
        this.f61809k = new ArrayList();
        try {
            m5284a(str);
            if (this.f61803a == null) {
                m5281c();
                return new ErrorInfo(f61800d, "VAST content did not produce a valid InLineAd instance.", -1);
            }
            List<VASTParser.WrapperAd> list = this.f61804b;
            if (list == null) {
                return null;
            }
            Iterator<VASTParser.WrapperAd> it2 = list.iterator();
            do {
                if (!it2.hasNext()) {
                    return null;
                }
            } while (!it2.next().impressions.isEmpty());
            m5281c();
            return new ErrorInfo(f61800d, "WrapperAd must contain at least one Impression URL.", -2);
        } catch (IOException e) {
            m5281c();
            return new ErrorInfo(f61800d, "VAST XML I/O error: ".concat(String.valueOf(e)), -4);
        } catch (XmlPullParserException e2) {
            m5281c();
            return new ErrorInfo(f61800d, "VAST XML Parsing error: ".concat(String.valueOf(e2)), -3);
        }
    }

    public void release() {
        ViewGroup viewGroup = this.f61808j;
        if (viewGroup instanceof VideoViewActions) {
            ((VideoViewActions) viewGroup).release();
            this.f61808j = null;
        }
    }

    public void setListener(VASTControllerListener vASTControllerListener) {
        this.f61807i = vASTControllerListener;
    }
}
