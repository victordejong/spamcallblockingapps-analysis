package com.truecaller.messaging.conversation.draft;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p195a.p200c.p203c.C5126b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/truecaller/messaging/conversation/draft/TextDraftActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/draft/TextDraftActivity.class */
public final class TextDraftActivity extends h {
    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        TextDraftActivity.super.onCreate(bundle);
        SharedTextDraftsArguments sharedTextDraftsArguments = (SharedTextDraftsArguments) getIntent().getParcelableExtra("shared_text_drafts");
        if (sharedTextDraftsArguments != null) {
            l.e(sharedTextDraftsArguments, "sharedTextDraftsArguments");
            Fragment c5126b = new C5126b();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("shared_text_drafts", sharedTextDraftsArguments);
            c5126b.setArguments(bundle2);
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            c26907a.m1120m(16908290, c5126b, null);
            c26907a.mo1127f();
        }
    }
}
