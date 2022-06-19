package p193e.p194a.p294b.p295a.p296a.p297a;

import android.net.Uri;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LiveData;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.newBusiness.profile.p151vm.ImageUploadStatus;
import com.truecaller.bizmon.newBusiness.workers.ImageType;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import com.truecaller.profile.data.dto.businessV2.BusinessProfileRequest;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b0.a.v;
import n3.v.i0;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC26996c1;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p294b.p295a.p296a.p297a.p298b.C7483a;
import p193e.p194a.p294b.p295a.p296a.p297a.p300k0.C7564a;
import p193e.p194a.p294b.p295a.p296a.p304c.C7621c;
import p193e.p194a.p294b.p295a.p296a.p306d.C7633b;
import p193e.p194a.p294b.p295a.p308b.p310j.C7659c;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p354l.AbstractC8042q;
import p193e.p194a.p294b.p354l.C8036l;
import p193e.p194a.p294b.p355m.C8091n0;
import s1.a.l;
import s1.g;
import s1.s;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��º\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� m2\u00020\u00012\u00020\u0002:\u0002WPB\u0007¢\u0006\u0004\bk\u0010lJ\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ-\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00132\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0010\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010!\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b!\u0010\"J\u001f\u0010&\u001a\u00020\b2\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u0003H\u0016¢\u0006\u0004\b&\u0010'R\u001d\u0010-\u001a\u00020(8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u001d\u00102\u001a\u00020.8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u0010*\u001a\u0004\b0\u00101R\u001d\u00107\u001a\u0002038B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u0010*\u001a\u0004\b5\u00106R\u001d\u0010<\u001a\u0002088B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010*\u001a\u0004\b:\u0010;R\"\u0010D\u001a\u00020=8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u0018\u0010H\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u001d\u0010N\u001a\u00020I8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010MR$\u0010V\u001a\u0004\u0018\u00010O8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR\u001d\u0010Z\u001a\u00020\u00038B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bW\u0010*\u001a\u0004\bX\u0010YR\u001e\u0010^\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010[8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\"\u0010f\u001a\u00020_8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b`\u0010a\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR\u0018\u0010j\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010i¨\u0006n"}, d2 = {"Le/a/b/a/a/a/d;", "Landroidx/fragment/app/Fragment;", "Le/a/b/a/a/a/b/a$f;", "", "position", "", "RA", "(I)Ljava/lang/String;", "Ls1/s;", "TA", "(I)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "onCreateOptionsMenu", "(Landroid/view/Menu;Landroid/view/MenuInflater;)V", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "Landroid/net/Uri;", "uri", "imageType", "F7", "(Landroid/net/Uri;I)V", "Le/f/a/i;", "i", "Ls1/g;", "getGlideRequestManager", "()Le/f/a/i;", "glideRequestManager", "Le/a/b/a/a/d/b;", "h", "PA", "()Le/a/b/a/a/d/b;", "bizProfileViewModel", "Le/a/b/a/a/c/c;", "k", "QA", "()Le/a/b/a/a/c/c;", "footerSnapHelper", "Ln3/b0/a/v;", "j", "SA", "()Ln3/b0/a/v;", "pagerSnapHelper", "Le/a/p5/c0;", C22021b.f61237c, "Le/a/p5/c0;", "getResourceProvider", "()Le/a/p5/c0;", "setResourceProvider", "(Le/a/p5/c0;)V", "resourceProvider", "Le/a/b/a/a/a/k0/a;", "f", "Le/a/b/a/a/a/k0/a;", "bizImageAdapter", "Le/a/b/m/n0;", "l", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/b/m/n0;", "binding", "Le/a/b/a/a/a/d$c;", "d", "Le/a/b/a/a/a/d$c;", "getBizImageViewerInteractionListener", "()Le/a/b/a/a/a/d$c;", "setBizImageViewerInteractionListener", "(Le/a/b/a/a/a/d$c;)V", "bizImageViewerInteractionListener", AbstractC2405c.f7629a, "getMaxImageCount", "()I", "maxImageCount", "", "g", "Ljava/util/List;", "imageUrls", "Ln3/v/a1$b;", "a", "Ln3/v/a1$b;", "getViewModelFactory", "()Ln3/v/a1$b;", "setViewModelFactory", "(Ln3/v/a1$b;)V", "viewModelFactory", "Le/a/b/a/b/j/c;", "e", "Le/a/b/a/b/j/c;", "footerListAdapter", "<init>", "()V", "n", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.a.a.d */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/d.class */
public final class C7520d extends Fragment implements C7483a.AbstractC7489f {

    /* renamed from: m */
    public static final /* synthetic */ l[] f23813m = {C22128a.m8621g0(C7520d.class, "binding", "getBinding()Lcom/truecaller/bizmon/databinding/FragmentImageViewerBinding;", 0)};

    /* renamed from: n */
    public static final C7524d f23814n = new C7524d(null);
    @Inject

    /* renamed from: a */
    public C26986a1.AbstractC26987b f23815a;
    @Inject

    /* renamed from: b */
    public AbstractC19223c0 f23816b;

    /* renamed from: d */
    public AbstractC7523c f23818d;

    /* renamed from: e */
    public C7659c f23819e;

    /* renamed from: f */
    public C7564a f23820f;

    /* renamed from: g */
    public List<String> f23821g;

    /* renamed from: h */
    public final g f23822h;

    /* renamed from: c */
    public final g f23817c = C25225a.m3978P1(new C7529i());

    /* renamed from: i */
    public final g f23823i = C25225a.m3978P1(new C7528h());

    /* renamed from: j */
    public final g f23824j = C25225a.m3978P1(C7531k.f23834b);

    /* renamed from: k */
    public final g f23825k = C25225a.m3978P1(new C7527g());

    /* renamed from: l */
    public final ViewBindingProperty f23826l = new C19350a(new C7521a());

    /* renamed from: e.a.b.a.a.a.d$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/d$a.class */
    public static final class C7521a extends m implements s1.z.b.l<C7520d, C8091n0> {
        public C7521a() {
            super(1);
        }

        /* renamed from: d */
        public Object m29533d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C3478R.C3480id.addBkg;
            View findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                i = C3478R.C3480id.addImage;
                ImageView imageView = (ImageView) requireView.findViewById(i);
                if (imageView != null) {
                    i = C3478R.C3480id.addMoreInfo;
                    TextView textView = (TextView) requireView.findViewById(i);
                    if (textView != null) {
                        i = C3478R.C3480id.footerList;
                        RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
                        if (recyclerView != null) {
                            i = C3478R.C3480id.imageList;
                            RecyclerView recyclerView2 = (RecyclerView) requireView.findViewById(i);
                            if (recyclerView2 != null) {
                                i = C3478R.C3480id.pbLoading;
                                ProgressBar progressBar = (ProgressBar) requireView.findViewById(i);
                                if (progressBar != null) {
                                    return new C8091n0((ConstraintLayout) requireView, findViewById, imageView, textView, recyclerView, recyclerView2, progressBar);
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.b.a.a.a.d$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/d$b.class */
    public static final class C7522b extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ a f23827b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7522b(a aVar) {
            super(0);
            this.f23827b = aVar;
        }

        public Object invoke() {
            C26993b1 viewModelStore = ((AbstractC26996c1) this.f23827b.invoke()).getViewModelStore();
            s1.z.c.l.d(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* renamed from: e.a.b.a.a.a.d$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/d$c.class */
    public interface AbstractC7523c {
        /* renamed from: U0 */
        void mo29532U0();

        /* renamed from: g3 */
        void mo29531g3(String str);
    }

    /* renamed from: e.a.b.a.a.a.d$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/d$d.class */
    public static final class C7524d {
        public C7524d(f fVar) {
        }
    }

    /* renamed from: e.a.b.a.a.a.d$e */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/d$e.class */
    public static final class C7525e extends m implements a<AbstractC26996c1> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7525e() {
            super(0);
            C7520d.this = r4;
        }

        public Object invoke() {
            n3.r.a.l requireActivity = C7520d.this.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            return requireActivity;
        }
    }

    /* renamed from: e.a.b.a.a.a.d$f */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/d$f.class */
    public static final class C7526f extends m implements a<C26986a1.AbstractC26987b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7526f() {
            super(0);
            C7520d.this = r4;
        }

        public Object invoke() {
            C26986a1.AbstractC26987b abstractC26987b = C7520d.this.f23815a;
            if (abstractC26987b != null) {
                return abstractC26987b;
            }
            s1.z.c.l.l("viewModelFactory");
            throw null;
        }
    }

    /* renamed from: e.a.b.a.a.a.d$g */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/d$g.class */
    public static final class C7527g extends m implements a<C7621c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7527g() {
            super(0);
            C7520d.this = r4;
        }

        public Object invoke() {
            return new C7621c(C7520d.this.getResources().getDimension(C3478R.dimen.doubleSpace));
        }
    }

    /* renamed from: e.a.b.a.a.a.d$h */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/d$h.class */
    public static final class C7528h extends m implements a<C21853e> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7528h() {
            super(0);
            C7520d.this = r4;
        }

        public Object invoke() {
            return C17891a1.C17902k.m15658M1(C7520d.this);
        }
    }

    /* renamed from: e.a.b.a.a.a.d$i */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/d$i.class */
    public static final class C7529i extends m implements a<Integer> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7529i() {
            super(0);
            C7520d.this = r4;
        }

        public Object invoke() {
            AbstractC19223c0 abstractC19223c0 = C7520d.this.f23816b;
            if (abstractC19223c0 != null) {
                return Integer.valueOf(abstractC19223c0.mo13762h(C3478R.integer.BusinessMaxImage));
            }
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
    }

    /* renamed from: e.a.b.a.a.a.d$j */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/d$j.class */
    public static final class View$OnClickListenerC7530j implements View.OnClickListener {
        public View$OnClickListenerC7530j() {
            C7520d.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C7483a.C7488e c7488e = C7483a.f23751i;
            int value = ImageType.GALLERY.getValue();
            Objects.requireNonNull(c7488e);
            C7483a c7483a = new C7483a();
            Bundle bundle = new Bundle();
            bundle.putInt("key_image_type", value);
            c7483a.setArguments(bundle);
            C7520d c7520d = C7520d.this;
            c7483a.f23754d = c7520d;
            n3.r.a.l requireActivity = c7520d.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            c7483a.show(requireActivity.getSupportFragmentManager(), c7483a.getTag());
        }
    }

    /* renamed from: e.a.b.a.a.a.d$k */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/d$k.class */
    public static final class C7531k extends m implements a<v> {

        /* renamed from: b */
        public static final C7531k f23834b = new C7531k();

        public C7531k() {
            super(0);
        }

        public Object invoke() {
            return new v();
        }
    }

    public C7520d() {
        C7525e c7525e = new C7525e();
        this.f23822h = MediaSessionCompat.m43278P(this, d0.a(C7633b.class), new C7522b(c7525e), new C7526f());
    }

    @Override // p193e.p194a.p294b.p295a.p296a.p297a.p298b.C7483a.AbstractC7489f
    /* renamed from: F7 */
    public void mo29521F7(Uri uri, int i) {
        s1.z.c.l.e(uri, "uri");
        ImageType m35844a = ImageType.Companion.m35844a(i);
        if (m35844a == null) {
            return;
        }
        int ordinal = m35844a.ordinal();
        if (ordinal == 0) {
            m29538PA().m29466d(uri, m35844a, null);
        } else if (ordinal != 1) {
        } else {
            m29538PA().m29466d(uri, m35844a, this.f23821g);
        }
    }

    /* renamed from: OA */
    public final C8091n0 m29539OA() {
        return (C8091n0) this.f23826l.m34468b(this, f23813m[0]);
    }

    /* renamed from: PA */
    public final C7633b m29538PA() {
        return (C7633b) this.f23822h.getValue();
    }

    /* renamed from: QA */
    public final C7621c m29537QA() {
        return (C7621c) this.f23825k.getValue();
    }

    /* renamed from: RA */
    public final String m29536RA(int i) {
        List<String> list = this.f23821g;
        String str = null;
        if (list != null) {
            AbstractC19223c0 abstractC19223c0 = this.f23816b;
            if (abstractC19223c0 == null) {
                s1.z.c.l.l("resourceProvider");
                throw null;
            }
            str = abstractC19223c0.mo13768b(C3478R.string.BusinessEditProfile_image_desc, Integer.valueOf(i + 1), Integer.valueOf(list.size()));
        }
        return str;
    }

    /* renamed from: SA */
    public final v m29535SA() {
        return (v) this.f23824j.getValue();
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [n3.b0.a.y, e.a.b.a.a.c.c] */
    /* renamed from: TA */
    public final void m29534TA(int i) {
        AbstractC7523c abstractC7523c;
        RecyclerView recyclerView = m29539OA().f25043e;
        s1.z.c.l.d(recyclerView, "binding.imageList");
        C18334g0.m15228g0(recyclerView, m29535SA(), i);
        String m29536RA = m29536RA(i);
        if (m29536RA != null && (abstractC7523c = this.f23818d) != null) {
            abstractC7523c.mo29531g3(m29536RA);
        }
        C7659c c7659c = this.f23819e;
        if (c7659c != null) {
            c7659c.m29457e(Integer.valueOf(i));
        }
        RecyclerView recyclerView2 = m29539OA().f25042d;
        s1.z.c.l.d(recyclerView2, "binding.footerList");
        C18334g0.m15228g0(recyclerView2, m29537QA(), i);
    }

    public void onCreate(Bundle bundle) {
        C7520d.super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        s1.z.c.l.e(menu, "menu");
        s1.z.c.l.e(menuInflater, "inflater");
        menuInflater.inflate(C3478R.C3482menu.menu_biz_image_viewer, menu);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        C7805e c7805e = (C7805e) C18334g0.m15219l(requireActivity);
        this.f23815a = (C26986a1.AbstractC26987b) c7805e.f24270K.get();
        AbstractC19223c0 mo12349i = c7805e.f24290c.mo12349i();
        Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
        this.f23816b = mo12349i;
        View inflate = layoutInflater.inflate(C3478R.layout.fragment_image_viewer, viewGroup, false);
        LiveData<AbstractC8042q<BusinessProfile>> liveData = m29538PA().f23992i;
        AbstractC26992b0 viewLifecycleOwner = getViewLifecycleOwner();
        s1.z.c.l.d(viewLifecycleOwner, "viewLifecycleOwner");
        liveData.m42867f(viewLifecycleOwner, new C7548h(this));
        i0<Map<UUID, ImageUploadStatus>> i0Var = m29538PA().f23987d;
        AbstractC26992b0 viewLifecycleOwner2 = getViewLifecycleOwner();
        s1.z.c.l.d(viewLifecycleOwner2, "viewLifecycleOwner");
        i0Var.m42867f(viewLifecycleOwner2, new C7557j(this));
        LiveData<C8036l<AbstractC8042q<s>>> liveData2 = m29538PA().f23996m;
        AbstractC26992b0 viewLifecycleOwner3 = getViewLifecycleOwner();
        s1.z.c.l.d(viewLifecycleOwner3, "viewLifecycleOwner");
        liveData2.m42867f(viewLifecycleOwner3, new C7550i(this));
        return inflate;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        s1.z.c.l.e(menuItem, "item");
        if (menuItem.getItemId() == C3478R.C3480id.menu_delete) {
            C7659c c7659c = this.f23819e;
            List list = null;
            Integer num = c7659c != null ? c7659c.f24035a : null;
            if (num != null) {
                List<String> list2 = this.f23821g;
                if (list2 != null) {
                    list = i.a1(list2);
                }
                if (list != null) {
                    String str = (String) list.remove(num.intValue());
                }
                m29538PA().m29465e(new BusinessProfileRequest(null, null, null, null, null, null, null, null, null, null, null, null, null, list, 8191, null));
            }
            z = true;
        } else {
            z = C7520d.super.onOptionsItemSelected(menuItem);
        }
        return z;
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C7520d.super.onViewCreated(view, bundle);
        m29539OA().f25040b.setOnClickListener(new View$OnClickListenerC7530j());
    }
}
