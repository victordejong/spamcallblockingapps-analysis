package gogolook.callgogolook2.detailpage;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.RowInfo;
import p459j.p460a.p503e0.C12329m;
import p459j.p460a.p561r.p562a.AbstractC13389a;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14206w4;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/detailpage/DetailPageActionViewHolder.class */
public class DetailPageActionViewHolder {

    /* renamed from: k */
    public static final int f10752k = C14167t.m2316a();

    /* renamed from: l */
    public static final int f10753l = C14167t.m2310f();

    /* renamed from: m */
    public static final int f10754m = C14167t.m2314b();

    /* renamed from: a */
    public int f10755a;

    /* renamed from: b */
    public boolean f10756b;

    /* renamed from: c */
    public boolean f10757c;

    /* renamed from: d */
    public boolean f10758d;

    /* renamed from: e */
    public boolean f10759e;
    @NonNull

    /* renamed from: f */
    public final AbstractC4463b f10760f;

    /* renamed from: g */
    public AbstractC13389a f10761g;

    /* renamed from: h */
    public C12329m f10762h;
    @NonNull

    /* renamed from: i */
    public final View f10763i;

    /* renamed from: j */
    public EnumC4462a f10764j;
    @BindView(R$id.tv_action_button_add_and_block)
    public TextView mFavBlockActionButton;
    @BindView(R$id.tv_action_button_sms)
    public View mSmsActionView;
    @BindView(R$id.tv_action_button_tag)
    public View mTagActionView;
    @BindView(R$id.tv_action_button_call)
    public View mViewActionButtonCall;

    /* renamed from: gogolook.callgogolook2.detailpage.DetailPageActionViewHolder$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/detailpage/DetailPageActionViewHolder$a.class */
    public enum EnumC4462a {
        DEFAULT,
        BLOCK,
        ADD
    }

    /* renamed from: gogolook.callgogolook2.detailpage.DetailPageActionViewHolder$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/detailpage/DetailPageActionViewHolder$b.class */
    public interface AbstractC4463b {
        /* renamed from: a */
        void mo26836a(@NonNull String str);

        /* renamed from: a */
        void mo26835a(@NonNull String str, String str2);

        /* renamed from: a */
        void mo26834a(@NonNull String str, String str2, String str3, String str4);

        /* renamed from: b */
        void mo26833b(@NonNull String str);

        /* renamed from: c */
        void mo26832c(@NonNull String str);
    }

    public DetailPageActionViewHolder(@NonNull View view, @NonNull AbstractC4463b bVar) {
        this(view, bVar, null, null);
    }

    public DetailPageActionViewHolder(@NonNull View view, @NonNull AbstractC4463b bVar, @Nullable AbstractC13389a aVar, @Nullable C12329m mVar) {
        this.f10755a = 0;
        this.f10764j = EnumC4462a.ADD;
        ButterKnife.bind(this, view);
        this.f10763i = view;
        this.f10760f = bVar;
        this.f10761g = aVar;
        this.f10762h = mVar;
    }

    /* renamed from: a */
    public void m28606a(int i) {
        this.f10763i.setVisibility(i);
    }

    /* renamed from: a */
    public final void m28605a(EnumC4462a aVar, boolean z) {
        this.f10764j = aVar;
        if (aVar == EnumC4462a.BLOCK) {
            m28601b(z);
        } else if (aVar == EnumC4462a.ADD) {
            m28603a(z);
        }
    }

    /* renamed from: a */
    public void m28604a(@NonNull AbstractC13389a aVar, C12329m mVar) {
        this.f10761g = aVar;
        this.f10762h = mVar;
    }

