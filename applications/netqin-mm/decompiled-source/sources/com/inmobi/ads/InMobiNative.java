package com.inmobi.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.ads.AbstractC8252i;
import com.inmobi.ads.InMobiAdRequest;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.listeners.NativeAdEventListener;
import com.inmobi.ads.listeners.VideoEventListener;
import com.inmobi.ads.p503d.C8224a;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.core.utilities.Logger;
import com.inmobi.commons.p508a.C8326a;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiNative.class */
public final class InMobiNative {

    /* renamed from: a */
    public static final String f31355a = "InMobiNative";

    /* renamed from: j */
    public static ConcurrentHashMap<C8099aj, WeakReference<NativeAdRequestListener>> f31356j = new ConcurrentHashMap<>(5, 0.9f, 3);

    /* renamed from: b */
    public HandlerC8026a f31357b;

    /* renamed from: c */
    public NativeAdListener f31358c;

    /* renamed from: d */
    public NativeAdEventListener f31359d;

    /* renamed from: e */
    public VideoEventListener f31360e;

    /* renamed from: f */
    public C8099aj f31361f;

    /* renamed from: g */
    public String f31362g;

    /* renamed from: h */
    public Map<String, String> f31363h;

    /* renamed from: i */
    public long f31364i;

    /* renamed from: k */
    public Downloader f31365k;

    /* renamed from: l */
    public WeakReference<View> f31366l;

    /* renamed from: m */
    public boolean f31367m;

    /* renamed from: n */
    public boolean f31368n;

    /* renamed from: o */
    public WeakReference<Context> f31369o;

    /* renamed from: p */
    public LockScreenListener f31370p;

    /* renamed from: q */
    public AbstractC8286j f31371q;

    /* renamed from: r */
    public final AbstractC8252i.AbstractC8282b f31372r;

