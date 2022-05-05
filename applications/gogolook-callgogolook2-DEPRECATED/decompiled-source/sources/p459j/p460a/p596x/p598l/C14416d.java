package p459j.p460a.p596x.p598l;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import androidx.appcompat.widget.ActivityChooserModel;
import com.mopub.common.Constants;
import java.util.List;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14315y;
import p459j.p460a.p582w0.p593y4.C14321a;
import p459j.p460a.p582w0.p593y4.C14322b;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.x.l.d */
/* loaded from: classes2-dex2jar.jar:j/a/x/l/d.class */
public final class C14416d implements AbstractC14417e {

    /* renamed from: a */
    public Dialog f32257a;

    /* renamed from: b */
    public Dialog f32258b;

    /* renamed from: c */
    public final Activity f32259c;

    /* renamed from: d */
    public final Context f32260d;

    public C14416d(Activity activity, Context context) {
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        C15149k.m377b(context, "context");
        this.f32259c = activity;
        this.f32260d = context;
    }

    @Override // p459j.p460a.p596x.p598l.AbstractC14419g
    /* renamed from: a */
    public void mo1380a() {
        Dialog dialog = this.f32257a;
        if (dialog != null) {
            C14315y.m1604a(dialog);
        }
        this.f32257a = null;
    }

    /* renamed from: a */
    public final void m1386a(Dialog dialog) {
        if (C14191v.m2262a(this.f32259c)) {
            Dialog dialog2 = this.f32258b;
            if (dialog2 != null) {
                dialog2.dismiss();
            }
            this.f32258b = dialog;
            dialog.show();
        }
    }

    @Override // p459j.p460a.p596x.p598l.AbstractC14417e
    /* renamed from: a */
    public void mo1385a(DialogInterface.OnClickListener onClickListener) {
        C15149k.m377b(onClickListener, "onClickListener");
        m1386a(C14322b.m1577a(this.f32259c, onClickListener));
    }

    @Override // p459j.p460a.p596x.p598l.AbstractC14417e
    /* renamed from: a */
    public void mo1384a(List<C14407a> list, DialogInterface.OnClickListener onClickListener) {
        C15149k.m377b(list, "accounts");
        C15149k.m377b(onClickListener, "onClickListener");
        m1386a(C14322b.m1576a(this.f32259c, list, onClickListener));
    }

    @Override // p459j.p460a.p596x.p598l.AbstractC14419g
    /* renamed from: b */
    public void mo1379b() {
        if (this.f32257a == null) {
            Dialog a = C14321a.m1582a(this.f32259c);
            a.show();
            this.f32257a = a;
        }
    }

    @Override // p459j.p460a.p596x.p598l.AbstractC14417e
    /* renamed from: b */
    public void mo1383b(DialogInterface.OnClickListener onClickListener) {
        C15149k.m377b(onClickListener, "onClickListener");
        m1386a(C14322b.m1571c(this.f32259c, onClickListener));
    }

    @Override // p459j.p460a.p596x.p598l.AbstractC14417e
    /* renamed from: c */
    public void mo1382c(DialogInterface.OnClickListener onClickListener) {
        C15149k.m377b(onClickListener, "onClickListener");
        m1386a(C14322b.m1573b(this.f32259c, onClickListener));
    }

    @Override // p459j.p460a.p596x.p598l.AbstractC14419g
    public Context getContext() {
        return this.f32260d;
    }

    @Override // p459j.p460a.p596x.p598l.AbstractC14417e
    public void startActivityForResult(Intent intent, int i) {
        C15149k.m377b(intent, Constants.INTENT_SCHEME);
        this.f32259c.startActivityForResult(intent, i);
    }
}
