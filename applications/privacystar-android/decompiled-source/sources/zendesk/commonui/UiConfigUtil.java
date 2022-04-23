package zendesk.commonui;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/UiConfigUtil.class */
public class UiConfigUtil {
    private static String ZENDESK_UI_CONFIG = "ZENDESK_UI_CONFIG";

    private UiConfigUtil() {
    }

    public static List<UiConfig> addSelfIfNotInList(List<UiConfig> list, UiConfig uiConfig) {
        ArrayList arrayList = new ArrayList(list);
        if (findConfigForType(list, uiConfig.getClass()) == null) {
            arrayList.add(uiConfig);
        }
        return arrayList;
    }

    public static void addToBundle(Bundle bundle, UiConfig uiConfig) {
        bundle.putSerializable(ZENDESK_UI_CONFIG, uiConfig);
    }

    public static void addToIntent(Intent intent, UiConfig uiConfig) {
        intent.putExtra(ZENDESK_UI_CONFIG, uiConfig);
    }

    public static void addToMap(@NonNull Map<String, Object> map, UiConfig uiConfig) {
        map.put(ZENDESK_UI_CONFIG, uiConfig);
    }

    public static <E extends UiConfig> E findConfigForType(List<UiConfig> list, Class<E> cls) {
        Iterator<UiConfig> it = list.iterator();
        while (it.hasNext()) {
            E e = (E) it.next();
            if (cls.isInstance(e)) {
                return e;
            }
        }
        return null;
    }

    @Nullable
    public static <E extends UiConfig> E fromBundle(Bundle bundle, Class<E> cls) {
        if (bundle == null || !bundle.containsKey(ZENDESK_UI_CONFIG)) {
            return null;
        }
        Serializable serializable = bundle.getSerializable(ZENDESK_UI_CONFIG);
        if (cls.isInstance(serializable)) {
            return (E) ((UiConfig) serializable);
        }
        return null;
    }

    @Nullable
    public static <E extends UiConfig> E fromMap(Map<String, Object> map, Class<E> cls) {
        if (map == null || !map.containsKey(ZENDESK_UI_CONFIG)) {
            return null;
        }
        Object obj = map.get(ZENDESK_UI_CONFIG);
        if (cls.isInstance(obj)) {
            return (E) ((UiConfig) obj);
        }
        return null;
    }
}
