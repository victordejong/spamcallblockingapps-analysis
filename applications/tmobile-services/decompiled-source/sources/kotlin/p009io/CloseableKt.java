package kotlin.p009io;

import java.io.Closeable;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u001f\u0010\u0004\u001a\u00020\u0003*\u0004\u0018\u00010��2\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001aM\u0010\u000b\u001a\u00028\u0001\"\n\b��\u0010\u0006*\u0004\u0018\u00010��\"\u0004\b\u0001\u0010\u0007*\u00028��2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\bH\u0087\bø\u0001��ø\u0001\u0001\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u000b\u0010\f\u0082\u0002\u000f\n\u0006\b\u0011(\n0\u0001\n\u0005\b\u009920\u0001¨\u0006\r"}, d2 = {"Ljava/io/Closeable;", "", "cause", "", "closeFinally", "(Ljava/io/Closeable;Ljava/lang/Throwable;)V", "T", "R", "Lkotlin/Function1;", "block", "Requires newer compiler version to be inlined correctly.", "use", "(Ljava/io/Closeable;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@JvmName
/* renamed from: kotlin.io.CloseableKt */
/* loaded from: classes2-dex2jar.jar:kotlin/io/CloseableKt.class */
public final class CloseableKt {
    @SinceKotlin
    @PublishedApi
    /* renamed from: a */
    public static final void m1887a(@Nullable Closeable closeable, @Nullable Throwable th) {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                ExceptionsKt__ExceptionsKt.m2491a(th, th2);
            }
        }
    }
}
