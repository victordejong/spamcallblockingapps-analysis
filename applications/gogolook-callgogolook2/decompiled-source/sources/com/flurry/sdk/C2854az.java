package com.flurry.sdk;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.az */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/az.class */
public final class C2854az {

    /* renamed from: b */
    public C3021eh f4116b;

    /* renamed from: d */
    public List<String> f4118d;

    /* renamed from: e */
    public List<String> f4119e = Arrays.asList(EnumC2874bi.EV_CLICKED.f4289an, EnumC2874bi.EV_RENDERED.f4289an, EnumC2874bi.EV_PAGE_LOAD_FINISHED.f4289an);

    /* renamed from: f */
    public List<String> f4120f = new ArrayList();

    /* renamed from: a */
    public final Map<String, Boolean> f4115a = new HashMap();

    /* renamed from: c */
    public C3076ff f4117c = new C3076ff();

    public C2854az() {
        this.f4115a.put(EnumC2874bi.EV_AD_CLOSED.f4289an, Boolean.FALSE);
        this.f4115a.put(EnumC2874bi.EV_RENDERED.f4289an, Boolean.FALSE);
        this.f4115a.put(EnumC2874bi.EV_RENDER_FAILED.f4289an, Boolean.FALSE);
    }
}
