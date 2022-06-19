package p193e.p194a.p1195s.p1201n.p1203b.p1204g;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.callhero_assistant.C3605R;
import com.truecaller.dynamicfeaturesupport.DynamicFeature;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1577m.p1578a.p1596c.AbstractC24196c0;
import p193e.p1577m.p1578a.p1596c.AbstractC24760q0;
import p193e.p1577m.p1578a.p1596c.AbstractC24861y0;
import p193e.p1577m.p1578a.p1596c.C24189b0;
import p193e.p1577m.p1578a.p1596c.C24652o0;
import p193e.p1577m.p1578a.p1596c.C24811r0;
import p193e.p1577m.p1578a.p1596c.p1631n1.C24648g;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1188r3.p1189j.AbstractC19917a;
import p193e.p194a.p1188r3.p1189j.C19918b;
import p193e.p194a.p1195s.AbstractC20009b;
import p193e.p194a.p1195s.AbstractC20012e;
import p193e.p194a.p1195s.p1199l.C20031h;
import p193e.p194a.p1195s.p1212s.AbstractC20187i;
import s1.a.l;
import s1.z.c.d0;
import s1.z.c.m;
import s1.z.c.w;
@Metadata(bv = {1, 0, 3}, d1 = {"��i\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001*\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bD\u0010\rJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\rJ\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\rJ\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\rR\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\"\u00105\u001a\u00020.8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u0016\u00109\u001a\u0002068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b7\u00108R\u0016\u0010=\u001a\u00020:8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b;\u0010<R\u001d\u0010C\u001a\u00020>8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B¨\u0006E"}, d2 = {"Le/a/s/n/b/g/d;", "Landroidx/fragment/app/Fragment;", "Le/a/s/n/b/g/j;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "c0", "", "url", "T4", "(Ljava/lang/String;)V", "H1", "kn", "bz", "Landroid/app/Dialog;", "g", "Landroid/app/Dialog;", "savingDialog", "Le/a/s/n/b/g/i;", "a", "Le/a/s/n/b/g/i;", "getPresenter", "()Le/a/s/n/b/g/i;", "setPresenter", "(Le/a/s/n/b/g/i;)V", "presenter", "Le/a/s/n/b/g/f;", C22021b.f61237c, "Le/a/s/n/b/g/f;", "getItemPresenter", "()Le/a/s/n/b/g/f;", "setItemPresenter", "(Le/a/s/n/b/g/f;)V", "itemPresenter", "e/a/s/n/b/g/d$d", "h", "Le/a/s/n/b/g/d$d;", "playerEventListener", "Le/a/s/s/i;", AbstractC2405c.f7629a, "Le/a/s/s/i;", "getVoiceRepository", "()Le/a/s/s/i;", "setVoiceRepository", "(Le/a/s/s/i;)V", "voiceRepository", "Le/a/o2/f;", "d", "Le/a/o2/f;", "adapter", "Le/m/a/c/c0;", "f", "Le/m/a/c/c0;", "player", "Le/a/s/l/h;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/s/l/h;", "binding", "<init>", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.s.n.b.g.d */
/* loaded from: classes17-dex2jar.jar:e/a/s/n/b/g/d.class */
public final class C20084d extends Fragment implements AbstractC20094j {

    /* renamed from: i */
    public static final /* synthetic */ l[] f56682i = {d0.d(new w(C20084d.class, "binding", "getBinding()Lcom/truecaller/callhero_assistant/databinding/FragmentVoiceSettingsBinding;", 0))};
    @Inject

    /* renamed from: a */
    public AbstractC20093i f56683a;
    @Inject

    /* renamed from: b */
    public AbstractC20090f f56684b;
    @Inject

    /* renamed from: c */
    public AbstractC20187i f56685c;

    /* renamed from: d */
    public C18898f f56686d;

    /* renamed from: f */
    public AbstractC24196c0 f56688f;

    /* renamed from: g */
    public Dialog f56689g;

    /* renamed from: e */
    public final ViewBindingProperty f56687e = new C19350a(new C20085a());

    /* renamed from: h */
    public final C20088d f56690h = new C20088d();

    /* renamed from: e.a.s.n.b.g.d$a */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/b/g/d$a.class */
    public static final class C20085a extends m implements s1.z.b.l<C20084d, C20031h> {
        public C20085a() {
            super(1);
        }

        /* renamed from: d */
        public Object m11576d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            Objects.requireNonNull(requireView, "rootView");
            RecyclerView recyclerView = (RecyclerView) requireView;
            return new C20031h(recyclerView, recyclerView);
        }
    }

    /* renamed from: e.a.s.n.b.g.d$b */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/b/g/d$b.class */
    public static final class C20086b extends m implements s1.z.b.l<View, C20083c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20086b() {
            super(1);
            C20084d.this = r4;
        }

        /* renamed from: d */
        public Object m11575d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, "it");
            C18898f c18898f = C20084d.this.f56686d;
            if (c18898f != null) {
                return new C20083c(view, c18898f);
            }
            s1.z.c.l.l("adapter");
            throw null;
        }
    }

    /* renamed from: e.a.s.n.b.g.d$c */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/b/g/d$c.class */
    public static final class C20087c extends m implements s1.z.b.l<C20083c, AbstractC20091g> {

        /* renamed from: b */
        public static final C20087c f56692b = new C20087c();

        public C20087c() {
            super(1);
        }

        /* renamed from: d */
        public Object m11574d(Object obj) {
            C20083c c20083c = (C20083c) obj;
            s1.z.c.l.e(c20083c, "it");
            return c20083c;
        }
    }

    /* renamed from: e.a.s.n.b.g.d$d */
    /* loaded from: classes17-dex2jar.jar:e/a/s/n/b/g/d$d.class */
    public static final class C20088d implements AbstractC24760q0.AbstractC24762b {
        public C20088d() {
            C20084d.this = r4;
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: A0 */
        public /* synthetic */ void mo4655A0() {
            C24811r0.m4490i(this);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: G5 */
        public /* synthetic */ void mo4654G5(boolean z, int i) {
            C24811r0.m4493f(this, z, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: N7 */
        public /* synthetic */ void mo4653N7(AbstractC24861y0 abstractC24861y0, int i) {
            C24811r0.m4488k(this, abstractC24861y0, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Pi */
        public /* synthetic */ void mo4652Pi(AbstractC24861y0 abstractC24861y0, Object obj, int i) {
            C24811r0.m4487l(this, abstractC24861y0, obj, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: S8 */
        public /* synthetic */ void mo4651S8(boolean z) {
            C24811r0.m4489j(this, z);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Xl */
        public void mo4650Xl(boolean z) {
            AbstractC20093i abstractC20093i = C20084d.this.f56683a;
            if (abstractC20093i != null) {
                abstractC20093i.mo11555T0(z);
            } else {
                s1.z.c.l.l("presenter");
                throw null;
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Zl */
        public /* synthetic */ void mo4649Zl(int i) {
            C24811r0.m4495d(this, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: fs */
        public /* synthetic */ void mo4648fs(TrackGroupArray trackGroupArray, C24648g c24648g) {
            C24811r0.m4486m(this, trackGroupArray, c24648g);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: h5 */
        public /* synthetic */ void mo4647h5(int i) {
            C24811r0.m4492g(this, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: hy */
        public /* synthetic */ void mo4646hy(int i) {
            C24811r0.m4491h(this, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: rs */
        public /* synthetic */ void mo4645rs(C24652o0 c24652o0) {
            C24811r0.m4496c(this, c24652o0);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: tf */
        public /* synthetic */ void mo4644tf(C24189b0 c24189b0) {
            C24811r0.m4494e(this, c24189b0);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: w1 */
        public void mo4643w1(boolean z) {
            AbstractC20093i abstractC20093i = C20084d.this.f56683a;
            if (abstractC20093i != null) {
                abstractC20093i.mo11558L(z);
            } else {
                s1.z.c.l.l("presenter");
                throw null;
            }
        }
    }

    public C20084d() {
        super((int) C3605R.layout.fragment_voice_settings);
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.p1204g.AbstractC20094j
    /* renamed from: H1 */
    public void mo11568H1() {
        AbstractC24196c0 abstractC24196c0 = this.f56688f;
        if (abstractC24196c0 != null) {
            abstractC24196c0.stop();
        } else {
            s1.z.c.l.l("player");
            throw null;
        }
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.p1204g.AbstractC20094j
    /* renamed from: T4 */
    public void mo11567T4(String str) {
        s1.z.c.l.e(str, "url");
        AbstractC24196c0 abstractC24196c0 = this.f56688f;
        if (abstractC24196c0 == null) {
            s1.z.c.l.l("player");
            throw null;
        }
        AbstractC20187i abstractC20187i = this.f56685c;
        if (abstractC20187i == null) {
            s1.z.c.l.l("voiceRepository");
            throw null;
        }
        abstractC24196c0.prepare(abstractC20187i.mo11404a(str));
        AbstractC24196c0 abstractC24196c02 = this.f56688f;
        if (abstractC24196c02 != null) {
            abstractC24196c02.setPlayWhenReady(true);
        } else {
            s1.z.c.l.l("player");
            throw null;
        }
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.p1204g.AbstractC20094j
    /* renamed from: bz */
    public void mo11566bz() {
        Dialog dialog = this.f56689g;
        if (dialog != null) {
            dialog.dismiss();
        }
        this.f56689g = null;
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.p1204g.AbstractC20094j
    /* renamed from: c0 */
    public void mo11565c0() {
        C18898f c18898f = this.f56686d;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("adapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.p1204g.AbstractC20094j
    /* renamed from: kn */
    public void mo11564kn() {
        Dialog dialog = this.f56689g;
        if (dialog != null) {
            dialog.dismiss();
        }
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        ProgressDialog progressDialog = new ProgressDialog(C17422k.m16113E(requireContext, true));
        progressDialog.setTitle(C2752R.string.fill_profile_saving);
        progressDialog.setCancelable(false);
        progressDialog.show();
        this.f56689g = progressDialog;
    }

    public void onCreate(Bundle bundle) {
        C20084d.super.onCreate(bundle);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        C19918b c19918b = C19918b.f56363b;
        AbstractC19917a m11813a = C19918b.m11813a(requireContext, AbstractC20012e.AbstractC20013a.class, DynamicFeature.CALLHERO_ASSISTANT);
        Objects.requireNonNull(m11813a, "null cannot be cast to non-null type com.truecaller.callhero_assistant.CallAssistantComponent");
        AbstractC20009b abstractC20009b = (AbstractC20009b) m11813a;
        C25225a.m3846s(abstractC20009b, AbstractC20009b.class);
        C20079a c20079a = new C20079a(abstractC20009b, null);
        this.f56683a = (AbstractC20093i) c20079a.f56672d.get();
        this.f56684b = new C20082b((AbstractC20092h) c20079a.f56672d.get(), (AbstractC20089e) c20079a.f56672d.get());
        AbstractC20187i mo11653Y0 = c20079a.f56669a.mo11653Y0();
        Objects.requireNonNull(mo11653Y0, "Cannot return null from a non-@Nullable component method");
        this.f56685c = mo11653Y0;
        AbstractC20090f abstractC20090f = this.f56684b;
        if (abstractC20090f != null) {
            this.f56686d = new C18898f(new C18910r(abstractC20090f, C3605R.layout.item_settings_voice, new C20086b(), C20087c.f56692b));
        } else {
            s1.z.c.l.l("itemPresenter");
            throw null;
        }
    }

    public void onDestroyView() {
        AbstractC24196c0 abstractC24196c0 = this.f56688f;
        if (abstractC24196c0 == null) {
            s1.z.c.l.l("player");
            throw null;
        }
        abstractC24196c0.removeListener(this.f56690h);
        AbstractC24196c0 abstractC24196c02 = this.f56688f;
        if (abstractC24196c02 == null) {
            s1.z.c.l.l("player");
            throw null;
        }
        abstractC24196c02.release();
        AbstractC20093i abstractC20093i = this.f56683a;
        if (abstractC20093i == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC20093i.mo9806c();
        C20084d.super.onDestroyView();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C20084d.super.onViewCreated(view, bundle);
        requireActivity().setTitle(C3605R.string.CallAssistantSettingsAssistantVoiceTitle);
        SimpleExoPlayer m39243a = new SimpleExoPlayer.C1964b(requireContext()).m39243a();
        s1.z.c.l.d(m39243a, "SimpleExoPlayer.Builder(requireContext()).build()");
        this.f56688f = m39243a;
        RecyclerView recyclerView = ((C20031h) this.f56687e.m34468b(this, f56682i[0])).f56597a;
        s1.z.c.l.d(recyclerView, "binding.recyclerView");
        C18898f c18898f = this.f56686d;
        if (c18898f == null) {
            s1.z.c.l.l("adapter");
            throw null;
        }
        recyclerView.setAdapter(c18898f);
        AbstractC20093i abstractC20093i = this.f56683a;
        if (abstractC20093i == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC20093i.mo9029Y0(this);
        AbstractC24196c0 abstractC24196c0 = this.f56688f;
        if (abstractC24196c0 != null) {
            abstractC24196c0.addListener(this.f56690h);
        } else {
            s1.z.c.l.l("player");
            throw null;
        }
    }
}