    /* renamed from: a */
    public final void m28603a(boolean z) {
        int i = z ? f10753l : f10752k;
        String a = z ? C14206w4.m2225a((int) R$string.ndp_mainbutton_added) : C14206w4.m2225a((int) R$string.ndp_mainbutton_add);
        Drawable drawable = this.f10763i.getResources().getDrawable(z ? R$drawable.ic_ndp_favorite_selected : R$drawable.ic_ndp_favorite);
        this.mFavBlockActionButton.setText(a);
        this.mFavBlockActionButton.setTextColor(i);
        this.mFavBlockActionButton.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, drawable, (Drawable) null, (Drawable) null);
        this.mFavBlockActionButton.setVisibility(0);
    }

    /* renamed from: a */
    public boolean m28607a() {
        return (this.f10755a & 2) == 2 && !this.f10758d;
    }

    /* renamed from: b */
    public final void m28601b(boolean z) {
        int i = z ? f10754m : f10752k;
        String a = z ? C14206w4.m2225a((int) R$string.ndp_mainbutton_blocked) : C14206w4.m2225a((int) R$string.ndp_mainbutton_block);
        Drawable drawable = this.f10763i.getResources().getDrawable(z ? R$drawable.ic_ndp_block_selected : R$drawable.ic_ndp_block);
        this.mFavBlockActionButton.setText(a);
        this.mFavBlockActionButton.setTextColor(i);
        this.mFavBlockActionButton.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, drawable, (Drawable) null, (Drawable) null);
        this.mFavBlockActionButton.setVisibility(0);
    }

    /* renamed from: b */
    public boolean m28602b() {
        boolean z = true;
        if ((this.f10755a & 1) != 1 || this.f10759e) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public boolean m28600c() {
        return (this.f10755a & 2) == 2 && this.f10758d;
    }

    /* renamed from: d */
    public boolean m28599d() {
        boolean z = true;
        if ((this.f10755a & 1) != 1 || !this.f10759e) {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    public final boolean m28598e() {
        AbstractC13389a aVar = this.f10761g;
        return !TextUtils.isEmpty(aVar != null ? aVar.getNumber() : null);
    }

    /* renamed from: f */
    public boolean m28597f() {
        return this.f10758d;
    }

    /* renamed from: g */
    public boolean m28596g() {
        return this.f10759e;
    }

    /* renamed from: h */
    public final boolean m28595h() {
        AbstractC13389a aVar = this.f10761g;
        RowInfo.Primary.Type c = aVar != null ? aVar.mo4085c() : null;
        return c == RowInfo.Primary.Type.NO_INFO || c == RowInfo.Primary.Type.INPUT;
    }

    /* renamed from: i */
    public final void m28594i() {
        m28592k();
        m28591l();
        m28590m();
    }

    /* renamed from: j */
    public void m28593j() {
        boolean z = !TextUtils.isEmpty(this.f10761g.getNumber());
        boolean z2 = this.f10761g.mo4085c() == RowInfo.Primary.Type.SPOOF;
        this.f10756b = this.f10761g.mo4087a();
        this.f10757c = this.f10761g.mo4083e();
        this.f10758d = z && this.f10762h.m6359a();
        this.f10759e = z && this.f10762h.m6358b();
        this.mFavBlockActionButton.setVisibility(8);
        this.mTagActionView.setVisibility(8);
        if (z2 || (this.f10756b && !this.f10757c)) {
            if (this.f10758d) {
                m28605a(EnumC4462a.BLOCK, true);
                this.f10755a = 1;
            } else if (this.f10759e) {
                m28605a(EnumC4462a.ADD, true);
                this.f10755a = 2;
            } else {
                m28605a(EnumC4462a.BLOCK, false);
                this.f10755a = 1;
            }
        } else if (m28595h()) {
            if (this.f10759e) {
                m28605a(EnumC4462a.ADD, true);
                this.f10755a = 2;
            } else if (this.f10758d) {
                m28605a(EnumC4462a.BLOCK, true);
                this.f10755a = 1;
            } else {
                this.mTagActionView.setVisibility(0);
                this.f10755a = 3;
            }
        } else if (this.f10759e) {
            m28605a(EnumC4462a.ADD, true);
            this.f10755a = 2;
        } else if (this.f10758d) {
            m28605a(EnumC4462a.BLOCK, true);
            this.f10755a = 1;
        } else {
            m28605a(EnumC4462a.ADD, false);
            this.f10755a = 2;
        }
        m28594i();
    }

    /* renamed from: k */
    public final void m28592k() {
        this.mViewActionButtonCall.setVisibility(m28598e() ? 0 : 8);
    }

    /* renamed from: l */
    public final void m28591l() {
        AbstractC13389a aVar = this.f10761g;
        String number = aVar != null ? aVar.getNumber() : null;
        this.mSmsActionView.setVisibility((TextUtils.isEmpty(number) || !C14108o4.m2477i(number)) ? 8 : 0);
    }

    /* renamed from: m */
    public final void m28590m() {
        AbstractC13389a aVar = this.f10761g;
        this.mTagActionView.setVisibility((TextUtils.isEmpty(aVar != null ? aVar.getNumber() : null) || !m28595h()) ? 8 : 0);
    }

    @OnClick({R$id.tv_action_button_call, R$id.tv_action_button_sms, R$id.tv_action_button_add_and_block, R$id.tv_action_button_tag})
    public void onClick(View view) {
        if (this.f10761g != null) {
            switch (view.getId()) {
                case R$id.tv_action_button_add_and_block /* 2131363387 */:
                    EnumC4462a aVar = this.f10764j;
                    if (aVar == EnumC4462a.BLOCK) {
                        if (this.f10761g.getNumber() != null) {
                            this.f10760f.mo26834a(this.f10761g.getNumber(), this.f10761g.mo4084d(), this.f10761g.getName(), this.f10761g.mo4086b());
                            return;
                        }
                        return;
                    } else if (aVar == EnumC4462a.ADD && this.f10761g.getNumber() != null) {
                        this.f10760f.mo26835a(this.f10761g.getNumber(), this.f10761g.mo4084d());
                        return;
                    } else {
                        return;
                    }
                case R$id.tv_action_button_call /* 2131363388 */:
                    if (this.f10761g.mo4084d() != null) {
                        this.f10760f.mo26836a(this.f10761g.mo4084d());
                        return;
                    }
                    return;
                case R$id.tv_action_button_sms /* 2131363389 */:
                    if (this.f10761g.mo4084d() != null) {
                        this.f10760f.mo26833b(this.f10761g.mo4084d());
                        return;
                    }
                    return;
                case R$id.tv_action_button_tag /* 2131363390 */:
                    if (this.f10761g.mo4084d() != null) {
                        this.f10760f.mo26832c(this.f10761g.mo4084d());
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }
}
