package com.google.android.p314c;

import android.content.Context;
import com.google.android.gms.internal.consent_sdk.C13197ba;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.c.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/c/a.class */
public final class C10611a {

    /* renamed from: a */
    public final boolean f34372a;

    /* renamed from: b */
    public final int f34373b;

    /* renamed from: com.google.android.c.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/c/a$a.class */
    public static final class C10612a {

        /* renamed from: a */
        public final List<String> f34374a = new ArrayList();

        /* renamed from: b */
        public int f34375b = 0;

        /* renamed from: c */
        private final Context f34376c;

        /* renamed from: d */
        private boolean f34377d;

        public C10612a(Context context) {
            this.f34376c = context.getApplicationContext();
        }

        /* renamed from: a */
        public final C10611a m22614a() {
            boolean z = false;
            if ((C13197ba.m13570a() || this.f34374a.contains(C13197ba.m13569a(this.f34376c))) || this.f34377d) {
                z = true;
            }
            return new C10611a(z, this);
        }
    }

    private C10611a(boolean z, C10612a c10612a) {
        this.f34372a = z;
        this.f34373b = c10612a.f34375b;
    }
}
