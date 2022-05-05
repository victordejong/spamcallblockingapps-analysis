package com.google.android.gms.location;

import android.app.Activity;
import android.content.Context;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p259j.p274o.C8504e0;
import p081h.p203i.p204a.p224e.p259j.p274o.C8526t;
import p081h.p203i.p204a.p224e.p280k.AbstractC8813a;
import p081h.p203i.p204a.p224e.p280k.C8815b;
import p081h.p203i.p204a.p224e.p280k.C8834k;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ActivityRecognition.class */
public class ActivityRecognition {
    public static final String CLIENT_NAME = "activity_recognition";
    public static final C6805a.C6817g<C8526t> CLIENT_KEY = new C6805a.C6817g<>();
    public static final C6805a.AbstractC6806a<C8526t, Object> CLIENT_BUILDER = new C8834k();
    public static final C6805a<Object> API = new C6805a<>("ActivityRecognition.API", CLIENT_BUILDER, CLIENT_KEY);
    @Deprecated
    public static final AbstractC8813a ActivityRecognitionApi = new C8504e0();

    public static C8815b getClient(Activity activity) {
        return new C8815b(activity);
    }

    public static C8815b getClient(Context context) {
        return new C8815b(context);
    }
}
