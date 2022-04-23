package com.amazon.device.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidProperty.class */
abstract class MraidProperty {

    /* renamed from: b  reason: collision with root package name */
    static final StateProperty f6519b = new StateProperty(MraidStateType.LOADING);

    /* renamed from: c  reason: collision with root package name */
    static final StateProperty f6520c = new StateProperty(MraidStateType.DEFAULT);

    /* renamed from: d  reason: collision with root package name */
    static final StateProperty f6521d = new StateProperty(MraidStateType.HIDDEN);
    static final StateProperty e = new StateProperty(MraidStateType.RESIZED);
    static final StateProperty f = new StateProperty(MraidStateType.EXPANDED);
    static final SupportsProperty g = new SupportsProperty();
    String h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MraidProperty(String str) {
        this.h = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(JSONObject jSONObject) throws JSONException;
}
