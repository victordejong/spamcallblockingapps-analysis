package p459j.p460a.p474c0.p491g.p496e0;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.datamodel.data.PendingAttachmentData;
import gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity;
import gogolook.callgogolook2.messaging.p078ui.mediapicker.MediaPickerPanel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11590d;
import p459j.p460a.p474c0.p475c.p477x.C11589c;
import p459j.p460a.p474c0.p475c.p477x.C11592f;
import p459j.p460a.p474c0.p475c.p478y.C11617j;
import p459j.p460a.p474c0.p475c.p478y.C11627m;
import p459j.p460a.p474c0.p491g.C12095l;
import p459j.p460a.p474c0.p491g.p496e0.C12036f;
import p459j.p460a.p474c0.p499h.C12143b;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: j.a.c0.g.e0.l */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/l.class */
public class FragmentC12048l extends Fragment implements C11617j.AbstractC11623f {

    /* renamed from: a */
    public AbstractC12059k f26998a;

    /* renamed from: b */
    public Handler f26999b;

    /* renamed from: c */
    public int f27000c;

    /* renamed from: d */
    public final AbstractC12046k[] f27001d;

    /* renamed from: e */
    public final ArrayList<AbstractC12046k> f27002e;

    /* renamed from: f */
    public AbstractC12046k f27003f;

    /* renamed from: g */
    public MediaPickerPanel f27004g;

    /* renamed from: h */
    public LinearLayout f27005h;

    /* renamed from: i */
    public ViewPager f27006i;

    /* renamed from: j */
    public C12095l<AbstractC12046k> f27007j;

    /* renamed from: k */
    public boolean f27008k;

    /* renamed from: l */
    public int f27009l;

    /* renamed from: m */
    public final C11589c<C11627m> f27010m;

    /* renamed from: n */
    public C12036f f27011n;

    /* renamed from: o */
    public C11617j.AbstractC11623f f27012o;

    /* renamed from: p */
    public C11592f<C11617j> f27013p;

    /* renamed from: q */
    public boolean f27014q;

    /* renamed from: r */
    public int f27015r;

    /* renamed from: s */
    public boolean f27016s;

    /* renamed from: j.a.c0.g.e0.l$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/l$a.class */
    public class RunnableC12049a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f27017a;

