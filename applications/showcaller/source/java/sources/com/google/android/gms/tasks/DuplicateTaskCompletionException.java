package com.google.android.gms.tasks;

import androidx.annotation.RecentlyNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/DuplicateTaskCompletionException.class */
public final class DuplicateTaskCompletionException extends IllegalStateException {
    private DuplicateTaskCompletionException(String str, Throwable th) {
        super(str, th);
    }

    @RecentlyNonNull
    /* renamed from: of */
    public static IllegalStateException m5839of(@RecentlyNonNull AbstractC7966g<?> abstractC7966g) {
        String str;
        if (!abstractC7966g.mo5811p()) {
            return new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
        }
        Exception mo5815l = abstractC7966g.mo5815l();
        if (mo5815l != null) {
            str = "failure";
        } else if (abstractC7966g.mo5810q()) {
            String valueOf = String.valueOf(abstractC7966g.mo5814m());
            StringBuilder sb = new StringBuilder(valueOf.length() + 7);
            sb.append("result ");
            sb.append(valueOf);
            str = sb.toString();
        } else {
            str = abstractC7966g.mo5812o() ? "cancellation" : "unknown issue";
        }
        String valueOf2 = String.valueOf(str);
        return new DuplicateTaskCompletionException(valueOf2.length() != 0 ? "Complete with: ".concat(valueOf2) : new String("Complete with: "), mo5815l);
    }
}
