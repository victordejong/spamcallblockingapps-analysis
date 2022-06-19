package com.yanzhenjie.nohttp.tools;

import java.util.LinkedHashMap;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/tools/LinkedMultiValueMap.class */
public class LinkedMultiValueMap<K, V> extends BasicMultiValueMap<K, V> {
    public LinkedMultiValueMap() {
        super(new LinkedHashMap());
    }
}
