package com.asus.c;

import android.graphics.drawable.Drawable;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/asus/c/b.class */
public final class b implements Comparable<b> {

    /* renamed from: a  reason: collision with root package name */
    public String f2542a;

    /* renamed from: b  reason: collision with root package name */
    public Drawable f2543b;
    public String c;
    public String d;
    public int e;

    /* loaded from: classes-dex2jar.jar:com/asus/c/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Comparator<b> f2544a = new Comparator<b>() { // from class: com.asus.c.b.a.1
            @Override // java.util.Comparator
            public final /* bridge */ /* synthetic */ int compare(b bVar, b bVar2) {
                return bVar2.e - bVar.e;
            }
        };
    }

    public b(String str, Drawable drawable, String str2, String str3, int i) {
        this.f2542a = str;
        this.f2543b = drawable;
        this.c = str2;
        this.d = str3;
        this.e = i;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(b bVar) {
        return a.f2544a.compare(this, bVar);
    }
}
