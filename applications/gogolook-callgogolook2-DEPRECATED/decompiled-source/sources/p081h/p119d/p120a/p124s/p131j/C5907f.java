package p081h.p119d.p120a.p124s.p131j;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.p125h.AbstractC5813c;
/* renamed from: h.d.a.s.j.f */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/f.class */
public class C5907f<A> implements AbstractC5918l<A, C5909g> {

    /* renamed from: a */
    public final AbstractC5918l<A, InputStream> f14837a;

    /* renamed from: b */
    public final AbstractC5918l<A, ParcelFileDescriptor> f14838b;

    /* renamed from: h.d.a.s.j.f$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/j/f$a.class */
    public static class C5908a implements AbstractC5813c<C5909g> {

        /* renamed from: a */
        public final AbstractC5813c<InputStream> f14839a;

        /* renamed from: b */
        public final AbstractC5813c<ParcelFileDescriptor> f14840b;

        public C5908a(AbstractC5813c<InputStream> cVar, AbstractC5813c<ParcelFileDescriptor> cVar2) {
            this.f14839a = cVar;
            this.f14840b = cVar2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0036 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public p081h.p119d.p120a.p124s.p131j.C5909g mo24058a(p081h.p119d.p120a.EnumC5779n r6) throws java.lang.Exception {
            /*
                r5 = this;
                r0 = r5
                h.d.a.s.h.c<java.io.InputStream> r0 = r0.f14839a
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L_0x002b
                r0 = r7
                r1 = r6
                java.lang.Object r0 = r0.mo24058a(r1)     // Catch: Exception -> 0x0017
                java.io.InputStream r0 = (java.io.InputStream) r0     // Catch: Exception -> 0x0017
                r7 = r0
                goto L_0x002d
            L_0x0017:
                r7 = move-exception
                java.lang.String r0 = "IVML"
                r1 = 2
                boolean r0 = android.util.Log.isLoggable(r0, r1)
                r0 = r5
                h.d.a.s.h.c<android.os.ParcelFileDescriptor> r0 = r0.f14840b
                if (r0 == 0) goto L_0x0029
                goto L_0x002b
            L_0x0029:
                r0 = r7
                throw r0
            L_0x002b:
                r0 = 0
                r7 = r0
            L_0x002d:
                r0 = r5
                h.d.a.s.h.c<android.os.ParcelFileDescriptor> r0 = r0.f14840b
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L_0x0055
                r0 = r8
                r1 = r6
                java.lang.Object r0 = r0.mo24058a(r1)     // Catch: Exception -> 0x0044
                android.os.ParcelFileDescriptor r0 = (android.os.ParcelFileDescriptor) r0     // Catch: Exception -> 0x0044
                r6 = r0
                goto L_0x0057
            L_0x0044:
                r6 = move-exception
                java.lang.String r0 = "IVML"
                r1 = 2
                boolean r0 = android.util.Log.isLoggable(r0, r1)
                r0 = r7
                if (r0 == 0) goto L_0x0053
                goto L_0x0055
            L_0x0053:
                r0 = r6
                throw r0
            L_0x0055:
                r0 = 0
                r6 = r0
            L_0x0057:
                h.d.a.s.j.g r0 = new h.d.a.s.j.g
                r1 = r0
                r2 = r7
                r3 = r6
                r1.<init>(r2, r3)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p119d.p120a.p124s.p131j.C5907f.C5908a.mo24058a(h.d.a.n):h.d.a.s.j.g");
        }

        @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
        /* renamed from: a */
        public void mo24059a() {
            AbstractC5813c<InputStream> cVar = this.f14839a;
            if (cVar != null) {
                cVar.mo24059a();
            }
            AbstractC5813c<ParcelFileDescriptor> cVar2 = this.f14840b;
            if (cVar2 != null) {
                cVar2.mo24059a();
            }
        }

        @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
        public void cancel() {
            AbstractC5813c<InputStream> cVar = this.f14839a;
            if (cVar != null) {
                cVar.cancel();
            }
            AbstractC5813c<ParcelFileDescriptor> cVar2 = this.f14840b;
            if (cVar2 != null) {
                cVar2.cancel();
            }
        }

        @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
        public String getId() {
            AbstractC5813c<InputStream> cVar = this.f14839a;
            return cVar != null ? cVar.getId() : this.f14840b.getId();
        }
    }

    public C5907f(AbstractC5918l<A, InputStream> lVar, AbstractC5918l<A, ParcelFileDescriptor> lVar2) {
        if (lVar == null && lVar2 == null) {
            throw new NullPointerException("At least one of streamLoader and fileDescriptorLoader must be non null");
        }
        this.f14837a = lVar;
        this.f14838b = lVar2;
    }

    @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5918l
    /* renamed from: a */
    public AbstractC5813c<C5909g> mo24060a(A a, int i, int i2) {
        AbstractC5918l<A, InputStream> lVar = this.f14837a;
        AbstractC5813c<InputStream> a2 = lVar != null ? lVar.mo24060a(a, i, i2) : null;
        AbstractC5918l<A, ParcelFileDescriptor> lVar2 = this.f14838b;
        AbstractC5813c<ParcelFileDescriptor> a3 = lVar2 != null ? lVar2.mo24060a(a, i, i2) : null;
        if (a2 == null && a3 == null) {
            return null;
        }
        return new C5908a(a2, a3);
    }
}
