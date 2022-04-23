package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.b;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/MentionEntity.class */
public class MentionEntity extends Entity {
    @b(a = "id")
    public final long id;
    @b(a = "id_str")
    public final String idStr;
    @b(a = "name")
    public final String name;
    @b(a = "screen_name")
    public final String screenName;

    public MentionEntity(long j, String str, String str2, String str3, int i, int i2) {
        super(i, i2);
        this.id = j;
        this.idStr = str;
        this.name = str2;
        this.screenName = str3;
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
