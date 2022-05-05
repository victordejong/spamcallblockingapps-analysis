package p081h.p082a.p083a.p087m;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;
import p081h.p082a.p083a.C5338b;
import p081h.p082a.p083a.p088n.C5413h;
/* renamed from: h.a.a.m.a */
/* loaded from: classes-dex2jar.jar:h/a/a/m/a.class */
public class C5401a {

    /* renamed from: d */
    public final AssetManager f13530d;
    @Nullable

    /* renamed from: e */
    public C5338b f13531e;

    /* renamed from: a */
    public final C5413h<String> f13527a = new C5413h<>();

    /* renamed from: b */
    public final Map<C5413h<String>, Typeface> f13528b = new HashMap();

    /* renamed from: c */
    public final Map<String, Typeface> f13529c = new HashMap();

    /* renamed from: f */
    public String f13532f = ".ttf";

    public C5401a(Drawable.Callback callback, @Nullable C5338b bVar) {
        this.f13531e = bVar;
        if (!(callback instanceof View)) {
            this.f13530d = null;
        } else {
            this.f13530d = ((View) callback).getContext().getAssets();
        }
    }

    /* renamed from: a */
    public final Typeface m25507a(Typeface typeface, String str) {
        boolean contains = str.contains("Italic");
        boolean contains2 = str.contains("Bold");
        int i = (!contains || !contains2) ? contains ? 2 : contains2 ? 1 : 0 : 3;
        return typeface.getStyle() == i ? typeface : Typeface.create(typeface, i);
    }

    /* renamed from: a */
    public final Typeface m25506a(String str) {
        Typeface typeface = this.f13529c.get(str);
        if (typeface != null) {
            return typeface;
        }
        C5338b bVar = this.f13531e;
        if (bVar != null) {
            bVar.m25656a(str);
            throw null;
        } else if (bVar != null) {
            bVar.m25655b(str);
            throw null;
        } else {
            Typeface createFromAsset = Typeface.createFromAsset(this.f13530d, "fonts/" + str + this.f13532f);
            this.f13529c.put(str, createFromAsset);
            return createFromAsset;
        }
    }

    /* renamed from: a */
    public Typeface m25505a(String str, String str2) {
        this.f13527a.m25483a(str, str2);
        Typeface typeface = this.f13528b.get(this.f13527a);
        if (typeface != null) {
            return typeface;
        }
        Typeface a = m25507a(m25506a(str), str2);
        this.f13528b.put(this.f13527a, a);
        return a;
    }
}
