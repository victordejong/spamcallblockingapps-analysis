package p193e.p194a.p1080o.p1081a.p1089g.p1093j;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18591d;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.s;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018�� 62\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0002:\u00017B\u0007¢\u0006\u0004\b5\u0010\u0016J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0011\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001c\u0010\u0014J\u000f\u0010\u001d\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001d\u0010\u0016J\u0017\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u000bH\u0016¢\u0006\u0004\b!\u0010\u0016R\"\u0010(\u001a\u00020\u00038\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u0018\u0010*\u001a\u0004\u0018\u00010\u000e8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b)\u0010\u0010R\u001c\u00100\u001a\u00020+8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u0016\u00104\u001a\u0002018V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b2\u00103¨\u00068"}, d2 = {"Le/a/o/a/g/j/e;", "Le/a/o/a/g/a;", "Le/a/o/a/g/j/h;", "Le/a/o/a/g/j/g;", "Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;", "r", "()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;", "Landroid/view/View;", ViewAction.VIEW, "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "getMessage", "()Ljava/lang/String;", "", "title", "setTitle", "(Ljava/lang/CharSequence;)V", "Xy", "()V", "", "stringRes", "Un", "(I)V", "text", "ms", "Gi", "message", "jt", "(Ljava/lang/String;)V", "l6", "i", "Le/a/o/a/g/j/g;", "getPresenter", "()Le/a/o/a/g/j/g;", "setPresenter", "(Le/a/o/a/g/j/g;)V", "presenter", "H6", "hintMessage", "Le/a/o/a/g/d;", "j", "Le/a/o/a/g/d;", "RA", "()Le/a/o/a/g/d;", "type", "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;", "sf", "()Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;", "onDemandMessageSource", "<init>", "k", "a", "context-call_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.o.a.g.j.e */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/g/j/e.class */
public final class C18628e extends AbstractC18584a<AbstractC18633h, AbstractC18632g> implements AbstractC18633h {

    /* renamed from: k */
    public static final C18629a f52433k = new C18629a(null);
    @Inject

    /* renamed from: i */
    public AbstractC18632g f52434i;

    /* renamed from: j */
    public final AbstractC18591d f52435j = AbstractC18591d.C18596e.f52379a;

    /* renamed from: e.a.o.a.g.j.e$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/g/j/e$a.class */
    public static final class C18629a {
        public C18629a(f fVar) {
        }

        /* renamed from: b */
        public static /* synthetic */ void m14705b(C18629a c18629a, FragmentManager fragmentManager, InitiateCallHelper.CallOptions callOptions, OnDemandMessageSource onDemandMessageSource, String str, int i) {
            if ((i & 2) != 0) {
                callOptions = null;
            }
            if ((i & 8) != 0) {
                str = null;
            }
            c18629a.m14706a(fragmentManager, callOptions, onDemandMessageSource, str);
        }

        /* renamed from: a */
        public final void m14706a(FragmentManager fragmentManager, InitiateCallHelper.CallOptions callOptions, OnDemandMessageSource onDemandMessageSource, String str) {
            l.e(fragmentManager, "fragmentManager");
            l.e(onDemandMessageSource, "onDemandSource");
            C18628e c18628e = new C18628e();
            Bundle bundle = new Bundle();
            bundle.putParcelable("CallOptions", callOptions);
            bundle.putParcelable("onDemandMessageSource", onDemandMessageSource);
            bundle.putString("onDemandMessageHint", str);
            c18628e.setArguments(bundle);
            c18628e.show(fragmentManager, d0.a(C18628e.class).c());
        }
    }

    /* renamed from: e.a.o.a.g.j.e$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/g/j/e$b.class */
    public static final class C18630b extends m implements s1.z.b.l<String, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18630b() {
            super(1);
            C18628e.this = r4;
        }

        /* renamed from: d */
        public Object m14704d(Object obj) {
            String str = (String) obj;
            l.e(str, "it");
            AbstractC18632g abstractC18632g = C18628e.this.f52434i;
            if (abstractC18632g != null) {
                abstractC18632g.mo14682Vf(str);
                return s.a;
            }
            l.l("presenter");
            throw null;
        }
    }

    /* renamed from: VA */
    public static final void m14707VA(FragmentManager fragmentManager, InitiateCallHelper.CallOptions callOptions, OnDemandMessageSource onDemandMessageSource) {
        l.e(fragmentManager, "fragmentManager");
        l.e(onDemandMessageSource, "onDemandSource");
        C18628e c18628e = new C18628e();
        Bundle bundle = new Bundle();
        bundle.putParcelable("CallOptions", callOptions);
        bundle.putParcelable("onDemandMessageSource", onDemandMessageSource);
        bundle.putString("onDemandMessageHint", null);
        c18628e.setArguments(bundle);
        c18628e.show(fragmentManager, d0.a(C18628e.class).c());
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.p1093j.AbstractC18633h
    /* renamed from: Gi */
    public void mo14703Gi() {
        AbstractC18590c m14752PA = m14752PA();
        if (m14752PA != null) {
            m14752PA.mo14748Hg();
        }
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.p1093j.AbstractC18633h
    /* renamed from: H6 */
    public String mo14702H6() {
        Bundle arguments = getArguments();
        return arguments != null ? arguments.getString("onDemandMessageHint") : null;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    /* renamed from: QA */
    public AbstractC18633h mo14710QA() {
        return this;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    /* renamed from: RA */
    public AbstractC18591d mo14709RA() {
        return this.f52435j;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    /* renamed from: SA */
    public AbstractC18632g mo14708SA() {
        AbstractC18632g abstractC18632g = this.f52434i;
        if (abstractC18632g != null) {
            return abstractC18632g;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.p1093j.AbstractC18633h
    /* renamed from: Un */
    public void mo14701Un(int i) {
        m14753OA().f52784d.setText(i);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.p1093j.AbstractC18633h
    /* renamed from: Xy */
    public void mo14700Xy() {
        TextView textView = m14753OA().f52785e;
        l.d(textView, "binding.title");
        C19286f.m13689O(textView);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.p1093j.AbstractC18633h
    public String getMessage() {
        return m14753OA().f52782b.getMessage();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.p1093j.AbstractC18633h
    /* renamed from: jt */
    public void mo14699jt(String str) {
        l.e(str, "message");
        AbstractC18590c m14752PA = m14752PA();
        if (m14752PA != null) {
            m14752PA.mo14747Vi(new AbstractC18591d.C18594c(str));
        }
        dismissAllowingStateLoss();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.p1093j.AbstractC18633h
    /* renamed from: l6 */
    public void mo14698l6() {
        Context context = getContext();
        InputMethodManager systemService = context != null ? context.getSystemService("input_method") : null;
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        InputMethodManager inputMethodManager = systemService;
        View view = getView();
        IBinder iBinder = null;
        if (view != null) {
            iBinder = view.getWindowToken();
        }
        inputMethodManager.hideSoftInputFromWindow(iBinder, 0);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.p1093j.AbstractC18633h
    /* renamed from: ms */
    public void mo14697ms(CharSequence charSequence) {
        l.e(charSequence, "text");
        TextView textView = m14753OA().f52781a;
        l.d(textView, "this");
        textView.setText(charSequence);
        C19286f.m13684T(textView);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        super.onViewCreated(view, bundle);
        TextView textView = m14753OA().f52781a;
        l.d(textView, "binding.communityGuidelineText");
        C19291g.m13526o0(textView, new C18630b());
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.p1093j.AbstractC18633h
    /* renamed from: r */
    public InitiateCallHelper.CallOptions mo14696r() {
        Bundle arguments = getArguments();
        return arguments != null ? (InitiateCallHelper.CallOptions) arguments.getParcelable("CallOptions") : null;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.p1093j.AbstractC18633h
    public void setTitle(CharSequence charSequence) {
        l.e(charSequence, "title");
        TextView textView = m14753OA().f52785e;
        C19286f.m13684T(textView);
        textView.setText(charSequence);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.p1093j.AbstractC18633h
    /* renamed from: sf */
    public OnDemandMessageSource mo14695sf() {
        OnDemandMessageSource onDemandMessageSource;
        Bundle arguments = getArguments();
        if (arguments == null || (onDemandMessageSource = (OnDemandMessageSource) arguments.getParcelable("onDemandMessageSource")) == null) {
            throw new Exception("onDemandMessageSource must be provided.");
        }
        return onDemandMessageSource;
    }
}
