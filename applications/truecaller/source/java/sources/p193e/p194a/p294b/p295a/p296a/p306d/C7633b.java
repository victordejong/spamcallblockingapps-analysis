package p193e.p194a.p294b.p295a.p296a.p306d;

import android.net.Uri;
import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.lifecycle.LiveData;
import com.google.android.gms.ads.RequestConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.bizmon.newBusiness.profile.p151vm.ImageUploadStatus;
import com.truecaller.bizmon.newBusiness.workers.ImageType;
import com.truecaller.bizmon.newBusiness.workers.ImageUploadWorker;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import com.truecaller.profile.data.dto.businessV2.BusinessProfileRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.v.i0;
import p1727n3.p1746c.p1747a.p1750c.AbstractC25640a;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.C26855x;
import p1727n3.p1868v.AbstractC27012l0;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C27010k0;
import p1727n3.p1868v.C27035w0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p294b.p295a.p296a.p301b.AbstractC7591a;
import p193e.p194a.p294b.p295a.p296a.p304c.p305e.AbstractC7625b;
import p193e.p194a.p294b.p295a.p296a.p304c.p305e.C7624a;
import p193e.p194a.p294b.p295a.p329i.AbstractC7833a;
import p193e.p194a.p294b.p354l.AbstractC8042q;
import p193e.p194a.p294b.p354l.C8036l;
import p193e.p194a.p798g5.AbstractC14537p;
import s1.i;
import s1.s;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��®\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\b\u0018��2\u00020\u0001B3\b\u0007\u0012\u0006\u0010I\u001a\u00020F\u0012\u0006\u0010V\u001a\u00020S\u0012\u0006\u0010-\u001a\u00020*\u0012\u0006\u0010E\u001a\u00020B\u0012\b\u00107\u001a\u0004\u0018\u000104¢\u0006\u0004\b^\u0010_J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J/\u0010\u000e\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ#\u0010\u0013\u001a\u0004\u0018\u00010\f\"\u0004\b��\u0010\u00102\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028��0\u0011¢\u0006\u0004\b\u0013\u0010\u0014R%\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u00160\u00158\u0006@\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d8\u0006@\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\"\u0010'\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020%0$0\u001d8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010 R(\u0010)\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00160$0\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010\u0019R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u001f\u00103\u001a\b\u0012\u0004\u0012\u00020\f0.8\u0006@\u0006¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R%\u0010:\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0$0\u001d8\u0006@\u0006¢\u0006\f\n\u0004\b8\u0010 \u001a\u0004\b9\u0010\"R%\u0010@\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\t0;8\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010=\u001a\u0004\b>\u0010?R\u001c\u0010A\u001a\b\u0012\u0004\u0012\u00020%0\u001d8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010 R\u0016\u0010E\u001a\u00020B8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010I\u001a\u00020F8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bG\u0010HR\"\u0010K\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0$0\u001d8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010 R%\u0010O\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020L0;8\u0006@\u0006¢\u0006\f\n\u0004\bM\u0010=\u001a\u0004\bN\u0010?R%\u0010R\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0$0\u00158\u0006@\u0006¢\u0006\f\n\u0004\bP\u0010\u0019\u001a\u0004\bQ\u0010\u001bR\u0016\u0010V\u001a\u00020S8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bT\u0010UR(\u0010Z\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020L0X0W8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010YR%\u0010]\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\f0;8\u0006@\u0006¢\u0006\f\n\u0004\b[\u0010=\u001a\u0004\b\\\u0010?¨\u0006`"}, d2 = {"Le/a/b/a/a/d/b;", "Ln3/v/y0;", "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;", "bizProfile", "Ls1/s;", "e", "(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfileRequest;)V", "Landroid/net/Uri;", "imageUri", "Lcom/truecaller/bizmon/newBusiness/workers/ImageType;", "imageType", "", "", "exisingImageUrls", "d", "(Landroid/net/Uri;Lcom/truecaller/bizmon/newBusiness/workers/ImageType;Ljava/util/List;)V", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Le/a/b/l/q$a;", "error", AbstractC2405c.f7629a, "(Le/a/b/l/q$a;)Ljava/lang/String;", "Landroidx/lifecycle/LiveData;", "Le/a/b/l/q;", "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;", "i", "Landroidx/lifecycle/LiveData;", "getBizProfileLiveData", "()Landroidx/lifecycle/LiveData;", "bizProfileLiveData", "Ln3/v/k0;", "Le/a/b/a/a/c/e/b;", "j", "Ln3/v/k0;", "getValidateQueryLD", "()Ln3/v/k0;", "validateQueryLD", "Le/a/b/l/l;", "", "k", "_deleteProfileLD", "m", "_updateProfileLiveData", "Le/a/b/a/a/c/e/a;", "p", "Le/a/b/a/a/c/e/a;", "bizProfileRequestValidation", "", "h", "Ljava/util/List;", "getImagesUploadedList", "()Ljava/util/List;", "imagesUploadedList", "Ln3/m0/y;", "r", "Ln3/m0/y;", "workManager", "l", "getToastLiveData", "toastLiveData", "", "Ljava/util/UUID;", "Ljava/util/Map;", "getImagesTypeMap", "()Ljava/util/Map;", "imagesTypeMap", "_inProgress", "Le/a/g5/p;", "q", "Le/a/g5/p;", "tagDisplayUtil", "Le/a/b/a/a/b/a;", "n", "Le/a/b/a/a/b/a;", "bizProfileRepo", "a", "_toastMessage", "Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;", "g", "getImagesStatusMap", "imagesStatusMap", C22021b.f61237c, "getToastMessage", "toastMessage", "Le/a/p5/h0;", "o", "Le/a/p5/h0;", "resourceProvider", "Ln3/v/i0;", "", "Ln3/v/i0;", "_imageUploadStatus", "f", "getImagesIdMap", "imagesIdMap", "<init>", "(Le/a/b/a/a/b/a;Le/a/p5/h0;Le/a/b/a/a/c/e/a;Le/a/g5/p;Ln3/m0/y;)V", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.a.d.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/d/b.class */
public final class C7633b extends AbstractC27040y0 {

