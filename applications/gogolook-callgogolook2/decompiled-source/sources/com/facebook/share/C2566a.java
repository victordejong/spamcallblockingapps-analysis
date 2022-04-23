package com.facebook.share;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import com.facebook.FacebookActivity;
import com.facebook.internal.AbstractC2414h;
import com.facebook.internal.C2371a;
import com.facebook.internal.C2398d;
import com.facebook.internal.C2486r;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import java.util.List;
import p081h.p154f.C6131k;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.share.a */
/* loaded from: classes-dex2jar.jar:com/facebook/share/a.class */
public class C2566a extends AbstractC2414h<ShareContent, Object> {

    /* renamed from: f */
    public static final int f3426f = C2398d.EnumC2400b.DeviceShare.m34900a();

    public C2566a(Activity activity) {
        super(activity, f3426f);
    }

    public C2566a(Fragment fragment) {
        super(new C2486r(fragment), f3426f);
    }

    public C2566a(androidx.fragment.app.Fragment fragment) {
        super(new C2486r(fragment), f3426f);
    }

    /* renamed from: a */
    public void mo34276b(ShareContent shareContent, Object obj) {
        if (shareContent == null) {
            throw new C6131k("Must provide non-null content to share");
        } else if ((shareContent instanceof ShareLinkContent) || (shareContent instanceof ShareOpenGraphContent)) {
            Intent intent = new Intent();
            intent.setClass(C6135n.m23746e(), FacebookActivity.class);
            intent.setAction("DeviceShareDialogFragment");
            intent.putExtra("content", shareContent);
            m34798a(intent, m34795e());
        } else {
            throw new C6131k(C2566a.class.getSimpleName() + " only supports ShareLinkContent or ShareOpenGraphContent");
        }
    }

    @Override // com.facebook.internal.AbstractC2414h
    /* renamed from: b */
    public C2371a mo33997b() {
        return null;
    }

    @Override // com.facebook.internal.AbstractC2414h
    /* renamed from: d */
    public List<AbstractC2414h<ShareContent, Object>.AbstractC2415a> mo33991d() {
        return null;
    }
}
