package kotlin.text;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Lambda;
import p573f.p577r.C9962e0;
import p573f.p590w.p591b.AbstractC10020a;
import p573f.p595z.C10084f;
/* loaded from: classes2-dex2jar.jar:kotlin/text/CharCategory$Companion$categoryMap$2.class */
public final class CharCategory$Companion$categoryMap$2 extends Lambda implements AbstractC10020a<Map<Integer, ? extends CharCategory>> {
    public static final CharCategory$Companion$categoryMap$2 INSTANCE = new CharCategory$Companion$categoryMap$2();

    public CharCategory$Companion$categoryMap$2() {
        super(0);
    }

    @Override // p573f.p590w.p591b.AbstractC10020a
    public final Map<Integer, ? extends CharCategory> invoke() {
        CharCategory[] values = CharCategory.values();
        LinkedHashMap linkedHashMap = new LinkedHashMap(C10084f.m1571a(C9962e0.m1730a(values.length), 16));
        for (CharCategory charCategory : values) {
            linkedHashMap.put(Integer.valueOf(charCategory.getValue()), charCategory);
        }
        return linkedHashMap;
    }
}
