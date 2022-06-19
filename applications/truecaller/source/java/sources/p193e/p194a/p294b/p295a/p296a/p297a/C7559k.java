package p193e.p194a.p294b.p295a.p296a.p297a;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.newBusiness.components.images.BusinessImageListWidget;
import com.truecaller.bizmon.newBusiness.components.openhours.BizOpenHoursWidget;
import com.truecaller.bizmon.newBusiness.workers.ImageType;
import com.truecaller.profile.data.dto.businessV2.BusinessProfileRequest;
import com.truecaller.profile.data.dto.businessV2.LocationDetail;
import com.truecaller.profile.data.dto.businessV2.OpenHours;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1849n.C26866g;
import p1727n3.p1868v.AbstractC26996c1;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p294b.p295a.p296a.p297a.p298b.C7483a;
import p193e.p194a.p294b.p295a.p296a.p306d.C7633b;
import p193e.p194a.p294b.p295a.p308b.p309i.AbstractC7653e;
import p193e.p194a.p294b.p295a.p308b.p309i.C7652d;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p354l.C8036l;
import p193e.p194a.p294b.p354l.C8037m;
import p193e.p194a.p294b.p355m.AbstractC8063f0;
import s1.g;
import s1.u.j;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��¼\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0001VB\u0007¢\u0006\u0004\bx\u0010>J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J-\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0012\u001a\u00020\u001a2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ!\u0010!\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u001d2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b!\u0010\"J)\u0010(\u001a\u00020\b2\u000e\u0010%\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#2\b\u0010'\u001a\u0004\u0018\u00010&H\u0016¢\u0006\u0004\b(\u0010)J\u001f\u0010-\u001a\u00020\b2\u0006\u0010+\u001a\u00020*2\u0006\u0010\u0007\u001a\u00020,H\u0016¢\u0006\u0004\b-\u0010.J\u0017\u00100\u001a\u00020\b2\u0006\u0010/\u001a\u00020,H\u0016¢\u0006\u0004\b0\u00101J\u0017\u00103\u001a\u00020\b2\u0006\u00102\u001a\u00020&H\u0016¢\u0006\u0004\b3\u00104J)\u00109\u001a\u00020\b2\u0006\u00105\u001a\u00020,2\u0006\u00106\u001a\u00020,2\b\u00108\u001a\u0004\u0018\u000107H\u0016¢\u0006\u0004\b9\u0010:J\u0017\u0010<\u001a\u00020\b2\u0006\u0010;\u001a\u00020&H\u0016¢\u0006\u0004\b<\u00104J\u000f\u0010=\u001a\u00020\bH\u0016¢\u0006\u0004\b=\u0010>R\u001d\u0010D\u001a\u00020?8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b@\u0010A\u001a\u0004\bB\u0010CR\"\u0010L\u001a\u00020E8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\"\u0010T\u001a\u00020M8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bN\u0010O\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010SR\"\u0010\\\u001a\u00020U8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bV\u0010W\u001a\u0004\bX\u0010Y\"\u0004\bZ\u0010[R*\u0010c\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b]\u0010^\u001a\u0004\b_\u0010`\"\u0004\ba\u0010bR\u0016\u0010g\u001a\u00020d8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\be\u0010fR\"\u0010o\u001a\u00020h8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bi\u0010j\u001a\u0004\bk\u0010l\"\u0004\bm\u0010nR$\u0010w\u001a\u0004\u0018\u00010p8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bq\u0010r\u001a\u0004\bs\u0010t\"\u0004\bu\u0010v¨\u0006y"}, d2 = {"Le/a/b/a/a/a/k;", "Landroidx/fragment/app/Fragment;", "Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$a;", "Le/a/b/a/b/i/e;", "Le/a/b/a/a/a/b/a$f;", "Lcom/truecaller/bizmon/newBusiness/components/openhours/BizOpenHoursWidget$a;", "Lcom/truecaller/bizmon/newBusiness/workers/ImageType;", "imageType", "Ls1/s;", "QA", "(Lcom/truecaller/bizmon/newBusiness/workers/ImageType;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "inflater", "onCreateOptionsMenu", "(Landroid/view/Menu;Landroid/view/MenuInflater;)V", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "Landroid/view/LayoutInflater;", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "Lcom/truecaller/profile/data/dto/businessV2/OpenHours;", "openHours", "", "locId", "kh", "(Ljava/util/List;Ljava/lang/String;)V", "Landroid/net/Uri;", "uri", "", "F7", "(Landroid/net/Uri;I)V", "position", "o8", "(I)V", "url", "bl", "(Ljava/lang/String;)V", "requestCode", "resultCode", "Landroid/content/Intent;", "intent", "onActivityResult", "(IILandroid/content/Intent;)V", RemoteMessageConst.Notification.COLOR, "f6", "qb", "()V", "Le/a/b/a/a/d/b;", "g", "Ls1/g;", "PA", "()Le/a/b/a/a/d/b;", "bizProfileViewModel", "Ln3/v/a1$b;", "a", "Ln3/v/a1$b;", "getViewModelFactory", "()Ln3/v/a1$b;", "setViewModelFactory", "(Ln3/v/a1$b;)V", "viewModelFactory", "Le/a/b/a/b/i/d;", "d", "Le/a/b/a/b/i/d;", "getColorsAdapter", "()Le/a/b/a/b/i/d;", "setColorsAdapter", "(Le/a/b/a/b/i/d;)V", "colorsAdapter", "Le/a/p5/h0;", C22021b.f61237c, "Le/a/p5/h0;", "getThemedResourceProvider", "()Le/a/p5/h0;", "setThemedResourceProvider", "(Le/a/p5/h0;)V", "themedResourceProvider", "f", "Ljava/util/List;", "getImageUrls", "()Ljava/util/List;", "setImageUrls", "(Ljava/util/List;)V", "imageUrls", "Le/a/b/m/f0;", "h", "Le/a/b/m/f0;", "binding", "Le/f/a/i;", AbstractC2405c.f7629a, "Le/f/a/i;", "getRequestManager", "()Le/f/a/i;", "setRequestManager", "(Le/f/a/i;)V", "requestManager", "Le/a/b/a/a/a/k$b;", "e", "Le/a/b/a/a/a/k$b;", "getBizProfileInteractionListener", "()Le/a/b/a/a/a/k$b;", "setBizProfileInteractionListener", "(Le/a/b/a/a/a/k$b;)V", "bizProfileInteractionListener", "<init>", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.a.a.k */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/k.class */
public final class C7559k extends Fragment implements BusinessImageListWidget.AbstractC3496a, AbstractC7653e, C7483a.AbstractC7489f, BizOpenHoursWidget.AbstractC3499a {

    /* renamed from: i */
    public static final /* synthetic */ int f23871i = 0;
    @Inject

    /* renamed from: a */
    public C26986a1.AbstractC26987b f23872a;
    @Inject

    /* renamed from: b */
    public AbstractC19233h0 f23873b;

    /* renamed from: c */
    public ComponentCallbacks2C22236i f23874c;

    /* renamed from: d */
    public C7652d f23875d;

    /* renamed from: e */
    public AbstractC7561b f23876e;

    /* renamed from: f */
    public List<String> f23877f;

    /* renamed from: g */
    public final g f23878g;

    /* renamed from: h */
    public AbstractC8063f0 f23879h;

    /* renamed from: e.a.b.a.a.a.k$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/k$a.class */
    public static final class C7560a extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ a f23880b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7560a(a aVar) {
            super(0);
            this.f23880b = aVar;
        }

        public Object invoke() {
            C26993b1 viewModelStore = ((AbstractC26996c1) this.f23880b.invoke()).getViewModelStore();
            l.d(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* renamed from: e.a.b.a.a.a.k$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/k$b.class */
    public interface AbstractC7561b {
        /* renamed from: I9 */
        void mo29514I9(int i, Integer num);

        /* renamed from: k4 */
        void mo29513k4(String str, int i);
    }

    /* renamed from: e.a.b.a.a.a.k$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/k$c.class */
    public static final class C7562c extends m implements a<AbstractC26996c1> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7562c() {
            super(0);
            C7559k.this = r4;
        }

        public Object invoke() {
            n3.r.a.l requireActivity = C7559k.this.requireActivity();
            l.d(requireActivity, "requireActivity()");
            return requireActivity;
        }
    }

    /* renamed from: e.a.b.a.a.a.k$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/k$d.class */
    public static final class C7563d extends m implements a<C26986a1.AbstractC26987b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7563d() {
            super(0);
            C7559k.this = r4;
        }

        public Object invoke() {
            C26986a1.AbstractC26987b abstractC26987b = C7559k.this.f23872a;
            if (abstractC26987b != null) {
                return abstractC26987b;
            }
            l.l("viewModelFactory");
            throw null;
        }
    }

    public C7559k() {
        C7562c c7562c = new C7562c();
        this.f23878g = MediaSessionCompat.m43278P(this, d0.a(C7633b.class), new C7560a(c7562c), new C7563d());
    }

    /* renamed from: OA */
    public static final void m29520OA(C7559k c7559k) {
        Objects.requireNonNull(c7559k);
        c7559k.m29518QA(ImageType.LOGO);
    }

    @Override // p193e.p194a.p294b.p295a.p296a.p297a.p298b.C7483a.AbstractC7489f
    /* renamed from: F7 */
    public void mo29521F7(Uri uri, int i) {
        l.e(uri, "uri");
        ImageType m35844a = ImageType.Companion.m35844a(i);
        if (m35844a == null) {
            return;
        }
        int ordinal = m35844a.ordinal();
        if (ordinal == 0) {
            m29519PA().m29466d(uri, m35844a, null);
        } else if (ordinal != 1) {
        } else {
            m29519PA().m29466d(uri, m35844a, this.f23877f);
        }
    }

    /* renamed from: PA */
    public final C7633b m29519PA() {
        return (C7633b) this.f23878g.getValue();
    }

    /* renamed from: QA */
    public final void m29518QA(ImageType imageType) {
        C7483a.C7488e c7488e = C7483a.f23751i;
        int value = imageType.getValue();
        Objects.requireNonNull(c7488e);
        C7483a c7483a = new C7483a();
        Bundle bundle = new Bundle();
        bundle.putInt("key_image_type", value);
        c7483a.setArguments(bundle);
        c7483a.f23754d = this;
        n3.r.a.l requireActivity = requireActivity();
        l.d(requireActivity, "requireActivity()");
        c7483a.show(requireActivity.getSupportFragmentManager(), c7483a.getTag());
    }

    @Override // com.truecaller.bizmon.newBusiness.components.images.BusinessImageListWidget.AbstractC3496a
    /* renamed from: bl */
    public void mo29517bl(String str) {
        l.e(str, "url");
        List<String> list = this.f23877f;
        int indexOf = list != null ? list.indexOf(str) : 0;
        AbstractC7561b abstractC7561b = this.f23876e;
        if (abstractC7561b != null) {
            abstractC7561b.mo29513k4(str, indexOf);
        }
    }

    @Override // p193e.p194a.p294b.p295a.p308b.p309i.AbstractC7653e
    /* renamed from: f6 */
    public void mo29459f6(String str) {
        l.e(str, RemoteMessageConst.Notification.COLOR);
        m29519PA().m29465e(new BusinessProfileRequest(null, null, null, null, null, null, null, null, null, null, null, null, str, null, 12287, null));
    }

    @Override // com.truecaller.bizmon.newBusiness.components.openhours.BizOpenHoursWidget.AbstractC3499a
    /* renamed from: kh */
    public void mo29516kh(List<OpenHours> list, String str) {
        Objects.requireNonNull(C7578v.f23898i);
        C7578v c7578v = new C7578v();
        Bundle m8654X0 = C22128a.m8654X0("biz_loc_id", str);
        m8654X0.putParcelableArrayList("biz_open_hours", list != null ? new ArrayList<>(list) : null);
        c7578v.setArguments(m8654X0);
        c7578v.show(getParentFragmentManager(), C7542g0.class.getSimpleName());
    }

    @Override // com.truecaller.bizmon.newBusiness.components.images.BusinessImageListWidget.AbstractC3496a
    /* renamed from: o8 */
    public void mo29515o8(int i) {
        m29518QA(ImageType.GALLERY);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        Bundle extras;
        List list = null;
        if (i == 51) {
            long[] longArray = (intent == null || (extras = intent.getExtras()) == null) ? null : extras.getLongArray("tagSelectionResultKey");
            C7633b m29519PA = m29519PA();
            if (longArray != null) {
                l.e(longArray, "$this$asList");
                list = new j(longArray);
            }
            m29519PA.m29465e(new BusinessProfileRequest(null, null, null, list, null, null, null, null, null, null, null, null, null, null, 16375, null));
        } else if (i != 68) {
            C7559k.super.onActivityResult(i, i2, intent);
        } else if (i2 != -1) {
        } else {
            LocationDetail locationDetail = null;
            if (intent != null) {
                Bundle extras2 = intent.getExtras();
                locationDetail = null;
                if (extras2 != null) {
                    locationDetail = (LocationDetail) extras2.getParcelable("tagSelectionResultKey");
                }
            }
            C7633b m29519PA2 = m29519PA();
            Objects.requireNonNull(m29519PA2);
            if (locationDetail != null) {
                m29519PA2.m29465e(new BusinessProfileRequest(null, null, null, null, null, null, null, null, C25225a.m3962T1(locationDetail), null, null, null, null, null, 16127, null));
            } else {
                m29519PA2.f23984a.mo1001j(new C8036l<>(m29519PA2.f23998o.mo13768b(C3478R.string.EditBizAddress_FailedEditMessage, new Object[0])));
            }
        }
    }

    public void onCreate(Bundle bundle) {
        C7559k.super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        l.e(menu, "menu");
        l.e(menuInflater, "inflater");
        menu.add(0, 1001, 0, getString(C3478R.string.BusinessEditProfile_delete_menu));
        C7559k.super.onCreateOptionsMenu(menu, menuInflater);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        n3.r.a.l requireActivity = requireActivity();
        l.d(requireActivity, "requireActivity()");
        C7805e c7805e = (C7805e) C18334g0.m15219l(requireActivity);
        this.f23872a = (C26986a1.AbstractC26987b) c7805e.f24270K.get();
        this.f23873b = (AbstractC19233h0) c7805e.f24262C.get();
        AbstractC8063f0 m1251b = C26866g.m1251b(layoutInflater, C3478R.layout.fragment_biz_profile, viewGroup, false);
        m1251b.setLifecycleOwner(this);
        l.d(m1251b, "DataBindingUtil.inflate<…ProfileFragment\n        }");
        AbstractC8063f0 abstractC8063f0 = m1251b;
        this.f23879h = abstractC8063f0;
        m29519PA().f23985b.m42867f(getViewLifecycleOwner(), new C8037m(new C27623v2(0, this)));
        m29519PA().f23992i.m42867f(getViewLifecycleOwner(), new C7574r(this, abstractC8063f0));
        m29519PA().f23987d.m42867f(getViewLifecycleOwner(), new C7575s(this, abstractC8063f0));
        m29519PA().f23996m.m42867f(getViewLifecycleOwner(), new C7576t(this, abstractC8063f0));
        m29519PA().f23994k.m42867f(getViewLifecycleOwner(), new C8037m(new C7577u(this)));
        m29519PA().f23995l.m42867f(getViewLifecycleOwner(), new C8037m(new C27623v2(1, this)));
        AbstractC8063f0 abstractC8063f02 = this.f23879h;
        if (abstractC8063f02 != null) {
            return abstractC8063f02.getRoot();
        }
        l.l("binding");
        throw null;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.e(menuItem, "item");
        C7559k.super.onOptionsItemSelected(menuItem);
        if (menuItem.getItemId() == 1001) {
            new C7477a().show(getParentFragmentManager(), C7477a.class.getSimpleName());
            return true;
        }
        return false;
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C7559k.super.onViewCreated(view, bundle);
        C21853e m15658M1 = C17891a1.C17902k.m15658M1(this);
        l.d(m15658M1, "GlideApp.with(this@BizProfileFragment)");
        this.f23874c = m15658M1;
        this.f23875d = new C7652d(this, null, 2);
        AbstractC8063f0 abstractC8063f0 = this.f23879h;
        if (abstractC8063f0 == null) {
            l.l("binding");
            throw null;
        }
        abstractC8063f0.f24873k.setHasFixedSize(true);
        RecyclerView recyclerView = abstractC8063f0.f24873k;
        l.d(recyclerView, "colorsRecyclerView");
        C7652d c7652d = this.f23875d;
        if (c7652d != null) {
            recyclerView.setAdapter(c7652d);
        } else {
            l.l("colorsAdapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p308b.p309i.AbstractC7653e
    /* renamed from: qb */
    public void mo29458qb() {
        m29519PA().m29465e(new BusinessProfileRequest(null, null, null, null, null, null, null, null, null, null, null, null, "", null, 12287, null));
    }
}
