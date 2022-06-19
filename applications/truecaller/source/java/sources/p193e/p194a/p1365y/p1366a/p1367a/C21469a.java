package p193e.p194a.p1365y.p1366a.p1367a;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ContentFormat;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.p166ui.whatsnew.FlashWithFriendsActivity;
import e.m.a.g.e.e;
import javax.inject.Inject;
import kotlin.Metadata;
import o3.c.b;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1365y.p1366a.p1367a.p1368e.C21474a;
import p193e.p194a.p1365y.p1366a.p1367a.p1368e.C21475b;
import p193e.p194a.p1365y.p1382c.C21632c;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b-\u0010\u001eJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J)\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00142\b\u0010\u001a\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u001eR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0016\u0010*\u001a\u00020'8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010,\u001a\u00020'8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b+\u0010)¨\u0006."}, d2 = {"Le/a/y/a/a/a;", "Le/m/a/g/e/e;", "Le/a/y/a/a/b;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/net/Uri;", "imageUri", "", "shareText", "eq", "(Landroid/net/Uri;Ljava/lang/String;)V", "imageUrl", "imageDescription", "wallpaperUrl", "lg", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "V0", "()V", "Le/a/y/a/a/c;", AbstractC2405c.f7629a, "Le/a/y/a/a/c;", "getPresenter", "()Le/a/y/a/a/c;", "setPresenter", "(Le/a/y/a/a/c;)V", "presenter", "Landroid/widget/ImageView;", C22021b.f61237c, "Landroid/widget/ImageView;", "shareViaFlash", "a", "shareImage", "<init>", "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.y.a.a.a */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/a/a.class */
public final class C21469a extends e implements AbstractC21471b {

    /* renamed from: a */
    public ImageView f59965a;

    /* renamed from: b */
    public ImageView f59966b;
    @Inject

    /* renamed from: c */
    public AbstractC21472c f59967c;

    /* renamed from: e.a.y.a.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/y/a/a/a$a.class */
    public static final class View$OnClickListenerC21470a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f59968a;

        /* renamed from: b */
        public final /* synthetic */ Object f59969b;

        public View$OnClickListenerC21470a(int i, Object obj) {
            this.f59968a = i;
            this.f59969b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f59968a;
            if (i == 0) {
                AbstractC21472c abstractC21472c = ((C21469a) this.f59969b).f59967c;
                if (abstractC21472c != null) {
                    abstractC21472c.mo9686c();
                } else {
                    l.l("presenter");
                    throw null;
                }
            } else if (i != 1) {
                throw null;
            } else {
                AbstractC21472c abstractC21472c2 = ((C21469a) this.f59969b).f59967c;
                if (abstractC21472c2 != null) {
                    abstractC21472c2.mo9688a();
                } else {
                    l.l("presenter");
                    throw null;
                }
            }
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1367a.AbstractC21471b
    /* renamed from: V0 */
    public void mo9691V0() {
        dismiss();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1367a.AbstractC21471b
    /* renamed from: eq */
    public void mo9690eq(Uri uri, String str) {
        l.e(uri, "imageUri");
        l.e(str, "shareText");
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(ContentFormat.IMAGE_JPEG);
        intent.putExtra("android.intent.extra.STREAM", uri);
        intent.putExtra("android.intent.extra.TEXT", str);
        startActivity(Intent.createChooser(intent, "Share image"));
    }

    @Override // p193e.p194a.p1365y.p1366a.p1367a.AbstractC21471b
    /* renamed from: lg */
    public void mo9689lg(String str, String str2, String str3) {
        l.e(str, "imageUrl");
        l.e(str2, "imageDescription");
        Context context = getContext();
        if (context != null) {
            l.d(context, "context ?: return");
            Intent m35320a = FlashWithFriendsActivity.f12219f.m35320a(context, str, null, null, str2, true, str3);
            m35320a.addFlags(268435456);
            m35320a.addFlags(536870912);
            m35320a.addFlags(67108864);
            context.startActivity(m35320a);
            n3.r.a.l activity = getActivity();
            if (activity == null) {
                return;
            }
            activity.finish();
        }
    }

    public void onCreate(Bundle bundle) {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.setTheme(C21632c.m9330b().mo9329A());
        }
        C21469a.super.onCreate(bundle);
        C21632c c21632c = C21632c.f60288b;
        AbstractC21666a m9331a = C21632c.m9331a();
        C21474a c21474a = new C21474a();
        C25225a.m3846s(m9331a, AbstractC21666a.class);
        C21475b c21475b = new C21475b(c21474a);
        Object obj = b.c;
        if (!(c21475b instanceof b)) {
            c21475b = new b(c21475b);
        }
        AbstractC21472c abstractC21472c = (AbstractC21472c) c21475b.get();
        this.f59967c = abstractC21472c;
        if (abstractC21472c != null) {
            abstractC21472c.mo9687b(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C3909R.layout.layout_flash_bottom_share, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C21469a.super.onViewCreated(view, bundle);
        View findViewById = view.findViewById(C3909R.C3911id.imageShare);
        l.d(findViewById, "view.findViewById(R.id.imageShare)");
        this.f59965a = (ImageView) findViewById;
        View findViewById2 = view.findViewById(C3909R.C3911id.imageShareViaFlash);
        l.d(findViewById2, "view.findViewById(R.id.imageShareViaFlash)");
        this.f59966b = (ImageView) findViewById2;
        ImageView imageView = this.f59965a;
        if (imageView == null) {
            l.l("shareImage");
            throw null;
        }
        imageView.setOnClickListener(new View$OnClickListenerC21470a(0, this));
        ImageView imageView2 = this.f59966b;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View$OnClickListenerC21470a(1, this));
        } else {
            l.l("shareViaFlash");
            throw null;
        }
    }
}
