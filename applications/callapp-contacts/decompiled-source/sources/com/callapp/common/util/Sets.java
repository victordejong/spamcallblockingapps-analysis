package com.callapp.common.util;

import java.util.Collections;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/Sets.class */
public class Sets {
    public static <E> Set<E> a(Map<E, Boolean> map) {
        return Collections.newSetFromMap(map);
    }
}
