package p626l.p628b0;

import androidx.exifinterface.media.ExifInterface;
import java.lang.Comparable;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000f\n\u0002\u0010��\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\bf\u0018��*\u000e\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\fJ\b\u0010\r\u001a\u00020\nH\u0016R\u0012\u0010\u0004\u001a\u00028��X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00028��X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006¨\u0006\u000e"}, m815d2 = {"Lkotlin/ranges/ClosedRange;", ExifInterface.GPS_DIRECTION_TRUE, "", "", "endInclusive", "getEndInclusive", "()Ljava/lang/Comparable;", "start", "getStart", "contains", "", C13032a.f29462d, "(Ljava/lang/Comparable;)Z", "isEmpty", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.b0.a */
/* loaded from: classes3-dex2jar.jar:l/b0/a.class */
public interface AbstractC14883a<T extends Comparable<? super T>> {

    /* renamed from: l.b0.a$a */
    /* loaded from: classes3-dex2jar.jar:l/b0/a$a.class */
    public static final class C14884a {
        /* renamed from: a */
        public static <T extends Comparable<? super T>> boolean m802a(AbstractC14883a<T> aVar) {
            return aVar.getStart().compareTo(aVar.getEndInclusive()) > 0;
        }

        /* renamed from: a */
        public static <T extends Comparable<? super T>> boolean m801a(AbstractC14883a<T> aVar, T t) {
            C15149k.m377b(t, C13032a.f29462d);
            return t.compareTo(aVar.getStart()) >= 0 && t.compareTo(aVar.getEndInclusive()) <= 0;
        }
    }

    T getEndInclusive();

    T getStart();
}
