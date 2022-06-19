package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import com.bumptech.glide.load.engine.C1751j;
import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
import com.bumptech.glide.p073f.C1422e;
import com.bumptech.glide.p073f.p074a.AbstractC1411i;
import com.bumptech.glide.p073f.p074a.C1407e;
import java.util.Map;
/* renamed from: com.bumptech.glide.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e.class */
public class C1391e extends ContextWrapper {

    /* renamed from: a */
    static final AbstractC1463j<?, ?> f4597a = new C1354b();

    /* renamed from: b */
    private final Handler f4598b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    private final AbstractC1673b f4599c;

    /* renamed from: d */
    private final Registry f4600d;

    /* renamed from: e */
    private final C1407e f4601e;

    /* renamed from: f */
    private final C1422e f4602f;

    /* renamed from: g */
    private final Map<Class<?>, AbstractC1463j<?, ?>> f4603g;

    /* renamed from: h */
    private final C1751j f4604h;

    /* renamed from: i */
    private final int f4605i;

    public C1391e(Context context, AbstractC1673b abstractC1673b, Registry registry, C1407e c1407e, C1422e c1422e, Map<Class<?>, AbstractC1463j<?, ?>> map, C1751j c1751j, int i) {
        super(context.getApplicationContext());
        this.f4599c = abstractC1673b;
        this.f4600d = registry;
        this.f4601e = c1407e;
        this.f4602f = c1422e;
        this.f4603g = map;
        this.f4604h = c1751j;
        this.f4605i = i;
    }

    /* renamed from: a */
    public <X> AbstractC1411i<ImageView, X> m17226a(ImageView imageView, Class<X> cls) {
        return this.f4601e.m17188a(imageView, cls);
    }

    /* renamed from: a */
    public C1422e m17227a() {
        return this.f4602f;
    }

    /* renamed from: a */
    public <T> AbstractC1463j<?, T> m17225a(Class<T> cls) {
        AbstractC1463j<?, ?> abstractC1463j = this.f4603g.get(cls);
        AbstractC1463j<?, ?> abstractC1463j2 = abstractC1463j;
        if (abstractC1463j == null) {
            abstractC1463j2 = abstractC1463j;
            for (Map.Entry<Class<?>, AbstractC1463j<?, ?>> entry : this.f4603g.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    abstractC1463j2 = entry.getValue();
                }
            }
        }
        AbstractC1463j<?, ?> abstractC1463j3 = abstractC1463j2;
        if (abstractC1463j2 == null) {
            abstractC1463j3 = f4597a;
        }
        return (AbstractC1463j<?, T>) abstractC1463j3;
    }

    /* renamed from: b */
    public C1751j m17224b() {
        return this.f4604h;
    }

    /* renamed from: c */
    public Registry m17223c() {
        return this.f4600d;
    }

    /* renamed from: d */
    public int m17222d() {
        return this.f4605i;
    }

    /* renamed from: e */
    public AbstractC1673b m17221e() {
        return this.f4599c;
    }
}
