package p459j.p460a.p474c0.p483e.p487d;

import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\u00020\u0001:\u0005\u0003\u0004\u0005\u0006\u0007B\u0007\b\u0002¢\u0006\u0002\u0010\u0002\u0082\u0001\u0004\b\t\n\u000b¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/ui/Navigation;", "", "()V", "CloseAction", "ErrorPage", "ErrorType", "ResultPage", "ScanPage", "Lgogolook/callgogolook2/messaging/scan/ui/Navigation$ErrorPage;", "Lgogolook/callgogolook2/messaging/scan/ui/Navigation$ScanPage;", "Lgogolook/callgogolook2/messaging/scan/ui/Navigation$ResultPage;", "Lgogolook/callgogolook2/messaging/scan/ui/Navigation$CloseAction;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.e.d.h */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/h.class */
public abstract class AbstractC11765h {

    /* renamed from: j.a.c0.e.d.h$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/h$a.class */
    public static final class C11766a extends AbstractC11765h {

        /* renamed from: a */
        public static final C11766a f26403a = new C11766a();

        public C11766a() {
            super(null);
        }
    }

    /* renamed from: j.a.c0.e.d.h$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/h$b.class */
    public static final class C11767b extends AbstractC11765h {

        /* renamed from: a */
        public final EnumC11768c f26404a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11767b(EnumC11768c cVar) {
            super(null);
            C15149k.m377b(cVar, "errorType");
            this.f26404a = cVar;
        }

        /* renamed from: a */
        public final EnumC11768c m8332a() {
            return this.f26404a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C11767b) && C15149k.m384a(this.f26404a, ((C11767b) obj).f26404a);
            }
            return true;
        }

        public int hashCode() {
            EnumC11768c cVar = this.f26404a;
            return cVar != null ? cVar.hashCode() : 0;
        }

        public String toString() {
            return "ErrorPage(errorType=" + this.f26404a + ")";
        }
    }

    /* renamed from: j.a.c0.e.d.h$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/h$c.class */
    public enum EnumC11768c {
        UNKNOWN,
        NETWORK,
        TIMEOUT
    }

    /* renamed from: j.a.c0.e.d.h$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/h$d.class */
    public static final class C11769d extends AbstractC11765h {

        /* renamed from: a */
        public static final C11769d f26409a = new C11769d();

        public C11769d() {
            super(null);
        }
    }

    /* renamed from: j.a.c0.e.d.h$e */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/h$e.class */
    public static final class C11770e extends AbstractC11765h {

        /* renamed from: a */
        public static final C11770e f26410a = new C11770e();

        public C11770e() {
            super(null);
        }
    }

    public AbstractC11765h() {
    }

    public /* synthetic */ AbstractC11765h(C15145g gVar) {
        this();
    }
}
