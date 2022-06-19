package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.AbstractC15952b;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/HashtagEntity.class */
public class HashtagEntity extends Entity {
    @AbstractC15952b(m7988a = "text")
    public final String text;

    public HashtagEntity(String str, int i, int i2) {
        super(i, i2);
        this.text = str;
    }

    @Override // com.twitter.sdk.android.core.models.Entity
    public /* bridge */ /* synthetic */ int getEnd() {
        return super.getEnd();
    }

    @Override // com.twitter.sdk.android.core.models.Entity
    public /* bridge */ /* synthetic */ int getStart() {
        return super.getStart();
    }
}
