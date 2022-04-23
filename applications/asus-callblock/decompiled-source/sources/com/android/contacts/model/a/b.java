package com.android.contacts.model.a;

import android.content.ContentValues;
import com.android.contacts.model.account.a;
import com.google.a.b.q;
import java.text.SimpleDateFormat;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public String f1996a;

    /* renamed from: b  reason: collision with root package name */
    public String f1997b;
    public int c;
    public int d;
    public int e;
    public int f;
    public boolean g;
    public a.f h;
    public a.f i;
    public a.f j;
    public boolean k;
    public String l;
    public int m;
    public List<a.d> n;
    public List<a.c> o;
    public ContentValues p;
    public final int q;
    public SimpleDateFormat r;
    public SimpleDateFormat s;
    public int t;

    public b() {
        this.k = false;
        this.q = 2131427673;
        this.t = 1;
    }

    public b(String str, int i, int i2, int i3) {
        this.k = false;
        this.f1997b = str;
        this.c = i;
        this.f = i2;
        this.g = true;
        this.m = -1;
        this.q = i3;
        this.t = 1;
    }

    private static String a(Iterable<?> iterable) {
        return iterable == null ? "(null)" : q.a(iterable.iterator());
    }

    private static String a(SimpleDateFormat simpleDateFormat) {
        return simpleDateFormat == null ? "(null)" : simpleDateFormat.toPattern();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DataKind:");
        sb.append(" resPackageName=").append(this.f1996a);
        sb.append(" mimeType=").append(this.f1997b);
        sb.append(" titleRes=").append(this.c);
        sb.append(" iconAltRes=").append(this.d);
        sb.append(" iconAltDescriptionRes=").append(this.e);
        sb.append(" weight=").append(this.f);
        sb.append(" editable=").append(this.g);
        sb.append(" actionHeader=").append(this.h);
        sb.append(" actionAltHeader=").append(this.i);
        sb.append(" actionBody=").append(this.j);
        sb.append(" actionBodySocial=").append(this.k);
        sb.append(" typeColumn=").append(this.l);
        sb.append(" typeOverallMax=").append(this.m);
        sb.append(" typeList=").append(a(this.n));
        sb.append(" fieldList=").append(a(this.o));
        sb.append(" defaultValues=").append(this.p);
        sb.append(" editorLayoutResourceId=").append(this.q);
        sb.append(" dateFormatWithoutYear=").append(a(this.r));
        sb.append(" dateFormatWithYear=").append(a(this.s));
        return sb.toString();
    }
}
