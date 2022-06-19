package com.truecaller.stats;

import android.app.ActionBar;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import com.truecaller.yearincalling.model.StatsUiModel;
import e.a.u.b;
import e.a.u.g;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p935j0.C15521h;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, d2 = {"Lcom/truecaller/stats/StatsActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "onSupportNavigateUp", "()Z", "Le/a/p5/c0;", "a", "Le/a/p5/c0;", "getResourceProvider", "()Le/a/p5/c0;", "setResourceProvider", "(Le/a/p5/c0;)V", "resourceProvider", "Le/a/b0/e/f;", C22021b.f61237c, "Le/a/b0/e/f;", "getRegionUtils", "()Le/a/b0/e/f;", "setRegionUtils", "(Le/a/b0/e/f;)V", "regionUtils", "<init>", "()V", "stats_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes13-dex2jar.jar:com/truecaller/stats/StatsActivity.class */
public final class StatsActivity extends h {
    @Inject

    /* renamed from: a */
    public AbstractC19223c0 f14968a;
    @Inject

    /* renamed from: b */
    public AbstractC8426f f14969b;

    /* renamed from: com.truecaller.stats.StatsActivity$a */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/stats/StatsActivity$a.class */
    public static final class View$OnClickListenerC4518a implements View.OnClickListener {
        public View$OnClickListenerC4518a() {
            StatsActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.stats.StatsActivity, android.app.Activity] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            StatsActivity.this.finish();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        StatsActivity.super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        setContentView(C4513R.layout.activity_stats);
        C15521h c15521h = (C15521h) C17422k.m16059q(this);
        AbstractC19223c0 mo12349i = c15521h.f43964a.mo12349i();
        Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
        this.f14968a = mo12349i;
        AbstractC8426f mo12525V = c15521h.f43965b.mo12525V();
        Objects.requireNonNull(mo12525V, "Cannot return null from a non-@Nullable component method");
        this.f14969b = mo12525V;
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.hide();
        }
        AbstractC25393a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3554m(true);
            supportActionBar.mo3553n(true);
        }
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        int i = C4513R.C4515id.overlapped_container;
        AbstractC19223c0 abstractC19223c0 = this.f14968a;
        if (abstractC19223c0 == null) {
            l.l("resourceProvider");
            throw null;
        }
        StatsUiModel m13631E1 = C19291g.m13631E1(abstractC19223c0, true);
        l.e(m13631E1, "model");
        b bVar = new b();
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("key_ui_model", m13631E1);
        bVar.setArguments(bundle2);
        c26907a.m1120m(i, bVar, null);
        c26907a.mo1125h();
        C26907a c26907a2 = new C26907a(getSupportFragmentManager());
        c26907a2.m1120m(C4513R.C4515id.container, new g(), null);
        c26907a2.mo1127f();
        findViewById(C4513R.C4515id.close_screen_btn).setOnClickListener(new View$OnClickListenerC4518a());
        AbstractC8426f abstractC8426f = this.f14969b;
        if (abstractC8426f == null) {
            l.l("regionUtils");
            throw null;
        } else if (!abstractC8426f.mo28596b()) {
        } else {
            ((ImageView) findViewById(C4513R.C4515id.logo)).setImageResource(C4513R.C4514drawable.logo_white_uk);
        }
    }

    public boolean onSupportNavigateUp() {
        onBackPressed();
        return true;
    }
}
