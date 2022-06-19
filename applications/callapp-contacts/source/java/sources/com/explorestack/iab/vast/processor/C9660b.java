package com.explorestack.iab.vast.processor;

import android.os.Bundle;
import android.text.TextUtils;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.VastUrlProcessorRegistry;
import com.explorestack.iab.vast.tags.C9663a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.explorestack.iab.vast.processor.b */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/processor/b.class */
public final class C9660b {

    /* renamed from: b */
    public VastAd f32772b;

    /* renamed from: a */
    final List<String> f32771a = new ArrayList();

    /* renamed from: c */
    public int f32773c = -1;

    /* renamed from: d */
    boolean f32774d = true;

    /* renamed from: a */
    public final void m23878a(C9663a c9663a, int i) {
        this.f32773c = i;
        Bundle bundle = new Bundle();
        bundle.putInt(VastRequest.PARAMS_ERROR_CODE, i);
        List<String> list = c9663a.f32782d;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (String str : list) {
            String m24014a = VastUrlProcessorRegistry.m24014a(str, bundle);
            if (!TextUtils.isEmpty(m24014a)) {
                this.f32771a.add(m24014a);
            }
        }
    }

    /* renamed from: a */
    public final boolean m23879a() {
        return this.f32772b != null;
    }
}
