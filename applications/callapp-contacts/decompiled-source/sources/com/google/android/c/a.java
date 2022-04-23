package com.google.android.c;

import android.content.Context;
import com.google.android.gms.internal.consent_sdk.ba;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/c/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f20294a;

    /* renamed from: b  reason: collision with root package name */
    public final int f20295b;

    /* renamed from: com.google.android.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/c/a$a.class */
    public static final class C0411a {

        /* renamed from: a  reason: collision with root package name */
        public final List<String> f20296a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        public int f20297b = 0;

        /* renamed from: c  reason: collision with root package name */
        private final Context f20298c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f20299d;

        public C0411a(Context context) {
            this.f20298c = context.getApplicationContext();
        }

        public final a a() {
            boolean z = false;
            if ((ba.a() || this.f20296a.contains(ba.a(this.f20298c))) || this.f20299d) {
                z = true;
            }
            return new a(z, this);
        }
    }

    private a(boolean z, C0411a aVar) {
        this.f20294a = z;
        this.f20295b = aVar.f20297b;
    }
}
