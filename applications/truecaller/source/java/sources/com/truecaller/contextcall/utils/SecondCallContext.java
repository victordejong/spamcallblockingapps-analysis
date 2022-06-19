package com.truecaller.contextcall.utils;

import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/utils/SecondCallContext.class */
public abstract class SecondCallContext {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/truecaller/contextcall/utils/SecondCallContext$Context;", "", "<init>", "(Ljava/lang/String;I)V", "IN_CALL_UI", "POPUP_CALLER_ID", "context-call_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/utils/SecondCallContext$Context.class */
    public enum Context {
        IN_CALL_UI,
        POPUP_CALLER_ID
    }

    /* renamed from: com.truecaller.contextcall.utils.SecondCallContext$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/utils/SecondCallContext$a.class */
    public static final class C3789a extends SecondCallContext {

        /* renamed from: a */
        public final String f11442a;

        /* renamed from: b */
        public final boolean f11443b;

        /* renamed from: c */
        public final boolean f11444c;

        /* renamed from: d */
        public final Integer f11445d;

        /* renamed from: e */
        public final boolean f11446e;

        public C3789a(String str, boolean z, boolean z2, Integer num, boolean z3) {
            super(null);
            this.f11442a = str;
            this.f11443b = z;
            this.f11444c = z2;
            this.f11445d = num;
            this.f11446e = z3;
        }

        @Override // com.truecaller.contextcall.utils.SecondCallContext
        /* renamed from: a */
        public String mo35583a() {
            return this.f11442a;
        }

        @Override // com.truecaller.contextcall.utils.SecondCallContext
        /* renamed from: b */
        public Integer mo35582b() {
            return this.f11445d;
        }

        @Override // com.truecaller.contextcall.utils.SecondCallContext
        /* renamed from: c */
        public boolean mo35581c() {
            return this.f11444c;
        }

        @Override // com.truecaller.contextcall.utils.SecondCallContext
        /* renamed from: d */
        public boolean mo35580d() {
            return this.f11443b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C3789a)) {
                    return false;
                }
                C3789a c3789a = (C3789a) obj;
                return l.a(this.f11442a, c3789a.f11442a) && this.f11443b == c3789a.f11443b && this.f11444c == c3789a.f11444c && l.a(this.f11445d, c3789a.f11445d) && this.f11446e == c3789a.f11446e;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f11442a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            boolean z = this.f11443b;
            int i2 = 1;
            int i3 = z ? 1 : 0;
            if (z) {
                i3 = 1;
            }
            boolean z2 = this.f11444c;
            int i4 = z2 ? 1 : 0;
            if (z2) {
                i4 = 1;
            }
            Integer num = this.f11445d;
            if (num != null) {
                i = num.hashCode();
            }
            boolean z3 = this.f11446e;
            if (!z3) {
                i2 = z3 ? 1 : 0;
            }
            return (((((((hashCode * 31) + i3) * 31) + i4) * 31) + i) * 31) + i2;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("InCallUi(normalizedNumber=");
            m8728C.append(this.f11442a);
            m8728C.append(", isSpam=");
            m8728C.append(this.f11443b);
            m8728C.append(", isBusiness=");
            m8728C.append(this.f11444c);
            m8728C.append(", simSlotIndex=");
            m8728C.append(this.f11445d);
            m8728C.append(", isConferenceCall=");
            return C22128a.m8590o(m8728C, this.f11446e, ")");
        }
    }

    /* renamed from: com.truecaller.contextcall.utils.SecondCallContext$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/utils/SecondCallContext$b.class */
    public static final class C3790b extends SecondCallContext {

        /* renamed from: a */
        public final String f11447a;

        /* renamed from: b */
        public final boolean f11448b;

        /* renamed from: c */
        public final boolean f11449c;

        /* renamed from: d */
        public final Integer f11450d;

        public C3790b(String str, boolean z, boolean z2, Integer num) {
            super(null);
            this.f11447a = str;
            this.f11448b = z;
            this.f11449c = z2;
            this.f11450d = num;
        }

        @Override // com.truecaller.contextcall.utils.SecondCallContext
        /* renamed from: a */
        public String mo35583a() {
            return this.f11447a;
        }

        @Override // com.truecaller.contextcall.utils.SecondCallContext
        /* renamed from: b */
        public Integer mo35582b() {
            return this.f11450d;
        }

        @Override // com.truecaller.contextcall.utils.SecondCallContext
        /* renamed from: c */
        public boolean mo35581c() {
            return this.f11449c;
        }

        @Override // com.truecaller.contextcall.utils.SecondCallContext
        /* renamed from: d */
        public boolean mo35580d() {
            return this.f11448b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C3790b)) {
                    return false;
                }
                C3790b c3790b = (C3790b) obj;
                return l.a(this.f11447a, c3790b.f11447a) && this.f11448b == c3790b.f11448b && this.f11449c == c3790b.f11449c && l.a(this.f11450d, c3790b.f11450d);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f11447a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            boolean z = this.f11448b;
            int i2 = 1;
            int i3 = z ? 1 : 0;
            if (z) {
                i3 = 1;
            }
            boolean z2 = this.f11449c;
            if (!z2) {
                i2 = z2 ? 1 : 0;
            }
            Integer num = this.f11450d;
            if (num != null) {
                i = num.hashCode();
            }
            return (((((hashCode * 31) + i3) * 31) + i2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("PopupCallerId(normalizedNumber=");
            m8728C.append(this.f11447a);
            m8728C.append(", isSpam=");
            m8728C.append(this.f11448b);
            m8728C.append(", isBusiness=");
            m8728C.append(this.f11449c);
            m8728C.append(", simSlotIndex=");
            return C22128a.m8689L2(m8728C, this.f11450d, ")");
        }
    }

    public SecondCallContext() {
    }

    public SecondCallContext(f fVar) {
    }

    /* renamed from: a */
    public abstract String mo35583a();

    /* renamed from: b */
    public abstract Integer mo35582b();

    /* renamed from: c */
    public abstract boolean mo35581c();

    /* renamed from: d */
    public abstract boolean mo35580d();
}
