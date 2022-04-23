package p459j.p460a.p582w0;

import android.widget.TextView;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.i3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/i3.class */
public final class C14029i3 {

    /* renamed from: a */
    public static final C14029i3 f31469a = new C14029i3();

    /* renamed from: a */
    public static final void m2751a(TextView textView, NumberInfo numberInfo, RowInfo rowInfo, String str, boolean z, boolean z2) {
        C15149k.m377b(textView, "textView");
        C15149k.m377b(numberInfo, "numberInfo");
        C15149k.m377b(rowInfo, "rowInfo");
        RowInfo.Tertiary a = RowInfo.m28268a(numberInfo, rowInfo, str, z, z2);
        C15149k.m383a((Object) a, "RowInfo.getTertiary(numb…r, isBlocked, isFavorite)");
        m2750a(textView, a);
    }

    /* renamed from: a */
    public static final void m2750a(TextView textView, RowInfo.Tertiary tertiary) {
        C15149k.m377b(textView, "textView");
        C15149k.m377b(tertiary, "tertiary");
        if (tertiary.type != null) {
            textView.setVisibility(0);
            textView.setText(tertiary.name);
            int i = tertiary.highlightColor;
            if (i != 0) {
                textView.setTextColor(i);
            } else {
                textView.setTextColor(C14167t.m2311e());
            }
            if (tertiary.leftCompoundDrawable != 0) {
                textView.setPadding(0, C14217x3.m2201a(3.0f), 0, C14217x3.m2201a(4.0f));
                textView.setCompoundDrawablesWithIntrinsicBounds(tertiary.leftCompoundDrawable, 0, 0, 0);
                return;
            }
            textView.setPadding(0, 0, 0, 0);
            textView.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            return;
        }
        textView.setVisibility(8);
    }
}
