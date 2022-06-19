package com.truecaller.social_media.presentation.view;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.google.android.material.appbar.MaterialToolbar;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.social_media.C4497R;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p739f0.p744h.p747c.C13895d;
import p193e.p194a.p739f0.p744h.p747c.View$OnClickListenerC13894c;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/truecaller/social_media/presentation/view/SocialMediaLinksActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "social-media_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes13-dex2jar.jar:com/truecaller/social_media/presentation/view/SocialMediaLinksActivity.class */
public final class SocialMediaLinksActivity extends h {

    /* renamed from: a */
    public static final /* synthetic */ int f14897a = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        SocialMediaLinksActivity.super.onCreate(bundle);
        setContentView(C4497R.layout.activity_social_media_links);
        String stringExtra = getIntent().getStringExtra("source");
        MaterialToolbar findViewById = findViewById(C4497R.C4499id.toolbarSocialMediaLinks);
        setSupportActionBar(findViewById);
        AbstractC25393a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
            supportActionBar.mo3550q(0.0f);
            supportActionBar.mo3542y(getString(C4497R.string.to_know_more));
        }
        if (findViewById != null) {
            findViewById.setNavigationOnClickListener(new View$OnClickListenerC13894c(this));
        }
        int i = C4497R.C4499id.container;
        Fragment c13895d = new C13895d();
        Bundle bundle2 = new Bundle();
        bundle2.putString("arg_source", stringExtra);
        c13895d.setArguments(bundle2);
        l.e(this, "$this$addFragmentStateLoss");
        l.e(c13895d, "fragment");
        l.e("social_media_links_tag", RemoteMessageConst.Notification.TAG);
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        c26907a.mo1122k(i, c13895d, "social_media_links_tag", 1);
        c26907a.mo1126g();
        l.d(c26907a, "supportFragmentManager.b…wingStateLoss()\n        }");
    }
}
