package com.explorestack.iab.vast.processor;

import android.os.Bundle;
import android.text.TextUtils;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.VastUrlProcessorRegistry;
import com.explorestack.iab.vast.tags.a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/processor/b.class */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    public VastAd f19281b;

    /* renamed from: a  reason: collision with root package name */
    final List<String> f19280a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public int f19282c = -1;

    /* renamed from: d  reason: collision with root package name */
    boolean f19283d = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(a aVar, int i) {
        this.f19282c = i;
        Bundle bundle = new Bundle();
        bundle.putInt(VastRequest.PARAMS_ERROR_CODE, i);
        List<String> list = aVar.f19291d;
        if (!(list == null || list.isEmpty())) {
            for (String str : list) {
                String a2 = VastUrlProcessorRegistry.a(str, bundle);
                if (!TextUtils.isEmpty(a2)) {
                    this.f19280a.add(a2);
                }
            }
        }
    }

    public final boolean a() {
        return this.f19281b != null;
    }
}
