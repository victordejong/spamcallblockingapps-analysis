package com.unknownphone.callblocker.p180a;

import android.content.ContentValues;
import android.database.Cursor;
import com.unknownphone.callblocker.custom.C5287g;
/* renamed from: com.unknownphone.callblocker.a.c */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/c.class */
public class C5207c {

    /* renamed from: a */
    private long f21901a;

    /* renamed from: b */
    private short f21902b;

    /* renamed from: c */
    private String f21903c;

    /* renamed from: d */
    private String f21904d;

    public C5207c() {
    }

    public C5207c(Cursor cursor) {
        this.f21901a = cursor.getLong(cursor.getColumnIndex("id"));
        this.f21902b = cursor.getShort(cursor.getColumnIndex("type"));
        this.f21903c = cursor.getString(cursor.getColumnIndex("name"));
        this.f21904d = cursor.getString(cursor.getColumnIndex("number"));
    }

    /* renamed from: a */
    public long m1227a() {
        return this.f21901a;
    }

    /* renamed from: a */
    public void m1226a(String str) {
        this.f21903c = str;
    }

    /* renamed from: a */
    public void m1225a(short s) {
        this.f21902b = s;
    }

    /* renamed from: b */
    public short m1224b() {
        return this.f21902b;
    }

    /* renamed from: b */
    public void m1223b(String str) {
        this.f21904d = str;
    }

    /* renamed from: c */
    public String m1222c() {
        return this.f21903c;
    }

    /* renamed from: d */
    public String m1221d() {
        return this.f21904d;
    }

    /* renamed from: e */
    public ContentValues m1220e() {
        ContentValues contentValues = new ContentValues();
        if (this.f21901a != 0) {
            contentValues.put("id", Long.valueOf(this.f21901a));
        }
        contentValues.put("type", Short.valueOf(this.f21902b));
        contentValues.put("name", C5287g.m1076c(this.f21903c));
        contentValues.put("number", C5287g.m1076c(this.f21904d));
        return contentValues;
    }
}
