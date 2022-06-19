package com.truecaller.filters.blockedevents;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import p193e.p194a.p837h0.AbstractC14831f;
import p193e.p194a.p837h0.p838a.C14805r;
/* loaded from: classes9-dex2jar.jar:com/truecaller/filters/blockedevents/BlockedEventsActivity.class */
public class BlockedEventsActivity extends AbstractC14831f {
    /* renamed from: qa */
    public static Intent m35427qa(Context context, int i) {
        return new Intent(context, BlockedEventsActivity.class).putExtra("TOOLBAR_TEXT", i);
    }

    @Override // p193e.p194a.p837h0.AbstractC14831f
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            m19613pa(new C14805r());
        } else {
            this.f42402a = getSupportFragmentManager().m42943J(16908290);
        }
    }
}
