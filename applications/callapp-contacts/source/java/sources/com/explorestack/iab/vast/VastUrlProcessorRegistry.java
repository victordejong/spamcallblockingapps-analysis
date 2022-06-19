package com.explorestack.iab.vast;

import android.os.Bundle;
import com.explorestack.iab.vast.processor.url.C9662a;
import com.explorestack.iab.vast.processor.url.UrlProcessor;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/VastUrlProcessorRegistry.class */
public class VastUrlProcessorRegistry {

    /* renamed from: a */
    static List<UrlProcessor> f32662a = new ArrayList<UrlProcessor>() { // from class: com.explorestack.iab.vast.VastUrlProcessorRegistry.1
        {
            add(new C9662a());
        }
    };

    /* renamed from: com.explorestack.iab.vast.VastUrlProcessorRegistry$a */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/VastUrlProcessorRegistry$a.class */
    public interface AbstractC9618a {
        /* renamed from: a */
        void mo24012a(String str);
    }

    /* renamed from: a */
    public static String m24014a(String str, Bundle bundle) {
        if (str == null) {
            return null;
        }
        for (UrlProcessor urlProcessor : f32662a) {
            str = urlProcessor.prepare(str, bundle);
        }
        return str;
    }

    /* renamed from: a */
    public static void m24013a(List<String> list, Bundle bundle, AbstractC9618a abstractC9618a) {
        if (list == null || list.isEmpty() || abstractC9618a == null) {
            return;
        }
        for (String str : list) {
            abstractC9618a.mo24012a(m24014a(str, bundle));
        }
    }

    public static void register(UrlProcessor urlProcessor) {
        f32662a.add(urlProcessor);
    }
}
