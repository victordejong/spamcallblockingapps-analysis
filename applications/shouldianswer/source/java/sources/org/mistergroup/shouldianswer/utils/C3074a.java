package org.mistergroup.shouldianswer.utils;

import com.crashlytics.android.Crashlytics;
import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.answers.ContentViewEvent;
import com.crashlytics.android.answers.CustomEvent;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.p081e.p083b.C1694h;
/* renamed from: org.mistergroup.shouldianswer.utils.a */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/a.class */
public final class C3074a {

    /* renamed from: a */
    public static final C3074a f8976a = new C3074a();

    private C3074a() {
    }

    /* renamed from: a */
    public final void m230a(String str) {
        C1694h.m3117b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        Crashlytics.setUserIdentifier(str);
    }

    /* renamed from: a */
    public final void m229a(String str, String str2, String str3) {
        C1694h.m3117b(str, "contentName");
        C1694h.m3117b(str2, "contentType");
        C1694h.m3117b(str3, "contentId");
        Answers.getInstance().logContentView(new ContentViewEvent().putContentName(str).putContentType(str2).putContentId(str3));
    }

    /* renamed from: b */
    public final void m228b(String str) {
        C1694h.m3117b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "FRAGMENT: " + str, (String) null, 2, (Object) null);
        m229a(str, "fragment", "");
    }

    /* renamed from: c */
    public final void m227c(String str) {
        C1694h.m3117b(str, "event");
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "EVENT: " + str, (String) null, 2, (Object) null);
        Answers.getInstance().logCustom(new CustomEvent(str));
    }

    /* renamed from: d */
    public final void m226d(String str) {
        C1694h.m3117b(str, FirebaseAnalytics.Param.SOURCE);
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "CLICK: " + str, (String) null, 2, (Object) null);
        m229a(str, "click", "");
    }
}
