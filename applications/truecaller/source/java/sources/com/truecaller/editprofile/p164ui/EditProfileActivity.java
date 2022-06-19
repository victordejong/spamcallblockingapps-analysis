package com.truecaller.editprofile.p164ui;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1124p.p1125a.C19138b;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� \n2\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\t\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/truecaller/editprofile/ui/EditProfileActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onBackPressed", "()V", "<init>", "a", "editprofile_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.editprofile.ui.EditProfileActivity */
/* loaded from: classes9-dex2jar.jar:com/truecaller/editprofile/ui/EditProfileActivity.class */
public final class EditProfileActivity extends h {

    /* renamed from: a */
    public static final C3896a f11910a = new C3896a(null);

    /* renamed from: com.truecaller.editprofile.ui.EditProfileActivity$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/editprofile/ui/EditProfileActivity$a.class */
    public static final class C3896a {
        public C3896a(f fVar) {
        }
    }

    public void onBackPressed() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        Iterator<Fragment> it = supportFragmentManager.m42936Q().iterator();
        while (it.hasNext()) {
            C19138b c19138b = (Fragment) it.next();
            if (c19138b instanceof C19138b) {
                c19138b.onBackPressed();
                return;
            }
        }
        EditProfileActivity.super.onBackPressed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        EditProfileActivity.super.onCreate(bundle);
        Serializable serializableExtra = getIntent().getSerializableExtra("launchContext");
        Objects.requireNonNull(serializableExtra, "null cannot be cast to non-null type com.truecaller.editprofile.ui.EditProfileLaunchContext");
        EditProfileLaunchContext editProfileLaunchContext = (EditProfileLaunchContext) serializableExtra;
        if (bundle != null) {
            return;
        }
        Fragment c19138b = new C19138b();
        c19138b.f53388d = editProfileLaunchContext;
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        c26907a.m1120m(16908290, c19138b, null);
        c26907a.mo1127f();
    }
}
