package com.unknownphone.callblocker.p180a.p181a.p182a;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import com.p059a.p060a.C1315a;
import com.unknownphone.callblocker.custom.C5287g;
/* renamed from: com.unknownphone.callblocker.a.a.a.a */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/a/a/a.class */
public class C5151a {

    /* renamed from: a */
    private long f21742a;

    /* renamed from: b */
    private String f21743b;

    /* renamed from: c */
    private String f21744c;

    /* renamed from: d */
    private String f21745d;

    /* renamed from: e */
    private int f21746e;

    public C5151a() {
    }

    public C5151a(Cursor cursor, String str) {
        this.f21742a = cursor.getLong(cursor.getColumnIndex("contact_id"));
        this.f21743b = cursor.getString(cursor.getColumnIndex("display_name"));
        this.f21744c = cursor.getString(cursor.getColumnIndex("photo_thumb_uri"));
        this.f21745d = C5287g.m1072d(str, cursor.getString(cursor.getColumnIndex("data1")));
        this.f21746e = cursor.getInt(cursor.getColumnIndex("version"));
    }

    /* renamed from: a */
    public Drawable m1311a(Context context, int i, int i2, int i3) {
        return TextUtils.isEmpty(this.f21743b) ? null : C1315a.m17518a().mo17498b().mo17503a().mo17501b(C5287g.m1081b(context, i3)).mo17502a(i2).mo17500c().mo17499a(C5287g.m1087a(this.f21743b, 2), i);
    }

    /* renamed from: a */
    public String m1313a() {
        return this.f21744c;
    }

    /* renamed from: a */
    public String m1312a(Context context) {
        return !TextUtils.isEmpty(this.f21743b) ? this.f21743b : context.getString(2131755354);
    }

    /* renamed from: b */
    public Drawable m1309b(Context context) {
        return m1311a(context, Color.parseColor("#d8d8d8"), -1, 17);
    }

    /* renamed from: b */
    public String m1310b() {
        return this.f21745d;
    }
}
