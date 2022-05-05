package gogolook.callgogolook2.ndp;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/MyMemoActivity_ViewBinding.class */
public class MyMemoActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public MyMemoActivity f12006a;

    @UiThread
    public MyMemoActivity_ViewBinding(MyMemoActivity myMemoActivity, View view) {
        this.f12006a = myMemoActivity;
        myMemoActivity.mLayoutMemos = (ViewGroup) Utils.findRequiredViewAsType(view, R$id.ll_memo, "field 'mLayoutMemos'", ViewGroup.class);
        myMemoActivity.mViewAddMemo = Utils.findRequiredView(view, R$id.tv_add_memo, "field 'mViewAddMemo'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MyMemoActivity myMemoActivity = this.f12006a;
        if (myMemoActivity != null) {
            this.f12006a = null;
            myMemoActivity.mLayoutMemos = null;
            myMemoActivity.mViewAddMemo = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
