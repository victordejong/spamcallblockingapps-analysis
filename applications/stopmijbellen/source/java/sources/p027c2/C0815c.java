package p027c2;

import android.support.p012v4.media.C0082b;
import android.util.TypedValue;
import android.view.View;
/* renamed from: c2.c */
/* loaded from: classes-dex2jar.jar:c2/c.class */
public final class C0815c {
    static {
        new TypedValue();
    }

    /* renamed from: a */
    public static <T> T m7348a(View view, int i, String str, Class<T> cls) {
        try {
            return cls.cast(view);
        } catch (ClassCastException e) {
            String m7346c = m7346c(view, i);
            StringBuilder sb = new StringBuilder();
            sb.append("View '");
            sb.append(m7346c);
            sb.append("' with ID ");
            sb.append(i);
            sb.append(" for ");
            throw new IllegalStateException(C0082b.m8754h(sb, str, " was of the wrong type. See cause for more info."), e);
        }
    }

    /* renamed from: b */
    public static View m7347b(View view, int i, String str) {
        View findViewById = view.findViewById(i);
        if (findViewById != null) {
            return findViewById;
        }
        String m7346c = m7346c(view, i);
        StringBuilder sb = new StringBuilder();
        sb.append("Required view '");
        sb.append(m7346c);
        sb.append("' with ID ");
        sb.append(i);
        sb.append(" for ");
        throw new IllegalStateException(C0082b.m8754h(sb, str, " was not found. If this view is optional add '@Nullable' (fields) or '@Optional' (methods) annotation."));
    }

    /* renamed from: c */
    public static String m7346c(View view, int i) {
        return view.isInEditMode() ? "<unavailable while editing>" : view.getContext().getResources().getResourceEntryName(i);
    }
}
