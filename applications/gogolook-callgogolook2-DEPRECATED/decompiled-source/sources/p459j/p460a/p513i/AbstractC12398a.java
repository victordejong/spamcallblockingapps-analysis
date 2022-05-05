package p459j.p460a.p513i;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import okhttp3.ResponseBody;
import p626l.C14976h;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u0002:\u0003\u0006\u0007\bB\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016\u0082\u0001\u0003\t\n\u000b¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/api/ApiResult;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "toString", "", "Error", "HttpException", "Success", "Lgogolook/callgogolook2/api/ApiResult$Success;", "Lgogolook/callgogolook2/api/ApiResult$Error;", "Lgogolook/callgogolook2/api/ApiResult$HttpException;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.i.a */
/* loaded from: classes2-dex2jar.jar:j/a/i/a.class */
public abstract class AbstractC12398a<T> {

    /* renamed from: j.a.i.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/i/a$a.class */
    public static final class C12399a extends AbstractC12398a {

        /* renamed from: a */
        public final int f27973a;

        /* renamed from: b */
        public final ResponseBody f27974b;

        public C12399a(int i, ResponseBody responseBody) {
            super(null);
            this.f27973a = i;
            this.f27974b = responseBody;
        }

        /* renamed from: a */
        public final ResponseBody m6243a() {
            return this.f27974b;
        }

        /* renamed from: b */
        public final int m6242b() {
            return this.f27973a;
        }
    }

    /* renamed from: j.a.i.a$b */
    /* loaded from: classes2-dex2jar.jar:j/a/i/a$b.class */
    public static final class C12400b extends AbstractC12398a {

        /* renamed from: a */
        public final Exception f27975a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12400b(Exception exc) {
            super(null);
            C15149k.m377b(exc, "exception");
            this.f27975a = exc;
        }

        /* renamed from: a */
        public final Exception m6241a() {
            return this.f27975a;
        }
    }

    /* renamed from: j.a.i.a$c */
    /* loaded from: classes2-dex2jar.jar:j/a/i/a$c.class */
    public static final class C12401c<T> extends AbstractC12398a<T> {

        /* renamed from: a */
        public final int f27976a;

        /* renamed from: b */
        public final T f27977b;

        public C12401c(int i, T t) {
            super(null);
            this.f27976a = i;
            this.f27977b = t;
        }

        /* renamed from: a */
        public final int m6240a() {
            return this.f27976a;
        }

        /* renamed from: b */
        public final T m6239b() {
            return this.f27977b;
        }
    }

    public AbstractC12398a() {
    }

    public /* synthetic */ AbstractC12398a(C15145g gVar) {
        this();
    }

    public String toString() {
        String str;
        if (this instanceof C12401c) {
            StringBuilder sb = new StringBuilder();
            sb.append("ApiResult Success[code=");
            C12401c cVar = (C12401c) this;
            sb.append(cVar.m6240a());
            sb.append(", data=");
            sb.append(cVar.m6239b());
            sb.append(']');
            str = sb.toString();
        } else if (this instanceof C12399a) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ApiResult Error[code=");
            C12399a aVar = (C12399a) this;
            sb2.append(aVar.m6242b());
            sb2.append(", body=");
            ResponseBody a = aVar.m6243a();
            sb2.append(a != null ? a.string() : null);
            sb2.append(']');
            str = sb2.toString();
        } else if (this instanceof C12400b) {
            str = "ApiResult OnException[exception=" + ((C12400b) this).m6241a().getMessage() + ']';
        } else {
            throw new C14976h();
        }
        return str;
    }
}
