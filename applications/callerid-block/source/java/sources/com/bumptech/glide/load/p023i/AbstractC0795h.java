package com.bumptech.glide.load.p023i;

import android.text.TextUtils;
import com.bumptech.glide.load.i.j;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.i.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/h.class */
public interface AbstractC0795h {

    /* renamed from: a */
    public static final AbstractC0795h f3662a = new Object() { // from class: com.bumptech.glide.load.i.j$a

        /* renamed from: b */
        private static final String f3663b;

        /* renamed from: c */
        private static final Map<String, List<AbstractC0796i>> f3664c;

        /* renamed from: a */
        private Map<String, List<AbstractC0796i>> f3665a = f3664c;

        static {
            String m10988b = m10988b();
            f3663b = m10988b;
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(m10988b)) {
                hashMap.put("User-Agent", Collections.singletonList(new j.b(m10988b)));
            }
            f3664c = Collections.unmodifiableMap(hashMap);
        }

        /* renamed from: b */
        static String m10988b() {
            String property = System.getProperty("http.agent");
            if (TextUtils.isEmpty(property)) {
                return property;
            }
            int length = property.length();
            StringBuilder sb = new StringBuilder(property.length());
            for (int i = 0; i < length; i++) {
                char charAt = property.charAt(i);
                if ((charAt <= 31 && charAt != '\t') || charAt >= 127) {
                    charAt = '?';
                }
                sb.append(charAt);
            }
            return sb.toString();
        }

        /* renamed from: a */
        public j m10989a() {
            return new j(this.f3665a);
        }
    }.m10989a();

    /* renamed from: a */
    Map<String, String> m10991a();
}
