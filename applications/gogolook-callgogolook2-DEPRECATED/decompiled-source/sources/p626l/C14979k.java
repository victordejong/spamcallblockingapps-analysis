package p626l;

import androidx.exifinterface.media.ExifInterface;
import java.io.Serializable;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��6\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087@\u0018�� \u001e*\u0006\b��\u0010\u0001 \u00012\u00060\u0002j\u0002`\u0003:\u0002\u001e\u001fB\u0016\b\u0001\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007J\u0013\u0010\u0010\u001a\u00020\t2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\u000f\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00018��H\u0087\b¢\u0006\u0004\b\u0017\u0010\u0007J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\u000f\u0010\u001a\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0011\u0010\b\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058��X\u0081\u0004¢\u0006\b\n��\u0012\u0004\b\u000e\u0010\u000fø\u0001��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, m815d2 = {"Lkotlin/Result;", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", C13032a.f29462d, "", "constructor-impl", "(Ljava/lang/Object;)Ljava/lang/Object;", "isFailure", "", "isFailure-impl", "(Ljava/lang/Object;)Z", "isSuccess", "isSuccess-impl", "value$annotations", "()V", "equals", "other", "exceptionOrNull", "", "exceptionOrNull-impl", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "getOrNull", "getOrNull-impl", "hashCode", "", "toString", "", "toString-impl", "(Ljava/lang/Object;)Ljava/lang/String;", "Companion", "Failure", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.k */
/* loaded from: classes3-dex2jar.jar:l/k.class */
public final class C14979k<T> implements Serializable {

    /* renamed from: a */
    public static final C14980a f33013a = new C14980a(null);

    /* renamed from: l.k$a */
    /* loaded from: classes3-dex2jar.jar:l/k$a.class */
    public static final class C14980a {
        public C14980a() {
        }

        public /* synthetic */ C14980a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: l.k$b */
    /* loaded from: classes3-dex2jar.jar:l/k$b.class */
    public static final class C14981b implements Serializable {

        /* renamed from: a */
        public final Throwable f33014a;

        public C14981b(Throwable th) {
            C15149k.m377b(th, "exception");
            this.f33014a = th;
        }

        public boolean equals(Object obj) {
            return (obj instanceof C14981b) && C15149k.m384a(this.f33014a, ((C14981b) obj).f33014a);
        }

        public int hashCode() {
            return this.f33014a.hashCode();
        }

        public String toString() {
            return "Failure(" + this.f33014a + ')';
        }
    }

    /* renamed from: a */
    public static Object m657a(Object obj) {
        return obj;
    }

    /* renamed from: b */
    public static final Throwable m656b(Object obj) {
        return obj instanceof C14981b ? ((C14981b) obj).f33014a : null;
    }

    /* renamed from: c */
    public static final boolean m655c(Object obj) {
        return obj instanceof C14981b;
    }

    /* renamed from: d */
    public static final boolean m654d(Object obj) {
        return !(obj instanceof C14981b);
    }
}
