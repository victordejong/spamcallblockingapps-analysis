package com.google.android.gms.tasks;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/DuplicateTaskCompletionException.class */
public final class DuplicateTaskCompletionException extends IllegalStateException {
    public DuplicateTaskCompletionException(String str, Throwable th) {
        super(str, th);
    }

    /* renamed from: of */
    public static IllegalStateException m8620of(Task<?> task) {
        String str;
        if (!task.mo8602d()) {
            return new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
        }
        Exception a = task.mo8617a();
        if (a != null) {
            str = "failure";
        } else if (task.mo8601e()) {
            String valueOf = String.valueOf(task.mo8606b());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 7);
            sb.append("result ");
            sb.append(valueOf);
            str = sb.toString();
        } else {
            str = task.mo8603c() ? "cancellation" : "unknown issue";
        }
        String valueOf2 = String.valueOf(str);
        return new DuplicateTaskCompletionException(valueOf2.length() != 0 ? "Complete with: ".concat(valueOf2) : new String("Complete with: "), a);
    }
}
