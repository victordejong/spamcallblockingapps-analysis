package p459j.p460a.p474c0.p491g;

import android.app.Activity;
import android.app.Fragment;
import android.app.PendingIntent;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import java.util.ArrayList;
import p459j.p460a.p474c0.AbstractC11516a;
/* renamed from: j.a.c0.g.w */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/w.class */
public abstract class AbstractC12126w {
    /* renamed from: a */
    public static AbstractC12126w m7095a() {
        return AbstractC11516a.m9413n().mo9398k();
    }

    /* renamed from: a */
    public abstract PendingIntent mo7089a(Context context);

    /* renamed from: a */
    public abstract PendingIntent mo7072a(Context context, String str, String str2, boolean z, int i, int i2);

    /* renamed from: a */
    public abstract Intent mo7088a(Context context, int i);

    /* renamed from: a */
    public abstract Intent mo7084a(Context context, int i, String str, int i2, String str2);

    /* renamed from: a */
    public abstract Intent mo7081a(Context context, int i, String str, MessageData messageData, int i2);

    /* renamed from: a */
    public abstract void mo7093a(Activity activity, Uri uri, Rect rect, Uri uri2, boolean z);

    /* renamed from: a */
    public abstract void mo7092a(Activity activity, String str, int i);

    /* renamed from: a */
    public abstract void mo7091a(Activity activity, ArrayList<String> arrayList, Uri uri, Rect rect, boolean z);

    /* renamed from: a */
    public abstract void mo7090a(Fragment fragment);

    /* renamed from: a */
    public abstract void mo7087a(Context context, int i, MessageData messageData);

    /* renamed from: a */
    public abstract void mo7086a(Context context, int i, MessageData messageData, String str);

    /* renamed from: a */
    public void m7094a(Context context, int i, String str, int i2, MessageData messageData) {
        mo7083a(context, i, str, i2, null, messageData, null, false);
    }

    /* renamed from: a */
    public abstract void mo7083a(Context context, int i, String str, int i2, String str2, MessageData messageData, Bundle bundle, boolean z);

    /* renamed from: a */
    public abstract void mo7080a(Context context, int i, String str, String str2, int i2);

    /* renamed from: a */
    public abstract void mo7079a(Context context, ContentValues contentValues);

    /* renamed from: a */
    public abstract void mo7076a(Context context, Uri uri);

    /* renamed from: a */
    public abstract void mo7075a(Context context, String str);

    /* renamed from: a */
    public abstract void mo7074a(Context context, String str, Point point);

    /* renamed from: a */
    public abstract void mo7073a(Context context, String str, String str2);

    /* renamed from: b */
    public abstract PendingIntent mo7067b(Context context, int i, String str, MessageData messageData, int i2);

    /* renamed from: b */
    public abstract void mo7069b(Context context, int i, MessageData messageData);

    /* renamed from: b */
    public abstract void mo7068b(Context context, int i, String str, int i2, String str2);

    /* renamed from: b */
    public abstract void mo7066b(Context context, Uri uri);

    /* renamed from: c */
    public abstract void mo7065c(Context context, Uri uri);
}
