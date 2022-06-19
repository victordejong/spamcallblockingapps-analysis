package p193e.p194a.p1365y.p1366a.p1371f;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.MraidCloseCommand;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.models.FlashContact;
import com.truecaller.flashsdk.p166ui.FlashButton;
import e.m.a.g.e.e;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import o3.c.b;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1365y.p1382c.C21632c;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u00012\u00020\u0002:\u0003!)%B\u0007¢\u0006\u0004\b0\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u0013J%\u0010\u001e\u001a\u00020\u00052\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u001d\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\"\u0010/\u001a\u00020(8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.¨\u00061"}, d2 = {"Le/a/y/a/f/b;", "Le/m/a/g/e/e;", "Le/a/y/a/f/e;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroy", "()V", "", "Lcom/truecaller/flashsdk/models/FlashContact;", "xk", "()Ljava/util/List;", "", "ku", "()Ljava/lang/String;", MraidCloseCommand.NAME, "contacts", "screenContext", "Ic", "(Ljava/util/List;Ljava/lang/String;)V", "Landroidx/recyclerview/widget/RecyclerView;", "a", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Le/a/y/a/f/b$b;", AbstractC2405c.f7629a, "Le/a/y/a/f/b$b;", "dismissListener", "Le/a/y/a/f/f;", C22021b.f61237c, "Le/a/y/a/f/f;", "getPresenter", "()Le/a/y/a/f/f;", "setPresenter", "(Le/a/y/a/f/f;)V", "presenter", "<init>", "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.y.a.f.b */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/f/b.class */
public final class C21494b extends e implements AbstractC21500e {

    /* renamed from: a */
    public RecyclerView f60029a;
    @Inject

    /* renamed from: b */
    public AbstractC21501f f60030b;

    /* renamed from: c */
    public AbstractC21496b f60031c;

    /* renamed from: e.a.y.a.f.b$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/a/f/b$a.class */
    public final class C21495a extends RecyclerView.AbstractC0317g<C21497c> {

        /* renamed from: a */
        public final LayoutInflater f60032a;

        /* renamed from: b */
        public final List<FlashContact> f60033b;

        /* renamed from: c */
        public final String f60034c;

        /* renamed from: d */
        public final /* synthetic */ C21494b f60035d;

        public C21495a(C21494b c21494b, LayoutInflater layoutInflater, List<FlashContact> list, String str) {
            l.e(layoutInflater, "inflater");
            l.e(list, "contactList");
            l.e(str, "screenContext");
            this.f60035d = c21494b;
            this.f60032a = layoutInflater;
            this.f60033b = list;
            this.f60034c = str;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public int getItemCount() {
            return this.f60033b.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public void onBindViewHolder(C21497c c21497c, int i) {
            C21497c c21497c2 = c21497c;
            l.e(c21497c2, "holder");
            FlashContact flashContact = this.f60033b.get(i);
            c21497c2.f60037b.setText(this.f60035d.getString(C3909R.string.flash_number_with_plus, new Object[]{flashContact.f11999a}));
            try {
                c21497c2.f60036a.m35376a(Long.parseLong(flashContact.f11999a), flashContact.f12000b, this.f60034c);
                c21497c2.itemView.setOnClickListener(new View$OnClickListenerC21493a(this));
            } catch (NumberFormatException e) {
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public C21497c onCreateViewHolder(ViewGroup viewGroup, int i) {
            l.e(viewGroup, "parent");
            View inflate = this.f60032a.inflate(C3909R.layout.flashsdk_item_select_number, viewGroup, false);
            l.d(inflate, "inflater.inflate(R.layou…ct_number, parent, false)");
            return new C21497c(inflate);
        }
    }

    /* renamed from: e.a.y.a.f.b$b */
    /* loaded from: classes9-dex2jar.jar:e/a/y/a/f/b$b.class */
    public interface AbstractC21496b {
        void onDismiss();
    }

    /* renamed from: e.a.y.a.f.b$c */
    /* loaded from: classes9-dex2jar.jar:e/a/y/a/f/b$c.class */
    public static final class C21497c extends RecyclerView.AbstractC0313c0 {

        /* renamed from: a */
        public final FlashButton f60036a;

        /* renamed from: b */
        public final TextView f60037b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21497c(View view) {
            super(view);
            l.e(view, ViewAction.VIEW);
            View findViewById = view.findViewById(C3909R.C3911id.flash_button);
            l.d(findViewById, "view.findViewById(R.id.flash_button)");
            this.f60036a = (FlashButton) findViewById;
            View findViewById2 = view.findViewById(C3909R.C3911id.text1);
            l.d(findViewById2, "view.findViewById(R.id.text1)");
            this.f60037b = (TextView) findViewById2;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1371f.AbstractC21500e
    /* renamed from: Ic */
    public void mo9589Ic(List<FlashContact> list, String str) {
        l.e(list, "contacts");
        l.e(str, "screenContext");
        RecyclerView recyclerView = this.f60029a;
        if (recyclerView == null) {
            l.l("recyclerView");
            throw null;
        }
        LayoutInflater from = LayoutInflater.from(getContext());
        l.d(from, "LayoutInflater.from(context)");
        recyclerView.setAdapter(new C21495a(this, from, list, str));
    }

    @Override // p193e.p194a.p1365y.p1366a.p1371f.AbstractC21500e
    public void close() {
        dismissAllowingStateLoss();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r4 != null) goto L7;
     */
    @Override // p193e.p194a.p1365y.p1366a.p1371f.AbstractC21500e
    /* renamed from: ku */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo9588ku() {
        /*
            r3 = this;
            r0 = r3
            android.os.Bundle r0 = r0.getArguments()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L17
            r0 = r4
            java.lang.String r1 = "screen_context"
            java.lang.String r0 = r0.getString(r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L17
            goto L1a
        L17:
            java.lang.String r0 = ""
            r4 = r0
        L1a:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1366a.p1371f.C21494b.mo9588ku():java.lang.String");
    }

    public void onCreate(Bundle bundle) {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.setTheme(C21632c.m9330b().mo9329A());
        }
        C21494b.super.onCreate(bundle);
        C21632c c21632c = C21632c.f60288b;
        AbstractC21666a m9331a = C21632c.m9331a();
        C21498c c21498c = new C21498c();
        C25225a.m3846s(m9331a, AbstractC21666a.class);
        C21499d c21499d = new C21499d(c21498c);
        Object obj = b.c;
        if (!(c21499d instanceof b)) {
            c21499d = new b(c21499d);
        }
        this.f60030b = (AbstractC21501f) c21499d.get();
        AbstractC21496b activity2 = getActivity();
        if (activity2 != null) {
            if (activity2 instanceof AbstractC21496b) {
                this.f60031c = activity2;
            } else {
                dismiss();
            }
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C3909R.layout.layout_flash_contact_selector, viewGroup, false);
    }

    public void onDestroy() {
        C21494b.super.onDestroy();
        AbstractC21496b abstractC21496b = this.f60031c;
        if (abstractC21496b != null) {
            abstractC21496b.onDismiss();
        }
        AbstractC21501f abstractC21501f = this.f60030b;
        if (abstractC21501f != null) {
            abstractC21501f.f57683a = null;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C21494b.super.onViewCreated(view, bundle);
        View findViewById = view.findViewById(C3909R.C3911id.recyclerView);
        l.d(findViewById, "view.findViewById(R.id.recyclerView)");
        this.f60029a = (RecyclerView) findViewById;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        RecyclerView recyclerView = this.f60029a;
        if (recyclerView == null) {
            l.l("recyclerView");
            throw null;
        }
        recyclerView.setLayoutManager(linearLayoutManager);
        AbstractC21501f abstractC21501f = this.f60030b;
        if (abstractC21501f != null) {
            abstractC21501f.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1371f.AbstractC21500e
    /* renamed from: xk */
    public List<FlashContact> mo9587xk() {
        ArrayList parcelableArrayList;
        Bundle arguments = getArguments();
        if (arguments == null || (parcelableArrayList = arguments.getParcelableArrayList("contact_list")) == null) {
            return null;
        }
        return parcelableArrayList;
    }
}
