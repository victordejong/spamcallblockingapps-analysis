package p067d1;

import p099g1.AbstractC2795a;
import p099g1.AbstractC2796b;
import p110h1.C2993a;
/* renamed from: d1.g */
/* loaded from: classes-dex2jar.jar:d1/g.class */
public class C2155g extends AbstractC2796b.AbstractC2797a {

    /* renamed from: b */
    public C2140a f7888b;

    /* renamed from: c */
    public final AbstractC2156a f7889c;

    /* renamed from: d1.g$a */
    /* loaded from: classes-dex2jar.jar:d1/g$a.class */
    public static abstract class AbstractC2156a {

        /* renamed from: a */
        public final int f7890a;

        public AbstractC2156a(int i) {
            this.f7890a = i;
        }

        /* renamed from: a */
        public abstract void mo3808a(AbstractC2795a abstractC2795a);

        /* renamed from: b */
        public abstract C2157b mo3807b(AbstractC2795a abstractC2795a);
    }

    /* renamed from: d1.g$b */
    /* loaded from: classes-dex2jar.jar:d1/g$b.class */
    public static class C2157b {

        /* renamed from: a */
        public final boolean f7891a;

        /* renamed from: b */
        public final String f7892b;

        public C2157b(boolean z, String str) {
            this.f7891a = z;
            this.f7892b = str;
        }
    }

    public C2155g(C2140a c2140a, AbstractC2156a abstractC2156a, String str, String str2) {
        super(abstractC2156a.f7890a);
        this.f7888b = c2140a;
        this.f7889c = abstractC2156a;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02fb A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00fd A[EDGE_INSN: B:92:0x00fd->B:45:0x00fd ?: BREAK  , SYNTHETIC] */
    @Override // p099g1.AbstractC2796b.AbstractC2797a
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo3000b(p099g1.AbstractC2795a r5, int r6, int r7) {
        /*
            Method dump skipped, instructions count: 764
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p067d1.C2155g.mo3000b(g1.a, int, int):void");
    }

    /* renamed from: c */
    public final void m3809c(AbstractC2795a abstractC2795a) {
        C2993a c2993a = (C2993a) abstractC2795a;
        c2993a.f10085a.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        c2993a.f10085a.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c103703e120ae8cc73c9248622f3cd1e')");
    }
}
