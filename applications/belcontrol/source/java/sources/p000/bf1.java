package p000;

import android.app.Activity;
import android.webkit.WebView;
/* renamed from: bf1 */
/* loaded from: classes3-dex2jar.jar:bf1.class */
public abstract class bf1 {
    /* renamed from: a */
    public static bf1 m5668a(Activity activity) {
        try {
            return new cf1(activity);
        } catch (Exception e) {
            uf1.m397a(e);
            return new if1();
        }
    }

    /* renamed from: b */
    public abstract gf1 mo1574b(String str);

    /* renamed from: c */
    public abstract rf1 mo1573c(WebView webView);
}
