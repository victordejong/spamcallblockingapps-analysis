package com.bytedance.sdk.openadsdk;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.dislike.TTDislikeListView;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTDislikeDialogAbstract.class */
public abstract class TTDislikeDialogAbstract extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private View f8414a;

    /* renamed from: b  reason: collision with root package name */
    private i f8415b;

    public TTDislikeDialogAbstract(Context context) {
        super(context);
    }

    public TTDislikeDialogAbstract(Context context, int i) {
        super(context, i);
    }

    private void a() {
        if (!(this.f8415b == null || this.f8414a == null)) {
            int[] tTDislikeListViewIds = getTTDislikeListViewIds();
            if (tTDislikeListViewIds == null || tTDislikeListViewIds.length <= 0) {
                throw new IllegalArgumentException("dislike选项列表为空，请设置TTDislikeListView");
            }
            for (int i : tTDislikeListViewIds) {
                View findViewById = this.f8414a.findViewById(i);
                if (findViewById == null) {
                    throw new IllegalArgumentException("getTTDislikeListViewIds提供的id找不到view，请检查");
                } else if (findViewById instanceof TTDislikeListView) {
                    ((TTDislikeListView) findViewById).setMaterialMeta(this.f8415b);
                } else {
                    throw new IllegalArgumentException("getTTDislikeListViewIds找到的view类型异常，请检查");
                }
            }
        }
    }

    public abstract int getLayoutId();

    public abstract ViewGroup.LayoutParams getLayoutParams();

    public abstract int[] getTTDislikeListViewIds();

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View inflate = LayoutInflater.from(getContext()).inflate(getLayoutId(), (ViewGroup) null);
        this.f8414a = inflate;
        if (inflate != null) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            View view = this.f8414a;
            if (layoutParams == null) {
                layoutParams = new ViewGroup.LayoutParams(-1, -1);
            }
            setContentView(view, layoutParams);
            a();
            return;
        }
        throw new IllegalArgumentException("getLayoutId布局文件id可能异常，请检查");
    }

    public void setMaterialMeta(i iVar) {
        this.f8415b = iVar;
        a();
    }
}
