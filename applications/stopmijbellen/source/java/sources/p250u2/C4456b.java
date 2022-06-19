package p250u2;

import com.google.android.gms.internal.ads.C1676a;
import java.util.Arrays;
import java.util.Objects;
import p218r2.EnumC4186d;
import p250u2.AbstractC4469i;
/* renamed from: u2.b */
/* loaded from: classes-dex2jar.jar:u2/b.class */
public final class C4456b extends AbstractC4469i {

    /* renamed from: a */
    public final String f13831a;

    /* renamed from: b */
    public final byte[] f13832b;

    /* renamed from: c */
    public final EnumC4186d f13833c;

    /* renamed from: u2.b$b */
    /* loaded from: classes-dex2jar.jar:u2/b$b.class */
    public static final class C4458b extends AbstractC4469i.AbstractC4470a {

        /* renamed from: a */
        public String f13834a;

        /* renamed from: b */
        public byte[] f13835b;

        /* renamed from: c */
        public EnumC4186d f13836c;

        @Override // p250u2.AbstractC4469i.AbstractC4470a
        /* renamed from: a */
        public AbstractC4469i mo889a() {
            String str = this.f13834a == null ? " backendName" : "";
            String str2 = str;
            if (this.f13836c == null) {
                str2 = C1676a.m4789h(str, " priority");
            }
            if (str2.isEmpty()) {
                return new C4456b(this.f13834a, this.f13835b, this.f13836c, null);
            }
            throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str2));
        }

        @Override // p250u2.AbstractC4469i.AbstractC4470a
        /* renamed from: b */
        public AbstractC4469i.AbstractC4470a mo888b(String str) {
            Objects.requireNonNull(str, "Null backendName");
            this.f13834a = str;
            return this;
        }

        @Override // p250u2.AbstractC4469i.AbstractC4470a
        /* renamed from: c */
        public AbstractC4469i.AbstractC4470a mo887c(EnumC4186d enumC4186d) {
            Objects.requireNonNull(enumC4186d, "Null priority");
            this.f13836c = enumC4186d;
            return this;
        }
    }

    public C4456b(String str, byte[] bArr, EnumC4186d enumC4186d, C4457a c4457a) {
        this.f13831a = str;
        this.f13832b = bArr;
        this.f13833c = enumC4186d;
    }

    @Override // p250u2.AbstractC4469i
    /* renamed from: b */
    public String mo892b() {
        return this.f13831a;
    }

    @Override // p250u2.AbstractC4469i
    /* renamed from: c */
    public byte[] mo891c() {
        return this.f13832b;
    }

    @Override // p250u2.AbstractC4469i
    /* renamed from: d */
    public EnumC4186d mo890d() {
        return this.f13833c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0054, code lost:
        if (r3.f13833c.equals(r0.mo890d()) != false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r4
            boolean r0 = r0 instanceof p250u2.AbstractC4469i
            if (r0 == 0) goto L5e
            r0 = r4
            u2.i r0 = (p250u2.AbstractC4469i) r0
            r6 = r0
            r0 = r3
            java.lang.String r0 = r0.f13831a
            r1 = r6
            java.lang.String r1 = r1.mo892b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L5a
            r0 = r3
            byte[] r0 = r0.f13832b
            r7 = r0
            r0 = r6
            boolean r0 = r0 instanceof p250u2.C4456b
            if (r0 == 0) goto L3b
            r0 = r6
            u2.b r0 = (p250u2.C4456b) r0
            byte[] r0 = r0.f13832b
            r4 = r0
            goto L40
        L3b:
            r0 = r6
            byte[] r0 = r0.mo891c()
            r4 = r0
        L40:
            r0 = r7
            r1 = r4
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto L5a
            r0 = r3
            r2.d r0 = r0.f13833c
            r1 = r6
            r2.d r1 = r1.mo890d()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L5a
            goto L5c
        L5a:
            r0 = 0
            r5 = r0
        L5c:
            r0 = r5
            return r0
        L5e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p250u2.C4456b.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ((((this.f13831a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f13832b)) * 1000003) ^ this.f13833c.hashCode();
    }
}
