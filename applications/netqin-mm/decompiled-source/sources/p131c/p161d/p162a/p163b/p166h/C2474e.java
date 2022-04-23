package p131c.p161d.p162a.p163b.p166h;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: c.d.a.b.h.e */
/* loaded from: classes-dex2jar.jar:c/d/a/b/h/e.class */
public class C2474e {

    /* renamed from: a */
    public final Map<String, Drawable> f9436a = Collections.synchronizedMap(new LinkedHashMap(10, 1.5f, true));

    /* renamed from: b */
    public long f9437b = 0;

    /* renamed from: c */
    public long f9438c = 1000000;

    public C2474e() {
        m29698a(Runtime.getRuntime().maxMemory() / 4);
    }

    /* renamed from: a */
    public final long m29697a(Bitmap bitmap) {
        if (bitmap == null) {
            return 0L;
        }
        return bitmap.getRowBytes() * bitmap.getHeight();
    }

    /* renamed from: a */
    public Drawable m29696a(String str) {
        try {
            if (!this.f9436a.containsKey(str)) {
                return null;
            }
            return this.f9436a.get(str);
        } catch (NullPointerException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public final void m29699a() {
        Log.i("MemoryCache", "cache size=" + this.f9437b + " length=" + this.f9436a.size());
        if (this.f9437b > this.f9438c) {
            Iterator<Map.Entry<String, Drawable>> it = this.f9436a.entrySet().iterator();
            while (it.hasNext()) {
                this.f9437b -= m29697a(((BitmapDrawable) it.next().getValue()).getBitmap());
                it.remove();
                if (this.f9437b <= this.f9438c) {
                    break;
                }
            }
            Log.i("MemoryCache", "Clean cache. New size " + this.f9436a.size());
        }
    }

    /* renamed from: a */
    public final void m29698a(long j) {
        this.f9438c = j;
        StringBuilder sb = new StringBuilder();
        sb.append("MemoryCache will use up to ");
        double d = this.f9438c;
        Double.isNaN(d);
        sb.append((d / 1024.0d) / 1024.0d);
        sb.append("MB");
        Log.i("MemoryCache", sb.toString());
    }

    /* renamed from: a */
    public void m29695a(String str, Drawable drawable) {
        try {
            if (this.f9436a.containsKey(str)) {
                this.f9437b -= m29697a(((BitmapDrawable) this.f9436a.get(str)).getBitmap());
            }
            this.f9436a.put(str, drawable);
            this.f9437b += m29697a(((BitmapDrawable) drawable).getBitmap());
            m29699a();
            Log.d("MemoryCache", "Drawable used from cache");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
