package p193e.p1411b.p1412a.p1419x;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import java.util.HashMap;
import java.util.Map;
import p193e.p1411b.p1412a.p1420y.C21979i;
/* renamed from: e.b.a.x.a */
/* loaded from: classes-dex2jar.jar:e/b/a/x/a.class */
public class C21968a {

    /* renamed from: d */
    public final AssetManager f60991d;

    /* renamed from: a */
    public final C21979i<String> f60988a = new C21979i<>();

    /* renamed from: b */
    public final Map<C21979i<String>, Typeface> f60989b = new HashMap();

    /* renamed from: c */
    public final Map<String, Typeface> f60990c = new HashMap();

    /* renamed from: e */
    public String f60992e = ".ttf";

    public C21968a(Drawable.Callback callback) {
        if (!(callback instanceof View)) {
            this.f60991d = null;
        } else {
            this.f60991d = ((View) callback).getContext().getAssets();
        }
    }
}
