package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b��\u0018��2\u00020\u00012\u00020\u0002B!\u0012\u0006\u0010\u0016\u001a\u00020\u0010\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0018\u0010\u0019J\u0011\u0010\u0003\u001a\u0004\u0018\u00010��H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u001a"}, d2 = {"Lkotlinx/coroutines/JobCancellationException;", "Lkotlinx/coroutines/CopyableThrowable;", "Ljava/util/concurrent/CancellationException;", "createCopy", "()Lkotlinx/coroutines/JobCancellationException;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "fillInStackTrace", "()Ljava/lang/Throwable;", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/Job;", "job", "Lkotlinx/coroutines/Job;", "message", "cause", "<init>", "(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/JobCancellationException.class */
public final class JobCancellationException extends CancellationException implements CopyableThrowable<JobCancellationException> {
    @JvmField
    @NotNull

    /* renamed from: f */
    public final Job f21200f;

    public JobCancellationException(@NotNull String str, @Nullable Throwable th, @NotNull Job job) {
        super(str);
        this.f21200f = job;
        if (th != null) {
            initCause(th);
        }
    }

    @Nullable
    /* renamed from: b */
    public JobCancellationException mo1092a() {
        if (!DebugKt.m1306c()) {
            return null;
        }
        String message = getMessage();
        Intrinsics.m1832c(message);
        return new JobCancellationException(message, this, this.f21200f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
        if (kotlin.jvm.internal.Intrinsics.m1834a(r0.getCause(), getCause()) != false) goto L_0x0043;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            r1 = r3
            if (r0 == r1) goto L_0x0043
            r0 = r4
            boolean r0 = r0 instanceof kotlinx.coroutines.JobCancellationException
            if (r0 == 0) goto L_0x003e
            r0 = r4
            kotlinx.coroutines.JobCancellationException r0 = (kotlinx.coroutines.JobCancellationException) r0
            r4 = r0
            r0 = r4
            java.lang.String r0 = r0.getMessage()
            r1 = r3
            java.lang.String r1 = r1.getMessage()
            boolean r0 = kotlin.jvm.internal.Intrinsics.m1834a(r0, r1)
            if (r0 == 0) goto L_0x003e
            r0 = r4
            kotlinx.coroutines.Job r0 = r0.f21200f
            r1 = r3
            kotlinx.coroutines.Job r1 = r1.f21200f
            boolean r0 = kotlin.jvm.internal.Intrinsics.m1834a(r0, r1)
            if (r0 == 0) goto L_0x003e
            r0 = r4
            java.lang.Throwable r0 = r0.getCause()
            r1 = r3
            java.lang.Throwable r1 = r1.getCause()
            boolean r0 = kotlin.jvm.internal.Intrinsics.m1834a(r0, r1)
            if (r0 == 0) goto L_0x003e
            goto L_0x0043
        L_0x003e:
            r0 = 0
            r5 = r0
            goto L_0x0045
        L_0x0043:
            r0 = 1
            r5 = r0
        L_0x0045:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobCancellationException.equals(java.lang.Object):boolean");
    }

    @Override // java.lang.Throwable
    @NotNull
    public Throwable fillInStackTrace() {
        if (DebugKt.m1306c()) {
            return super.fillInStackTrace();
        }
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public int hashCode() {
        String message = getMessage();
        Intrinsics.m1832c(message);
        int hashCode = message.hashCode();
        int hashCode2 = this.f21200f.hashCode();
        Throwable cause = getCause();
        return (((hashCode * 31) + hashCode2) * 31) + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    @NotNull
    public String toString() {
        return super.toString() + "; job=" + this.f21200f;
    }
}