    /* renamed from: a */
    public final C27010k0<C8036l<String>> f23984a;

    /* renamed from: b */
    public final LiveData<C8036l<String>> f23985b;

    /* renamed from: c */
    public final C27010k0<Boolean> f23986c;

    /* renamed from: i */
    public final LiveData<AbstractC8042q<BusinessProfile>> f23992i;

    /* renamed from: j */
    public final C27010k0<AbstractC7625b> f23993j;

    /* renamed from: m */
    public final LiveData<C8036l<AbstractC8042q<s>>> f23996m;

    /* renamed from: n */
    public final AbstractC7591a f23997n;

    /* renamed from: o */
    public final AbstractC19233h0 f23998o;

    /* renamed from: p */
    public final C7624a f23999p;

    /* renamed from: q */
    public final AbstractC14537p f24000q;

    /* renamed from: r */
    public final AbstractC26857y f24001r;

    /* renamed from: d */
    public final i0<Map<UUID, ImageUploadStatus>> f23987d = new i0<>();

    /* renamed from: e */
    public final Map<UUID, ImageType> f23988e = new LinkedHashMap();

    /* renamed from: f */
    public final Map<UUID, String> f23989f = new LinkedHashMap();

    /* renamed from: g */
    public final Map<UUID, ImageUploadStatus> f23990g = new LinkedHashMap();

    /* renamed from: h */
    public final List<String> f23991h = new ArrayList();

    /* renamed from: k */
    public final C27010k0<C8036l<Boolean>> f23994k = new C27010k0<>();

    /* renamed from: l */
    public final C27010k0<C8036l<String>> f23995l = new C27010k0<>();

    /* renamed from: e.a.b.a.a.d.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/d/b$a.class */
    public static final class C7634a<I, O> implements AbstractC25640a<AbstractC7625b, LiveData<C8036l<? extends AbstractC8042q<s>>>> {
        public C7634a() {
            C7633b.this = r4;
        }

        @Override // p1727n3.p1746c.p1747a.p1750c.AbstractC25640a
        public LiveData<C8036l<? extends AbstractC8042q<s>>> apply(AbstractC7625b abstractC7625b) {
            C27010k0 c27010k0;
            AbstractC7625b abstractC7625b2 = abstractC7625b;
            if (abstractC7625b2 instanceof AbstractC7625b.AbstractC7626a) {
                AbstractC7625b.AbstractC7626a abstractC7626a = (AbstractC7625b.AbstractC7626a) abstractC7625b2;
                l.e(abstractC7626a, "$this$toResource");
                c27010k0 = new C27010k0(new C8036l(new AbstractC8042q.C8043a(null, Integer.valueOf(abstractC7626a.f23977a), null, 5)));
            } else if (!(abstractC7625b2 instanceof AbstractC7625b.C7631b)) {
                throw new i();
            } else {
                c27010k0 = MediaSessionCompat.m43275Q0(C7633b.this.f23997n.mo29502d(((AbstractC7625b.C7631b) abstractC7625b2).f23982a), new C7632a(this));
                l.b(c27010k0, "Transformations.map(this) { transform(it) }");
            }
            return c27010k0;
        }
    }

