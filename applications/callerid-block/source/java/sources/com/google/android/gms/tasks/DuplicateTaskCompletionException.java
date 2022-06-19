package com.google.android.gms.tasks;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/DuplicateTaskCompletionException.class */
public final class DuplicateTaskCompletionException extends IllegalStateException {
    private DuplicateTaskCompletionException(String str, Throwable th) {
        super(str, th);
    }

    /* renamed from: of */
    public static IllegalStateException m3791of(AbstractC2397g<?> abstractC2397g) {
        String str;
        if (!abstractC2397g.m3773n()) {
            return new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
        }
        Exception m3777j = abstractC2397g.m3777j();
        if (m3777j != null) {
            str = "failure";
        } else if (abstractC2397g.m3772o()) {
            String valueOf = String.valueOf(abstractC2397g.m3776k());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 7);
            sb.append("result ");
            sb.append(valueOf);
            str = sb.toString();
        } else {
            str = abstractC2397g.m3774m() ? "cancellation" : "unknown issue";
        }
        String valueOf2 = String.valueOf(str);
        return new DuplicateTaskCompletionException(valueOf2.length() != 0 ? "Complete with: ".concat(valueOf2) : new String("Complete with: "), m3777j);
    }
}
