package com.facebook.appevents.p026i0.p027n;

import java.lang.reflect.Method;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\b\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\f\u001a\u00020\rH\u0007J\f\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u000bH\u0002J\u0012\u0010\u000f\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0007J&\u0010\u0011\u001a\u00020\r2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0012\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u000bX\u0082.¢\u0006\u0002\n��¨\u0006\u0015"}, d2 = {"Lcom/facebook/appevents/codeless/internal/UnityReflection;", "", "()V", "CAPTURE_VIEW_HIERARCHY_METHOD", "", "EVENT_MAPPING_METHOD", "FB_UNITY_GAME_OBJECT", "TAG", "UNITY_PLAYER_CLASS", "UNITY_SEND_MESSAGE_METHOD", "unityPlayer", "Ljava/lang/Class;", "captureViewHierarchy", "", "getUnityPlayerClass", "sendEventMapping", "eventMapping", "sendMessage", "unityObject", "unityMethod", "message", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.i0.n.e */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/n/e.class */
public final class C0999e {

    /* renamed from: a */
    public static Class<?> f2755a;

    /* renamed from: a */
    public static final void m41930a(String str, String str2, String str3) {
        try {
            if (f2755a == null) {
                Class<?> cls = Class.forName("com.unity3d.player.UnityPlayer");
                l.d(cls, "forName(UNITY_PLAYER_CLASS)");
                f2755a = cls;
            }
            Class<?> cls2 = f2755a;
            if (cls2 == null) {
                l.l("unityPlayer");
                throw null;
            }
            Method method = cls2.getMethod("UnitySendMessage", String.class, String.class, String.class);
            l.d(method, "unityPlayer.getMethod(\n              UNITY_SEND_MESSAGE_METHOD, String::class.java, String::class.java, String::class.java)");
            Class<?> cls3 = f2755a;
            if (cls3 != null) {
                method.invoke(cls3, str, str2, str3);
            } else {
                l.l("unityPlayer");
                throw null;
            }
        } catch (Exception e) {
        }
    }
}
