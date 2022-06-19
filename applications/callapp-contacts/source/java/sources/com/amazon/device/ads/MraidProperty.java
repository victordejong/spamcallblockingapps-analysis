package com.amazon.device.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidProperty.class */
public abstract class MraidProperty {

    /* renamed from: b */
    static final StateProperty f11921b = new StateProperty(MraidStateType.LOADING);

    /* renamed from: c */
    static final StateProperty f11922c = new StateProperty(MraidStateType.DEFAULT);

    /* renamed from: d */
    static final StateProperty f11923d = new StateProperty(MraidStateType.HIDDEN);

    /* renamed from: e */
    static final StateProperty f11924e = new StateProperty(MraidStateType.RESIZED);

    /* renamed from: f */
    static final StateProperty f11925f = new StateProperty(MraidStateType.EXPANDED);

    /* renamed from: g */
    static final SupportsProperty f11926g = new SupportsProperty();

    /* renamed from: h */
    String f11927h;

    public MraidProperty(String str) {
        this.f11927h = str;
    }

    /* renamed from: a */
    public abstract void mo38750a(JSONObject jSONObject) throws JSONException;
}
