package p000;
/* renamed from: pl1 */
/* loaded from: classes3-dex2jar.jar:pl1.class */
public class pl1 extends ol1 {
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static final <T> void m917a(Appendable appendable, T t, jk1<? super T, ? extends CharSequence> jk1Var) {
        String valueOf;
        CharSequence charSequence;
        qk1.m744c(appendable, "$this$appendElement");
        if (jk1Var != null) {
            charSequence = (T) jk1Var.mo451a(t);
        } else {
            boolean z = t != 0 ? t instanceof CharSequence : true;
            charSequence = t;
            if (!z) {
                if (t instanceof Character) {
                    appendable.append(((Character) t).charValue());
                    return;
                }
                valueOf = String.valueOf(t);
                appendable.append(valueOf);
            }
        }
        valueOf = charSequence;
        appendable.append(valueOf);
    }
}
