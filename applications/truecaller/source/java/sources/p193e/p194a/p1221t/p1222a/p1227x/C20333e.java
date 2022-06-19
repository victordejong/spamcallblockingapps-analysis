package p193e.p194a.p1221t.p1222a.p1227x;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.android.truemoji.C2886R;
import com.truecaller.android.truemoji.keyboard.EmojiView;
import com.truecaller.android.truemoji.search.HorizontalEmojiList;
import e.m.a.g.e.d;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import o3.a;
import o3.c.b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19496e;
import p193e.p194a.p1221t.p1222a.AbstractC20278d;
import p193e.p194a.p1221t.p1222a.AbstractC20300o;
import p193e.p194a.p1221t.p1222a.AbstractC20301p;
import p193e.p194a.p1221t.p1222a.p1224u.C20309d;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import s1.g;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.t.a.x.e */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/x/e.class */
public final class C20333e extends d implements AbstractC20338g {
    @Inject

    /* renamed from: o */
    public AbstractC20337f f57160o;

    /* renamed from: p */
    public final g f57161p = C19286f.m13661r(this, C2886R.C2888id.closeButton);

    /* renamed from: q */
    public final g f57162q = C19286f.m13661r(this, C2886R.C2888id.emojiList);

    /* renamed from: r */
    public final g f57163r = C19286f.m13661r(this, C2886R.C2888id.emptyView);

    /* renamed from: s */
    public final g f57164s = C19286f.m13661r(this, C2886R.C2888id.searchText);

    /* renamed from: t */
    public final AbstractC20300o f57165t;

    /* renamed from: e.a.t.a.x.e$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/x/e$a.class */
    public static final class View$OnClickListenerC20334a implements View.OnClickListener {
        public View$OnClickListenerC20334a() {
            C20333e.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC20338g abstractC20338g = (AbstractC20338g) ((C20339h) C20333e.this.m11247h()).f57683a;
            if (abstractC20338g != null) {
                abstractC20338g.dismiss();
            }
        }
    }

    /* renamed from: e.a.t.a.x.e$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/x/e$b.class */
    public static final class C20335b implements TextWatcher {
        public C20335b() {
            C20333e.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            l.e(editable, "s");
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            l.e(charSequence, "s");
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            l.e(charSequence, "s");
            ((C20339h) C20333e.this.m11247h()).m11241Ij(charSequence);
        }
    }

    /* renamed from: e.a.t.a.x.e$c */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/x/e$c.class */
    public static final class C20336c implements AbstractC20300o {
        public C20336c() {
            C20333e.this = r4;
        }

        @Override // p193e.p194a.p1221t.p1222a.AbstractC20300o
        /* renamed from: b */
        public void mo11246b() {
        }

        @Override // p193e.p194a.p1221t.p1222a.AbstractC20300o
        /* renamed from: c */
        public boolean mo11245c(EmojiView emojiView, C20309d c20309d) {
            l.e(emojiView, ViewAction.VIEW);
            l.e(c20309d, "emoji");
            return false;
        }

        @Override // p193e.p194a.p1221t.p1222a.AbstractC20300o
        /* renamed from: d */
        public void mo11244d(C20309d c20309d) {
            l.e(c20309d, "emoji");
            C20339h c20339h = (C20339h) C20333e.this.m11247h();
            Objects.requireNonNull(c20339h);
            l.e(c20309d, "emoji");
            AbstractC20338g abstractC20338g = (AbstractC20338g) c20339h.f57683a;
            if (abstractC20338g != null) {
                abstractC20338g.dismiss();
            }
            AbstractC19462a abstractC19462a = c20339h.f57174i;
            LinkedHashMap m8655X = C22128a.m8655X("EmojiSearch", "type");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("value", Double.valueOf(c20339h.f57170e));
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b("EmojiSearch");
            m15852a.m15849c(linkedHashMap);
            m15852a.m15848d(m8655X);
            C17697p3 build = m15852a.build();
            l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
            abstractC19462a.mo13275a(build);
            C20333e.this.m11248g().setEmojiClickListener(null);
            C20333e.this.f57165t.mo11244d(c20309d);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C20333e(Context context, AbstractC20300o abstractC20300o) {
        super(context, C2886R.style.StyleX_FormBottomSheetDialogTheme);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC20300o, "listener");
        this.f57165t = abstractC20300o;
    }

