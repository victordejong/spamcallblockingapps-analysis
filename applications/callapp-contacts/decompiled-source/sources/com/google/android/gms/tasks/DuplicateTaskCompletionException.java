package com.google.android.gms.tasks;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/DuplicateTaskCompletionException.class */
public final class DuplicateTaskCompletionException extends IllegalStateException {
    private DuplicateTaskCompletionException(String str, Throwable th) {
        super(str, th);
    }

    public static IllegalStateException a(h<?> hVar) {
        String str;
        if (!hVar.a()) {
            return new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
        }
        Exception e = hVar.e();
        if (e != null) {
            str = "failure";
        } else if (hVar.b()) {
            String valueOf = String.valueOf(hVar.d());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 7);
            sb.append("result ");
            sb.append(valueOf);
            str = sb.toString();
        } else {
            str = hVar.c() ? "cancellation" : "unknown issue";
        }
        String valueOf2 = String.valueOf(str);
        return new DuplicateTaskCompletionException(valueOf2.length() != 0 ? "Complete with: ".concat(valueOf2) : new String("Complete with: "), e);
    }
}
