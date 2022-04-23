package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.b.a;
import com.bytedance.sdk.openadsdk.core.e.g;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.dislike.b;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.t;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/BackupView.class */
public abstract class BackupView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public Context f9012a;

    /* renamed from: b  reason: collision with root package name */
    public i f9013b;

    /* renamed from: c  reason: collision with root package name */
    protected b f9014c;

    /* renamed from: d  reason: collision with root package name */
    protected TTDislikeDialogAbstract f9015d;
    protected int f;
    protected int g;
    protected int h;
    public String e = "embeded_ad";
    protected boolean i = true;
    protected boolean j = true;

    public BackupView(Context context) {
        super(context);
        setTag("tt_express_backup_fl_tag_26");
    }

    public void a() {
        TTDislikeDialogAbstract tTDislikeDialogAbstract = this.f9015d;
        if (tTDislikeDialogAbstract != null) {
            tTDislikeDialogAbstract.show();
            return;
        }
        b bVar = this.f9014c;
        if (bVar != null) {
            bVar.showDislikeDialog();
        } else {
            TTDelegateActivity.a(this.f9013b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i) {
        this.j = n.h().a(this.h);
        int c2 = n.h().c(i);
        if (3 == c2) {
            this.i = false;
            return;
        }
        if (1 != c2 || !t.d(this.f9012a)) {
            if (2 != c2) {
                return;
            }
            if (!t.e(this.f9012a) && !t.d(this.f9012a)) {
                return;
            }
        }
        this.i = true;
    }

    protected abstract void a(int i, g gVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(View view) {
        i iVar = this.f9013b;
        if (iVar != null && iVar.B() != null && view != null) {
            if (this.f9013b.h() != 1 || !this.i) {
                a(view, false);
            } else {
                a(view, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(View view, boolean z) {
        com.bytedance.sdk.openadsdk.core.b.b bVar;
        if (view != null) {
            if (z) {
                Context context = this.f9012a;
                i iVar = this.f9013b;
                String str = this.e;
                bVar = new a(context, iVar, str, af.a(str));
            } else {
                Context context2 = this.f9012a;
                i iVar2 = this.f9013b;
                String str2 = this.e;
                bVar = new com.bytedance.sdk.openadsdk.core.b.b(context2, iVar2, str2, af.a(str2));
            }
            view.setOnTouchListener(bVar);
            view.setOnClickListener(bVar);
            bVar.a(new a() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView.1
                @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.a
                public void a(int i, g gVar) {
                    BackupView.this.a(i, gVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getDescription() {
        return !TextUtils.isEmpty(this.f9013b.M()) ? this.f9013b.M() : !TextUtils.isEmpty(this.f9013b.N()) ? this.f9013b.N() : "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getNameOrSource() {
        i iVar = this.f9013b;
        return iVar == null ? "" : (iVar.Q() == null || TextUtils.isEmpty(this.f9013b.Q().b())) ? !TextUtils.isEmpty(this.f9013b.C()) ? this.f9013b.C() : "" : this.f9013b.Q().b();
    }

    public float getRealHeight() {
        return ag.b(this.f9012a, this.g);
    }

    public float getRealWidth() {
        return ag.b(this.f9012a, this.f);
    }

    @Override // android.view.View
    public Object getTag() {
        return "tt_express_backup_fl_tag_26";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getTitle() {
        return (this.f9013b.Q() == null || TextUtils.isEmpty(this.f9013b.Q().b())) ? !TextUtils.isEmpty(this.f9013b.C()) ? this.f9013b.C() : !TextUtils.isEmpty(this.f9013b.M()) ? this.f9013b.M() : "" : this.f9013b.Q().b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public View getVideoView() {
        NativeVideoTsView nativeVideoTsView;
        i iVar = this.f9013b;
        if (iVar == null || this.f9012a == null) {
            return null;
        }
        if (i.d(iVar)) {
            try {
                nativeVideoTsView = new NativeVideoTsView(this.f9012a, this.f9013b, this.e, true, false);
                nativeVideoTsView.setControllerStatusCallBack(new NativeVideoTsView.a() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView.2
                    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.a
                    public void a(boolean z, long j, long j2, long j3, boolean z2) {
                    }
                });
                nativeVideoTsView.setIsAutoPlay(this.i);
                nativeVideoTsView.setIsQuiet(this.j);
            } catch (Throwable th) {
            }
            if (i.d(this.f9013b) || nativeVideoTsView == null || !nativeVideoTsView.a(0L, true, false)) {
                return null;
            }
            return nativeVideoTsView;
        }
        nativeVideoTsView = null;
        return i.d(this.f9013b) ? null : null;
    }

    public void setDislikeInner(TTAdDislike tTAdDislike) {
        if (tTAdDislike instanceof b) {
            this.f9014c = (b) tTAdDislike;
        }
    }

    public void setDislikeOuter(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        i iVar;
        if (!(tTDislikeDialogAbstract == null || (iVar = this.f9013b) == null)) {
            tTDislikeDialogAbstract.setMaterialMeta(iVar);
        }
        this.f9015d = tTDislikeDialogAbstract;
    }

    @Override // android.view.View
    public void setTag(Object obj) {
        super.setTag("tt_express_backup_fl_tag_26");
    }
}
