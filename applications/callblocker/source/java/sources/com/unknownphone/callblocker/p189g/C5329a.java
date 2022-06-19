package com.unknownphone.callblocker.p189g;

import android.content.ContentValues;
import android.database.Cursor;
import com.unknownphone.callblocker.custom.C5287g;
import org.json.JSONObject;
/* renamed from: com.unknownphone.callblocker.g.a */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/g/a.class */
public class C5329a {

    /* renamed from: a */
    private String f22237a;

    /* renamed from: b */
    private String f22238b;

    public C5329a(Cursor cursor) {
        this.f22237a = cursor.getString(cursor.getColumnIndex("name"));
        this.f22238b = cursor.getString(cursor.getColumnIndex("number"));
    }

    public C5329a(JSONObject jSONObject) {
        this.f22237a = jSONObject.getString("owner");
        this.f22238b = jSONObject.getString("phone");
    }

    /* renamed from: a */
    public String m983a() {
        return this.f22237a;
    }

    /* renamed from: b */
    public String m982b() {
        return this.f22238b;
    }

    /* renamed from: c */
    public ContentValues m981c() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("name", C5287g.m1076c(this.f22237a));
        contentValues.put("number", C5287g.m1076c(this.f22238b));
        return contentValues;
    }
}
