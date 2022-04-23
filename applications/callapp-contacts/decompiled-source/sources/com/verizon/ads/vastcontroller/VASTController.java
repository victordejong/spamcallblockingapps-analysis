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

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f35690c = Logger.getInstance(VASTController.class);

    /* renamed from: d  reason: collision with root package name */
    private static final String f35691d = VASTController.class.getSimpleName();
    private static final HandlerThread e;
    private static final Handler f;

    /* renamed from: a  reason: collision with root package name */
    VASTParser.InLineAd f35692a;

    /* renamed from: b  reason: collision with root package name */
    List<VASTParser.WrapperAd> f35693b;
    private boolean g;
    private volatile Runnable h;
    private VASTControllerListener i;
    private ViewGroup j;
    private List<String> k;

    /* renamed from: com.verizon.ads.vastcontroller.VASTController$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTController$1.class */
    class AnonymousClass1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f35694a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ LoadListener f35695b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f35696c;

        AnonymousClass1(Context context, LoadListener loadListener, int i) {
            this.f35694a = context;
            this.f35695b = loadListener;
            this.f35696c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            VASTController vASTController = VASTController.this;
            VASTVideoView vASTVideoView = new VASTVideoView(new MutableContextWrapper(this.f35694a), vASTController.f35692a, vASTController.f35693b);
            VASTController.this.j = vASTVideoView;
            vASTVideoView.setInteractionListener(new VASTVideoView.InteractionListener() { // from class: com.verizon.ads.vastcontroller.VASTController.1.1
                @Override // com.verizon.ads.vastcontroller.VASTVideoView.InteractionListener
                public void close() {
                    VASTController.this.close();
                }

                @Override // com.verizon.ads.vastcontroller.VASTVideoView.InteractionListener
                public void onAdLeftApplication() {
                    VASTController.this.i.onAdLeftApplication();
                }

                @Override // com.verizon.ads.vastcontroller.VASTVideoView.InteractionListener
                public void onClicked() {
                    VASTController.this.i.onClicked();
                }
            });
            vASTVideoView.setPlaybackListener(new VASTVideoView.PlaybackListener() { // from class: com.verizon.ads.vastcontroller.VASTController.1.2
                @Override // com.verizon.ads.vastcontroller.VASTVideoView.PlaybackListener
                public void onComplete() {
                    VASTController.this.i.onVideoComplete();
                }
            });
            vASTVideoView.load(new VASTVideoView.LoadListener() { // from class: com.verizon.ads.vastcontroller.VASTController.1.3
                @Override // com.verizon.ads.vastcontroller.VASTVideoView.LoadListener
                public void onComplete(final ErrorInfo errorInfo) {
                    VASTController.f.post(new Runnable() { // from class: com.verizon.ads.vastcontroller.VASTController.1.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!VASTController.this.g) {
                                VASTController.c(VASTController.this);
                                if (errorInfo != null) {
                                    VASTController.this.c();
                                }
                                AnonymousClass1.this.f35695b.onComplete(errorInfo);
                                return;
                            }
                            AnonymousClass1.this.f35695b.onComplete(new ErrorInfo(VASTController.f35691d, "load timed out", -8));
                        }
                    });
                }
            }, this.f35696c);
            VASTController.this.j.setTag("VastVideoView");
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
        e = handlerThread;
        handlerThread.start();
        f = new Handler(handlerThread.getLooper());
    }

    private void a(String str) throws XmlPullParserException, IOException {
        this.k.add(str);
        VASTParser.Ad parse = VASTParser.parse(str);
        if (parse == null) {
            f35690c.e("No Ad found in VAST content");
        } else if (parse instanceof VASTParser.InLineAd) {
            this.f35692a = (VASTParser.InLineAd) parse;
        } else if (parse instanceof VASTParser.WrapperAd) {
            VASTParser.WrapperAd wrapperAd = (VASTParser.WrapperAd) parse;
            this.f35693b.add(wrapperAd);
            if (this.f35693b.size() > 3 || wrapperAd.adTagURI == null || wrapperAd.adTagURI.isEmpty()) {
                f35690c.e("VAST wrapper did not contain a valid ad tag URI or MAX VAST Redirects exceeded.");
                return;
            }
            if (Logger.isLogLevelEnabled(3)) {
                Logger logger = f35690c;
                logger.d("Requesting VAST tag URI = " + wrapperAd.adTagURI);
            }
            HttpUtils.Response contentFromGetRequest = HttpUtils.getContentFromGetRequest(wrapperAd.adTagURI);
            if (contentFromGetRequest.code == 200) {
                a(contentFromGetRequest.content);
                return;
            }
            Logger logger2 = f35690c;
            logger2.e("Received HTTP status code = " + contentFromGetRequest.code + " when processing ad tag URI = " + wrapperAd.adTagURI);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        ArrayList arrayList = new ArrayList();
        VASTParser.InLineAd inLineAd = this.f35692a;
        if (inLineAd != null && !TextUtils.isEmpty(inLineAd.error)) {
            arrayList.add(new TrackingEvent("error", this.f35692a.error));
        }
        List<VASTParser.WrapperAd> list = this.f35693b;
        if (list != null) {
            for (VASTParser.WrapperAd wrapperAd : list) {
                if (!TextUtils.isEmpty(wrapperAd.error)) {
                    arrayList.add(new TrackingEvent("error", wrapperAd.error));
                }
            }
        }
        TrackingEvent.fireEvents(arrayList);
    }

    static /* synthetic */ void c(VASTController vASTController) {
        if (vASTController.h != null) {
            f35690c.d("Stopping load timer");
            f.removeCallbacks(vASTController.h);
            vASTController.h = null;
        }
    }

    public void attach(ViewGroup viewGroup, AttachListener attachListener) {
        if (viewGroup == null) {
            attachListener.onComplete(new ErrorInfo(f35691d, "parent view was null.", -6));
        } else if (!(viewGroup.getContext() instanceof Activity)) {
            attachListener.onComplete(new ErrorInfo(f35691d, "parent view context must be an Activity.", -6));
        } else {
            ViewGroup viewGroup2 = this.j;
            if (viewGroup2 == null) {
                f35690c.e("videoPlayerView instance is null, unable to attach");
                attachListener.onComplete(new ErrorInfo(f35691d, "videoPlayerView instance was null", -6));
                return;
            }
            viewGroup2.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads.vastcontroller.VASTController.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    VASTController.this.i.onClicked();
                }
            });
            ViewGroup viewGroup3 = this.j;
            if (viewGroup3 instanceof VideoViewActions) {
                ((VideoViewActions) viewGroup3).updateLayout();
            }
            ViewUtils.attachView(viewGroup, this.j);
            attachListener.onComplete(null);
        }
    }

    public void close() {
        VASTControllerListener vASTControllerListener = this.i;
        if (vASTControllerListener != null) {
            vASTControllerListener.close();
        }
    }

    public void load(Context context, int i, LoadListener loadListener) {
        if (loadListener == null) {
            f35690c.e("loadListener cannot be null.");
        } else if (context == null) {
            f35690c.e("context cannot be null.");
            loadListener.onComplete(new ErrorInfo(f35691d, "context cannot be null.", -7));
        } else if (!new EnvironmentInfo(context).getDeviceInfo().isExternalStorageWritable()) {
            f35690c.w("External storage is not writable.");
            loadListener.onComplete(new ErrorInfo(f35691d, "External storage is not writable.", -5));
        } else {
            long j = i;
            synchronized (this) {
                if (this.h != null) {
                    f35690c.e("Timeout timer already running");
                } else if (j != 0) {
                    if (Logger.isLogLevelEnabled(3)) {
                        f35690c.d(String.format("Load will timeout in %d ms", Long.valueOf(j)));
                    }
                    this.h = new Runnable() { // from class: com.verizon.ads.vastcontroller.VASTController.3
                        @Override // java.lang.Runnable
                        public void run() {
                            VASTController.this.g = true;
                        }
                    };
                    f.postDelayed(this.h, j);
                }
            }
            ThreadUtils.postOnUiThread(new AnonymousClass1(context, loadListener, i));
        }
    }

    public boolean onBackPressed() {
        ViewGroup viewGroup = this.j;
        return !(viewGroup instanceof VideoViewActions) || ((VideoViewActions) viewGroup).onBackPressed();
    }

    public ErrorInfo prepare(AdSession adSession, String str) {
        this.f35693b = new ArrayList();
        this.k = new ArrayList();
        try {
            a(str);
            if (this.f35692a == null) {
                c();
                return new ErrorInfo(f35691d, "VAST content did not produce a valid InLineAd instance.", -1);
            }
            List<VASTParser.WrapperAd> list = this.f35693b;
            if (list == null) {
                return null;
            }
            Iterator<VASTParser.WrapperAd> it2 = list.iterator();
            do {
                if (!it2.hasNext()) {
                    return null;
                }
            } while (!it2.next().impressions.isEmpty());
            c();
            return new ErrorInfo(f35691d, "WrapperAd must contain at least one Impression URL.", -2);
        } catch (IOException e2) {
            c();
            return new ErrorInfo(f35691d, "VAST XML I/O error: ".concat(String.valueOf(e2)), -4);
        } catch (XmlPullParserException e3) {
            c();
            return new ErrorInfo(f35691d, "VAST XML Parsing error: ".concat(String.valueOf(e3)), -3);
        }
    }

    public void release() {
        ViewGroup viewGroup = this.j;
        if (viewGroup instanceof VideoViewActions) {
            ((VideoViewActions) viewGroup).release();
            this.j = null;
        }
    }

    public void setListener(VASTControllerListener vASTControllerListener) {
        this.i = vASTControllerListener;
    }
}
