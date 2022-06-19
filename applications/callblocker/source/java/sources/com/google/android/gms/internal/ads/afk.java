package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.ads.internal.RunnableC2306h;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/afk.class */
public class afk {

    /* renamed from: a */
    private final C3647yd f8096a;

    /* renamed from: b */
    private final Context f8097b;

    /* renamed from: c */
    private final WeakReference<Context> f8098c;

    /* renamed from: com.google.android.gms.internal.ads.afk$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/afk$a.class */
    public static final class C2767a {

        /* renamed from: a */
        private C3647yd f8099a;

        /* renamed from: b */
        private Context f8100b;

        /* renamed from: c */
        private WeakReference<Context> f8101c;

        /* renamed from: a */
        public final C2767a m13401a(Context context) {
            this.f8101c = new WeakReference<>(context);
            Context context2 = context;
            if (context.getApplicationContext() != null) {
                context2 = context.getApplicationContext();
            }
            this.f8100b = context2;
            return this;
        }

        /* renamed from: a */
        public final C2767a m13399a(C3647yd c3647yd) {
            this.f8099a = c3647yd;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public afk(C2767a c2767a) {
        this.f8096a = c2767a.f8099a;
        this.f8097b = c2767a.f8100b;
        this.f8098c = c2767a.f8101c;
    }

    /* renamed from: a */
    public final Context m13406a() {
        return this.f8097b;
    }

    /* renamed from: b */
    public final WeakReference<Context> m13405b() {
        return this.f8098c;
    }

    /* renamed from: c */
    public final C3647yd m13404c() {
        return this.f8096a;
    }

    /* renamed from: d */
    public final String m13403d() {
        return C2341q.m14744c().m6975b(this.f8097b, this.f8096a.f17636a);
    }

    /* renamed from: e */
    public final ctl m13402e() {
        return new ctl(new RunnableC2306h(this.f8097b, this.f8096a));
    }
}
