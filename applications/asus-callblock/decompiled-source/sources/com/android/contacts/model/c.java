package com.android.contacts.model;

import android.net.Uri;
import com.android.contacts.b;
import com.android.contacts.t;
import com.android.contacts.util.DataStatus;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.StreamItemEntry;
import com.google.a.b.ae;
import com.google.a.b.m;
import com.google.a.b.n;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/c.class */
public final class c {
    public final String A;
    public final boolean B;
    public final Exception C;
    public long D;
    public boolean E;
    public final int F;
    public boolean G;
    public final Object H;
    private final Integer I;
    private final boolean J;
    private final int K;
    private final a L;

    /* renamed from: a  reason: collision with root package name */
    public final Uri f2022a;

    /* renamed from: b  reason: collision with root package name */
    public final Uri f2023b;
    public final Uri c;
    public final long d;
    public final String e;
    public final long f;
    public final long g;
    public final int h;
    public final long i;
    public final String j;
    public final String k;
    public final String l;
    public final String m;
    public final boolean n;
    public m<e> o;
    public m<StreamItemEntry> p;
    public n<Long, DataStatus> q;
    public m<com.android.contacts.model.account.a> r;
    public String s;
    public String t;
    String u;
    String v;
    public int w;
    public m<t> x;
    public byte[] y;
    public final boolean z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/c$a.class */
    public enum a {
        LOADED,
        ERROR,
        NOT_FOUND
    }

    public c(Uri uri, Uri uri2, Uri uri3, long j, String str, long j2, long j3, int i, long j4, String str2, String str3, String str4, String str5, boolean z, Integer num, boolean z2, String str6, boolean z3, int i2, boolean z4, int i3) {
        this.D = -1L;
        this.G = false;
        this.H = new Object();
        this.L = a.LOADED;
        this.C = null;
        this.f2022a = uri;
        this.f2023b = uri3;
        this.c = uri2;
        this.d = j;
        this.e = str;
        this.f = j2;
        this.o = null;
        this.p = null;
        this.q = null;
        this.g = j3;
        this.h = i;
        this.i = j4;
        this.j = str2;
        this.k = str3;
        this.l = str4;
        this.m = str5;
        this.n = z;
        this.I = num;
        this.r = null;
        this.z = z2;
        this.A = str6;
        this.B = z3;
        this.J = i2 > 0;
        this.K = i2;
        this.D = -1L;
        this.E = z4;
        this.F = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Uri uri, a aVar, Exception exc) {
        this.D = -1L;
        this.G = false;
        this.H = new Object();
        if (aVar == a.ERROR && exc == null) {
            throw new IllegalArgumentException("ERROR result must have exception");
        }
        this.L = aVar;
        this.C = exc;
        this.f2022a = uri;
        this.f2023b = null;
        this.c = null;
        this.d = -1L;
        this.e = null;
        this.f = -1L;
        this.o = null;
        this.p = null;
        this.q = null;
        this.g = -1L;
        this.h = 0;
        this.i = -1L;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = false;
        this.I = null;
        this.r = null;
        this.z = false;
        this.A = null;
        this.B = false;
        this.J = false;
        this.K = 1;
        this.D = -1L;
        this.E = false;
        this.F = 0;
    }

    public c(Uri uri, c cVar) {
        this.D = -1L;
        this.G = false;
        this.H = new Object();
        this.f2022a = uri;
        this.L = cVar.L;
        this.C = cVar.C;
        this.f2023b = cVar.f2023b;
        this.c = cVar.c;
        this.d = cVar.d;
        this.e = cVar.e;
        this.f = cVar.f;
        this.g = cVar.g;
        this.h = cVar.h;
        this.i = cVar.i;
        this.j = cVar.j;
        this.k = cVar.k;
        this.l = cVar.l;
        this.m = cVar.m;
        this.n = cVar.n;
        this.I = cVar.I;
        this.o = cVar.o;
        this.p = cVar.p;
        this.q = cVar.q;
        this.r = cVar.r;
        this.s = cVar.s;
        this.t = cVar.t;
        this.u = cVar.u;
        this.v = cVar.v;
        this.w = cVar.w;
        this.x = cVar.x;
        this.y = cVar.y;
        this.z = cVar.z;
        this.A = cVar.A;
        this.B = cVar.B;
        this.J = cVar.g();
        this.K = cVar.h();
        this.E = cVar.E;
        this.F = cVar.F;
    }

    public static c a(Uri uri) {
        return new c(uri, a.NOT_FOUND, null);
    }

    public final RawContactDeltaList a() {
        return this.o == null ? null : RawContactDeltaList.a(this.o.iterator());
    }

    public final boolean b() {
        return this.L == a.ERROR;
    }

    public final boolean c() {
        return this.L == a.NOT_FOUND;
    }

    public final boolean d() {
        return this.L == a.LOADED;
    }

    public final boolean e() {
        return (this.d == -1 || this.d == 0 || this.d == 1) ? false : true;
    }

    public final boolean f() {
        long j;
        if (!e()) {
            ae<e> b2 = this.o.iterator();
            while (b2.hasNext()) {
                e next = b2.next();
                com.android.contacts.model.account.a g = next.g();
                if (g != null && g.d()) {
                    j = next.b().longValue();
                    break;
                }
            }
        }
        j = -1;
        return j != -1;
    }

    public final boolean g() {
        String d;
        return PhoneCapabilityTester.IsAsusDevice() ? this.J : (this.o == null || (d = this.o.get(0).d()) == null || !b.a.d.equals(d)) ? false : true;
    }

    public final int h() {
        int i;
        if (PhoneCapabilityTester.IsAsusDevice()) {
            i = this.K;
        } else {
            if (this.o != null) {
                e eVar = this.o.get(0);
                String c = eVar.c();
                String d = eVar.d();
                if (c == null || (d != null && !d.equals(b.a.d))) {
                    i = 0;
                } else if ("SIM2".equals(c)) {
                    i = 2;
                }
            }
            i = 1;
        }
        return i;
    }

    public final String toString() {
        return "{requested=" + this.f2022a + ",lookupkey=" + this.e + ",uri=" + this.c + ",status=" + this.L + "}";
    }
}
