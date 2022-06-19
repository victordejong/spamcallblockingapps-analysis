package p193e.p194a.p1011l.p1020g;

import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.l.g.l */
/* loaded from: classes12-dex2jar.jar:e/a/l/g/l.class */
public abstract class AbstractC16893l {

    /* renamed from: e.a.l.g.l$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/g/l$a.class */
    public static final class C16894a extends AbstractC16893l {

        /* renamed from: a */
        public final String f47450a;

        /* renamed from: b */
        public final List<C16891j> f47451b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16894a(String str, List<C16891j> list) {
            super(null);
            l.e(str, RemoteMessageConst.DATA);
            l.e(list, "actions");
            this.f47450a = str;
            this.f47451b = list;
        }

        @Override // p193e.p194a.p1011l.p1020g.AbstractC16893l
        /* renamed from: a */
        public List<C16891j> mo16797a() {
            return this.f47451b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C16894a)) {
                    return false;
                }
                C16894a c16894a = (C16894a) obj;
                return l.a(this.f47450a, c16894a.f47450a) && l.a(this.f47451b, c16894a.f47451b);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f47450a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            List<C16891j> list = this.f47451b;
            if (list != null) {
                i = list.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ContactPicked(data=");
            m8728C.append(this.f47450a);
            m8728C.append(", actions=");
            return C22128a.m8602l(m8728C, this.f47451b, ")");
        }
    }

    /* renamed from: e.a.l.g.l$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/g/l$b.class */
    public static final class C16895b extends AbstractC16893l {

        /* renamed from: a */
        public final String f47452a;

        /* renamed from: b */
        public final String f47453b;

        /* renamed from: c */
        public final List<C16891j> f47454c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16895b(String str, String str2, List<C16891j> list) {
            super(null);
            l.e(str, "title");
            l.e(str2, "description");
            l.e(list, "actions");
            this.f47452a = str;
            this.f47453b = str2;
            this.f47454c = list;
        }

        @Override // p193e.p194a.p1011l.p1020g.AbstractC16893l
        /* renamed from: a */
        public List<C16891j> mo16797a() {
            return this.f47454c;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C16895b)) {
                    return false;
                }
                C16895b c16895b = (C16895b) obj;
                return l.a(this.f47452a, c16895b.f47452a) && l.a(this.f47453b, c16895b.f47453b) && l.a(this.f47454c, c16895b.f47454c);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f47452a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f47453b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            List<C16891j> list = this.f47454c;
            if (list != null) {
                i = list.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Error(title=");
            m8728C.append(this.f47452a);
            m8728C.append(", description=");
            m8728C.append(this.f47453b);
            m8728C.append(", actions=");
            return C22128a.m8602l(m8728C, this.f47454c, ")");
        }
    }

    /* renamed from: e.a.l.g.l$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/g/l$c.class */
    public static final class C16896c extends AbstractC16893l {

        /* renamed from: a */
        public final String f47455a;

        /* renamed from: b */
        public final String f47456b;

        /* renamed from: c */
        public final List<C16891j> f47457c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16896c(String str, String str2, List<C16891j> list) {
            super(null);
            l.e(str, "senderInfo");
            l.e(str2, "expireInfo");
            l.e(list, "actions");
            this.f47455a = str;
            this.f47456b = str2;
            this.f47457c = list;
        }

        @Override // p193e.p194a.p1011l.p1020g.AbstractC16893l
        /* renamed from: a */
        public List<C16891j> mo16797a() {
            return this.f47457c;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C16896c)) {
                    return false;
                }
                C16896c c16896c = (C16896c) obj;
                return l.a(this.f47455a, c16896c.f47455a) && l.a(this.f47456b, c16896c.f47456b) && l.a(this.f47457c, c16896c.f47457c);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f47455a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f47456b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            List<C16891j> list = this.f47457c;
            if (list != null) {
                i = list.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("GiftReceived(senderInfo=");
            m8728C.append(this.f47455a);
            m8728C.append(", expireInfo=");
            m8728C.append(this.f47456b);
            m8728C.append(", actions=");
            return C22128a.m8602l(m8728C, this.f47457c, ")");
        }
    }

    /* renamed from: e.a.l.g.l$d */
    /* loaded from: classes12-dex2jar.jar:e/a/l/g/l$d.class */
    public static final class C16897d extends AbstractC16893l {

        /* renamed from: a */
        public final List<C16891j> f47458a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16897d(List<C16891j> list) {
            super(null);
            l.e(list, "actions");
            this.f47458a = list;
        }

        @Override // p193e.p194a.p1011l.p1020g.AbstractC16893l
        /* renamed from: a */
        public List<C16891j> mo16797a() {
            return this.f47458a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16897d) && l.a(this.f47458a, ((C16897d) obj).f47458a);
            }
            return true;
        }

        public int hashCode() {
            List<C16891j> list = this.f47458a;
            return list != null ? list.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8602l(C22128a.m8728C("SendGiftInit(actions="), this.f47458a, ")");
        }
    }

    public AbstractC16893l(f fVar) {
    }

    /* renamed from: a */
    public abstract List<C16891j> mo16797a();
}
