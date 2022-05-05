package com.flurry.android;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.flurry.sdk.AbstractC3344jl;
import com.flurry.sdk.C3180gq;
import com.flurry.sdk.C3331jb;
import com.flurry.sdk.C3333jd;
import com.flurry.sdk.C3345jm;
import com.flurry.sdk.C3356jq;
import com.flurry.sdk.C3425kq;
import com.flurry.sdk.C3427kr;
import com.flurry.sdk.C3437ku;
import com.flurry.sdk.C3458lj;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/flurry/android/FlurryAgent.class */
public final class FlurryAgent {

    /* renamed from: a */
    public static final String f3814a = "FlurryAgent";

    /* renamed from: b */
    public static FlurryAgentListener f3815b;

    /* renamed from: c */
    public static final AbstractC3344jl<C3425kq> f3816c = new AbstractC3344jl<C3425kq>() { // from class: com.flurry.android.FlurryAgent.1
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3425kq kqVar) {
            final C3425kq kqVar2 = kqVar;
            C3331jb.m32681a().m32678a(new Runnable(this) { // from class: com.flurry.android.FlurryAgent.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (C27553.f3819a[kqVar2.f5861c - 1] == 1 && FlurryAgent.f3815b != null) {
                        FlurryAgent.f3815b.onSessionStarted();
                    }
                }
            });
        }
    };

    /* renamed from: k */
    public static String f3817k = null;

    /* renamed from: com.flurry.android.FlurryAgent$3 */
    /* loaded from: classes2-dex2jar.jar:com/flurry/android/FlurryAgent$3.class */
    public static final /* synthetic */ class C27553 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3819a = new int[C3425kq.EnumC3426a.m32518a().length];

        static {
            try {
                f3819a[C3425kq.EnumC3426a.f5868f - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/flurry/android/FlurryAgent$Builder.class */
    public static class Builder {

        /* renamed from: b */
        public static FlurryAgentListener f3820b;

        /* renamed from: c */
        public boolean f3822c = false;

        /* renamed from: d */
        public int f3823d = 5;

        /* renamed from: e */
        public long f3824e = 10000;

        /* renamed from: f */
        public boolean f3825f = true;

        /* renamed from: g */
        public boolean f3826g = false;

        /* renamed from: h */
        public boolean f3827h = true;

        /* renamed from: a */
        public List<Object> f3821a = new ArrayList();

        public void build(Context context, String str) {
            FlurryAgent.m33764a(f3820b, this.f3822c, this.f3823d, this.f3824e, this.f3825f, this.f3826g, this.f3827h, this.f3821a, context, str);
        }

        public Builder withListener(FlurryAgentListener flurryAgentListener) {
            f3820b = flurryAgentListener;
            return this;
        }

        public Builder withLogEnabled(boolean z) {
            this.f3822c = z;
            return this;
        }

        public Builder withLogLevel(int i) {
            this.f3823d = i;
            return this;
        }
    }

    static {
        new ArrayList();
    }

    /* renamed from: a */
    public static /* synthetic */ void m33764a(FlurryAgentListener flurryAgentListener, boolean z, int i, long j, boolean z2, boolean z3, boolean z4, List list, Context context, String str) {
        f3815b = flurryAgentListener;
        setFlurryAgentListener(flurryAgentListener);
        setLogEnabled(z);
        setLogLevel(i);
        setContinueSessionMillis(j);
        setCaptureUncaughtExceptions(z2);
        setPulseEnabled(z3);
        if (Build.VERSION.SDK_INT < 16) {
            C3356jq.m32609b(f3814a, "Device SDK Version older than 16");
        } else {
            C3437ku.m32494a().m32491a("IncludeBackgroundSessionsInMetrics", Boolean.valueOf(z4));
        }
        f3817k = str;
        init(context, f3817k);
    }

    public static void addOrigin(String str, String str2) {
        addOrigin(str, str2, null);
    }

    public static void addOrigin(String str, String str2, Map<String, String> map) {
        if (Build.VERSION.SDK_INT < 16) {
            C3356jq.m32609b(f3814a, "Device SDK Version older than 16");
        } else if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("originName not specified");
        } else if (!TextUtils.isEmpty(str2)) {
            try {
                C3333jd.m32671a().m32670a(str, str2, map);
            } catch (Throwable th) {
                C3356jq.m32612a(f3814a, "", th);
            }
        } else {
            throw new IllegalArgumentException("originVersion not specified");
        }
    }

    @Deprecated
    public static void init(Context context, String str) {
        synchronized (FlurryAgent.class) {
            try {
                if (Build.VERSION.SDK_INT < 16) {
                    C3356jq.m32609b(f3814a, "Device SDK Version older than 16");
                } else if (context == null) {
                    throw new NullPointerException("Null context");
                } else if (!TextUtils.isEmpty(str)) {
                    if (C3331jb.m32681a() != null) {
                        C3356jq.m32602e(f3814a, "Flurry is already initialized");
                    }
                    C3458lj.m32420a();
                    C3331jb.m32680a(context, str);
                } else {
                    throw new IllegalArgumentException("API key not specified");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean isSessionActive() {
        if (Build.VERSION.SDK_INT < 16) {
            C3356jq.m32609b(f3814a, "Device SDK Version older than 16");
            return false;
        }
        try {
            return C3427kr.m32517a().m32509c();
        } catch (Throwable th) {
            C3356jq.m32612a(f3814a, "", th);
            return false;
        }
    }

    public static FlurryEventRecordStatus logEvent(String str) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (Build.VERSION.SDK_INT < 16) {
            C3356jq.m32609b(f3814a, "Device SDK Version older than 16");
            return flurryEventRecordStatus2;
        } else if (str == null) {
            C3356jq.m32609b(f3814a, "String eventId passed to logEvent was null.");
            return flurryEventRecordStatus2;
        } else {
            try {
                flurryEventRecordStatus = C3180gq.m32933a().m32927a(str, null, false, 0);
            } catch (Throwable th) {
                String str2 = f3814a;
                C3356jq.m32612a(str2, "Failed to log event: " + str, th);
                flurryEventRecordStatus = flurryEventRecordStatus2;
            }
            return flurryEventRecordStatus;
        }
    }

    public static FlurryEventRecordStatus logEvent(String str, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (Build.VERSION.SDK_INT < 16) {
            C3356jq.m32609b(f3814a, "Device SDK Version older than 16");
            return flurryEventRecordStatus2;
        } else if (str == null) {
            C3356jq.m32609b(f3814a, "String eventId passed to logEvent was null.");
            return flurryEventRecordStatus2;
        } else {
            if (map == null) {
                C3356jq.m32606c(f3814a, "String parameters passed to logEvent was null.");
            }
            try {
                flurryEventRecordStatus = C3180gq.m32933a().m32929a(str, map, 0);
            } catch (Throwable th) {
                String str2 = f3814a;
                C3356jq.m32612a(str2, "Failed to log event: " + str, th);
                flurryEventRecordStatus = flurryEventRecordStatus2;
            }
            return flurryEventRecordStatus;
        }
    }

    public static void onEndSession(Context context) {
        if (Build.VERSION.SDK_INT < 16) {
            C3356jq.m32609b(f3814a, "Device SDK Version older than 16");
        } else if (context == null) {
            throw new NullPointerException("Null context");
        } else if (C3331jb.m32681a() != null) {
            try {
                C3427kr.m32517a().m32508c(context);
            } catch (Throwable th) {
                C3356jq.m32612a(f3814a, "", th);
            }
        } else {
            throw new IllegalStateException("Flurry SDK must be initialized before ending a session");
        }
    }

    public static void onStartSession(Context context) {
        if (Build.VERSION.SDK_INT < 16) {
            C3356jq.m32609b(f3814a, "Device SDK Version older than 16");
        } else if (context == null) {
            throw new NullPointerException("Null context");
        } else if (C3331jb.m32681a() != null) {
            try {
                C3427kr.m32517a().m32511b(context);
            } catch (Throwable th) {
                C3356jq.m32612a(f3814a, "", th);
            }
        } else {
            throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
        }
    }

    @Deprecated
    public static void setCaptureUncaughtExceptions(boolean z) {
        if (Build.VERSION.SDK_INT < 16) {
            C3356jq.m32609b(f3814a, "Device SDK Version older than 16");
        } else {
            C3437ku.m32494a().m32491a("CaptureUncaughtExceptions", Boolean.valueOf(z));
        }
    }

    @Deprecated
    public static void setContinueSessionMillis(long j) {
        if (Build.VERSION.SDK_INT < 16) {
            C3356jq.m32609b(f3814a, "Device SDK Version older than 16");
        } else if (j < 5000) {
            String str = f3814a;
            C3356jq.m32609b(str, "Invalid time set for session resumption: " + j);
        } else {
            C3437ku.m32494a().m32491a("ContinueSessionMillis", Long.valueOf(j));
        }
    }

    @Deprecated
    public static void setFlurryAgentListener(FlurryAgentListener flurryAgentListener) {
        if (Build.VERSION.SDK_INT < 16) {
            C3356jq.m32609b(f3814a, "Device SDK Version older than 16");
        } else if (flurryAgentListener == null) {
            C3356jq.m32609b(f3814a, "Listener cannot be null");
            C3345jm.m32636a().m32630b("com.flurry.android.sdk.FlurrySessionEvent", f3816c);
        } else {
            f3815b = flurryAgentListener;
            C3345jm.m32636a().m32632a("com.flurry.android.sdk.FlurrySessionEvent", f3816c);
        }
    }

    @Deprecated
    public static void setLogEnabled(boolean z) {
        if (Build.VERSION.SDK_INT < 16) {
            C3356jq.m32609b(f3814a, "Device SDK Version older than 16");
        } else if (z) {
            C3356jq.m32611b();
        } else {
            C3356jq.m32617a();
        }
    }

    @Deprecated
    public static void setLogLevel(int i) {
        if (Build.VERSION.SDK_INT < 16) {
            C3356jq.m32609b(f3814a, "Device SDK Version older than 16");
        } else {
            C3356jq.m32616a(i);
        }
    }

    @Deprecated
    public static void setPulseEnabled(boolean z) {
        if (Build.VERSION.SDK_INT < 16) {
            C3356jq.m32609b(f3814a, "Device SDK Version older than 16");
            return;
        }
        C3437ku.m32494a().m32491a("ProtonEnabled", Boolean.valueOf(z));
        if (!z) {
            C3437ku.m32494a().m32491a("analyticsEnabled", (Object) true);
        }
    }
}
