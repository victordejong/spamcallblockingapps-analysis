package com.facebook.appevents.p026i0.p027n;

import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import org.json.JSONObject;
import s1.z.c.l;
@Metadata(d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\r\u0018�� \u00192\u00020\u0001:\u0002\u0019\u001aB\u000f\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\n\u0010\bR\u0011\u0010\u000b\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\f\u0010\bR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u000e¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0010R\u0011\u0010\u0013\u001a\u00020\u000e¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0010R\u0011\u0010\u0015\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\bR\u0011\u0010\u0017\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\b¨\u0006\u001b"}, d2 = {"Lcom/facebook/appevents/codeless/internal/PathComponent;", "", "component", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)V", "className", "", "getClassName", "()Ljava/lang/String;", "description", "getDescription", "hint", "getHint", "id", "", "getId", "()I", "index", "getIndex", "matchBitmask", "getMatchBitmask", RemoteMessageConst.Notification.TAG, "getTag", "text", "getText", "Companion", "MatchBitmaskType", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.i0.n.c */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/n/c.class */
public final class C0997c {

    /* renamed from: a */
    public final String f2746a;

    /* renamed from: b */
    public final int f2747b;

    /* renamed from: c */
    public final int f2748c;

    /* renamed from: d */
    public final String f2749d;

    /* renamed from: e */
    public final String f2750e;

    /* renamed from: f */
    public final String f2751f;

    /* renamed from: g */
    public final String f2752g;

    /* renamed from: h */
    public final int f2753h;

    public C0997c(JSONObject jSONObject) {
        l.e(jSONObject, "component");
        String string = jSONObject.getString("class_name");
        l.d(string, "component.getString(PATH_CLASS_NAME_KEY)");
        this.f2746a = string;
        this.f2747b = jSONObject.optInt("index", -1);
        this.f2748c = jSONObject.optInt("id");
        String optString = jSONObject.optString("text");
        l.d(optString, "component.optString(PATH_TEXT_KEY)");
        this.f2749d = optString;
        String optString2 = jSONObject.optString(RemoteMessageConst.Notification.TAG);
        l.d(optString2, "component.optString(PATH_TAG_KEY)");
        this.f2750e = optString2;
        String optString3 = jSONObject.optString("description");
        l.d(optString3, "component.optString(PATH_DESCRIPTION_KEY)");
        this.f2751f = optString3;
        String optString4 = jSONObject.optString("hint");
        l.d(optString4, "component.optString(PATH_HINT_KEY)");
        this.f2752g = optString4;
        this.f2753h = jSONObject.optInt("match_bitmask");
    }
}
