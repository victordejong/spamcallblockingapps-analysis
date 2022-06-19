package com.truecaller.messaging.groupinfo;

import android.os.Bundle;
import com.truecaller.messaging.data.types.ImGroupInfo;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p195a.p224d.p225a.C5869a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/truecaller/messaging/groupinfo/EditImGroupInfoActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/groupinfo/EditImGroupInfoActivity.class */
public final class EditImGroupInfoActivity extends h {
    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        ImGroupInfo imGroupInfo;
        C17422k.m16066m0(this, true);
        EditImGroupInfoActivity.super.onCreate(bundle);
        if (bundle != null || (imGroupInfo = (ImGroupInfo) getIntent().getParcelableExtra("im_group_info")) == null) {
            return;
        }
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        Objects.requireNonNull(C5869a.f19632f);
        l.e(imGroupInfo, "imGroupInfo");
        C5869a c5869a = new C5869a();
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("im_group_info", imGroupInfo);
        bundle2.putString("im_group_mode", "im_group_mode_edit");
        c5869a.setArguments(bundle2);
        c26907a.m1120m(16908290, c5869a, null);
        c26907a.mo1127f();
    }
}
