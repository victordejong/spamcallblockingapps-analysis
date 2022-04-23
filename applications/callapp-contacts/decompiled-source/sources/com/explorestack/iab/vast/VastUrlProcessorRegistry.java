package com.explorestack.iab.vast;

import android.os.Bundle;
import com.explorestack.iab.vast.processor.url.UrlProcessor;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/VastUrlProcessorRegistry.class */
public class VastUrlProcessorRegistry {

    /* renamed from: a  reason: collision with root package name */
    static List<UrlProcessor> f19226a = new ArrayList<UrlProcessor>() { // from class: com.explorestack.iab.vast.VastUrlProcessorRegistry.1
        {
            add(new com.explorestack.iab.vast.processor.url.a());
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/VastUrlProcessorRegistry$a.class */
    public interface a {
        void a(String str);
    }

    public static String a(String str, Bundle bundle) {
        if (str == null) {
            return null;
        }
        for (UrlProcessor urlProcessor : f19226a) {
            str = urlProcessor.prepare(str, bundle);
        }
        return str;
    }

    public static void a(List<String> list, Bundle bundle, a aVar) {
        if (!(list == null || list.isEmpty() || aVar == null)) {
            for (String str : list) {
                aVar.a(a(str, bundle));
            }
        }
    }

    public static void register(UrlProcessor urlProcessor) {
        f19226a.add(urlProcessor);
    }
}
