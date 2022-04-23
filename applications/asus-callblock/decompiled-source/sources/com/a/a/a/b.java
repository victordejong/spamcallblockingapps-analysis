package com.a.a.a;

import android.content.Context;
import com.a.a.a.b.a;
import com.a.a.a.b.g;
import com.a.a.a.d.b.c;
import com.a.a.a.d.d;
import com.asus.updatesdk.BuildConfig;
import com.google.gson.annotations.SerializedName;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/a/a/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public String f349a;

    /* renamed from: b  reason: collision with root package name */
    public URL f350b;
    public com.a.a.a.a.b c;
    public g d;
    public com.google.gson.g e;
    public Context f;
    public a g;
    private com.a.a.a.a.a h;
    private boolean i;
    private com.a.a.a.c.a j;
    private com.a.a.a.d.c.a k;

    public b(String str, String str2, Context context) {
        this(new URL(str), str2, context);
    }

    private b(URL url, String str, Context context) {
        com.google.gson.g gVar = new com.google.gson.g();
        gVar.a(Date.class, new com.a.a.a.d.b.a());
        c cVar = new c();
        gVar.a(Long.class, cVar);
        gVar.a(Long.TYPE, cVar);
        gVar.g = true;
        com.a.a.a.b.b bVar = new com.a.a.a.b.b();
        if (url.toString().trim().length() == 0) {
            throw new IllegalArgumentException("Invalid Application URL");
        } else if (context == null) {
            throw new IllegalArgumentException("Context cannot be null");
        } else {
            URL url2 = url;
            if (url.getPath() == BuildConfig.FLAVOR) {
                try {
                    url2 = new URL(url.toString() + "/");
                } catch (MalformedURLException e) {
                    url2 = url;
                }
            }
            this.f350b = url2;
            this.f349a = str;
            this.h = new com.a.a.a.a.a(this);
            this.d = null;
            this.i = false;
            this.c = null;
            this.f = context;
            this.e = gVar;
            this.g = bVar;
            this.j = new com.a.a.a.c.a(this, context);
            this.k = new com.a.a.a.d.c.a(this);
        }
    }

    public final <E> d<E> a(String str, Class<E> cls) {
        Field[] declaredFields;
        if (cls.isInterface() || Modifier.isAbstract(cls.getModifiers())) {
            throw new IllegalArgumentException("The class type used for creating a MobileServiceTable must be a concrete class");
        }
        int i = 0;
        for (Field field : cls.getDeclaredFields()) {
            SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
            if (serializedName != null) {
                if (serializedName.value().equalsIgnoreCase("id")) {
                    i++;
                }
            } else if (field.getName().equalsIgnoreCase("id")) {
                i++;
            }
        }
        if (i == 1) {
            return new d<>(str, this, cls);
        }
        throw new IllegalArgumentException("The class representing the MobileServiceTable must have a single id property defined");
    }
}
