package com.appnext.suggestedappswider.models;

import com.appnext.suggestedappswider.AppnextSuggestedAppsWiderDataContainer;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0007\n\u0002\b\u0005\b��\u0018��2\u00020\u0001B\u0017\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\u0005H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/appnext/suggestedappswider/models/ANSuggestedAppsWiderDataContainer;", "Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;", "suggestedAppsWiderModelModelsKey", "", "ecpm", "", "(Ljava/lang/String;F)V", "getSuggestedAppsWiderModelModelsKey$SuggestedAppsWider_release", "()Ljava/lang/String;", "getEcpm", "SuggestedAppsWider_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.appnext.suggestedappswider.models.a */
/* loaded from: classes-dex2jar.jar:com/appnext/suggestedappswider/models/a.class */
public final class C0690a implements AppnextSuggestedAppsWiderDataContainer {
    private final float ecpm;

    /* renamed from: ht */
    private final /* synthetic */ String f2135ht;

    public C0690a(String str, float f) {
        l.e(str, "suggestedAppsWiderModelModelsKey");
        this.f2135ht = str;
        this.ecpm = f;
    }

    /* renamed from: bt */
    public final String m42103bt() {
        return this.f2135ht;
    }

    @Override // com.appnext.suggestedappswider.AppnextSuggestedAppsWiderDataContainer
    public final float getEcpm() {
        return this.ecpm;
    }
}
