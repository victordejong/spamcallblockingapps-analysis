package p459j.p460a.p568u;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$xml;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p224e.p293r.AbstractC9132c;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p327b0.C9400f;
import p081h.p203i.p325c.p327b0.C9405k;
import p081h.p203i.p384e.p390x.C10173a;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14199w0;
/* renamed from: j.a.u.c */
/* loaded from: classes2-dex2jar.jar:j/a/u/c.class */
public class C13640c {

    /* renamed from: b */
    public static int f30589b;

    /* renamed from: a */
    public C9400f f30590a;

    /* renamed from: j.a.u.c$a */
    /* loaded from: classes2-dex2jar.jar:j/a/u/c$a.class */
    public class C13641a extends C10173a<List<Integer>> {
        public C13641a(C13640c cVar) {
        }
    }

    /* renamed from: j.a.u.c$b */
    /* loaded from: classes2-dex2jar.jar:j/a/u/c$b.class */
    public class C13642b extends C10173a<List<String>> {
        public C13642b(C13640c cVar) {
        }
    }

    /* renamed from: j.a.u.c$c */
    /* loaded from: classes2-dex2jar.jar:j/a/u/c$c.class */
    public class C13643c implements AbstractC9132c<Void> {

        /* renamed from: a */
        public final /* synthetic */ C9400f f30591a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC13645e f30592b;

        /* renamed from: c */
        public final /* synthetic */ int f30593c;

        public C13643c(C13640c cVar, C9400f fVar, AbstractC13645e eVar, int i) {
            this.f30591a = fVar;
            this.f30592b = eVar;
            this.f30593c = i;
        }

        /* renamed from: a */
        public static /* synthetic */ void m3742a(AbstractC13645e eVar, int i, AbstractC9143h hVar) {
            if (eVar != null) {
                eVar.mo1273a(i, true);
            }
            C14037j3.m2731a().mo2704a(new C14199w0());
        }

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9132c
        /* renamed from: a */
        public void mo3743a(@NonNull AbstractC9143h<Void> hVar) {
            if (hVar.mo16009e()) {
                AbstractC9143h<Boolean> a = this.f30591a.m15315a();
                final AbstractC13645e eVar = this.f30592b;
                final int i = this.f30593c;
                a.mo16025a(new AbstractC9132c() { // from class: j.a.u.a
                    @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9132c
                    /* renamed from: a */
                    public final void mo3743a(AbstractC9143h hVar2) {
                        C13640c.C13643c.m3742a(C13640c.AbstractC13645e.this, i, hVar2);
                    }
                });
                C13915b3.m3057b("pref_firebase_remote_config_last_fetch_time", System.currentTimeMillis());
                return;
            }
            AbstractC13645e eVar2 = this.f30592b;
            if (eVar2 != null) {
                eVar2.mo1273a(this.f30593c, false);
                C14037j3.m2731a().mo2704a(new C14199w0());
            }
        }
    }

    /* renamed from: j.a.u.c$d */
    /* loaded from: classes2-dex2jar.jar:j/a/u/c$d.class */
    public static class C13644d {

        /* renamed from: a */
        public static volatile C13640c f30594a = new C13640c();
    }

    /* renamed from: j.a.u.c$e */
    /* loaded from: classes2-dex2jar.jar:j/a/u/c$e.class */
    public interface AbstractC13645e {
        /* renamed from: a */
        void mo1273a(int i, boolean z);
    }

    /* renamed from: d */
    public static C13640c m3745d() {
        return C13644d.f30594a;
    }

    /* renamed from: a */
    public int m3755a(AbstractC13645e eVar) {
        return m3750a(false, eVar);
    }

    /* renamed from: a */
    public final int m3754a(@Nullable AbstractC13645e eVar, long j) {
        C9400f a = m3756a();
        if (a == null) {
            return -1;
        }
        int i = f30589b;
        f30589b = i + 1;
        a.m15313a(j).mo16025a(new C13643c(this, a, eVar, i));
        return i;
    }

    /* renamed from: a */
    public int m3750a(boolean z, @Nullable AbstractC13645e eVar) {
        return m3754a(eVar, (z || m3747c()) ? 0L : 28800L);
    }

