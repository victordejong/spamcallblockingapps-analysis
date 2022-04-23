package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.b;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/Entity.class */
class Entity implements Serializable {
    private static final int END_INDEX = 1;
    private static final int START_INDEX = 0;
    @b(a = "indices")
    public final List<Integer> indices;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Entity(int i, int i2) {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(0, Integer.valueOf(i));
        arrayList.add(1, Integer.valueOf(i2));
        this.indices = Collections.unmodifiableList(arrayList);
    }

    public int getEnd() {
        return this.indices.get(1).intValue();
    }

    public int getStart() {
        return this.indices.get(0).intValue();
    }
}
