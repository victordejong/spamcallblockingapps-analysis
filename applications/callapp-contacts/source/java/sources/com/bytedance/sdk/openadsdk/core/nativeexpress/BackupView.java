package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p151b.C4494a;
import com.bytedance.sdk.openadsdk.core.p151b.C4495b;
import com.bytedance.sdk.openadsdk.core.p154e.C4553g;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.dislike.C4852b;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5482t;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/BackupView.class */
public abstract class BackupView extends FrameLayout {

    /* renamed from: a */
    public Context f16836a;

    /* renamed from: b */
    public C4557i f16837b;

    /* renamed from: c */
    protected C4852b f16838c;

    /* renamed from: d */
    protected TTDislikeDialogAbstract f16839d;

    /* renamed from: f */
    protected int f16841f;

    /* renamed from: g */
    protected int f16842g;

    /* renamed from: h */
    protected int f16843h;

    /* renamed from: e */
    public String f16840e = "embeded_ad";

    /* renamed from: i */
    protected boolean f16844i = true;

    /* renamed from: j */
    protected boolean f16845j = true;

    public BackupView(Context context) {
        super(context);
        setTag("tt_express_backup_fl_tag_26");
    }

    /* renamed from: a */
    public void m34800a() {
        TTDislikeDialogAbstract tTDislikeDialogAbstract = this.f16839d;
        if (tTDislikeDialogAbstract != null) {
            tTDislikeDialogAbstract.show();
            return;
        }
        C4852b c4852b = this.f16838c;
        if (c4852b != null) {
            c4852b.showDislikeDialog();
        } else {
            TTDelegateActivity.m35919a(this.f16837b);
        }
    }

    /* renamed from: a */
    public void m34799a(int i) {
        this.f16845j = C4600n.m34805h().m34914a(this.f16843h);
        int m34902c = C4600n.m34805h().m34902c(i);
        if (3 == m34902c) {
            this.f16844i = false;
            return;
        }
        if (1 != m34902c || !C5482t.m32087d(this.f16836a)) {
            if (2 != m34902c) {
                return;
            }
            if (!C5482t.m32086e(this.f16836a) && !C5482t.m32087d(this.f16836a)) {
                return;
            }
        }
        this.f16844i = true;
    }

    /* renamed from: a */
    protected abstract void mo34718a(int i, C4553g c4553g);

    /* renamed from: a */
    public void m34798a(View view) {
        C4557i c4557i = this.f16837b;
        if (c4557i == null || c4557i.m35245B() == null || view == null) {
            return;
        }
        if (this.f16837b.m35169h() != 1 || !this.f16844i) {
            m34797a(view, false);
        } else {
            m34797a(view, true);
        }
    }

    /* renamed from: a */
    public void m34797a(View view, boolean z) {
        C4494a c4494a;
        if (view == null) {
            return;
        }
        if (z) {
            Context context = this.f16836a;
            C4557i c4557i = this.f16837b;
            String str = this.f16840e;
            c4494a = new C4494a(context, c4557i, str, C5438af.m32300a(str));
        } else {
            Context context2 = this.f16836a;
            C4557i c4557i2 = this.f16837b;
            String str2 = this.f16840e;
            c4494a = new C4495b(context2, c4557i2, str2, C5438af.m32300a(str2));
        }
        view.setOnTouchListener(c4494a);
        view.setOnClickListener(c4494a);
        c4494a.m35476a(new AbstractC4610a() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4610a
            /* renamed from: a */
            public void mo34758a(int i, C4553g c4553g) {
                BackupView.this.mo34718a(i, c4553g);
            }
        });
    }

    public String getDescription() {
        return !TextUtils.isEmpty(this.f16837b.m35234M()) ? this.f16837b.m35234M() : !TextUtils.isEmpty(this.f16837b.m35233N()) ? this.f16837b.m35233N() : "";
    }

    public String getNameOrSource() {
        C4557i c4557i = this.f16837b;
        return c4557i == null ? "" : (c4557i.m35230Q() == null || TextUtils.isEmpty(this.f16837b.m35230Q().m35335b())) ? !TextUtils.isEmpty(this.f16837b.m35244C()) ? this.f16837b.m35244C() : "" : this.f16837b.m35230Q().m35335b();
    }

    public float getRealHeight() {
        return C5443ag.m32221b(this.f16836a, this.f16842g);
    }

    public float getRealWidth() {
        return C5443ag.m32221b(this.f16836a, this.f16841f);
    }

    @Override // android.view.View
    public Object getTag() {
        return "tt_express_backup_fl_tag_26";
    }

    public String getTitle() {
        return (this.f16837b.m35230Q() == null || TextUtils.isEmpty(this.f16837b.m35230Q().m35335b())) ? !TextUtils.isEmpty(this.f16837b.m35244C()) ? this.f16837b.m35244C() : !TextUtils.isEmpty(this.f16837b.m35234M()) ? this.f16837b.m35234M() : "" : this.f16837b.m35230Q().m35335b();
    }

    public View getVideoView() {
        NativeVideoTsView nativeVideoTsView;
        C4557i c4557i = this.f16837b;
        if (c4557i == null || this.f16836a == null) {
            return null;
        }
        if (C4557i.m35180d(c4557i)) {
            try {
                nativeVideoTsView = new NativeVideoTsView(this.f16836a, this.f16837b, this.f16840e, true, false);
                nativeVideoTsView.setControllerStatusCallBack(new NativeVideoTsView.AbstractC4714a() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView.2
                    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.AbstractC4714a
                    /* renamed from: a */
                    public void mo34366a(boolean z, long j, long j2, long j3, boolean z2) {
                    }
                });
                nativeVideoTsView.setIsAutoPlay(this.f16844i);
                nativeVideoTsView.setIsQuiet(this.f16845j);
            } catch (Throwable th) {
            }
            if (!C4557i.m35180d(this.f16837b) && nativeVideoTsView != null && nativeVideoTsView.m34393a(0L, true, false)) {
                return nativeVideoTsView;
            }
            return null;
        }
        nativeVideoTsView = null;
        return !C4557i.m35180d(this.f16837b) ? null : null;
    }

    public void setDislikeInner(TTAdDislike tTAdDislike) {
        if (tTAdDislike instanceof C4852b) {
            this.f16838c = (C4852b) tTAdDislike;
        }
    }

    public void setDislikeOuter(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        C4557i c4557i;
        if (tTDislikeDialogAbstract != null && (c4557i = this.f16837b) != null) {
            tTDislikeDialogAbstract.setMaterialMeta(c4557i);
        }
        this.f16839d = tTDislikeDialogAbstract;
    }

    @Override // android.view.View
    public void setTag(Object obj) {
        super.setTag("tt_express_backup_fl_tag_26");
    }
}
