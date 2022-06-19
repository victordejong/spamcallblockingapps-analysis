package com.yanzhenjie.nohttp;

import android.text.TextUtils;
import com.yanzhenjie.nohttp.tools.BasicMultiValueMap;
import java.util.LinkedHashMap;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/Params.class */
public class Params extends BasicMultiValueMap<String, Object> {
    public Params() {
        super(new LinkedHashMap<String, List<Object>>() { // from class: com.yanzhenjie.nohttp.Params.1
            @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
            public boolean containsKey(Object obj) {
                String str = obj;
                if (obj != null) {
                    str = Params.formatKey(obj.toString());
                }
                return super.containsKey(str);
            }

            @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
            public List<Object> get(Object obj) {
                String str = obj;
                if (obj != null) {
                    str = Params.formatKey(obj.toString());
                }
                return (List) super.get(str);
            }

            public List<Object> put(String str, List<Object> list) {
                return (List) super.put((C94251) Params.formatKey(str), (String) list);
            }

            @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
            public List<Object> remove(Object obj) {
                String str = obj;
                if (obj != null) {
                    str = Params.formatKey(obj.toString());
                }
                return (List) super.remove(str);
            }
        });
    }

    public static String formatKey(String str) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = "";
        }
        return str2;
    }
}