    @Override // p193e.p194a.p1221t.p1222a.p1227x.AbstractC20338g
    /* renamed from: A1 */
    public void mo11243A1(boolean z) {
        View view = (View) this.f57163r.getValue();
        l.d(view, "emptyView");
        C19286f.m13683U(view, z);
    }

    @Override // p193e.p194a.p1221t.p1222a.p1227x.AbstractC20338g
    /* renamed from: B1 */
    public void mo11242B1(List<C20309d> list) {
        l.e(list, "emojis");
        m11248g().setEmojis(list);
        m11248g().scrollToPosition(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1221t.p1222a.p1227x.AbstractC20338g
    public void dismiss() {
        AbstractC20337f abstractC20337f = this.f57160o;
        if (abstractC20337f == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20574a) abstractC20337f).mo9806c();
        C20333e.super.dismiss();
    }

    /* renamed from: g */
    public final HorizontalEmojiList m11248g() {
        return (HorizontalEmojiList) this.f57162q.getValue();
    }

    /* renamed from: h */
    public final AbstractC20337f m11247h() {
        AbstractC20337f abstractC20337f = this.f57160o;
        if (abstractC20337f != null) {
            return abstractC20337f;
        }
        l.l("presenter");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C20333e.super.onCreate(bundle);
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        setContentView(View.inflate(C17422k.m16113E(context, true), C2886R.layout.view_emoji_search, null));
        AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
        l.d(m28551L, "ApplicationBase.getAppBase()");
        AbstractC8412c m28549N = m28551L.m28549N();
        Objects.requireNonNull(m28549N);
        AbstractApplicationC8442a m28551L2 = AbstractApplicationC8442a.m28551L();
        l.d(m28551L2, "ApplicationBase.getAppBase()");
        AbstractC19496e m28552K = m28551L2.m28552K();
        Objects.requireNonNull(m28552K);
        AbstractC20278d abstractC20278d = (AbstractC20278d) C22128a.m8726C1(AbstractC20278d.class, "EntryPointAccessors.from…ojiComponent::class.java)");
        C25225a.m3846s(m28549N, AbstractC8412c.class);
        C25225a.m3846s(abstractC20278d, AbstractC20278d.class);
        C25225a.m3846s(m28552K, AbstractC19496e.class);
        C20329a c20329a = new C20329a(abstractC20278d);
        f mo12378g = m28549N.mo12378g();
        Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
        a a = b.a(c20329a);
        AbstractC20301p mo11285V3 = abstractC20278d.mo11285V3();
        Objects.requireNonNull(mo11285V3, "Cannot return null from a non-@Nullable component method");
        AbstractC19462a mo12776C4 = m28552K.mo12776C4();
        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
        this.f57160o = new C20339h(mo12378g, a, mo11285V3, mo12776C4);
        ((View) this.f57161p.getValue()).setOnClickListener(new View$OnClickListenerC20334a());
        ((EditText) this.f57164s.getValue()).addTextChangedListener(new C20335b());
        m11248g().setEmojiClickListener(new C20336c());
        AbstractC20337f abstractC20337f = this.f57160o;
        if (abstractC20337f != null) {
            ((C20339h) abstractC20337f).mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onWindowFocusChanged(boolean z) {
        C20333e.super.onWindowFocusChanged(z);
        if (z) {
            EditText editText = (EditText) this.f57164s.getValue();
            l.d(editText, "searchText");
            C19286f.m13679Y(editText, true, 0L, 2);
        }
    }
}
