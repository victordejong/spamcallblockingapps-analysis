package gogolook.callgogolook2.main.dialer;

import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/dialer/DialerShortcutIntroDialog_ViewBinding.class */
public class DialerShortcutIntroDialog_ViewBinding implements Unbinder {

    /* renamed from: a */
    public DialerShortcutIntroDialog f11130a;

    /* renamed from: b */
    public View f11131b;

    /* renamed from: c */
    public View f11132c;

    /* renamed from: gogolook.callgogolook2.main.dialer.DialerShortcutIntroDialog_ViewBinding$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/dialer/DialerShortcutIntroDialog_ViewBinding$a.class */
    public class C4605a extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ DialerShortcutIntroDialog f11133a;

        public C4605a(DialerShortcutIntroDialog_ViewBinding dialerShortcutIntroDialog_ViewBinding, DialerShortcutIntroDialog dialerShortcutIntroDialog) {
            this.f11133a = dialerShortcutIntroDialog;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f11133a.onReplaceNowButtonClick();
        }
    }

    /* renamed from: gogolook.callgogolook2.main.dialer.DialerShortcutIntroDialog_ViewBinding$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/dialer/DialerShortcutIntroDialog_ViewBinding$b.class */
    public class C4606b extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ DialerShortcutIntroDialog f11134a;

        public C4606b(DialerShortcutIntroDialog_ViewBinding dialerShortcutIntroDialog_ViewBinding, DialerShortcutIntroDialog dialerShortcutIntroDialog) {
            this.f11134a = dialerShortcutIntroDialog;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f11134a.onLaterButtonClick();
        }
    }

    @UiThread
    public DialerShortcutIntroDialog_ViewBinding(DialerShortcutIntroDialog dialerShortcutIntroDialog, View view) {
        this.f11130a = dialerShortcutIntroDialog;
        dialerShortcutIntroDialog.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_intro_title, "field 'mTvTitle'", TextView.class);
        dialerShortcutIntroDialog.mTvDescription = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_intro_description, "field 'mTvDescription'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R$id.btn_replace_now, "field 'mBtnReplaceNow' and method 'onReplaceNowButtonClick'");
        dialerShortcutIntroDialog.mBtnReplaceNow = (Button) Utils.castView(findRequiredView, R$id.btn_replace_now, "field 'mBtnReplaceNow'", Button.class);
        this.f11131b = findRequiredView;
        findRequiredView.setOnClickListener(new C4605a(this, dialerShortcutIntroDialog));
        View findRequiredView2 = Utils.findRequiredView(view, R$id.btn_later, "field 'mBtnLater' and method 'onLaterButtonClick'");
        dialerShortcutIntroDialog.mBtnLater = (TextView) Utils.castView(findRequiredView2, R$id.btn_later, "field 'mBtnLater'", TextView.class);
        this.f11132c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C4606b(this, dialerShortcutIntroDialog));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DialerShortcutIntroDialog dialerShortcutIntroDialog = this.f11130a;
        if (dialerShortcutIntroDialog != null) {
            this.f11130a = null;
            dialerShortcutIntroDialog.mTvTitle = null;
            dialerShortcutIntroDialog.mTvDescription = null;
            dialerShortcutIntroDialog.mBtnReplaceNow = null;
            dialerShortcutIntroDialog.mBtnLater = null;
            this.f11131b.setOnClickListener(null);
            this.f11131b = null;
            this.f11132c.setOnClickListener(null);
            this.f11132c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