    /* renamed from: e.a.b.a.a.d.b$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/d/b$b.class */
    public static final class C7635b<T> implements AbstractC27012l0<C26855x> {
        public C7635b() {
            C7633b.this = r4;
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x00a2  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x014f  */
        @Override // p1727n3.p1868v.AbstractC27012l0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onChanged(p1727n3.p1834m0.C26855x r21) {
            /*
                Method dump skipped, instructions count: 409
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p295a.p296a.p306d.C7633b.C7635b.onChanged(java.lang.Object):void");
        }
    }

    @Inject
    public C7633b(AbstractC7591a abstractC7591a, AbstractC19233h0 abstractC19233h0, C7624a c7624a, AbstractC14537p abstractC14537p, AbstractC26857y abstractC26857y) {
        l.e(abstractC7591a, "bizProfileRepo");
        l.e(abstractC19233h0, "resourceProvider");
        l.e(c7624a, "bizProfileRequestValidation");
        l.e(abstractC14537p, "tagDisplayUtil");
        this.f23997n = abstractC7591a;
        this.f23998o = abstractC19233h0;
        this.f23999p = c7624a;
        this.f24000q = abstractC14537p;
        this.f24001r = abstractC26857y;
        C27010k0<C8036l<String>> c27010k0 = new C27010k0<>();
        this.f23984a = c27010k0;
        this.f23985b = c27010k0;
        C27010k0<Boolean> c27010k02 = new C27010k0<>();
        c27010k02.mo1000l(Boolean.FALSE);
        this.f23986c = c27010k02;
        this.f23992i = abstractC7591a.mo29503c();
        C27010k0<AbstractC7625b> c27010k03 = new C27010k0<>();
        this.f23993j = c27010k03;
        C7634a c7634a = new C7634a();
        i0 i0Var = new i0();
        i0Var.m(c27010k03, new C27035w0(c7634a, i0Var));
        l.b(i0Var, "Transformations.switchMap(this) { transform(it) }");
        this.f23996m = i0Var;
    }

    /* renamed from: c */
    public final <T> String m29467c(AbstractC8042q.C8043a<T> c8043a) {
        l.e(c8043a, "error");
        Integer num = c8043a.f24775c;
        return num == null ? c8043a.f24774b : this.f23998o.mo13768b(num.intValue(), new Object[0]);
    }

    /* renamed from: d */
    public final void m29466d(Uri uri, ImageType imageType, List<String> list) {
        l.e(uri, "imageUri");
        l.e(imageType, "imageType");
        if (this.f24001r == null) {
            return;
        }
        if (list != null) {
            this.f23991h.addAll(list);
        }
        HashMap hashMap = new HashMap();
        hashMap.put("keyImageType", Integer.valueOf(imageType.getValue()));
        C26829f c26829f = new C26829f(hashMap);
        C26829f.m1300g(c26829f);
        l.d(c26829f, "Data.Builder().putInt(Im… imageType.value).build()");
        C26842r.C26843a c26843a = new C26842r.C26843a(ImageUploadWorker.class);
        c26843a.f75128d.add(C26842r.class.getSimpleName());
        c26843a.f75127c.f74906e = c26829f;
        C26842r m1272b = c26843a.m1272b();
        l.d(m1272b, "OneTimeWorkRequest.Build…ata)\n            .build()");
        C26842r c26842r = m1272b;
        Map<UUID, ImageType> map = this.f23988e;
        UUID uuid = c26842r.f75122a;
        l.d(uuid, "imageUploadWorkRequest.id");
        map.put(uuid, imageType);
        Map<UUID, String> map2 = this.f23989f;
        UUID uuid2 = c26842r.f75122a;
        l.d(uuid2, "imageUploadWorkRequest.id");
        String uri2 = uri.toString();
        l.d(uri2, "imageUri.toString()");
        map2.put(uuid2, uri2);
        this.f24001r.m1282f(c26842r);
        this.f23987d.m(this.f24001r.mo1276l(c26842r.f75122a), new C7635b());
    }

    /* renamed from: e */
    public final void m29465e(BusinessProfileRequest businessProfileRequest) {
        AbstractC7625b.AbstractC7626a.C7627a c7627a;
        l.e(businessProfileRequest, "bizProfile");
        C27010k0<AbstractC7625b> c27010k0 = this.f23993j;
        C7624a c7624a = this.f23999p;
        Objects.requireNonNull(c7624a);
        l.e(businessProfileRequest, "bizProfile");
        if (businessProfileRequest.getName() != null) {
            AbstractC7833a mo29432a = c7624a.f23976a.mo29432a(businessProfileRequest.getName());
            if (mo29432a instanceof AbstractC7833a.C7834a) {
                c7627a = mo29432a instanceof AbstractC7833a.C7834a.C7835a ? AbstractC7625b.AbstractC7626a.C7627a.f23978b : AbstractC7625b.AbstractC7626a.C7630d.f23981b;
                c27010k0.mo1000l(c7627a);
            }
        }
        String about = businessProfileRequest.getAbout();
        if (about != null) {
            if (!(about.length() <= 300)) {
                c7627a = AbstractC7625b.AbstractC7626a.C7628b.f23979b;
                c27010k0.mo1000l(c7627a);
            }
        }
        String email = businessProfileRequest.getEmail();
        c7627a = (email == null || C19286f.m13664o(email)) ? new AbstractC7625b.C7631b(businessProfileRequest) : AbstractC7625b.AbstractC7626a.C7629c.f23980b;
        c27010k0.mo1000l(c7627a);
    }
}
