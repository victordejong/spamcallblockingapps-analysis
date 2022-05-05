package com.bumptech.glide.load.c;

import android.text.TextUtils;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public final URL f3564a;

    /* renamed from: b  reason: collision with root package name */
    public final e f3565b;
    public final String c;
    public String d;
    public URL e;

    public d(String str) {
        this(str, e.f3566a);
    }

    private d(String str, e eVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("String url must not be empty or null: " + str);
        } else if (eVar == null) {
            throw new IllegalArgumentException("Headers must not be null");
        } else {
            this.c = str;
            this.f3564a = null;
            this.f3565b = eVar;
        }
    }

    public d(URL url) {
        this(url, e.f3566a);
    }

    private d(URL url, e eVar) {
        if (url == null) {
            throw new IllegalArgumentException("URL must not be null!");
        } else if (eVar == null) {
            throw new IllegalArgumentException("Headers must not be null");
        } else {
            this.f3564a = url;
            this.c = null;
            this.f3565b = eVar;
        }
    }

    public final String a() {
        return this.c != null ? this.c : this.f3564a.toString();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof d) {
            d dVar = (d) obj;
            z = false;
            if (a().equals(dVar.a())) {
                z = false;
                if (this.f3565b.equals(dVar.f3565b)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return (a().hashCode() * 31) + this.f3565b.hashCode();
    }

    public String toString() {
        return a() + '\n' + this.f3565b.toString();
    }
}
