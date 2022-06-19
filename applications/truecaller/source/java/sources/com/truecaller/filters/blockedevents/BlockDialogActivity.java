package com.truecaller.filters.blockedevents;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.truecaller.log.AssertionUtil;
import n3.b.a.h;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p837h0.p838a.p839a0.C14752c;
import p193e.p194a.p837h0.p838a.p840b0.C14758a;
import p193e.p194a.p837h0.p838a.p841c0.C14774c;
import p193e.p194a.p837h0.p838a.p842d0.C14783c;
/* loaded from: classes9-dex2jar.jar:com/truecaller/filters/blockedevents/BlockDialogActivity.class */
public class BlockDialogActivity extends h {

    /* loaded from: classes9-dex2jar.jar:com/truecaller/filters/blockedevents/BlockDialogActivity$DialogType.class */
    public enum DialogType {
        NAME,
        ADVANCED,
        NUMBER,
        COUNTRY
    }

    /* renamed from: pa */
    public static void m35428pa(Context context, DialogType dialogType) {
        Intent intent = new Intent(context, BlockDialogActivity.class);
        intent.putExtra("type", dialogType);
        context.startActivity(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        Fragment fragment;
        C17422k.m16068l0(this);
        BlockDialogActivity.super.onCreate(bundle);
        if (bundle == null) {
            int ordinal = ((DialogType) getIntent().getSerializableExtra("type")).ordinal();
            if (ordinal == 0) {
                fragment = new C14774c();
            } else if (ordinal == 1) {
                fragment = new C14752c();
            } else if (ordinal == 2) {
                fragment = new C14783c();
            } else if (ordinal != 3) {
                AssertionUtil.OnlyInDebug.fail("No dialog type specified");
                return;
            } else {
                fragment = new C14758a();
            }
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            c26907a.m1120m(16908290, fragment, null);
            c26907a.mo1127f();
        }
    }
}
