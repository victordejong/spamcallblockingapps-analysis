package p193e.p194a.p1041l0;

import android.content.ContentResolver;
import java.util.LinkedHashSet;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1041l0.AbstractC17356k;
import p193e.p194a.p997k3.p998j.C16487j;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.l0.m */
/* loaded from: classes6-dex2jar.jar:e/a/l0/m.class */
public final class C17359m implements AbstractC17356k {

    /* renamed from: a */
    public AbstractC17356k.AbstractC17357a f48612a;

    /* renamed from: b */
    public final Set<String> f48613b = new LinkedHashSet();

    /* renamed from: c */
    public final Set<Long> f48614c = new LinkedHashSet();

    /* renamed from: d */
    public boolean f48615d;

    /* renamed from: e */
    public final f f48616e;

    /* renamed from: f */
    public final ContentResolver f48617f;

    @e(c = "com.truecaller.callhistory.DialerCacheManagerImpl", f = "DialerCacheManagerImpl.kt", l = {53}, m = "invalidate")
    /* renamed from: e.a.l0.m$a */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/m$a.class */
    public static final class C17360a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f48618d;

        /* renamed from: e */
        public int f48619e;

        /* renamed from: g */
        public Object f48621g;

        /* renamed from: h */
        public Object f48622h;

        /* renamed from: i */
        public Object f48623i;

        /* renamed from: j */
        public Object f48624j;

        /* renamed from: k */
        public long f48625k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17360a(d dVar) {
            super(dVar);
            C17359m.this = r4;
        }

        /* renamed from: s */
        public final Object m16187s(Object obj) {
            this.f48618d = obj;
            this.f48619e |= Integer.MIN_VALUE;
            return C17359m.this.mo16188e(this);
        }
    }

    @Inject
    public C17359m(@Named("IO") f fVar, C16487j c16487j, ContentResolver contentResolver) {
        l.e(fVar, "ioCoroutineContext");
        l.e(c16487j, "rawContactDao");
        l.e(contentResolver, "contentResolver");
        this.f48616e = fVar;
        this.f48617f = contentResolver;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17356k
    /* renamed from: a */
    public void mo16191a(String str) {
        l.e(str, "tcId");
        synchronized (this.f48613b) {
            this.f48613b.add(str);
        }
    }

    @Override // p193e.p194a.p1041l0.AbstractC17356k
    /* renamed from: b */
    public void mo16190b() {
        this.f48615d = true;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17356k
    /* renamed from: c */
    public void mo16189c(AbstractC17356k.AbstractC17357a abstractC17357a) {
        l.e(abstractC17357a, "listener");
        this.f48612a = abstractC17357a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0156  */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0143 -> B:27:0x0145). Please submit an issue!!! */
    @Override // p193e.p194a.p1041l0.AbstractC17356k
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo16188e(s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1041l0.C17359m.mo16188e(s1.w.d):java.lang.Object");
    }
}
