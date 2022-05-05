package com.privacystar.core.data.shared_prefs;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m254d2 = {"<anonymous>", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/shared_prefs/Preferences$prefs$2.class */
final class Preferences$prefs$2 extends Lambda implements Function0<SharedPreferences> {
    final /* synthetic */ Preferences this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Preferences$prefs$2(Preferences preferences) {
        super(0);
        this.this$0 = preferences;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final SharedPreferences invoke() {
        Context context;
        Context context2;
        context = Preferences.context;
        if (context != null) {
            context2 = Preferences.context;
            if (context2 == null) {
                Intrinsics.throwNpe();
            }
            return context2.getSharedPreferences(this.this$0.getClass().getSimpleName(), 0);
        }
        throw new IllegalStateException("Context was not initialized. Call Preferences.init(context) before using it");
    }
}