        public RunnableC12049a(int i) {
            this.f27017a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentC12048l.this.f26998a.mo7354a(this.f27017a);
        }
    }

    /* renamed from: j.a.c0.g.e0.l$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/l$b.class */
    public class C12050b implements C12036f.AbstractC12038b {
        public C12050b() {
        }

        @Override // p459j.p460a.p474c0.p491g.p496e0.C12036f.AbstractC12038b
        /* renamed from: a */
        public void mo7356a(PendingAttachmentData pendingAttachmentData) {
            if (FragmentC12048l.this.f27010m.mo9031c()) {
                FragmentC12048l.this.m7379a(pendingAttachmentData);
            }
        }
    }

    /* renamed from: j.a.c0.g.e0.l$c */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/l$c.class */
    public class C12051c implements ViewPager.OnPageChangeListener {
        public C12051c() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            int i2 = 1;
            int i3 = i;
            if (C12212s0.m6783d()) {
                i3 = (FragmentC12048l.this.f27002e.size() - 1) - i;
            }
            FragmentC12048l lVar = FragmentC12048l.this;
            AbstractC12046k kVar = (AbstractC12046k) lVar.f27002e.get(i3);
            if (i3 <= 0 || FragmentC12048l.this.f27002e.get(i3 - 1) != FragmentC12048l.this.f27002e.get(i3)) {
                i2 = 0;
            }
            lVar.m7376a(kVar, i2);
        }
    }

    /* renamed from: j.a.c0.g.e0.l$d */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/l$d.class */
    public class RunnableC12052d implements Runnable {
        public RunnableC12052d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentC12048l.this.f26998a.mo7350b();
        }
    }

    /* renamed from: j.a.c0.g.e0.l$e */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/l$e.class */
    public class RunnableC12053e implements Runnable {
        public RunnableC12053e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentC12048l.this.f26998a.mo7348c();
        }
    }

    /* renamed from: j.a.c0.g.e0.l$f */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/l$f.class */
    public class RunnableC12054f implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ boolean f27023a;

        public RunnableC12054f(boolean z) {
            this.f27023a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentC12048l.this.f26998a.mo7351a(this.f27023a);
        }
    }

    /* renamed from: j.a.c0.g.e0.l$g */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/l$g.class */
    public class RunnableC12055g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Collection f27025a;

        /* renamed from: b */
        public final /* synthetic */ boolean f27026b;

        public RunnableC12055g(Collection collection, boolean z) {
            this.f27025a = collection;
            this.f27026b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentC12048l.this.f26998a.mo7352a(this.f27025a, this.f27026b);
        }
    }

    /* renamed from: j.a.c0.g.e0.l$h */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/l$h.class */
    public class RunnableC12056h implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MessagePartData f27028a;

        public RunnableC12056h(MessagePartData messagePartData) {
            this.f27028a = messagePartData;
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentC12048l.this.f26998a.mo7349b(this.f27028a);
        }
    }

    /* renamed from: j.a.c0.g.e0.l$i */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/l$i.class */
    public class RunnableC12057i implements Runnable {
        public RunnableC12057i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentC12048l.this.f26998a.mo7355a();
        }
    }

    /* renamed from: j.a.c0.g.e0.l$j */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/l$j.class */
    public class RunnableC12058j implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ PendingAttachmentData f27031a;

        public RunnableC12058j(PendingAttachmentData pendingAttachmentData) {
            this.f27031a = pendingAttachmentData;
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentC12048l.this.f26998a.mo7353a(this.f27031a);
        }
    }

    /* renamed from: j.a.c0.g.e0.l$k */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/l$k.class */
    public interface AbstractC12059k {
        /* renamed from: a */
        void mo7355a();

        /* renamed from: a */
        void mo7354a(int i);

        /* renamed from: a */
        void mo7353a(PendingAttachmentData pendingAttachmentData);

        /* renamed from: a */
        void mo7352a(Collection<MessagePartData> collection, boolean z);

        /* renamed from: a */
        void mo7351a(boolean z);

        /* renamed from: b */
        void mo7350b();

        /* renamed from: b */
        void mo7349b(MessagePartData messagePartData);

        /* renamed from: c */
        void mo7348c();
    }

    public FragmentC12048l() {
        this(AbstractC11516a.m9413n().mo9412a());
    }

    public FragmentC12048l(Context context) {
        this.f27010m = AbstractC11590d.m9040a(this);
        this.f27015r = 32;
        this.f27010m.mo9038b((C11589c<C11627m>) AbstractC11528g.m9259k().mo9257a(context));
        this.f27002e = new ArrayList<>();
        C12025d dVar = new C12025d(this);
        this.f27001d = new AbstractC12046k[]{dVar, dVar, new C12040h(this), new C12009b(this)};
        this.f27008k = false;
        m7368c(65535);
    }

    /* renamed from: A */
    public C11592f<C11627m> m7398A() {
        return AbstractC11590d.m9041a((AbstractC11590d) this.f27010m);
    }

    /* renamed from: B */
    public PagerAdapter m7397B() {
        return this.f27007j;
    }

    /* renamed from: C */
    public ViewPager m7396C() {
        return this.f27006i;
    }

    /* renamed from: D */
    public void m7395D() {
        ((BugleActionBarActivity) getActivity()).supportInvalidateOptionsMenu();
    }

    /* renamed from: E */
    public boolean m7394E() {
        AbstractC12046k kVar = this.f27003f;
        return kVar == null ? false : kVar.mo7418I();
    }

    /* renamed from: F */
    public boolean m7393F() {
        MediaPickerPanel mediaPickerPanel = this.f27004g;
        return mediaPickerPanel != null && mediaPickerPanel.m26970b();
    }

    /* renamed from: G */
    public boolean m7392G() {
        AbstractC12046k kVar = this.f27003f;
        return kVar == null ? false : kVar.mo7419H();
    }

    /* renamed from: H */
    public boolean m7391H() {
        return this.f27008k;
    }

    /* renamed from: I */
    public void m7390I() {
        this.f27011n.m7453a();
    }

    /* renamed from: J */
    public boolean m7389J() {
        AbstractC12046k kVar = this.f27003f;
        return kVar != null && kVar.mo7417J();
    }

    /* renamed from: K */
    public void m7388K() {
        AbstractC12046k kVar = this.f27003f;
        if (kVar != null) {
            kVar.mo7416K();
        }
    }

    /* renamed from: L */
    public void m7387L() {
        AbstractC12046k kVar = this.f27003f;
        if (kVar != null) {
            kVar.mo7415L();
        }
    }

    /* renamed from: M */
    public void m7386M() {
        this.f27007j.m7179a();
    }

    /* renamed from: N */
    public void m7385N() {
        AbstractC12046k kVar = this.f27003f;
        if (kVar != null) {
            kVar.mo7412O();
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11617j.AbstractC11623f
    /* renamed from: a */
    public int mo7384a() {
        return this.f27012o.mo7384a();
    }

    /* renamed from: a */
    public void m7383a(int i) {
        if (this.f26998a != null) {
            this.f26999b.post(new RunnableC12049a(i));
        }
    }

    /* renamed from: a */
    public final void m7382a(int i, boolean z) {
        boolean a = C12143b.m7032a(AbstractC11516a.m9413n().mo9412a());
        int i2 = i;
        if (i == 0) {
            int f = this.f27010m.mo9033b().m8762f();
            if (f < 0 || f >= this.f27002e.size()) {
                i2 = i;
                if (a) {
                    i2 = 4;
                }
            } else {
                m7376a(this.f27002e.get(f), (f <= 0 || this.f27002e.get(f - 1) != this.f27002e.get(f)) ? 0 : 1);
                i2 = i;
            }
        }
        if (this.f27003f == null) {
            int size = this.f27002e.size();
            int i3 = 0;
            while (i3 < size) {
                AbstractC12046k kVar = this.f27002e.get(i3);
                if (i2 == 0 || (kVar.mo7420G() & i2) != 0) {
                    m7376a(kVar, (i3 <= 0 || this.f27002e.get(i3 - 1) != kVar) ? 0 : 1);
                } else {
                    i3++;
                }
            }
        }
        if (this.f27003f == null) {
            m7376a(this.f27002e.get(0), 0);
        }
        MediaPickerPanel mediaPickerPanel = this.f27004g;
        if (mediaPickerPanel != null) {
            mediaPickerPanel.m26974a(a);
            this.f27004g.m26972a(true, z, this.f27002e.indexOf(this.f27003f));
        }
    }

    /* renamed from: a */
    public void m7381a(ActionBar actionBar) {
        AbstractC12046k kVar;
        if (getActivity() != null) {
            if (!m7393F() || (kVar = this.f27003f) == null) {
                actionBar.hide();
            } else {
                kVar.mo7406a(actionBar);
            }
        }
    }

    /* renamed from: a */
    public void m7380a(MessagePartData messagePartData, boolean z) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(messagePartData);
        m7373a(arrayList, z);
    }

    /* renamed from: a */
    public void m7379a(PendingAttachmentData pendingAttachmentData) {
        if (this.f26998a != null) {
            this.f26999b.post(new RunnableC12058j(pendingAttachmentData));
        }
        if (m7393F()) {
            m7395D();
        }
    }

    /* renamed from: a */
    public void m7378a(AbstractC11590d<C11617j> dVar) {
        this.f27013p = AbstractC11590d.m9041a((AbstractC11590d) dVar);
    }

    /* renamed from: a */
    public void m7377a(C11617j.AbstractC11623f fVar) {
        this.f27012o = fVar;
    }

    /* renamed from: a */
    public void m7376a(AbstractC12046k kVar, int i) {
        AbstractC12046k kVar2 = this.f27003f;
        if (kVar2 != kVar || kVar2.m7422E() != i) {
            AbstractC12046k kVar3 = this.f27003f;
            if (!(kVar3 == null || kVar3 == kVar)) {
                kVar3.mo7405a(false, kVar3.m7422E());
            }
            boolean z = this.f27003f != kVar;
            this.f27003f = kVar;
            int indexOf = this.f27002e.indexOf(this.f27003f);
            ViewPager viewPager = this.f27006i;
            if (viewPager != null && z) {
                viewPager.setCurrentItem(indexOf, false);
            }
            AbstractC12046k kVar4 = this.f27003f;
            if (kVar4 != null) {
                kVar4.mo7405a(true, i);
            }
            if (m7393F()) {
                m7395D();
            }
            this.f27010m.mo9033b().m8764b(indexOf);
            MediaPickerPanel mediaPickerPanel = this.f27004g;
            if (mediaPickerPanel != null) {
                mediaPickerPanel.m26966d();
            }
            m7383a(indexOf);
        }
    }

    /* renamed from: a */
    public void m7375a(AbstractC12059k kVar) {
        C12151d.m7013a();
        this.f26998a = kVar;
        this.f26999b = kVar != null ? new Handler() : null;
    }

    /* renamed from: a */
    public void m7373a(Collection<MessagePartData> collection, boolean z) {
        if (this.f26998a != null) {
            this.f26999b.post(new RunnableC12055g(collection, z));
        }
        if (m7393F() && !z) {
            m7395D();
        }
    }

    /* renamed from: b */
    public void m7372b(int i) {
        this.f27009l = i;
        LinearLayout linearLayout = this.f27005h;
        if (linearLayout != null) {
            linearLayout.setBackgroundColor(this.f27009l);
        }
        Iterator<AbstractC12046k> it = this.f27002e.iterator();
        while (it.hasNext()) {
            it.next().mo7402c(this.f27009l);
        }
    }

    /* renamed from: b */
    public void m7371b(int i, boolean z) {
        this.f27008k = true;
        if (this.f27014q) {
            m7382a(i, z);
            return;
        }
        this.f27015r = i;
        this.f27016s = z;
    }

    /* renamed from: b */
    public void m7370b(MessagePartData messagePartData) {
        if (this.f26998a != null) {
            this.f26999b.post(new RunnableC12056h(messagePartData));
        }
        if (m7393F()) {
            m7395D();
        }
    }

    /* renamed from: c */
    public void m7368c(int i) {
        this.f27000c = i;
        this.f27002e.clear();
        int length = this.f27001d.length;
        int i2 = 0;
        boolean z = false;
        while (i2 < length) {
            AbstractC12046k kVar = this.f27001d[i2];
            boolean z2 = (kVar.mo7420G() & this.f27000c) != 0;
            int i3 = (i2 <= 0 || this.f27001d[i2 - 1] != kVar) ? 0 : 1;
            if (z2) {
                this.f27002e.add(kVar);
                z = z;
                if (z) {
                    m7376a(kVar, i3);
                    z = false;
                }
            } else {
                z = z;
                if (this.f27003f == kVar) {
                    z = true;
                }
            }
            ImageButton b = kVar.m7403b(i3);
            if (b != null) {
                b.setVisibility(z2 ? 0 : 8);
            }
            i2++;
        }
        if (z && this.f27002e.size() > 0) {
            m7376a(this.f27002e.get(0), 0);
        }
        AbstractC12046k[] kVarArr = new AbstractC12046k[this.f27002e.size()];
        this.f27002e.toArray(kVarArr);
        this.f27007j = new C12095l<>(kVarArr);
        ViewPager viewPager = this.f27006i;
        if (viewPager != null) {
            viewPager.setAdapter(this.f27007j);
        }
        if (this.f27010m.mo9031c() && getActivity() != null) {
            this.f27010m.m9042e();
            this.f27010m.mo9038b((C11589c<C11627m>) AbstractC11528g.m9259k().mo9257a(getActivity()));
            this.f27010m.mo9033b().m8766a(getLoaderManager());
        }
    }

    /* renamed from: d */
    public void m7367d(boolean z) {
        this.f27008k = false;
        MediaPickerPanel mediaPickerPanel = this.f27004g;
        if (mediaPickerPanel != null) {
            mediaPickerPanel.m26972a(false, z, -1);
        }
        this.f27003f = null;
    }

    /* renamed from: e */
    public void m7365e(boolean z) {
        setHasOptionsMenu(z);
        if (this.f26998a != null) {
            this.f26999b.post(new RunnableC12054f(z));
        }
        AbstractC12046k kVar = this.f27003f;
        if (kVar != null) {
            kVar.mo7401d(z);
        }
    }

    /* renamed from: e */
    public boolean m7366e() {
        AbstractC12046k kVar = this.f27003f;
        if (kVar != null) {
            return kVar.m7399z();
        }
        return false;
    }

    /* renamed from: f */
    public void m7363f(boolean z) {
        this.f27004g.m26973a(z, true);
    }

    /* renamed from: f */
    public boolean m7364f() {
        AbstractC12046k kVar = this.f27003f;
        return kVar == null ? false : kVar.mo7426A();
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.f27011n.m7452a(i, i2, intent);
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f27014q = true;
        int i = this.f27015r;
        if (i != 32) {
            m7382a(i, this.f27016s);
        }
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f27010m.mo9033b().m8766a(getLoaderManager());
        this.f27011n = new C12036f(this, new C12050b());
    }

    @Override // android.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        AbstractC12046k kVar = this.f27003f;
        if (kVar != null) {
            kVar.mo7408a(menuInflater, menu, (!isAdded() || getActivity() == null || !(getActivity() instanceof AppCompatActivity)) ? null : ((AppCompatActivity) getActivity()).getSupportActionBar());
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f27004g = (MediaPickerPanel) layoutInflater.inflate(R$layout.mediapicker_fragment, viewGroup, false);
        this.f27004g.m26975a(this);
        this.f27005h = (LinearLayout) this.f27004g.findViewById(R$id.mediapicker_tabstrip);
        this.f27005h.setBackgroundColor(this.f27009l);
        int length = this.f27001d.length;
        int i = 0;
        while (true) {
            boolean z = true;
            if (i < length) {
                AbstractC12046k[] kVarArr = this.f27001d;
                AbstractC12046k kVar = kVarArr[i];
                int i2 = (i <= 0 || kVarArr[i - 1] != kVar) ? 0 : 1;
                kVar.m7409a(layoutInflater, this.f27005h, i2);
                if ((kVar.mo7420G() & this.f27000c) == 0) {
                    z = false;
                }
                ImageButton b = kVar.m7403b(i2);
                if (b != null) {
                    b.setVisibility(z ? 0 : 8);
                    this.f27005h.addView(b);
                }
                i++;
            } else {
                this.f27006i = (ViewPager) this.f27004g.findViewById(R$id.mediapicker_view_pager);
                this.f27006i.setOnPageChangeListener(new C12051c());
                this.f27006i.setOffscreenPageLimit(0);
                this.f27006i.setAdapter(this.f27007j);
                this.f27004g.m26974a(C12143b.m7032a(getActivity()));
                this.f27004g.m26972a(this.f27008k, true, this.f27002e.indexOf(this.f27003f));
                return this.f27004g;
            }
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f27010m.m9042e();
    }

    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        AbstractC12046k kVar = this.f27003f;
        return (kVar != null && kVar.mo7407a(menuItem)) || super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        C12010c.m7550A().m7507p();
        Iterator<AbstractC12046k> it = this.f27002e.iterator();
        while (it.hasNext()) {
            it.next().mo7414M();
        }
    }

    @Override // android.app.Fragment
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        AbstractC12046k kVar = this.f27003f;
        if (kVar != null) {
            kVar.mo7410a(i, strArr, iArr);
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        C12010c.m7550A().m7506q();
        Iterator<AbstractC12046k> it = this.f27002e.iterator();
        while (it.hasNext()) {
            it.next().mo7413N();
        }
    }

    /* renamed from: q */
    public void m7362q() {
        if (this.f26998a != null) {
            this.f26999b.post(new RunnableC12057i());
        }
    }

    /* renamed from: v */
    public void m7361v() {
        setHasOptionsMenu(false);
        this.f27008k = false;
        if (this.f26998a != null) {
            this.f26999b.post(new RunnableC12053e());
        }
        AbstractC12046k kVar = this.f27003f;
        if (kVar != null) {
            kVar.mo7400e(false);
        }
    }

    /* renamed from: w */
    public void m7360w() {
        setHasOptionsMenu(false);
        this.f27008k = true;
        this.f27007j.notifyDataSetChanged();
        if (this.f26998a != null) {
            this.f26999b.post(new RunnableC12052d());
        }
        AbstractC12046k kVar = this.f27003f;
        if (kVar != null) {
            kVar.mo7401d(false);
            this.f27003f.mo7400e(true);
        }
    }

    /* renamed from: x */
    public boolean m7359x() {
        AbstractC12046k kVar = this.f27003f;
        boolean z = false;
        if (!(kVar == null || kVar.mo7425B() == 0)) {
            z = true;
        }
        return z;
    }

    /* renamed from: y */
    public int m7358y() {
        return this.f27009l;
    }

    /* renamed from: z */
    public C11592f<C11617j> m7357z() {
        return this.f27013p;
    }
}