    @Nullable
    /* renamed from: a */
    public final C9400f m3756a() {
        if (this.f30590a == null) {
            m3749b();
        }
        return this.f30590a;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0051  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.String> m3752a(@androidx.annotation.NonNull java.lang.String r5, @androidx.annotation.Nullable java.util.List<java.lang.String> r6) {
        /*
            r4 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r4
            h.i.c.b0.f r0 = r0.m3756a()
            if (r0 == 0) goto L_0x0048
            r0 = r4
            h.i.c.b0.f r0 = r0.m3756a()
            r1 = r5
            java.lang.String r0 = r0.m15296c(r1)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0048
            com.google.gson.Gson r0 = new com.google.gson.Gson     // Catch: s -> 0x0043
            r9 = r0
            r0 = r9
            r0.<init>()     // Catch: s -> 0x0043
            j.a.u.c$b r0 = new j.a.u.c$b     // Catch: s -> 0x0043
            r5 = r0
            r0 = r5
            r1 = r4
            r0.<init>(r1)     // Catch: s -> 0x0043
            r0 = r9
            r1 = r8
            r2 = r5
            java.lang.reflect.Type r2 = r2.m13276b()     // Catch: s -> 0x0043
            java.lang.Object r0 = r0.m30981a(r1, r2)     // Catch: s -> 0x0043
            java.util.List r0 = (java.util.List) r0     // Catch: s -> 0x0043
            r5 = r0
            goto L_0x004a
        L_0x0043:
            r5 = move-exception
            r0 = r5
            p459j.p460a.p582w0.C13973d4.m2952a(r0)
        L_0x0048:
            r0 = r7
            r5 = r0
        L_0x004a:
            r0 = r5
            if (r0 == 0) goto L_0x0051
            goto L_0x0053
        L_0x0051:
            r0 = r6
            r5 = r0
        L_0x0053:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p568u.C13640c.m3752a(java.lang.String, java.util.List):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0051  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.Integer> m3751a(@androidx.annotation.NonNull java.lang.String r5, @androidx.annotation.Nullable java.lang.Integer[] r6) {
        /*
            r4 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r4
            h.i.c.b0.f r0 = r0.m3756a()
            if (r0 == 0) goto L_0x0048
            r0 = r4
            h.i.c.b0.f r0 = r0.m3756a()
            r1 = r5
            java.lang.String r0 = r0.m15296c(r1)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0048
            com.google.gson.Gson r0 = new com.google.gson.Gson     // Catch: s -> 0x0043
            r8 = r0
            r0 = r8
            r0.<init>()     // Catch: s -> 0x0043
            j.a.u.c$a r0 = new j.a.u.c$a     // Catch: s -> 0x0043
            r9 = r0
            r0 = r9
            r1 = r4
            r0.<init>(r1)     // Catch: s -> 0x0043
            r0 = r8
            r1 = r5
            r2 = r9
            java.lang.reflect.Type r2 = r2.m13276b()     // Catch: s -> 0x0043
            java.lang.Object r0 = r0.m30981a(r1, r2)     // Catch: s -> 0x0043
            java.util.List r0 = (java.util.List) r0     // Catch: s -> 0x0043
            r5 = r0
            goto L_0x004a
        L_0x0043:
            r5 = move-exception
            r0 = r5
            p459j.p460a.p582w0.C13973d4.m2952a(r0)
        L_0x0048:
            r0 = r7
            r5 = r0
        L_0x004a:
            r0 = r5
            if (r0 == 0) goto L_0x0051
            goto L_0x005f
        L_0x0051:
            r0 = r6
            if (r0 == 0) goto L_0x005d
            r0 = r6
            java.util.List r0 = java.util.Arrays.asList(r0)
            r5 = r0
            goto L_0x005f
        L_0x005d:
            r0 = 0
            r5 = r0
        L_0x005f:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p568u.C13640c.m3751a(java.lang.String, java.lang.Integer[]):java.util.List");
    }

    /* renamed from: a */
    public boolean m3753a(String str) {
        C9400f a = m3756a();
        return a != null ? a.m15303a(str) : false;
    }

    /* renamed from: b */
    public long m3748b(String str) {
        C9400f a = m3756a();
        return a != null ? a.m15299b(str) : 0L;
    }

    /* renamed from: b */
    public final void m3749b() {
        if (!C9435c.m15182a(MyApplication.m29013o()).isEmpty()) {
            this.f30590a = C9400f.m15297c();
            C9405k.C9407b bVar = new C9405k.C9407b();
            if (m3747c()) {
                bVar.m15291a(0L);
            }
            this.f30590a.m15308a(bVar.m15292a());
            this.f30590a.m15314a(R$xml.remote_config_defaults);
        }
    }

    /* renamed from: c */
    public List<String> m3746c(@NonNull String str) {
        return m3752a(str, new ArrayList());
    }

    /* renamed from: c */
    public final boolean m3747c() {
        return false;
    }

    /* renamed from: d */
    public String m3744d(String str) {
        C9400f a = m3756a();
        if (a == null) {
            return "";
        }
        String c = a.m15296c(str);
        String str2 = c;
        if (TextUtils.isEmpty(c)) {
            str2 = "";
        }
        return str2;
    }
}
