package p459j.p460a.p521j0.p522u.p523d;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.view.MetaphorBadgeLayout;
import gogolook.callgogolook2.view.RecycleSafeImageView;
import p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12603a;
import p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12605c;
import p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12606d;
import p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12608f;
import p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12609g;
import p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h;
/* renamed from: j.a.j0.u.d.b1 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/b1.class */
public class C12532b1 implements AbstractC12699w0 {

    /* renamed from: j.a.j0.u.d.b1$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/b1$b.class */
    public static final class C12534b extends AbstractC12603a implements AbstractC12606d {
        public C12534b() {
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12604b
        /* renamed from: b */
        public View mo5816b() {
            return m5819d(R$id.call_btn_close);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12606d
        /* renamed from: n */
        public TextView mo5815n() {
            return m5820c(R$id.tv_input);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12606d
        /* renamed from: o */
        public TextView mo5814o() {
            return m5820c(R$id.tv_number);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12606d
        /* renamed from: p */
        public View mo5813p() {
            return m5819d(R$id.iv_voiceinput);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12606d
        /* renamed from: q */
        public View mo5812q() {
            return m5819d(R$id.add_contact);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12603a
        /* renamed from: r */
        public int mo5818r() {
            return R$layout.callenddialog_standard_body_blank;
        }
    }

    /* renamed from: j.a.j0.u.d.b1$c */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/b1$c.class */
    public static final class C12535c extends AbstractC12603a implements AbstractC12605c {
        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: a */
        public RecycleSafeImageView mo5804a() {
            View d = m5819d(R$id.iv_metaphor);
            return d instanceof RecycleSafeImageView ? (RecycleSafeImageView) d : null;
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12607e
        /* renamed from: a */
        public void mo5811a(int i) {
            if (i == 0 || i == 4 || i == 8) {
                View d = m5819d(R$id.callend_actions_divider);
                TextView c = m5820c(R$id.callend_second_action_text);
                if (d != null && c != null) {
                    d.setVisibility(i);
                    c.setVisibility(i);
                }
            }
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12604b
        /* renamed from: b */
        public View mo5816b() {
            return m5819d(R$id.call_btn_close);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12607e
        /* renamed from: c */
        public ImageView mo5810c() {
            return m5821b(R$id.iv_card_spam_icon);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: d */
        public TextView mo5803d() {
            return m5820c(R$id.tv_description);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: e */
        public TextView mo5802e() {
            return m5820c(R$id.call_lastcall);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: f */
        public TextView mo5801f() {
            return m5820c(2131363555);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: g */
        public View mo5800g() {
            return m5819d(R$id.rl_call);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12607e
        public TextView getActionView() {
            return m5820c(R$id.callend_action_text);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: h */
        public TextView mo5799h() {
            return m5820c(2131363467);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12607e
        /* renamed from: i */
        public TextView mo5809i() {
            return m5820c(R$id.callend_second_action_text);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12603a
        /* renamed from: r */
        public int mo5818r() {
            return R$layout.callenddialog_standard_body_ad;
        }
    }

    /* renamed from: j.a.j0.u.d.b1$d */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/b1$d.class */
    public static final class C12536d extends AbstractC12603a implements AbstractC12608f {
        public C12536d() {
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: a */
        public RecycleSafeImageView mo5804a() {
            return ((MetaphorBadgeLayout) m5819d(R$id.mbl_metaphor)).m25911b();
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12607e
        /* renamed from: a */
        public void mo5811a(int i) {
            if (i == 0 || i == 4 || i == 8) {
                View d = m5819d(R$id.callend_actions_divider);
                TextView c = m5820c(R$id.callend_second_action_text);
                if (d != null && c != null) {
                    d.setVisibility(i);
                    c.setVisibility(i);
                }
            }
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12604b
        /* renamed from: b */
        public View mo5816b() {
            return m5819d(R$id.call_btn_close);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12607e
        /* renamed from: c */
        public ImageView mo5810c() {
            return ((MetaphorBadgeLayout) m5819d(R$id.mbl_metaphor)).m25913a();
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: d */
        public TextView mo5803d() {
            return m5820c(R$id.tv_description);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: e */
        public TextView mo5802e() {
            return m5820c(R$id.call_lastcall);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: f */
        public TextView mo5801f() {
            return m5820c(2131363555);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: g */
        public View mo5800g() {
            return m5819d(R$id.rl_call);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12607e
        public TextView getActionView() {
            return m5820c(R$id.callend_action_text);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: h */
        public TextView mo5799h() {
            return m5820c(2131363467);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12607e
        /* renamed from: i */
        public TextView mo5809i() {
            return m5820c(R$id.callend_second_action_text);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12608f
        /* renamed from: j */
        public TextView mo5808j() {
            return m5820c(R$id.rich_info_open);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12608f
        /* renamed from: k */
        public TextView mo5807k() {
            return m5820c(R$id.more_info);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12608f
        /* renamed from: l */
        public TextView mo5806l() {
            return m5820c(R$id.tv_db_expired_warning);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12603a
        /* renamed from: r */
        public int mo5818r() {
            return R$layout.callenddialog_standard_body;
        }
    }

    /* renamed from: j.a.j0.u.d.b1$e */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/b1$e.class */
    public static final class C12537e extends AbstractC12603a implements AbstractC12609g {
        public C12537e() {
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: a */
        public RecycleSafeImageView mo5804a() {
            View d = m5819d(R$id.iv_metaphor);
            return d instanceof RecycleSafeImageView ? (RecycleSafeImageView) d : null;
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12604b
        /* renamed from: b */
        public View mo5816b() {
            return m5819d(R$id.call_btn_close);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: d */
        public TextView mo5803d() {
            return m5820c(R$id.error_reason);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: e */
        public TextView mo5802e() {
            return m5820c(R$id.call_lastcall);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: f */
        public TextView mo5801f() {
            return m5820c(2131363555);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: g */
        public View mo5800g() {
            return m5819d(R$id.rl_call);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: h */
        public TextView mo5799h() {
            return m5820c(2131363467);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12609g
        /* renamed from: m */
        public View mo5805m() {
            return m5819d(R$id.error_refresh);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12603a
        /* renamed from: r */
        public int mo5818r() {
            return R$layout.callenddialog_standard_body_error;
        }
    }

    /* renamed from: j.a.j0.u.d.b1$f */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/b1$f.class */
    public static final class C12538f extends AbstractC12603a implements AbstractC12610h {
        public C12538f() {
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: a */
        public RecycleSafeImageView mo5804a() {
            View d = m5819d(R$id.iv_metaphor);
            return d instanceof RecycleSafeImageView ? (RecycleSafeImageView) d : null;
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12604b
        /* renamed from: b */
        public View mo5816b() {
            return m5819d(R$id.call_btn_close);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: d */
        public TextView mo5803d() {
            return m5820c(R$id.tv_searching);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: e */
        public TextView mo5802e() {
            return m5820c(R$id.call_lastcall);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: f */
        public TextView mo5801f() {
            return m5820c(2131363555);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: g */
        public View mo5800g() {
            return m5819d(R$id.rl_call);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h
        /* renamed from: h */
        public TextView mo5799h() {
            return m5820c(2131363467);
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12603a
        /* renamed from: r */
        public int mo5818r() {
            return R$layout.callenddialog_standard_body_searching;
        }
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.AbstractC12699w0
    @NonNull
    /* renamed from: a */
    public AbstractC12606d mo5517a() {
        return new C12534b();
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.AbstractC12699w0
    @NonNull
    /* renamed from: a */
    public AbstractC12610h mo5516a(boolean z) {
        return z ? new C12535c() : new C12536d();
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.AbstractC12699w0
    @NonNull
    /* renamed from: b */
    public AbstractC12609g mo5515b() {
        return new C12537e();
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.AbstractC12699w0
    @NonNull
    /* renamed from: c */
    public AbstractC12610h mo5514c() {
        return new C12538f();
    }
}
