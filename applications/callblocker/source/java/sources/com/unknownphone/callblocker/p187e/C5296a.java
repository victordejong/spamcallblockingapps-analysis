package com.unknownphone.callblocker.p187e;

import android.content.ContentValues;
import android.database.Cursor;
import com.unknownphone.callblocker.custom.C5287g;
/* renamed from: com.unknownphone.callblocker.e.a */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/e/a.class */
public class C5296a {

    /* renamed from: a */
    private long f22153a;

    /* renamed from: b */
    private long f22154b;

    /* renamed from: c */
    private short f22155c;

    /* renamed from: d */
    private String f22156d;

    /* renamed from: e */
    private String f22157e;

    /* renamed from: f */
    private int f22158f;

    public C5296a() {
    }

    public C5296a(Cursor cursor) {
        this.f22153a = cursor.getLong(cursor.getColumnIndex("id"));
        this.f22154b = cursor.getLong(cursor.getColumnIndex("time"));
        this.f22155c = cursor.getShort(cursor.getColumnIndex("type"));
        this.f22156d = cursor.getString(cursor.getColumnIndex("name"));
        this.f22157e = cursor.getString(cursor.getColumnIndex("number"));
        this.f22158f = cursor.getInt(cursor.getColumnIndex("count"));
    }

    /* renamed from: a */
    public long m1040a() {
        return this.f22153a;
    }

    /* renamed from: a */
    public void m1039a(int i) {
        this.f22158f = i;
    }

    /* renamed from: a */
    public void m1038a(long j) {
        this.f22153a = j;
    }

    /* renamed from: a */
    public void m1037a(String str) {
        this.f22156d = str;
    }

    /* renamed from: a */
    public void m1036a(short s) {
        this.f22155c = s;
    }

    /* renamed from: b */
    public long m1035b() {
        return this.f22154b;
    }

    /* renamed from: b */
    public void m1034b(long j) {
        this.f22154b = j;
    }

    /* renamed from: b */
    public void m1033b(String str) {
        this.f22157e = str;
    }

    /* renamed from: c */
    public short m1032c() {
        return this.f22155c;
    }

    /* renamed from: d */
    public String m1031d() {
        return this.f22156d;
    }

    /* renamed from: e */
    public String m1030e() {
        return this.f22157e;
    }

    /* renamed from: f */
    public int m1029f() {
        return this.f22158f;
    }

    /* renamed from: g */
    public ContentValues m1028g() {
        ContentValues contentValues = new ContentValues();
        if (this.f22153a != 0) {
            contentValues.put("id", Long.valueOf(this.f22153a));
        }
        contentValues.put("time", Long.valueOf(this.f22154b));
        contentValues.put("type", Short.valueOf(this.f22155c));
        contentValues.put("name", C5287g.m1076c(this.f22156d));
        contentValues.put("number", C5287g.m1076c(this.f22157e));
        contentValues.put("count", Integer.valueOf(this.f22158f));
        return contentValues;
    }
}
