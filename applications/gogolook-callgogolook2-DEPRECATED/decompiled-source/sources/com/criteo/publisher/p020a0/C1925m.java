package com.criteo.publisher.p020a0;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.model.AdSize;
/* renamed from: com.criteo.publisher.a0.m */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/a0/m.class */
public class C1925m {

    /* renamed from: c */
    public static AdSize f2045c = new AdSize(0, 0);

    /* renamed from: d */
    public static AdSize f2046d = new AdSize(0, 0);

    /* renamed from: a */
    public final Context f2047a;

    /* renamed from: b */
    public final C1909b f2048b;

    public C1925m(@NonNull Context context, @NonNull C1909b bVar) {
        this.f2047a = context;
        this.f2048b = bVar;
    }

    /* renamed from: h */
    private DisplayMetrics m36008h() {
        return this.f2047a.getResources().getDisplayMetrics();
    }

    /* renamed from: a */
    public void m36016a() {
        try {
            DisplayMetrics h = m36008h();
            m36015a(Math.round(h.widthPixels / h.density), Math.round(h.heightPixels / h.density));
        } catch (Exception e) {
            throw new Error("Screen parameters can not be empty or null", e);
        }
    }

    /* renamed from: a */
    public void m36015a(int i, int i2) {
        f2045c = new AdSize(i, i2);
        f2046d = new AdSize(i2, i);
    }

    @Nullable
    /* renamed from: b */
    public String m36014b() {
        try {
            return this.f2048b.m36044b(this.f2047a) ? "00000000-0000-0000-0000-000000000000" : this.f2048b.m36045a(this.f2047a);
        } catch (Exception e) {
            Log.e("DeviceUtil", "Error trying to get Advertising id: " + e.getMessage());
            return null;
        }
    }

    /* renamed from: c */
    public AdSize m36013c() {
        return f2046d;
    }

    /* renamed from: d */
    public AdSize m36012d() {
        return f2045c;
    }

    /* renamed from: e */
    public int m36011e() {
        try {
            return this.f2048b.m36044b(this.f2047a) ? 1 : 0;
        } catch (Exception e) {
            Log.e("DeviceUtil", "Error trying to check limited ad tracking: " + e.getMessage());
            return 0;
        }
    }

    /* renamed from: f */
    public boolean m36010f() {
        DisplayMetrics h = m36008h();
        return ((float) Math.min(h.widthPixels, h.heightPixels)) >= h.density * 600.0f;
    }

    /* renamed from: g */
    public boolean m36009g() {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        Log.e("ContentValues", "Unsupported Android version");
        return false;
    }
}
