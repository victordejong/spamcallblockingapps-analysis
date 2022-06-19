package p280x;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import p007a6.C0033h;
@SuppressLint({"LogConditional"})
/* renamed from: x.a */
/* loaded from: classes-dex2jar.jar:x/a.class */
public class C4794a {
    /* renamed from: a */
    public static String m447a(Context context, int i) {
        if (i != -1) {
            try {
                return context.getResources().getResourceEntryName(i);
            } catch (Exception e) {
                return C0033h.m8886k("?", i);
            }
        }
        return "UNKNOWN";
    }

    /* renamed from: b */
    public static String m446b(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception e) {
            return "UNKNOWN";
        }
    }
}
