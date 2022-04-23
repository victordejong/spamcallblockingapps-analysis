package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.InternalCoroutinesApi;
import p459j.p460a.p541n0.C13032a;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@InternalCoroutinesApi
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087@\u0018�� \u001f*\u0006\b��\u0010\u0001 \u00012\u00020\u0002:\u0002\u001e\u001fB\u0016\b��\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005J\u0013\u0010\u0016\u001a\u00020\r2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\u000f\u0010\u001a\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00078F¢\u0006\f\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0002X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0010\u001a\u00028��8F¢\u0006\f\u0012\u0004\b\u0011\u0010\t\u001a\u0004\b\u0012\u0010\u0005R\u0019\u0010\u0013\u001a\u0004\u0018\u00018��8F¢\u0006\f\u0012\u0004\b\u0014\u0010\t\u001a\u0004\b\u0015\u0010\u0005ø\u0001��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, m815d2 = {"Lkotlinx/coroutines/channels/ValueOrClosed;", ExifInterface.GPS_DIRECTION_TRUE, "", "holder", "constructor-impl", "(Ljava/lang/Object;)Ljava/lang/Object;", "closeCause", "", "closeCause$annotations", "()V", "getCloseCause-impl", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "isClosed", "", "isClosed-impl", "(Ljava/lang/Object;)Z", C13032a.f29462d, "value$annotations", "getValue-impl", "valueOrNull", "valueOrNull$annotations", "getValueOrNull-impl", "equals", "other", "hashCode", "", "toString", "", "toString-impl", "(Ljava/lang/Object;)Ljava/lang/String;", "Closed", "Companion", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ValueOrClosed.class */
public final class ValueOrClosed<T> {
    public static final Companion Companion = new Companion(null);
    public final Object holder;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b��\u0018��2\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\f"}, m815d2 = {"Lkotlinx/coroutines/channels/ValueOrClosed$Closed;", "", "cause", "", "(Ljava/lang/Throwable;)V", "equals", "", "other", "hashCode", "", "toString", "", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ValueOrClosed$Closed.class */
    public static final class Closed {
        public final Throwable cause;

        public Closed(Throwable th) {
            this.cause = th;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Closed) && C15149k.m384a(this.cause, ((Closed) obj).cause);
        }

        public int hashCode() {
            Throwable th = this.cause;
            return th != null ? th.hashCode() : 0;
        }

        public String toString() {
            return "Closed(" + this.cause + ')';
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0006\b\u0080\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J)\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b\u0001\u0010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0080\bø\u0001��¢\u0006\u0004\b\b\u0010\tJ'\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b\u0001\u0010\u00052\u0006\u0010\n\u001a\u0002H\u0005H\u0080\bø\u0001��¢\u0006\u0004\b\u000b\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, m815d2 = {"Lkotlinx/coroutines/channels/ValueOrClosed$Companion;", "", "()V", "closed", "Lkotlinx/coroutines/channels/ValueOrClosed;", ExifInterface.LONGITUDE_EAST, "cause", "", "closed$kotlinx_coroutines_core", "(Ljava/lang/Throwable;)Ljava/lang/Object;", C13032a.f29462d, "value$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ValueOrClosed$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }

        public final <E> Object closed$kotlinx_coroutines_core(Throwable th) {
            return ValueOrClosed.m41840constructorimpl(new Closed(th));
        }

        public final <E> Object value$kotlinx_coroutines_core(E e) {
            return ValueOrClosed.m41840constructorimpl(e);
        }
    }

    public /* synthetic */ ValueOrClosed(Object obj) {
        this.holder = obj;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ValueOrClosed m41839boximpl(Object obj) {
        return new ValueOrClosed(obj);
    }

    public static /* synthetic */ void closeCause$annotations() {
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static Object m41840constructorimpl(Object obj) {
        return obj;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m41841equalsimpl(Object obj, Object obj2) {
        return (obj2 instanceof ValueOrClosed) && C15149k.m384a(obj, ((ValueOrClosed) obj2).m41849unboximpl());
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m41842equalsimpl0(Object obj, Object obj2) {
        return C15149k.m384a(obj, obj2);
    }

    /* renamed from: getCloseCause-impl  reason: not valid java name */
    public static final Throwable m41843getCloseCauseimpl(Object obj) {
        if (obj instanceof Closed) {
            return ((Closed) obj).cause;
        }
        throw new IllegalStateException("Channel was not closed".toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getValue-impl  reason: not valid java name */
    public static final T m41844getValueimpl(Object obj) {
        if (!(obj instanceof Closed)) {
            return obj;
        }
        throw new IllegalStateException(ChannelsKt.DEFAULT_CLOSE_MESSAGE.toString());
    }

    /* renamed from: getValueOrNull-impl  reason: not valid java name */
    public static final T m41845getValueOrNullimpl(Object obj) {
        T t = (T) obj;
        if (obj instanceof Closed) {
            t = null;
        }
        return t;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m41846hashCodeimpl(Object obj) {
        return obj != null ? obj.hashCode() : 0;
    }

    /* renamed from: isClosed-impl  reason: not valid java name */
    public static final boolean m41847isClosedimpl(Object obj) {
        return obj instanceof Closed;
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m41848toStringimpl(Object obj) {
        String str;
        if (obj instanceof Closed) {
            str = obj.toString();
        } else {
            str = "Value(" + obj + ')';
        }
        return str;
    }

    public static /* synthetic */ void value$annotations() {
    }

    public static /* synthetic */ void valueOrNull$annotations() {
    }

    public boolean equals(Object obj) {
        return m41841equalsimpl(this.holder, obj);
    }

    public int hashCode() {
        return m41846hashCodeimpl(this.holder);
    }

    public String toString() {
        return m41848toStringimpl(this.holder);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ Object m41849unboximpl() {
        return this.holder;
    }
}
