package p081h.p082a.p083a.p087m;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import p081h.p082a.p083a.AbstractC5339c;
import p081h.p082a.p083a.C5349g;
/* renamed from: h.a.a.m.b */
/* loaded from: classes-dex2jar.jar:h/a/a/m/b.class */
public class C5402b {

    /* renamed from: a */
    public final Context f13533a;

    /* renamed from: b */
    public String f13534b;
    @Nullable

    /* renamed from: c */
    public AbstractC5339c f13535c;

    /* renamed from: d */
    public final Map<String, C5349g> f13536d;

    /* renamed from: e */
    public final Map<String, Bitmap> f13537e = new HashMap();

    public C5402b(Drawable.Callback callback, String str, AbstractC5339c cVar, Map<String, C5349g> map) {
        this.f13534b = str;
        if (!TextUtils.isEmpty(str)) {
            String str2 = this.f13534b;
            if (str2.charAt(str2.length() - 1) != '/') {
                this.f13534b += '/';
            }
        }
        if (!(callback instanceof View)) {
            this.f13536d = new HashMap();
            this.f13533a = null;
            return;
        }
        this.f13533a = ((View) callback).getContext();
        this.f13536d = map;
        m25502a(cVar);
    }

    @Nullable
    /* renamed from: a */
    public Bitmap m25501a(String str) {
        Bitmap bitmap = this.f13537e.get(str);
        Bitmap bitmap2 = bitmap;
        if (bitmap == null) {
            C5349g gVar = this.f13536d.get(str);
            if (gVar == null) {
                return null;
            }
            AbstractC5339c cVar = this.f13535c;
            if (cVar != null) {
                Bitmap a = cVar.m25654a(gVar);
                if (a != null) {
                    this.f13537e.put(str, a);
                }
                return a;
            }
            try {
                if (!TextUtils.isEmpty(this.f13534b)) {
                    AssetManager assets = this.f13533a.getAssets();
                    InputStream open = assets.open(this.f13534b + gVar.m25578a());
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inScaled = true;
                    options.inDensity = 160;
                    bitmap2 = BitmapFactory.decodeStream(open, null, options);
                    this.f13537e.put(str, bitmap2);
                } else {
                    throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
                }
            } catch (IOException e) {
                return null;
            }
        }
        return bitmap2;
    }

    /* renamed from: a */
    public void m25504a() {
        Iterator<Map.Entry<String, Bitmap>> it = this.f13537e.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().recycle();
            it.remove();
        }
    }

    /* renamed from: a */
    public void m25502a(@Nullable AbstractC5339c cVar) {
        this.f13535c = cVar;
    }

    /* renamed from: a */
    public boolean m25503a(Context context) {
        return (context == null && this.f13533a == null) || (context != null && this.f13533a.equals(context));
    }
}
