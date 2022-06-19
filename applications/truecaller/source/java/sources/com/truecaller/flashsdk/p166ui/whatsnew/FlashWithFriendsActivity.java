package com.truecaller.flashsdk.p166ui.whatsnew;

import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.MraidCloseCommand;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.p166ui.send.SendActivity;
import e.m.a.j.a.d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1734b.p1735a.AbstractC25407j;
import p1727n3.p1734b.p1743f.C25554w0;
import p1727n3.p1788g.C26177c;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1365y.p1366a.p1369d.AbstractC21480b;
import p193e.p194a.p1365y.p1366a.p1369d.AbstractC21484e;
import p193e.p194a.p1365y.p1366a.p1369d.C21478a;
import p193e.p194a.p1365y.p1366a.p1379l.AbstractC21582a;
import p193e.p194a.p1365y.p1366a.p1379l.AbstractC21583b;
import p193e.p194a.p1365y.p1366a.p1379l.p1380h.C21591b;
import p193e.p194a.p1365y.p1381b.AbstractC21623t;
import p193e.p194a.p1365y.p1382c.C21632c;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.C21667b;
import p193e.p194a.p1365y.p1389g.C21743a;
import p193e.p194a.p1365y.p1389g.C21744b;
import p193e.p194a.p1406z3.C21853e;
import s1.g;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018�� N2\u00020\u00012\u00020\u00022\b\u0012\u0004\u0012\u00020\u00040\u00032\u00020\u0005:\u0001>B\u0007¢\u0006\u0004\bM\u0010\fJ\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0011\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000f\u0010\fJ\u000f\u0010\u0010\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0010\u0010\fJ\u001f\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001d\u0010\u001c\u001a\u00020\b2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00040\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJY\u0010(\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 2\b\u0010\"\u001a\u0004\u0018\u00010 2\b\u0010#\u001a\u0004\u0018\u00010 2\b\u0010$\u001a\u0004\u0018\u00010 2\b\u0010%\u001a\u0004\u0018\u00010 2\u0006\u0010&\u001a\u00020\u00172\b\u0010'\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\bH\u0016¢\u0006\u0004\b*\u0010\fJ\u0017\u0010-\u001a\u00020\u00172\u0006\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b-\u0010.R\u0016\u00102\u001a\u00020/8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u001d\u0010<\u001a\u0002078B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;R\"\u0010D\u001a\u00020=8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\"\u0010L\u001a\u00020E8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010K¨\u0006O"}, d2 = {"Lcom/truecaller/flashsdk/ui/whatsnew/FlashWithFriendsActivity;", "Ln3/b/a/h;", "Le/a/y/a/l/b;", "Le/a/y/b/t;", "Le/a/y/g/a;", "Le/a/y/a/d/e$a;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onBackPressed", "()V", "A3", "()Landroid/os/Bundle;", MraidCloseCommand.NAME, "g0", "", "containerId", "Le/m/a/j/a/d;", "fragment", "C", "(ILe/m/a/j/a/d;)V", "", "E", "(I)Z", "", "flashableContacts", "H2", "(Ljava/util/List;)V", "", "parseLong", "", AnalyticsConstants.NAME, "flashContext", "imageUrl", "videoUrl", "messageDescription", "imageMode", "backgroundUrl", "y", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V", "M1", "Landroid/view/MenuItem;", "item", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "Landroid/widget/ProgressBar;", "d", "Landroid/widget/ProgressBar;", "progressBar", "Le/a/y/a/d/a;", "e", "Le/a/y/a/d/a;", "adapter", "Le/a/z3/e;", AbstractC2405c.f7629a, "Ls1/g;", "getGlide", "()Le/a/z3/e;", "glide", "Le/a/y/a/l/a;", "a", "Le/a/y/a/l/a;", "getFlashWithFriendsPresenter", "()Le/a/y/a/l/a;", "setFlashWithFriendsPresenter", "(Le/a/y/a/l/a;)V", "flashWithFriendsPresenter", "Le/a/y/a/d/b;", C22021b.f61237c, "Le/a/y/a/d/b;", "getHeaderItemPresenter", "()Le/a/y/a/d/b;", "setHeaderItemPresenter", "(Le/a/y/a/d/b;)V", "headerItemPresenter", "<init>", "f", "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.flashsdk.ui.whatsnew.FlashWithFriendsActivity */
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/whatsnew/FlashWithFriendsActivity.class */
public final class FlashWithFriendsActivity extends h implements AbstractC21583b, AbstractC21623t<C21743a>, AbstractC21484e.AbstractC21485a {

    /* renamed from: f */
    public static final C3984a f12219f = new C3984a(null);
    @Inject

    /* renamed from: a */
    public AbstractC21582a f12220a;
    @Inject

    /* renamed from: b */
    public AbstractC21480b f12221b;

    /* renamed from: c */
    public final g f12222c = C25225a.m3978P1(new C3985b());

    /* renamed from: d */
    public ProgressBar f12223d;

    /* renamed from: e */
    public C21478a f12224e;

    /* renamed from: com.truecaller.flashsdk.ui.whatsnew.FlashWithFriendsActivity$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/whatsnew/FlashWithFriendsActivity$a.class */
    public static final class C3984a {
        public C3984a(f fVar) {
        }

        /* renamed from: a */
        public final Intent m35320a(Context context, String str, String str2, String str3, String str4, boolean z, String str5) {
            l.e(context, AnalyticsConstants.CONTEXT);
            Intent intent = new Intent(context, FlashWithFriendsActivity.class);
            intent.putExtra("image", str);
            intent.putExtra("video", str2);
            intent.putExtra("description", str3);
            intent.putExtra(AnalyticsConstants.MODE, z);
            intent.putExtra("promo", str4);
            intent.putExtra("background", str5);
            intent.addFlags(268435456);
            return intent;
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.whatsnew.FlashWithFriendsActivity$b */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/whatsnew/FlashWithFriendsActivity$b.class */
    public static final class C3985b extends m implements a<C21853e> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3985b() {
            super(0);
            FlashWithFriendsActivity.this = r4;
        }

        public Object invoke() {
            C21853e m15655N1 = C17891a1.C17902k.m15655N1(FlashWithFriendsActivity.this);
            l.d(m15655N1, "GlideApp.with(this)");
            return m15655N1;
        }
    }

    static {
        C26177c<WeakReference<AbstractC25407j>> c26177c = AbstractC25407j.f70858a;
        C25554w0.f71526a = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1379l.AbstractC21583b
    /* renamed from: A3 */
    public Bundle mo9409A3() {
        Intent intent = getIntent();
        l.d(intent, "intent");
        return intent.getExtras();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1369d.AbstractC21484e.AbstractC21485a
    /* renamed from: C */
    public void mo9681C(int i, d dVar) {
        l.e(dVar, "fragment");
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        c26907a.mo1122k(i, dVar, null, 1);
        c26907a.mo1125h();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1369d.AbstractC21484e.AbstractC21485a
    /* renamed from: E */
    public boolean mo9680E(int i) {
        return getSupportFragmentManager().m42943J(i) == null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1379l.AbstractC21583b
    /* renamed from: H2 */
    public void mo9408H2(List<? extends C21743a> list) {
        l.e(list, "flashableContacts");
        ProgressBar progressBar = this.f12223d;
        if (progressBar == null) {
            l.l("progressBar");
            throw null;
        }
        progressBar.setVisibility(8);
        RecyclerView recyclerView = (RecyclerView) findViewById(C3909R.C3911id.favouriteList);
        l.d(recyclerView, "recyclerView");
        recyclerView.setVisibility(0);
        recyclerView.setLayoutManager(new LinearLayoutManager(this, 1, false));
        ArrayList arrayList = new ArrayList();
        Intent intent = getIntent();
        l.d(intent, "intent");
        arrayList.add(new C21744b(intent.getExtras()));
        arrayList.addAll(list);
        C21853e c21853e = (C21853e) this.f12222c.getValue();
        AbstractC21480b abstractC21480b = this.f12221b;
        if (abstractC21480b == null) {
            l.l("headerItemPresenter");
            throw null;
        }
        C21478a c21478a = new C21478a(this, c21853e, arrayList, this, abstractC21480b);
        this.f12224e = c21478a;
        recyclerView.setAdapter(c21478a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1379l.AbstractC21583b
    /* renamed from: M1 */
    public void mo9407M1() {
        ImageView imageView = (ImageView) findViewById(C3909R.C3911id.tc_logo);
        imageView.setColorFilter(C19291g.m13612L(this, C3909R.attr.theme_incoming_text), PorterDuff.Mode.SRC_IN);
        l.d(imageView, "tcLogo");
        imageView.setVisibility(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1379l.AbstractC21583b
    public void close() {
        finish();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1379l.AbstractC21583b
    /* renamed from: g0 */
    public void mo9406g0() {
        View findViewById = findViewById(C3909R.C3911id.progressBar);
        l.d(findViewById, "findViewById(R.id.progressBar)");
        this.f12223d = (ProgressBar) findViewById;
        setSupportActionBar((Toolbar) findViewById(C3909R.C3911id.toolbarMain));
        AbstractC25393a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
        AbstractC21480b abstractC21480b = this.f12221b;
        if (abstractC21480b != null) {
            abstractC21480b.mo9682d(this);
        } else {
            l.l("headerItemPresenter");
            throw null;
        }
    }

    public void onBackPressed() {
        AbstractC21582a abstractC21582a = this.f12220a;
        if (abstractC21582a == null) {
            l.l("flashWithFriendsPresenter");
            throw null;
        }
        abstractC21582a.onBackPressed();
        FlashWithFriendsActivity.super.onBackPressed();
    }

    public void onCreate(Bundle bundle) {
        setTheme(C21632c.m9330b().mo9329A());
        FlashWithFriendsActivity.super.onCreate(bundle);
        setContentView(C3909R.layout.layout_flash_whatsnew);
        C21632c c21632c = C21632c.f60288b;
        C21667b.C21671d c21671d = (C21667b.C21671d) C21632c.m9331a().mo9207h(new C21591b());
        this.f12220a = (AbstractC21582a) c21671d.f60427d.get();
        this.f12221b = (AbstractC21480b) c21671d.f60428e.get();
        AbstractC21582a abstractC21582a = this.f12220a;
        if (abstractC21582a != null) {
            abstractC21582a.mo9029Y0(this);
        } else {
            l.l("flashWithFriendsPresenter");
            throw null;
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.e(menuItem, "item");
        AbstractC21582a abstractC21582a = this.f12220a;
        if (abstractC21582a != null) {
            abstractC21582a.mo9397Be(menuItem.getItemId());
            return true;
        }
        l.l("flashWithFriendsPresenter");
        throw null;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21623t
    public void onResult(C21743a c21743a) {
        C21743a c21743a2 = c21743a;
        l.e(c21743a2, AnalyticsConstants.CONTACT);
        AbstractC21582a abstractC21582a = this.f12220a;
        if (abstractC21582a != null) {
            abstractC21582a.mo9396u4(c21743a2);
        } else {
            l.l("flashWithFriendsPresenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1379l.AbstractC21583b
    /* renamed from: y */
    public void mo9405y(long j, String str, String str2, String str3, String str4, String str5, boolean z, String str6) {
        l.e(str, AnalyticsConstants.NAME);
        try {
            l.e(this, AnalyticsConstants.CONTEXT);
            Intent intent = new Intent((Context) this, (Class<?>) SendActivity.class);
            intent.putExtra("to_phone", j);
            intent.putExtra("to_name", str);
            intent.putExtra("image", str3);
            intent.putExtra("video", str4);
            intent.putExtra("description", str5);
            intent.putExtra("background", str6);
            intent.putExtra(AnalyticsConstants.MODE, z);
            intent.putExtra("screen_context", str2);
            intent.addFlags(268435456);
            intent.addFlags(536870912);
            startActivity(intent);
        } catch (NumberFormatException e) {
        }
    }
}