    /* renamed from: com.inmobi.ads.InMobiNative$3 */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiNative$3.class */
    public static final /* synthetic */ class C80253 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f31375a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[InMobiAdRequestStatus.StatusCode.values().length];
            f31375a = iArr;
            try {
                iArr[InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31375a[InMobiAdRequestStatus.StatusCode.REQUEST_PENDING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31375a[InMobiAdRequestStatus.StatusCode.AD_ACTIVE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31375a[InMobiAdRequestStatus.StatusCode.EARLY_REFRESH_REQUEST.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31375a[InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31375a[InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31375a[InMobiAdRequestStatus.StatusCode.MONETIZATION_DISABLED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiNative$Downloader.class */
    public final class Downloader {
        public static final int STATE_DOWNLOADED = 1;
        public static final int STATE_DOWNLOADING = 0;
        public static final int STATE_ERROR = 2;
        public static final int STATE_INITIALIZING = -1;
        public static final int STATE_UNINITIALIZED = -2;

        public Downloader() {
        }

        public final int getDownloadProgress() {
            AdContainer j;
            if (!C8326a.m5899a()) {
                Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiNative.f31355a, "InMobiNative is not initialized.Ignoring getDownloadProgress()");
                return 0;
            }
            try {
                if (InMobiNative.this.f31361f == null || (j = InMobiNative.this.f31361f.m6039j()) == null) {
                    return 0;
                }
                if (j.getApkDownloader() != null) {
                }
                return 0;
            } catch (Exception e) {
                Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiNative.f31355a, "Encountered unexpected error in getting download progress");
                return 0;
            }
        }

        public final int getDownloadStatus() {
            AdContainer j;
            if (!C8326a.m5899a()) {
                Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiNative.f31355a, "InMobiNative is not initialized.Ignoring getDownloadStatus()");
                return -2;
            }
            try {
                if (InMobiNative.this.f31361f == null || (j = InMobiNative.this.f31361f.m6039j()) == null) {
                    return -2;
                }
                if (j.getApkDownloader() != null) {
                }
                return -2;
            } catch (Exception e) {
                Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiNative.f31355a, "Encountered unexpected error in getting download progress");
                return -2;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiNative$LockScreenListener.class */
    public interface LockScreenListener {
        void onActionRequired(InMobiNative inMobiNative);
    }

    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiNative$NativeAdListener.class */
    public interface NativeAdListener {
        void onAdClicked(InMobiNative inMobiNative);

        void onAdFullScreenDismissed(InMobiNative inMobiNative);

        void onAdFullScreenDisplayed(InMobiNative inMobiNative);

        void onAdFullScreenWillDisplay(InMobiNative inMobiNative);

        void onAdImpressed(InMobiNative inMobiNative);

        void onAdLoadFailed(InMobiNative inMobiNative, InMobiAdRequestStatus inMobiAdRequestStatus);

        void onAdLoadSucceeded(InMobiNative inMobiNative);

        void onAdStatusChanged(InMobiNative inMobiNative);

        void onMediaPlaybackComplete(InMobiNative inMobiNative);

        void onUserSkippedMedia(InMobiNative inMobiNative);

        void onUserWillLeaveApplication(InMobiNative inMobiNative);
    }

    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiNative$NativeAdRequestListener.class */
    public interface NativeAdRequestListener {
        void onAdRequestCompleted(InMobiAdRequestStatus inMobiAdRequestStatus, InMobiNative inMobiNative);
    }

    /* renamed from: com.inmobi.ads.InMobiNative$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiNative$a.class */
    public static final class HandlerC8026a extends Handler {

        /* renamed from: a */
        public WeakReference<InMobiNative> f31377a;

        public HandlerC8026a(InMobiNative inMobiNative) {
            super(Looper.getMainLooper());
            this.f31377a = new WeakReference<>(inMobiNative);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            InMobiNative inMobiNative = this.f31377a.get();
            if (inMobiNative == null) {
                Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiNative.f31355a, "Lost reference to InMobiNative! callback cannot be given");
                return;
            }
            try {
                switch (message.what) {
                    case 1:
                        if (inMobiNative.f31359d != null) {
                            inMobiNative.f31359d.onAdLoadSucceeded(inMobiNative);
                            return;
                        } else if (inMobiNative.f31358c != null) {
                            inMobiNative.f31358c.onAdLoadSucceeded(inMobiNative);
                            return;
                        } else {
                            return;
                        }
                    case 2:
                        InMobiAdRequestStatus inMobiAdRequestStatus = (InMobiAdRequestStatus) message.obj;
                        if (inMobiNative.f31359d != null) {
                            inMobiNative.f31359d.onAdLoadFailed(inMobiNative, inMobiAdRequestStatus);
                            return;
                        } else if (inMobiNative.f31358c != null) {
                            inMobiNative.f31358c.onAdLoadFailed(inMobiNative, inMobiAdRequestStatus);
                            return;
                        } else {
                            return;
                        }
                    case 3:
                        if (inMobiNative.f31370p != null) {
                            inMobiNative.f31370p.onActionRequired(inMobiNative);
                        }
                        if (inMobiNative.f31359d != null) {
                            inMobiNative.f31359d.onAdFullScreenWillDisplay(inMobiNative);
                            return;
                        } else if (inMobiNative.f31358c != null) {
                            inMobiNative.f31358c.onAdFullScreenWillDisplay(inMobiNative);
                            return;
                        } else {
                            return;
                        }
                    case 4:
                        if (inMobiNative.f31359d != null) {
                            inMobiNative.f31359d.onAdFullScreenDisplayed(inMobiNative);
                            return;
                        } else if (inMobiNative.f31358c != null) {
                            inMobiNative.f31358c.onAdFullScreenDisplayed(inMobiNative);
                            return;
                        } else {
                            return;
                        }
                    case 5:
                        if (inMobiNative.f31359d != null) {
                            inMobiNative.f31359d.onAdFullScreenDismissed(inMobiNative);
                            return;
                        } else if (inMobiNative.f31358c != null) {
                            inMobiNative.f31358c.onAdFullScreenDismissed(inMobiNative);
                            return;
                        } else {
                            return;
                        }
                    case 6:
                        if (inMobiNative.f31359d != null) {
                            inMobiNative.f31359d.onAdImpressed(inMobiNative);
                            return;
                        } else if (inMobiNative.f31358c != null) {
                            inMobiNative.f31358c.onAdImpressed(inMobiNative);
                            return;
                        } else {
                            return;
                        }
                    case 7:
                        if (inMobiNative.f31359d != null) {
                            inMobiNative.f31359d.onAdClicked(inMobiNative);
                            return;
                        } else if (inMobiNative.f31358c != null) {
                            inMobiNative.f31358c.onAdClicked(inMobiNative);
                            return;
                        } else {
                            return;
                        }
                    case 8:
                        if (inMobiNative.f31370p != null) {
                            inMobiNative.f31370p.onActionRequired(inMobiNative);
                        }
                        if (inMobiNative.f31359d != null) {
                            inMobiNative.f31359d.onUserWillLeaveApplication(inMobiNative);
                            return;
                        } else if (inMobiNative.f31358c != null) {
                            inMobiNative.f31358c.onUserWillLeaveApplication(inMobiNative);
                            return;
                        } else {
                            return;
                        }
                    case 9:
                        if (inMobiNative.f31360e != null) {
                            inMobiNative.f31360e.onVideoCompleted(inMobiNative);
                            return;
                        } else if (inMobiNative.f31358c != null) {
                            inMobiNative.f31358c.onMediaPlaybackComplete(inMobiNative);
                            return;
                        } else {
                            return;
                        }
                    case 10:
                        if (inMobiNative.f31359d != null) {
                            inMobiNative.f31359d.onAdStatusChanged(inMobiNative);
                            return;
                        } else if (inMobiNative.f31358c != null) {
                            inMobiNative.f31358c.onAdStatusChanged(inMobiNative);
                            return;
                        } else {
                            return;
                        }
                    case 11:
                        if (inMobiNative.f31360e != null) {
                            inMobiNative.f31360e.onVideoSkipped(inMobiNative);
                            return;
                        } else if (inMobiNative.f31358c != null) {
                            inMobiNative.f31358c.onUserSkippedMedia(inMobiNative);
                            return;
                        } else {
                            return;
                        }
                    case 12:
                        byte[] bArr = (byte[]) message.obj;
                        if (inMobiNative.f31359d != null) {
                            inMobiNative.f31359d.onRequestPayloadCreated(bArr);
                            return;
                        }
                        return;
                    case 13:
                        if (inMobiNative.f31359d != null) {
                            inMobiNative.f31359d.onRequestPayloadCreationFailed((InMobiAdRequestStatus) message.obj);
                            return;
                        }
                        return;
                    case 14:
                        if (inMobiNative.f31360e != null) {
                            inMobiNative.f31360e.onAudioStateChanged(inMobiNative, ((Boolean) message.obj).booleanValue());
                            return;
                        }
                        return;
                    case 15:
                        if (message.getData().getBoolean("available") && inMobiNative.f31359d != null) {
                            inMobiNative.f31359d.onAdReceived(inMobiNative);
                            return;
                        }
                        return;
                    default:
                        String unused = InMobiNative.f31355a;
                        return;
                }
            } catch (Exception e) {
                Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiNative.f31355a, "Publisher handler caused unexpected error");
                String unused2 = InMobiNative.f31355a;
                new StringBuilder("Callback threw unexpected error: ").append(e.getMessage());
            }
        }
    }

    @Deprecated
    public InMobiNative(Context context, long j, NativeAdListener nativeAdListener) {
        this.f31368n = true;
        this.f31372r = new AbstractC8252i.AbstractC8282b() { // from class: com.inmobi.ads.InMobiNative.2
            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6012a() {
                InMobiNative.this.m6683a("AR", "");
                InMobiNative.this.f31357b.sendEmptyMessage(1);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6011a(InMobiAdRequestStatus inMobiAdRequestStatus) {
                switch (C80253.f31375a[inMobiAdRequestStatus.getStatusCode().ordinal()]) {
                    case 1:
                        InMobiNative.this.m6683a("ART", "NetworkNotAvailable");
                        break;
                    case 2:
                    case 3:
                        InMobiNative.this.m6683a("ART", "LoadInProgress");
                        break;
                    case 4:
                        InMobiNative.this.m6683a("ART", "FrequentRequests");
                        break;
                    case 5:
                        InMobiNative.this.m6683a("ART", "MissingRequiredDependencies");
                        break;
                    case 6:
                        InMobiNative.this.m6683a("ART", "ReloadNotPermitted");
                        break;
                    case 7:
                        InMobiNative.this.m6683a("ART", "MonetizationDisabled");
                        break;
                    default:
                        InMobiNative.this.m6683a("AF", "");
                        break;
                }
                if (!InMobiNative.m6679c()) {
                    Message obtain = Message.obtain();
                    obtain.what = 2;
                    obtain.obj = inMobiAdRequestStatus;
                    InMobiNative.this.f31357b.sendMessage(obtain);
                }
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6009a(Map<Object, Object> map) {
                InMobiNative.this.m6683a("AVCL", "");
                InMobiNative.this.f31357b.sendEmptyMessage(7);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6008a(boolean z) {
                Message obtain = Message.obtain();
                obtain.what = 15;
                Bundle bundle = new Bundle();
                bundle.putBoolean("available", z);
                obtain.setData(bundle);
                InMobiNative.this.f31357b.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6007a(byte[] bArr) {
                Message obtain = Message.obtain();
                obtain.what = 12;
                obtain.obj = bArr;
                InMobiNative.this.f31357b.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: b */
            public final void mo6006b() {
                String unused = InMobiNative.f31355a;
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: b */
            public final void mo6005b(InMobiAdRequestStatus inMobiAdRequestStatus) {
                Message obtain = Message.obtain();
                obtain.what = 13;
                obtain.obj = inMobiAdRequestStatus;
                InMobiNative.this.f31357b.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: b */
            public final void mo6003b(boolean z) {
                Message obtain = Message.obtain();
                obtain.what = 14;
                obtain.obj = Boolean.valueOf(z);
                InMobiNative.this.f31357b.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: c */
            public final void mo6002c() {
                InMobiNative.this.f31357b.sendEmptyMessage(3);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: d */
            public final void mo6001d() {
                InMobiNative.this.m6683a("AVE", "");
                InMobiNative.this.f31357b.sendEmptyMessage(4);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: e */
            public final void mo6000e() {
                InMobiNative.this.m6683a("AVCO", "");
                InMobiNative.this.f31357b.sendEmptyMessage(5);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: f */
            public final void mo5999f() {
                InMobiNative.this.f31357b.sendEmptyMessage(8);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: g */
            public final void mo5998g() {
                InMobiNative.this.f31357b.sendEmptyMessage(6);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: h */
            public final void mo5997h() {
                InMobiNative.this.f31357b.sendEmptyMessage(9);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: j */
            public final void mo5995j() {
                InMobiNative.this.f31357b.sendEmptyMessage(11);
            }
        };
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Please initialize the SDK before creating a Native ad");
        } else if (context == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Context is null, Native ad cannot be created.");
        } else if (nativeAdListener == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Listener supplied is null, the Native ad cannot be created.");
        } else {
            this.f31364i = j;
            this.f31369o = new WeakReference<>(context);
            this.f31358c = nativeAdListener;
            this.f31365k = new Downloader();
            this.f31357b = new HandlerC8026a(this);
        }
    }

    public InMobiNative(Context context, long j, NativeAdEventListener nativeAdEventListener) {
        this.f31368n = true;
        this.f31372r = new AbstractC8252i.AbstractC8282b() { // from class: com.inmobi.ads.InMobiNative.2
            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6012a() {
                InMobiNative.this.m6683a("AR", "");
                InMobiNative.this.f31357b.sendEmptyMessage(1);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6011a(InMobiAdRequestStatus inMobiAdRequestStatus) {
                switch (C80253.f31375a[inMobiAdRequestStatus.getStatusCode().ordinal()]) {
                    case 1:
                        InMobiNative.this.m6683a("ART", "NetworkNotAvailable");
                        break;
                    case 2:
                    case 3:
                        InMobiNative.this.m6683a("ART", "LoadInProgress");
                        break;
                    case 4:
                        InMobiNative.this.m6683a("ART", "FrequentRequests");
                        break;
                    case 5:
                        InMobiNative.this.m6683a("ART", "MissingRequiredDependencies");
                        break;
                    case 6:
                        InMobiNative.this.m6683a("ART", "ReloadNotPermitted");
                        break;
                    case 7:
                        InMobiNative.this.m6683a("ART", "MonetizationDisabled");
                        break;
                    default:
                        InMobiNative.this.m6683a("AF", "");
                        break;
                }
                if (!InMobiNative.m6679c()) {
                    Message obtain = Message.obtain();
                    obtain.what = 2;
                    obtain.obj = inMobiAdRequestStatus;
                    InMobiNative.this.f31357b.sendMessage(obtain);
                }
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6009a(Map<Object, Object> map) {
                InMobiNative.this.m6683a("AVCL", "");
                InMobiNative.this.f31357b.sendEmptyMessage(7);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6008a(boolean z) {
                Message obtain = Message.obtain();
                obtain.what = 15;
                Bundle bundle = new Bundle();
                bundle.putBoolean("available", z);
                obtain.setData(bundle);
                InMobiNative.this.f31357b.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6007a(byte[] bArr) {
                Message obtain = Message.obtain();
                obtain.what = 12;
                obtain.obj = bArr;
                InMobiNative.this.f31357b.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: b */
            public final void mo6006b() {
                String unused = InMobiNative.f31355a;
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: b */
            public final void mo6005b(InMobiAdRequestStatus inMobiAdRequestStatus) {
                Message obtain = Message.obtain();
                obtain.what = 13;
                obtain.obj = inMobiAdRequestStatus;
                InMobiNative.this.f31357b.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: b */
            public final void mo6003b(boolean z) {
                Message obtain = Message.obtain();
                obtain.what = 14;
                obtain.obj = Boolean.valueOf(z);
                InMobiNative.this.f31357b.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: c */
            public final void mo6002c() {
                InMobiNative.this.f31357b.sendEmptyMessage(3);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: d */
            public final void mo6001d() {
                InMobiNative.this.m6683a("AVE", "");
                InMobiNative.this.f31357b.sendEmptyMessage(4);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: e */
            public final void mo6000e() {
                InMobiNative.this.m6683a("AVCO", "");
                InMobiNative.this.f31357b.sendEmptyMessage(5);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: f */
            public final void mo5999f() {
                InMobiNative.this.f31357b.sendEmptyMessage(8);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: g */
            public final void mo5998g() {
                InMobiNative.this.f31357b.sendEmptyMessage(6);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: h */
            public final void mo5997h() {
                InMobiNative.this.f31357b.sendEmptyMessage(9);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: j */
            public final void mo5995j() {
                InMobiNative.this.f31357b.sendEmptyMessage(11);
            }
        };
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Please initialize the SDK before creating a Native ad");
        } else if (context == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Context is null, Native ad cannot be created.");
        } else if (nativeAdEventListener == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Listener supplied is null, the Native ad cannot be created.");
        } else {
            this.f31364i = j;
            this.f31369o = new WeakReference<>(context);
            this.f31359d = nativeAdEventListener;
            this.f31365k = new Downloader();
            this.f31357b = new HandlerC8026a(this);
        }
    }

    public InMobiNative(Context context, C8175bj bjVar) {
        this.f31368n = true;
        this.f31372r = new AbstractC8252i.AbstractC8282b() { // from class: com.inmobi.ads.InMobiNative.2
            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6012a() {
                InMobiNative.this.m6683a("AR", "");
                InMobiNative.this.f31357b.sendEmptyMessage(1);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6011a(InMobiAdRequestStatus inMobiAdRequestStatus) {
                switch (C80253.f31375a[inMobiAdRequestStatus.getStatusCode().ordinal()]) {
                    case 1:
                        InMobiNative.this.m6683a("ART", "NetworkNotAvailable");
                        break;
                    case 2:
                    case 3:
                        InMobiNative.this.m6683a("ART", "LoadInProgress");
                        break;
                    case 4:
                        InMobiNative.this.m6683a("ART", "FrequentRequests");
                        break;
                    case 5:
                        InMobiNative.this.m6683a("ART", "MissingRequiredDependencies");
                        break;
                    case 6:
                        InMobiNative.this.m6683a("ART", "ReloadNotPermitted");
                        break;
                    case 7:
                        InMobiNative.this.m6683a("ART", "MonetizationDisabled");
                        break;
                    default:
                        InMobiNative.this.m6683a("AF", "");
                        break;
                }
                if (!InMobiNative.m6679c()) {
                    Message obtain = Message.obtain();
                    obtain.what = 2;
                    obtain.obj = inMobiAdRequestStatus;
                    InMobiNative.this.f31357b.sendMessage(obtain);
                }
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6009a(Map<Object, Object> map) {
                InMobiNative.this.m6683a("AVCL", "");
                InMobiNative.this.f31357b.sendEmptyMessage(7);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6008a(boolean z) {
                Message obtain = Message.obtain();
                obtain.what = 15;
                Bundle bundle = new Bundle();
                bundle.putBoolean("available", z);
                obtain.setData(bundle);
                InMobiNative.this.f31357b.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: a */
            public final void mo6007a(byte[] bArr) {
                Message obtain = Message.obtain();
                obtain.what = 12;
                obtain.obj = bArr;
                InMobiNative.this.f31357b.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: b */
            public final void mo6006b() {
                String unused = InMobiNative.f31355a;
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: b */
            public final void mo6005b(InMobiAdRequestStatus inMobiAdRequestStatus) {
                Message obtain = Message.obtain();
                obtain.what = 13;
                obtain.obj = inMobiAdRequestStatus;
                InMobiNative.this.f31357b.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: b */
            public final void mo6003b(boolean z) {
                Message obtain = Message.obtain();
                obtain.what = 14;
                obtain.obj = Boolean.valueOf(z);
                InMobiNative.this.f31357b.sendMessage(obtain);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: c */
            public final void mo6002c() {
                InMobiNative.this.f31357b.sendEmptyMessage(3);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: d */
            public final void mo6001d() {
                InMobiNative.this.m6683a("AVE", "");
                InMobiNative.this.f31357b.sendEmptyMessage(4);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: e */
            public final void mo6000e() {
                InMobiNative.this.m6683a("AVCO", "");
                InMobiNative.this.f31357b.sendEmptyMessage(5);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: f */
            public final void mo5999f() {
                InMobiNative.this.f31357b.sendEmptyMessage(8);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: g */
            public final void mo5998g() {
                InMobiNative.this.f31357b.sendEmptyMessage(6);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: h */
            public final void mo5997h() {
                InMobiNative.this.f31357b.sendEmptyMessage(9);
            }

            @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
            /* renamed from: j */
            public final void mo5995j() {
                InMobiNative.this.f31357b.sendEmptyMessage(11);
            }
        };
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Please initialize the SDK before creating an InMobiNative ad");
        } else if (context == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Context is null, Native ad cannot be created.");
        } else {
            this.f31361f = C8099aj.m6455a(context, bjVar, this.f31372r, 0);
            this.f31364i = bjVar.f31894a;
            this.f31369o = new WeakReference<>(context);
            this.f31357b = new HandlerC8026a(this);
        }
    }

    public /* synthetic */ InMobiNative(Context context, C8175bj bjVar, byte b) {
        this(context, bjVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6683a(String str, String str2) {
        if (this.f31371q == null) {
            this.f31371q = new C8287k(this.f31361f);
        }
        this.f31371q.mo5989a(this.f31372r, str, str2);
    }

    /* renamed from: a */
    private boolean m6686a(InMobiAdRequestStatus inMobiAdRequestStatus) {
        C8099aj ajVar = this.f31361f;
        if (ajVar == null || ajVar.f32217y) {
            return true;
        }
        NativeAdEventListener nativeAdEventListener = this.f31359d;
        if (nativeAdEventListener == null) {
            return false;
        }
        nativeAdEventListener.onAdLoadFailed(this, inMobiAdRequestStatus);
        return false;
    }

    /* renamed from: a */
    private boolean m6682a(boolean z) {
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "InMobiNative is not initialized, your call is ignored.");
            return false;
        } else if (!z ? this.f31359d != null : !(this.f31372r == null && this.f31359d == null)) {
            WeakReference<Context> weakReference = this.f31369o;
            if (weakReference != null && weakReference.get() != null) {
                return true;
            }
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Context supplied is null, your call is ignored.");
            return false;
        } else {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Listener supplied is null, your call is ignored.");
            return false;
        }
    }

    /* renamed from: c */
    public static /* synthetic */ boolean m6679c() {
        return Message.obtain() == null;
    }

    /* renamed from: d */
    private void m6677d() {
        WeakReference<Context> weakReference = this.f31369o;
        Context context = weakReference == null ? null : weakReference.get();
        C8099aj ajVar = this.f31361f;
        ajVar.f32197e = this.f31362g;
        ajVar.f32198f = this.f31363h;
        ajVar.mo6086a(context instanceof Activity ? InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_ACTIVITY : InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_OTHER);
    }

    @Deprecated
    public static void requestAd(Context context, InMobiAdRequest inMobiAdRequest, NativeAdRequestListener nativeAdRequestListener) {
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Please initialize the SDK before calling requestAd. Ignoring request");
        } else if (nativeAdRequestListener == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Please supply a non null NativeAdRequestListener. Ignoring request");
        } else if (inMobiAdRequest == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Please supply a non null InMobiAdRequest. Ignoring request");
        } else if (context == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Please supply a non null Context. Ignoring request");
        } else {
            final C8175bj a = C8175bj.m6257a(inMobiAdRequest.f31282a, inMobiAdRequest.f31287f, "native", inMobiAdRequest.f31286e);
            a.f31899f = inMobiAdRequest.f31283b;
            AbstractC8252i.AbstractC8285e eVar = new AbstractC8252i.AbstractC8285e() { // from class: com.inmobi.ads.InMobiNative.1
                @Override // com.inmobi.ads.AbstractC8252i.AbstractC8285e
                /* renamed from: a */
                public final void mo5991a(AbstractC8252i iVar) {
                    if (iVar instanceof C8099aj) {
                        try {
                            C8224a.f32105a.remove(C8175bj.this);
                            WeakReference weakReference = (WeakReference) InMobiNative.f31356j.get(iVar);
                            if (weakReference != null) {
                                InMobiNative.f31356j.remove(iVar);
                                NativeAdRequestListener nativeAdRequestListener2 = (NativeAdRequestListener) weakReference.get();
                                if (nativeAdRequestListener2 != null) {
                                    C8175bj a2 = C8175bj.m6257a(iVar.f32196d, iVar.f32198f, "native", iVar.f32197e);
                                    a2.f31899f = iVar.mo6036l();
                                    InMobiNative inMobiNative = new InMobiNative(iVar.m6092a(), a2, (byte) 0);
                                    inMobiNative.setKeywords(iVar.f32197e);
                                    inMobiNative.setExtras(iVar.f32198f);
                                    nativeAdRequestListener2.onAdRequestCompleted(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NO_ERROR), inMobiNative);
                                }
                            }
                        } catch (Exception e) {
                            String unused = InMobiNative.f31355a;
                            new StringBuilder("SDK encountered unexpected error in onAdPrefetchSucceeded ").append(e.getMessage());
                        }
                    }
                }

                @Override // com.inmobi.ads.AbstractC8252i.AbstractC8285e
                /* renamed from: a */
                public final void mo5990a(AbstractC8252i iVar, InMobiAdRequestStatus inMobiAdRequestStatus) {
                    if (iVar instanceof C8099aj) {
                        try {
                            C8224a.f32105a.remove(C8175bj.this);
                            WeakReference weakReference = (WeakReference) InMobiNative.f31356j.get(iVar);
                            if (weakReference != null) {
                                InMobiNative.f31356j.remove(iVar);
                                NativeAdRequestListener nativeAdRequestListener2 = (NativeAdRequestListener) weakReference.get();
                                if (nativeAdRequestListener2 != null) {
                                    nativeAdRequestListener2.onAdRequestCompleted(inMobiAdRequestStatus, null);
                                }
                            }
                        } catch (Exception e) {
                            String unused = InMobiNative.f31355a;
                            new StringBuilder("SDK encountered unexpected error in onAdPrefetchFailed ").append(e.getMessage());
                        }
                    }
                }
            };
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("description", "requestAd Api called");
                try {
                    C8366b.m5794a();
                    C8366b.m5789a("ads", "GenericEvents", hashMap);
                } catch (Exception e) {
                    StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                    sb.append(e.getMessage());
                    sb.append(")");
                }
                C8099aj a2 = C8099aj.m6455a(context.getApplicationContext(), a, (AbstractC8252i.AbstractC8282b) null, 2);
                a2.f32198f = inMobiAdRequest.f31287f;
                a2.f32197e = inMobiAdRequest.f31286e;
                a2.f32209q = eVar;
                a2.f32206n = true;
                f31356j.put(a2, new WeakReference<>(nativeAdRequestListener));
                a2.mo5966q();
            } catch (Exception e2) {
                new StringBuilder("SDK encountered unexpected error in requestAd").append(e2.getMessage());
            }
        }
    }

    public final void destroy() {
        try {
            if (!C8326a.m5899a()) {
                Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "InMobiNative is not initialized. Ignoring InMobiNative.destroy()");
            }
            if (this.f31357b != null) {
                this.f31357b.removeMessages(0);
            }
            View view = this.f31366l == null ? null : this.f31366l.get();
            if (view != null) {
                ((ViewGroup) view).removeAllViews();
            }
            if (this.f31361f != null) {
                this.f31361f.m6459M();
            }
            if (this.f31371q != null) {
                this.f31371q = null;
            }
            this.f31361f = null;
            this.f31358c = null;
            this.f31359d = null;
            this.f31360e = null;
            this.f31365k = null;
            this.f31367m = false;
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Failed to destroy ad; SDK encountered an unexpected error");
            C8328a.m5878a().m5875a(new C8365a(e));
        }
    }

    public final String getAdCtaText() {
        AdContainer j;
        C8109ao aoVar;
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "InMobiNative is not initialized.Ignoring InMobiNative.getAdCtaText()");
            return null;
        }
        try {
            if (this.f31361f == null || (j = this.f31361f.m6039j()) == null || (aoVar = (C8109ao) j.getDataModel()) == null) {
                return null;
            }
            return aoVar.f31727i.f31739b.f31745d;
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Could not get the ctaText; SDK encountered unexpected error");
            C8328a.m5878a().m5875a(new C8365a(e));
            return null;
        }
    }

    public final String getAdDescription() {
        AdContainer j;
        C8109ao aoVar;
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "InMobiNative is not initialized.Ignoring InMobiNative.getAdDescription()");
            return null;
        }
        try {
            if (this.f31361f == null || (j = this.f31361f.m6039j()) == null || (aoVar = (C8109ao) j.getDataModel()) == null) {
                return null;
            }
            return aoVar.f31727i.f31739b.f31743b;
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Could not get the description; SDK encountered unexpected error");
            C8328a.m5878a().m5875a(new C8365a(e));
            return null;
        }
    }

    public final String getAdIconUrl() {
        AdContainer j;
        C8109ao aoVar;
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "InMobiNative is not initialized.Ignoring InMobiNative.getAdIconUrl()");
            return null;
        }
        try {
            if (this.f31361f == null || (j = this.f31361f.m6039j()) == null || (aoVar = (C8109ao) j.getDataModel()) == null) {
                return null;
            }
            return aoVar.f31727i.f31739b.f31744c;
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Could not get the iconUrl; SDK encountered unexpected error");
            C8328a.m5878a().m5875a(new C8365a(e));
            return null;
        }
    }

    public final String getAdLandingPageUrl() {
        AdContainer j;
        C8109ao aoVar;
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "InMobiNative is not initialized.Ignoring InMobiNative.getAdLandingPageUrl()");
            return null;
        }
        try {
            if (this.f31361f == null || (j = this.f31361f.m6039j()) == null || (aoVar = (C8109ao) j.getDataModel()) == null) {
                return null;
            }
            return aoVar.f31727i.f31739b.f31747f;
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Could not get the adLandingPageUrl; SDK encountered unexpected error");
            C8328a.m5878a().m5875a(new C8365a(e));
            return null;
        }
    }

    public final JSONObject getAdMetaInfo() {
        C8099aj ajVar;
        return (!C8326a.m5899a() || (ajVar = this.f31361f) == null) ? new JSONObject() : ajVar.f32201i;
    }

    public final float getAdRating() {
        AdContainer j;
        C8109ao aoVar;
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "InMobiNative is not initialized.Ignoring InMobiNative.getAdRating()");
            return 0.0f;
        }
        try {
            if (this.f31361f == null || (j = this.f31361f.m6039j()) == null || (aoVar = (C8109ao) j.getDataModel()) == null) {
                return 0.0f;
            }
            return aoVar.f31727i.f31739b.f31746e;
        } catch (Exception e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            Logger.m5724a(Logger.InternalLogLevel.ERROR, "InMobi", "Could not get rating; SDK encountered an unexpected error");
            new StringBuilder("SDK encountered unexpected error in getAdRating(); ").append(e.getMessage());
            return 0.0f;
        }
    }

    public final String getAdTitle() {
        AdContainer j;
        C8109ao aoVar;
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "InMobiNative is not initialized.Ignoring InMobiNative.getAdTitle()");
            return null;
        }
        try {
            if (this.f31361f == null || (j = this.f31361f.m6039j()) == null || (aoVar = (C8109ao) j.getDataModel()) == null) {
                return null;
            }
            return aoVar.f31727i.f31739b.f31742a;
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Could not get the ad title; SDK encountered unexpected error");
            C8328a.m5878a().m5875a(new C8365a(e));
            return null;
        }
    }

    public final String getCreativeId() {
        C8099aj ajVar;
        return (!C8326a.m5899a() || (ajVar = this.f31361f) == null) ? "" : ajVar.f32216x;
    }

    public final JSONObject getCustomAdContent() {
        AdContainer j;
        C8109ao aoVar;
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "InMobiNative is not initialized.Ignoring InMobiNative.setExtras()");
            return null;
        }
        try {
            if (this.f31361f == null || (j = this.f31361f.m6039j()) == null || (aoVar = (C8109ao) j.getDataModel()) == null) {
                return null;
            }
            return aoVar.f31727i.f31738a;
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Could not get the ad customJson ; SDK encountered unexpected error");
            C8328a.m5878a().m5875a(new C8365a(e));
            return null;
        }
    }

    public final Downloader getDownloader() {
        try {
            if (C8326a.m5899a()) {
                return this.f31365k;
            }
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "InMobiNative is not initialized. Ignoring InMobiNative.getDownloader()");
            return null;
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Failed to get Downloader; SDK encountered an unexpected error");
            C8328a.m5878a().m5875a(new C8365a(e));
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0184 A[Catch: Exception -> 0x01ce, TRY_ENTER, TryCatch #0 {Exception -> 0x01ce, blocks: (B:2:0x0000, B:4:0x0006, B:8:0x0018, B:10:0x0026, B:12:0x002d, B:14:0x003b, B:16:0x006e, B:18:0x0074, B:21:0x007e, B:23:0x0086, B:25:0x0090, B:27:0x00a4, B:29:0x00b4, B:30:0x00ca, B:32:0x00d4, B:34:0x010f, B:36:0x0117, B:37:0x0132, B:39:0x013e, B:40:0x0161, B:42:0x0184, B:44:0x018e, B:45:0x019b, B:46:0x01a5, B:46:0x01a5, B:47:0x01a9, B:49:0x01bd), top: B:54:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01bd A[Catch: Exception -> 0x01ce, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x01ce, blocks: (B:2:0x0000, B:4:0x0006, B:8:0x0018, B:10:0x0026, B:12:0x002d, B:14:0x003b, B:16:0x006e, B:18:0x0074, B:21:0x007e, B:23:0x0086, B:25:0x0090, B:27:0x00a4, B:29:0x00b4, B:30:0x00ca, B:32:0x00d4, B:34:0x010f, B:36:0x0117, B:37:0x0132, B:39:0x013e, B:40:0x0161, B:42:0x0184, B:44:0x018e, B:45:0x019b, B:46:0x01a5, B:46:0x01a5, B:47:0x01a9, B:49:0x01bd), top: B:54:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View getPrimaryViewOfWidth(android.content.Context r6, android.view.View r7, android.view.ViewGroup r8, int r9) {
        /*
            Method dump skipped, instructions count: 509
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.InMobiNative.getPrimaryViewOfWidth(android.content.Context, android.view.View, android.view.ViewGroup, int):android.view.View");
    }

    @Deprecated
    public final View getPrimaryViewOfWidth(View view, ViewGroup viewGroup, int i) {
        WeakReference<Context> weakReference = this.f31369o;
        if (weakReference != null && weakReference.get() != null) {
            return getPrimaryViewOfWidth(this.f31369o.get(), view, viewGroup, i);
        }
        Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "InMobiNative is not initialized or provided context is null.");
        return null;
    }

    public final void getSignals() {
        if (m6682a(false) && m6686a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.GET_SIGNALS_CALLED_AFTER_LOAD))) {
            if (this.f31361f == null) {
                this.f31361f = C8099aj.m6456a(this.f31369o.get(), C8175bj.m6257a(this.f31364i, this.f31363h, "native", this.f31362g), this.f31372r);
            }
            m6683a("ARR", "");
            m6677d();
            C8099aj ajVar = this.f31361f;
            ajVar.f32217y = true;
            ajVar.m6030o();
        }
    }

    public final boolean isAppDownload() {
        AdContainer j;
        C8109ao aoVar;
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "InMobiNative is not initialized.Ignoring InMobiNative.isAppDownload()");
            return false;
        }
        try {
            if (this.f31361f == null || (j = this.f31361f.m6039j()) == null || (aoVar = (C8109ao) j.getDataModel()) == null) {
                return false;
            }
            return aoVar.f31727i.f31739b.f31748g;
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Could not get isAppDownload; SDK encountered unexpected error");
            C8328a.m5878a().m5875a(new C8365a(e));
            return false;
        }
    }

    public final boolean isReady() {
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "InMobiNative is not initialized.Ignoring InMobiNative.isReady()");
            return false;
        }
        C8099aj ajVar = this.f31361f;
        return ajVar != null && ajVar.m6458N();
    }

    public final Boolean isVideo() {
        AdContainer j;
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "InMobiNative is not initialized.Ignoring InMobiNative.isVideo()");
            return null;
        }
        try {
            if (this.f31361f == null || (j = this.f31361f.m6039j()) == null) {
                return null;
            }
            return Boolean.valueOf(j instanceof C8148bd);
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Could not get isVideo; SDK encountered unexpected error");
            C8328a.m5878a().m5875a(new C8365a(e));
            return null;
        }
    }

    public final void load() {
        try {
            if (m6682a(true)) {
                if (this.f31361f == null || !this.f31361f.f32217y) {
                    if (this.f31367m) {
                        m6683a("ARR", "");
                        this.f31372r.mo6011a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REPETITIVE_LOAD));
                        Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "You can call load() on an instance of InMobiNative only once if the ad request has been successful. Ignoring InMobiNative.load()");
                        return;
                    }
                    Context context = this.f31369o == null ? null : this.f31369o.get();
                    if (context != null) {
                        if (this.f31361f == null) {
                            C8175bj a = C8175bj.m6257a(this.f31364i, this.f31363h, "native", this.f31362g);
                            a.f31899f = context instanceof Activity ? InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_ACTIVITY : InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_OTHER;
                            this.f31361f = C8099aj.m6455a(context, a, this.f31372r, 0);
                        } else {
                            this.f31361f.mo5978a(context);
                            this.f31361f.mo6086a(context instanceof Activity ? InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_ACTIVITY : InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_OTHER);
                        }
                        this.f31361f.f32206n = false;
                        this.f31361f.f32197e = this.f31362g;
                        this.f31361f.f32198f = this.f31363h;
                    }
                    if (this.f31361f != null) {
                        m6683a("ARR", "");
                        C8175bj a2 = C8175bj.m6257a(this.f31364i, this.f31363h, "native", this.f31362g);
                        a2.f31899f = this.f31361f.mo6036l();
                        this.f31361f.f32217y = false;
                        this.f31361f.mo6032n();
                        C8224a.m6146a("native").m6148a(a2);
                    }
                } else if (this.f31359d != null) {
                    this.f31359d.onAdLoadFailed(this, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOAD_CALLED_AFTER_GET_SIGNALS));
                }
            }
        } catch (Exception e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            Logger.m5724a(Logger.InternalLogLevel.ERROR, "InMobi", "Could not load ad; SDK encountered an unexpected error");
            new StringBuilder("SDK encountered unexpected error in loading ad; ").append(e.getMessage());
        }
    }

    public final void load(Context context) {
        if (m6682a(true)) {
            this.f31369o = new WeakReference<>(context);
            load();
        }
    }

    public final void load(byte[] bArr) {
        if (m6682a(false) && m6686a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.LOAD_WITH_RESPONSE_CALLED_AFTER_LOAD))) {
            if (this.f31361f == null) {
                this.f31361f = C8099aj.m6456a(this.f31369o.get(), C8175bj.m6257a(this.f31364i, this.f31363h, "native", this.f31362g), this.f31372r);
            }
            m6677d();
            C8099aj ajVar = this.f31361f;
            ajVar.f32217y = true;
            ajVar.m6064a(bArr);
        }
    }

    public final void pause() {
        AdContainer j;
        try {
            if (this.f31361f != null) {
                C8099aj ajVar = this.f31361f;
                if (ajVar.f32193a == 5 && !(ajVar.m6092a() instanceof Activity) && (j = ajVar.m6039j()) != null) {
                    ((C8083ah) j).mo6318q();
                }
            }
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Could not pause ad; SDK encountered an unexpected error");
            new StringBuilder("SDK encountered unexpected error in pausing ad; ").append(e.getMessage());
        }
    }

    public final void reportAdClickAndOpenLandingPage() {
        AdContainer j;
        C8083ah ahVar;
        C8109ao h;
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "InMobiNative is not initialized.Ignoring InMobiNative.reportAdClickAndOpenLandingPage()");
            return;
        }
        try {
            if (this.f31361f != null && (j = this.f31361f.m6039j()) != null && (h = (ahVar = (C8083ah) j).m6484h()) != null) {
                ahVar.m6517a((View) null, h.f31727i.f31740c);
                ahVar.m6508a(h.f31727i.f31740c, true);
            }
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "reportAdClickAndOpenLandingPage failed; SDK encountered unexpected error");
            C8328a.m5878a().m5875a(new C8365a(e));
        }
    }

    public final void resume() {
        AdContainer j;
        try {
            if (this.f31361f != null) {
                C8099aj ajVar = this.f31361f;
                if (ajVar.f32193a == 5 && !(ajVar.m6092a() instanceof Activity) && (j = ajVar.m6039j()) != null) {
                    ((C8083ah) j).m6478p();
                }
            }
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Could not resume ad; SDK encountered an unexpected error");
            new StringBuilder("SDK encountered unexpected error in resuming ad; ").append(e.getMessage());
        }
    }

    public final void setDownloaderEnabled(boolean z) {
        this.f31368n = z;
    }

    public final void setExtras(Map<String, String> map) {
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "InMobiNative is not initialized.Ignoring InMobiNative.setExtras()");
            return;
        }
        try {
            if (this.f31361f != null) {
                this.f31361f.f32198f = map;
            }
            this.f31363h = map;
        } catch (Exception e) {
            C8328a.m5878a().m5875a(new C8365a(e));
            Logger.m5724a(Logger.InternalLogLevel.ERROR, "InMobi", "Could not set extras; SDK encountered an unexpected error");
            new StringBuilder("SDK encountered unexpected error in setting extras ").append(e.getMessage());
        }
    }

    public final void setKeywords(String str) {
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "InMobiNative is not initialized.Ignoring InMobiNative.setKeywords()");
            return;
        }
        try {
            if (this.f31361f != null) {
                this.f31361f.f32197e = str;
            }
            this.f31362g = str;
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Could not set keywords on Native ad; SDK encountered unexpected error");
            C8328a.m5878a().m5875a(new C8365a(e));
            new StringBuilder("SDK encountered unexpected error in setting keywords; ").append(e.getMessage());
        }
    }

    public final void setListener(NativeAdEventListener nativeAdEventListener) {
        if (nativeAdEventListener == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Please pass a non-null listener to the native.");
        } else {
            this.f31359d = nativeAdEventListener;
        }
    }

    @Deprecated
    public final void setNativeAdListener(NativeAdListener nativeAdListener) {
        this.f31358c = nativeAdListener;
    }

    public final void setVideoEventListener(VideoEventListener videoEventListener) {
        if (videoEventListener == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Please pass a non-null listener to the native.");
        } else {
            this.f31360e = videoEventListener;
        }
    }

    public final void showOnLockScreen(LockScreenListener lockScreenListener) {
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Please initialize the SDK before calling showOnLockScreen.");
        } else if (lockScreenListener == null) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Please provided non null LockScreenListener. Ignoring showOnLockScreen");
        } else {
            WeakReference<Context> weakReference = this.f31369o;
            if (weakReference == null || weakReference.get() == null) {
                Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "InMobiNative is not initialized. Provided context is null. Ignoring showOnLockScreen");
                return;
            }
            try {
                if (this.f31361f == null) {
                    this.f31361f = C8099aj.m6455a(this.f31369o.get(), C8175bj.m6257a(this.f31364i, this.f31363h, "native", this.f31362g), this.f31372r, 0);
                }
                this.f31361f.f31667B = true;
                this.f31370p = lockScreenListener;
            } catch (Exception e) {
                Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "SDK encountered unexpected error in showOnLockScreen");
            }
        }
    }

    public final void takeAction() {
        if (!C8326a.m5899a()) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "Please initialize the SDK before calling takeAction.");
            return;
        }
        try {
            if (this.f31361f != null) {
                C8099aj ajVar = this.f31361f;
                if (ajVar.f32207o != null) {
                    ajVar.f32207o.m6477r();
                    return;
                }
                return;
            }
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "InMobiNative is not initialized. Ignoring takeAction");
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31355a, "SDK encountered unexpected error in takeAction");
        }
    }
}
