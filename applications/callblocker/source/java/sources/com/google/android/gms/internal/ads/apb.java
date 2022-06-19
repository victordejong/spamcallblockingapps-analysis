package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apb.class */
public class apb {

    /* renamed from: a */
    private final Context f10166a;

    /* renamed from: b */
    private final chh f10167b;

    /* renamed from: c */
    private Bundle f10168c;

    /* renamed from: d */
    private final String f10169d;

    /* renamed from: e */
    private final chb f10170e;

    /* renamed from: com.google.android.gms.internal.ads.apb$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apb$a.class */
    public static final class C2790a {

        /* renamed from: a */
        private Context f10171a;

        /* renamed from: b */
        private chh f10172b;

        /* renamed from: c */
        private Bundle f10173c;

        /* renamed from: d */
        private String f10174d;

        /* renamed from: e */
        private chb f10175e;

        /* renamed from: a */
        public final C2790a m12840a(Context context) {
            this.f10171a = context;
            return this;
        }

        /* renamed from: a */
        public final C2790a m12839a(Bundle bundle) {
            this.f10173c = bundle;
            return this;
        }

        /* renamed from: a */
        public final C2790a m12837a(chb chbVar) {
            this.f10175e = chbVar;
            return this;
        }

        /* renamed from: a */
        public final C2790a m12836a(chh chhVar) {
            this.f10172b = chhVar;
            return this;
        }

        /* renamed from: a */
        public final C2790a m12835a(String str) {
            this.f10174d = str;
            return this;
        }

        /* renamed from: a */
        public final apb m12841a() {
            return new apb(this);
        }
    }

    private apb(C2790a c2790a) {
        this.f10166a = c2790a.f10171a;
        this.f10167b = c2790a.f10172b;
        this.f10168c = c2790a.f10173c;
        this.f10169d = c2790a.f10174d;
        this.f10170e = c2790a.f10175e;
    }

    /* renamed from: a */
    public final Context m12846a(Context context) {
        if (this.f10169d == null) {
            context = this.f10166a;
        }
        return context;
    }

    /* renamed from: a */
    public final C2790a m12847a() {
        return new C2790a().m12840a(this.f10166a).m12836a(this.f10167b).m12835a(this.f10169d).m12839a(this.f10168c);
    }

    /* renamed from: b */
    public final chh m12845b() {
        return this.f10167b;
    }

    /* renamed from: c */
    public final chb m12844c() {
        return this.f10170e;
    }

    /* renamed from: d */
    public final Bundle m12843d() {
        return this.f10168c;
    }

    /* renamed from: e */
    public final String m12842e() {
        return this.f10169d;
    }
}
