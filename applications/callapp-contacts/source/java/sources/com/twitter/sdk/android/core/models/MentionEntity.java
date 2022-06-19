package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.AbstractC15952b;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/MentionEntity.class */
public class MentionEntity extends Entity {
    @AbstractC15952b(m7988a = "id")

    /* renamed from: id */
    public final long f61042id;
    @AbstractC15952b(m7988a = "id_str")
    public final String idStr;
    @AbstractC15952b(m7988a = "name")
    public final String name;
    @AbstractC15952b(m7988a = "screen_name")
    public final String screenName;

    public MentionEntity(long j, String str, String str2, String str3, int i, int i2) {
        super(i, i2);
        this.f61042id = j;
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
