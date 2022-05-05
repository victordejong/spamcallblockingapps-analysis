package com.samsung.android.sdk.look.cocktailbar;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import p081h.p439m.p440a.p441a.p442b.p443b.C10750a;
/* loaded from: classes2-dex2jar.jar:com/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider.class */
public class SlookCocktailProvider extends BroadcastReceiver {
    /* renamed from: a */
    public void m29867a(Context context) {
    }

    /* renamed from: a */
    public void mo26027a(Context context, int i, int i2) {
    }

    /* renamed from: a */
    public void mo26023a(Context context, C10750a aVar, int[] iArr) {
    }

    /* renamed from: b */
    public void m29866b(Context context) {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Bundle extras;
        String action = intent.getAction();
        if ("com.samsung.android.cocktail.action.COCKTAIL_UPDATE".equals(action)) {
            Bundle extras2 = intent.getExtras();
            if (extras2 != null && extras2.containsKey("cocktailIds")) {
                mo26023a(context, C10750a.m10736a(context), extras2.getIntArray("cocktailIds"));
            }
        } else if ("com.samsung.android.cocktail.action.COCKTAIL_ENABLED".equals(action)) {
            m29866b(context);
        } else if ("com.samsung.android.cocktail.action.COCKTAIL_DISABLED".equals(action)) {
            m29867a(context);
        } else if ("com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED".equals(action) && (extras = intent.getExtras()) != null && extras.containsKey("cocktailId")) {
            int i = extras.getInt("cocktailId");
            if (extras.containsKey("cocktailVisibility")) {
                mo26027a(context, i, extras.getInt("cocktailVisibility"));
            }
        }
    }
}
