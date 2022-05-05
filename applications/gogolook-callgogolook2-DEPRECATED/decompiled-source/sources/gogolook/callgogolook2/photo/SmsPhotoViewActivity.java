package gogolook.callgogolook2.photo;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.SupportMenuInflater;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.MediaScratchFileProvider;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Metadata;
import p459j.p460a.p471b1.p473b.C11510a;
import p459j.p460a.p474c0.p491g.p493b0.FragmentC11932c;
import p459j.p460a.p474c0.p499h.C12216t0;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p613z0.DialogC14618f;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Action1;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0002\b\u0007\u0018�� +2\u00020\u0001:\u0001+B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0002J\"\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0012\u0010\u0018\u001a\u00020\u00122\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u0010H\u0016J\u0010\u0010!\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J-\u0010\"\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00042\u000e\u0010#\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\r2\u0006\u0010$\u001a\u00020%H\u0016¢\u0006\u0002\u0010&J\b\u0010'\u001a\u00020\u0012H\u0002J\b\u0010(\u001a\u00020\u0012H\u0002J\u0010\u0010)\u001a\u00020\u00122\u0006\u0010*\u001a\u00020\u0006H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\"\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\tX\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u00060\bj\b\u0012\u0004\u0012\u00020\u0006`\tX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0018\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\rX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n��¨\u0006,"}, m815d2 = {"Lgogolook/callgogolook2/photo/SmsPhotoViewActivity;", "Lgogolook/callgogolook2/photo/PhotoViewActivity;", "()V", "IMAGES_LOADER_ID", "", "initialPhotoUri", "", "photoUris", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "photosContentType", "photosUri", SmsPhotoViewActivity.f12480p, "", "[Ljava/lang/String;", "shareMenuItem", "Landroid/view/MenuItem;", "loadImageUrisFromUris", "", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateOptionsMenu", "", SupportMenuInflater.XML_MENU, "Landroid/view/Menu;", "onOptionsItemSelected", "item", "onPrepareOptionsMenu", "onRequestPermissionsResult", "permissions", "grantResults", "", "(I[Ljava/lang/String;[I)V", "saveCurrentPhoto", "shareCurrentPhoto", "updateActionBar", "title", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/SmsPhotoViewActivity.class */
public final class SmsPhotoViewActivity extends PhotoViewActivity {

    /* renamed from: f */
    public String f12484f;

    /* renamed from: g */
    public ArrayList<String> f12485g;

    /* renamed from: h */
    public String[] f12486h;

    /* renamed from: i */
    public String f12487i;

    /* renamed from: j */
    public MenuItem f12488j;

    /* renamed from: k */
    public ArrayList<String> f12489k = new ArrayList<>();

    /* renamed from: l */
    public HashMap f12490l;

    /* renamed from: s */
    public static final C5048a f12483s = new C5048a(null);

    /* renamed from: m */
    public static final String f12477m = f12477m;

    /* renamed from: m */
    public static final String f12477m = f12477m;

    /* renamed from: n */
    public static final String f12478n = f12478n;

    /* renamed from: n */
    public static final String f12478n = f12478n;

    /* renamed from: o */
    public static final String f12479o = f12479o;

    /* renamed from: o */
    public static final String f12479o = f12479o;

    /* renamed from: p */
    public static final String f12480p = f12480p;

    /* renamed from: p */
    public static final String f12480p = f12480p;

    /* renamed from: q */
    public static final int f12481q = f12481q;

    /* renamed from: q */
    public static final int f12481q = f12481q;

    /* renamed from: r */
    public static final int f12482r = f12482r;

    /* renamed from: r */
    public static final int f12482r = f12482r;

    /* renamed from: gogolook.callgogolook2.photo.SmsPhotoViewActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/SmsPhotoViewActivity$a.class */
    public static final class C5048a {
        public C5048a() {
        }

        public /* synthetic */ C5048a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final Intent m26421a(Context context, Uri uri, Uri uri2, String[] strArr, String str) {
            C15149k.m377b(context, "context");
            C15149k.m377b(uri, "photosUri");
            C15149k.m377b(uri2, "initialPhotoUri");
            C15149k.m377b(strArr, SmsPhotoViewActivity.f12480p);
            C15149k.m377b(str, "number");
            Intent intent = new Intent(context, SmsPhotoViewActivity.class);
            intent.putExtra(m26419b(), uri.toString());
            intent.putExtra(m26422a(), uri2.toString());
            intent.putExtra(m26417d(), strArr);
            return intent;
        }

        /* renamed from: a */
        public final Intent m26420a(Context context, ArrayList<String> arrayList, Uri uri) {
            C15149k.m377b(context, "context");
            C15149k.m377b(arrayList, "photoUris");
            C15149k.m377b(uri, "initialPhotoUri");
            Intent intent = new Intent(context, SmsPhotoViewActivity.class);
            intent.putStringArrayListExtra(m26418c(), arrayList);
            intent.putExtra(m26422a(), uri.toString());
            return intent;
        }

        /* renamed from: a */
        public final String m26422a() {
            return SmsPhotoViewActivity.f12477m;
        }

        /* renamed from: b */
        public final String m26419b() {
            return SmsPhotoViewActivity.f12478n;
        }

        /* renamed from: c */
        public final String m26418c() {
            return SmsPhotoViewActivity.f12479o;
        }

        /* renamed from: d */
        public final String m26417d() {
            return SmsPhotoViewActivity.f12480p;
        }
    }

    /* renamed from: gogolook.callgogolook2.photo.SmsPhotoViewActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/SmsPhotoViewActivity$b.class */
    public static final class C5049b<T> implements Single.OnSubscribe<ArrayList<String>> {
        public C5049b() {
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super ArrayList<String>> singleSubscriber) {
            try {
                Cursor query = SmsPhotoViewActivity.this.getContentResolver().query(Uri.parse(SmsPhotoViewActivity.this.f12484f), SmsPhotoViewActivity.this.f12486h, null, null, null);
                if (query != null) {
                    SmsPhotoViewActivity.this.f12489k.clear();
                    ArrayList arrayList = new ArrayList();
                    int i = 0;
                    while (query.moveToNext()) {
                        int columnIndex = query.getColumnIndex("contentUri");
                        int columnIndex2 = query.getColumnIndex("contentType");
                        String string = query.getString(columnIndex);
                        String string2 = query.getString(columnIndex2);
                        Uri parse = Uri.parse(string);
                        if (parse != null) {
                            SmsPhotoViewActivity.this.f12489k.add(string2);
                            if (MediaScratchFileProvider.m27782c(parse)) {
                                arrayList.add(parse.toString());
                            } else {
                                arrayList.add(parse.toString());
                            }
                            if (SmsPhotoViewActivity.this.f12487i != null && C15149k.m384a((Object) SmsPhotoViewActivity.this.f12487i, (Object) parse.toString())) {
                                SmsPhotoViewActivity.this.m26444c(parse.toString());
                                SmsPhotoViewActivity.this.m26442g(i);
                            }
                        }
                        i++;
                    }
                    query.close();
                    singleSubscriber.onSuccess(arrayList);
                    return;
                }
                singleSubscriber.onSuccess(null);
            } catch (Exception e) {
                singleSubscriber.onError(e);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.photo.SmsPhotoViewActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/SmsPhotoViewActivity$c.class */
    public static final class C5050c<T> implements Action1<ArrayList<String>> {
        public C5050c() {
        }

        /* renamed from: a */
        public final void call(ArrayList<String> arrayList) {
            if (arrayList != null) {
                SmsPhotoViewActivity.this.m26446a(arrayList);
                SmsPhotoViewActivity smsPhotoViewActivity = SmsPhotoViewActivity.this;
                smsPhotoViewActivity.m26445a(arrayList, smsPhotoViewActivity.m26452D());
                SmsPhotoViewActivity smsPhotoViewActivity2 = SmsPhotoViewActivity.this;
                smsPhotoViewActivity2.m26443f(smsPhotoViewActivity2.m26452D());
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.photo.SmsPhotoViewActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/SmsPhotoViewActivity$d.class */
    public static final class C5051d<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C5051d f12493a = new C5051d();

        /* renamed from: a */
        public final void call(Throwable th) {
        }
    }

    /* renamed from: gogolook.callgogolook2.photo.SmsPhotoViewActivity$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/SmsPhotoViewActivity$e.class */
    public static final class DialogInterface$OnClickListenerC5052e implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC5052e() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C13878a3.m3248a((Activity) SmsPhotoViewActivity.this);
        }
    }

    /* renamed from: a */
    public static final Intent m26430a(Context context, Uri uri, Uri uri2, String[] strArr, String str) {
        return f12483s.m26421a(context, uri, uri2, strArr, str);
    }

    /* renamed from: a */
    public static final Intent m26429a(Context context, ArrayList<String> arrayList, Uri uri) {
        return f12483s.m26420a(context, arrayList, uri);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0077, code lost:
        if (r6 != null) goto L_0x0080;
     */
    /* renamed from: G */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m26437G() {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.photo.SmsPhotoViewActivity.m26437G():void");
    }

    /* renamed from: H */
    public final void m26436H() {
        if (C12810o.m5232m()) {
            new FragmentC11932c.AsyncTaskC11957w(this, Uri.parse(m26451E()), this.f12489k.get(m26452D())).m6852b(new Void[0]);
        } else {
            C12810o.m5261a((Context) this, (Object) null, Integer.valueOf(f12482r), (Integer) 5).show();
        }
    }

    /* renamed from: I */
    public final void m26435I() {
        if (m26451E() != null && this.f12489k.size() > m26452D()) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.setType(this.f12489k.get(m26452D()));
            intent.putExtra("android.intent.extra.STREAM", C12216t0.m6767a(m26451E()));
            startActivity(intent);
        }
    }

    @Override // gogolook.callgogolook2.photo.PhotoViewActivity
    /* renamed from: d */
    public void mo26424d(String str) {
        C15149k.m377b(str, "title");
        super.mo26424d(str);
    }

    @Override // gogolook.callgogolook2.photo.PhotoViewActivity
    /* renamed from: e */
    public View mo26423e(int i) {
        if (this.f12490l == null) {
            this.f12490l = new HashMap();
        }
        View view = (View) this.f12490l.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this.f12490l.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (-1 == i2 && f12482r == i) {
            m26436H();
        }
    }

    @Override // gogolook.callgogolook2.photo.PhotoViewActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        if (getIntent() != null) {
            this.f12484f = getIntent().getStringExtra(f12478n);
            this.f12487i = getIntent().getStringExtra(f12477m);
            this.f12486h = getIntent().getStringArrayExtra(f12480p);
            this.f12485g = getIntent().getStringArrayListExtra(f12479o);
        }
        super.onCreate(bundle);
        m26437G();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        C15149k.m377b(menu, SupportMenuInflater.XML_MENU);
        getMenuInflater().inflate(R$menu.photo_viewer_action_menu, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        C15149k.m377b(menuItem, "item");
        int itemId = menuItem.getItemId();
        boolean z = true;
        if (itemId == 16908332) {
            onBackPressed();
        } else if (itemId != 2131361856) {
            if (itemId != 2131361872) {
                z = super.onOptionsItemSelected(menuItem);
            } else {
                m26435I();
            }
        } else if (C11510a.m9437c(this)) {
            m26436H();
        } else {
            C13878a3.m3245a(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, f12481q);
        }
        return z;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        C15149k.m377b(menu, SupportMenuInflater.XML_MENU);
        this.f12488j = menu.findItem(R$id.action_share);
        MenuItem menuItem = this.f12488j;
        if (menuItem != null) {
            menuItem.setVisible(true);
        }
        MenuItem findItem = menu.findItem(R$id.action_download);
        if (findItem != null) {
            findItem.setVisible(true);
        }
        MenuItem findItem2 = menu.findItem(R$id.action_more);
        if (findItem2 != null) {
            findItem2.setVisible(false);
        }
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        C15149k.m377b(strArr, "permissions");
        C15149k.m377b(iArr, "grantResults");
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i != f12481q) {
            return;
        }
        if (C11510a.m9437c(this)) {
            m26436H();
        } else if (C13878a3.m3219d((Activity) this)) {
            DialogC14618f fVar = new DialogC14618f(this);
            fVar.setTitle(R$string.permission_title_storage);
            fVar.m995c(R$string.permission_content_storage);
            fVar.m999b(R$string.permission_button_storage, new DialogInterface$OnClickListenerC5052e());
            fVar.show();
        }
    }
}
