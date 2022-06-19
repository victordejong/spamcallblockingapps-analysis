package com.truecaller.log;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b1\u0018��2\u00060\u0001j\u0002`\u0002:\u0003\u0012\u0013\u0014B\u001b\b\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0010\u0010\u0011J,\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0004\u001a\u00020\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0082\u0010¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\r\u0082\u0001\u0003\u0015\u0016\u0017¨\u0006\u0018"}, d2 = {"Lcom/truecaller/log/MutingException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "", "original", "", "Ljava/lang/StackTraceElement;", "parentStackTrace", "mergeStackTrace", "(Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;", "throwable", "topStackTraceElement", "buildStackTraceSeparator", "(Ljava/lang/Throwable;Ljava/lang/StackTraceElement;)Ljava/lang/StackTraceElement;", "", "message", "<init>", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "CloningException", "MessageModificationException", "MutingInitException", "Lcom/truecaller/log/MutingException$MutingInitException;", "Lcom/truecaller/log/MutingException$CloningException;", "Lcom/truecaller/log/MutingException$MessageModificationException;", "log_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/log/MutingException.class */
public abstract class MutingException extends RuntimeException {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/truecaller/log/MutingException$CloningException;", "Lcom/truecaller/log/MutingException;", "", "reason", "", "original", "<init>", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "log_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/MutingException$CloningException.class */
    public static final class CloningException extends MutingException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public CloningException(java.lang.String r6, java.lang.Throwable r7) {
            /*
                r5 = this;
                r0 = r6
                java.lang.String r1 = "reason"
                s1.z.c.l.e(r0, r1)
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r1.<init>()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "<Unable to clone an exception of type ["
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                if (r0 == 0) goto L22
                r0 = r7
                java.lang.Class r0 = r0.getClass()
                r9 = r0
                goto L25
            L22:
                r0 = 0
                r9 = r0
            L25:
                r0 = r8
                r1 = r9
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                java.lang.String r1 = "] due to "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                r1 = r6
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                r1 = 62
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r8
                java.lang.String r1 = r1.toString()
                r2 = r7
                r3 = 0
                r0.<init>(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.log.MutingException.CloningException.<init>(java.lang.String, java.lang.Throwable):void");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/truecaller/log/MutingException$MessageModificationException;", "Lcom/truecaller/log/MutingException;", "", "reason", "", "original", "<init>", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "log_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/MutingException$MessageModificationException.class */
    public static final class MessageModificationException extends MutingException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public MessageModificationException(java.lang.String r6, java.lang.Throwable r7) {
            /*
                r5 = this;
                r0 = r6
                java.lang.String r1 = "reason"
                s1.z.c.l.e(r0, r1)
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r1.<init>()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "<Unable to modify message of an exception of type ["
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                if (r0 == 0) goto L22
                r0 = r7
                java.lang.Class r0 = r0.getClass()
                r9 = r0
                goto L25
            L22:
                r0 = 0
                r9 = r0
            L25:
                r0 = r8
                r1 = r9
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                java.lang.String r1 = "] due to "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                r1 = r6
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                r1 = 62
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r8
                java.lang.String r1 = r1.toString()
                r2 = r7
                r3 = 0
                r0.<init>(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.log.MutingException.MessageModificationException.<init>(java.lang.String, java.lang.Throwable):void");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/truecaller/log/MutingException$MutingInitException;", "Lcom/truecaller/log/MutingException;", "", "reason", "", "original", "<init>", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "log_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* loaded from: classes10-dex2jar.jar:com/truecaller/log/MutingException$MutingInitException.class */
    public static final class MutingInitException extends MutingException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public MutingInitException(java.lang.String r6, java.lang.Throwable r7) {
            /*
                r5 = this;
                r0 = r6
                java.lang.String r1 = "reason"
                s1.z.c.l.e(r0, r1)
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r1.<init>()
                r8 = r0
                r0 = r8
                java.lang.String r1 = "<Unable to start muting of an exception of type ["
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                if (r0 == 0) goto L22
                r0 = r7
                java.lang.Class r0 = r0.getClass()
                r9 = r0
                goto L25
            L22:
                r0 = 0
                r9 = r0
            L25:
                r0 = r8
                r1 = r9
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                java.lang.String r1 = "] due to "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                r1 = r6
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                r1 = 62
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r8
                java.lang.String r1 = r1.toString()
                r2 = r7
                r3 = 0
                r0.<init>(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.log.MutingException.MutingInitException.<init>(java.lang.String, java.lang.Throwable):void");
        }
    }

    private MutingException(String str, Throwable th) {
        super(str, null, true, true);
        StackTraceElement[] stackTrace = getStackTrace();
        boolean z = true;
        if (stackTrace != null) {
            z = stackTrace.length == 0;
        }
        if (z || th == null) {
            return;
        }
        setStackTrace(mergeStackTrace(th, stackTrace));
    }

    public /* synthetic */ MutingException(String str, Throwable th, f fVar) {
        this(str, th);
    }

    private final StackTraceElement buildStackTraceSeparator(Throwable th, StackTraceElement stackTraceElement) {
        return new StackTraceElement("<<<ORIGINAL_CAUSE>>>", th.getClass().getCanonicalName() + '.' + stackTraceElement.getMethodName(), stackTraceElement.getFileName(), stackTraceElement.getLineNumber());
    }

    private final StackTraceElement[] mergeStackTrace(Throwable th, StackTraceElement[] stackTraceElementArr) {
        StackTraceElement[] stackTraceElementArr2;
        StackTraceElement[] stackTraceElementArr3 = stackTraceElementArr;
        Throwable th2 = th;
        while (true) {
            StackTraceElement[] stackTrace = th2.getStackTrace();
            l.d(stackTrace, "original.stackTrace");
            if (!(stackTrace.length == 0)) {
                int length = stackTraceElementArr3.length;
                int length2 = stackTrace.length + length + 1;
                StackTraceElement[] stackTraceElementArr4 = new StackTraceElement[length2];
                int i = 0;
                while (i < length2) {
                    stackTraceElementArr4[i] = i < length ? stackTraceElementArr3[i] : i == length ? buildStackTraceSeparator(th2, (StackTraceElement) C25225a.m3845s0(stackTrace)) : stackTrace[(i - length) - 1];
                    i++;
                }
                stackTraceElementArr2 = stackTraceElementArr4;
            } else {
                stackTraceElementArr2 = new StackTraceElement[0];
            }
            th2 = th2.getCause();
            if (th2 != null) {
                stackTraceElementArr3 = stackTraceElementArr2;
            } else {
                return stackTraceElementArr2;
            }
        }
    }
}
