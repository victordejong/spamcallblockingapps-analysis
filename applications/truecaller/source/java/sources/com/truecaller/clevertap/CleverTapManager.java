package com.truecaller.clevertap;

import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import java.util.Map;
import kotlin.Metadata;
import p193e.p194a.p678d4.AbstractC12603e;
import p193e.p194a.p793g3.AbstractC14434n;
import p193e.p194a.p793g3.C14433m;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H&¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H&¢\u0006\u0004\b\u000b\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0010H&¢\u0006\u0004\b\u000e\u0010\u0011J#\u0010\u000e\u001a\u00020\u00062\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0012H&¢\u0006\u0004\b\u000e\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0014H&¢\u0006\u0004\b\u0016\u0010\u0017J+\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00042\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0012H&¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0004H&¢\u0006\u0004\b\u001a\u0010\u001cJ\u0019\u0010\u001f\u001a\u00020\u00062\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH&¢\u0006\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Lcom/truecaller/clevertap/CleverTapManager;", "", "Le/a/d4/e;", "engine", "", "pushId", "Ls1/s;", "updatePushRegistrationId", "(Le/a/d4/e;Ljava/lang/String;)V", AnalyticsConstants.INIT, "()V", "initWithoutActivityLifeCycleCallBacks", "Le/a/g3/m;", "profileUpdate", "updateProfile", "(Le/a/g3/m;)V", "Le/a/g3/n;", "(Le/a/g3/n;)V", "", "(Ljava/util/Map;)V", "Lcom/truecaller/clevertap/CleverTapProfile;", "profile", "onUserLogin", "(Lcom/truecaller/clevertap/CleverTapProfile;)V", "eventName", "eventActions", "push", "(Ljava/lang/String;Ljava/util/Map;)V", "(Ljava/lang/String;)V", "Landroid/content/Intent;", "intent", "mayBeProcessNotificationExtras", "(Landroid/content/Intent;)V", "clevertap_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/clevertap/CleverTapManager.class */
public interface CleverTapManager {
    void init();

    void initWithoutActivityLifeCycleCallBacks();

    void mayBeProcessNotificationExtras(Intent intent);

    void onUserLogin(CleverTapProfile cleverTapProfile);

    void push(String str);

    void push(String str, Map<String, ? extends Object> map);

    void updateProfile(C14433m c14433m);

    void updateProfile(AbstractC14434n abstractC14434n);

    void updateProfile(Map<String, ? extends Object> map);

    void updatePushRegistrationId(AbstractC12603e abstractC12603e, String str);
}
