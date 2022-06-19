package com.truecaller.messaging.conversation.atttachmentPicker;

import android.content.Context;
import android.database.ContentObserver;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.MediaStore;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.common.util.concurrent.ListenableFuture;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import java.util.ArrayList;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1758e.p1767b.C25898c1;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26031e;
import p1727n3.p1758e.p1775c.C26109c;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p195a.p200c.C5787v5;
import p193e.p194a.p195a.p200c.p213l8.AbstractC5489c;
import p193e.p194a.p195a.p200c.p213l8.AbstractC5498i;
import p193e.p194a.p195a.p200c.p213l8.C5488b;
import p193e.p194a.p195a.p200c.p213l8.C5490d;
import p193e.p194a.p195a.p200c.p213l8.C5494g;
import p193e.p194a.p195a.p200c.p213l8.C5501k;
import p193e.p194a.p195a.p200c.p213l8.C5505n;
import p193e.p194a.p195a.p200c.p213l8.C5511r;
import p193e.p194a.p195a.p200c.p213l8.RunnableC5487a;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0093\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001G\u0018��2\u00020\u00012\u00020\u0002:\u0002M\u0007B\u001d\b��\u0012\u0006\u0010{\u001a\u00020z\u0012\n\b\u0002\u0010}\u001a\u0004\u0018\u00010|¢\u0006\u0004\b~\u0010\u007fJ\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\bJ\u001f\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0010\u0010\bJ\u000f\u0010\u0011\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0011\u0010\bJ\u000f\u0010\u0012\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\bJ\u000f\u0010\u0013\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0013\u0010\bJ\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001f\u0010\u0019J\u0017\u0010 \u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0014H\u0016¢\u0006\u0004\b \u0010\u0019J\u000f\u0010!\u001a\u00020\u0006H\u0016¢\u0006\u0004\b!\u0010\bJ\u000f\u0010\"\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\"\u0010\bJ\u001d\u0010&\u001a\u00020\u00062\f\u0010%\u001a\b\u0012\u0004\u0012\u00020$0#H\u0016¢\u0006\u0004\b&\u0010'J\u0017\u0010*\u001a\u00020\u00062\u0006\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b*\u0010+J\u0017\u0010-\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u0014H\u0016¢\u0006\u0004\b-\u0010\u0019R%\u00104\u001a\n /*\u0004\u0018\u00010.0.8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R%\u00108\u001a\n /*\u0004\u0018\u000105058B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u00101\u001a\u0004\b6\u00107R%\u0010:\u001a\n /*\u0004\u0018\u000105058B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u00101\u001a\u0004\b9\u00107R\u001c\u0010%\u001a\b\u0012\u0004\u0012\u00020$0#8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010?\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010B\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010D\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010>R\u0016\u0010F\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010>R\u0016\u0010J\u001a\u00020G8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010IR%\u0010L\u001a\n /*\u0004\u0018\u000105058B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u00101\u001a\u0004\bK\u00107R%\u0010O\u001a\n /*\u0004\u0018\u000105058B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bM\u00101\u001a\u0004\bN\u00107R\u0016\u0010Q\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010AR%\u0010T\u001a\n /*\u0004\u0018\u000105058B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bR\u00101\u001a\u0004\bS\u00107R%\u0010Y\u001a\n /*\u0004\u0018\u00010U0U8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bV\u00101\u001a\u0004\bW\u0010XR\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bZ\u0010[R\u0016\u0010]\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010AR%\u0010`\u001a\n /*\u0004\u0018\u000105058B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b^\u00101\u001a\u0004\b_\u00107R\u0016\u0010b\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\ba\u0010>R\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bc\u0010dR\u0018\u0010h\u001a\u0004\u0018\u00010e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR%\u0010k\u001a\n /*\u0004\u0018\u000105058B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bi\u00101\u001a\u0004\bj\u00107R\u0016\u0010)\u001a\u00020(8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bl\u0010mR&\u0010s\u001a\u0012\u0012\u0004\u0012\u00020o0nj\b\u0012\u0004\u0012\u00020o`p8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010rR\u0016\u0010u\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010>R\u0018\u0010y\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010x¨\u0006\u0080\u0001"}, d2 = {"Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;", "Landroid/widget/FrameLayout;", "Le/a/a/c/l8/c;", "", "getVisibleChildrenCount", "()I", "Ls1/s;", AbstractC2405c.f7629a, "()V", "d", "Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;", "fileCallback", "Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$b;", "cameraCallback", "Y", "(Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$b;)V", AnalyticsConstants.SHOW, "e", "onResume", "onPause", "", "isVisible", "()Z", "visible", "setFlashVisible", "(Z)V", "allowImage", "allowVideo", "allowDoc", "W", "(ZZZ)V", "setLocationVisible", "setContactVisible", "Y2", "X", "Le/a/r2/f;", "Le/a/a/c/l8/i;", "galleryItemsLoader", "setGalleryItemsLoader", "(Le/a/r2/f;)V", "Le/a/r2/j;", "uiThread", "setUiThread", "(Le/a/r2/j;)V", "enable", "V", "Landroidx/recyclerview/widget/RecyclerView;", "kotlin.jvm.PlatformType", "i", "Ls1/g;", "getRecyclerViewPreview", "()Landroidx/recyclerview/widget/RecyclerView;", "recyclerViewPreview", "Landroid/view/View;", "getButtonGallery", "()Landroid/view/View;", "buttonGallery", "getButtonFlash", "buttonFlash", "m", "Le/a/r2/f;", "t", "I", "paddingValueTopBottom", "v", "Z", "allowPreviewVideo", "p", "currentItems", "r", "scrolledOutItems", "com/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$d", "y", "Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$d;", "contentObserver", "getButtonLocation", "buttonLocation", C22021b.f61237c, "getButtonDocument", "buttonDocument", "u", "allowPreviewImage", "a", "getButtonContact", "buttonContact", "Landroid/widget/LinearLayout;", "h", "getPickerButtons", "()Landroid/widget/LinearLayout;", "pickerButtons", "k", "Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;", "o", "isScrolling", "g", "getDisableViewlayout", "disableViewlayout", "s", "paddingValueStartEnd", "l", "Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$b;", "Ln3/e/c/c;", "w", "Ln3/e/c/c;", "cameraProvider", "f", "getButtonVideo", "buttonVideo", "n", "Le/a/r2/j;", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "j", "Ljava/util/ArrayList;", "itemList", "q", "totalItems", "Le/a/a/c/l8/r;", "x", "Le/a/a/c/l8/r;", "adapter", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker.class */
public final class AttachmentPicker extends FrameLayout implements AbstractC5489c {

    /* renamed from: k */
    public AbstractC4171c f13054k;

    /* renamed from: l */
    public AbstractC4170b f13055l;

    /* renamed from: m */
    public AbstractC19854f<AbstractC5498i> f13056m;

    /* renamed from: n */
    public AbstractC19868j f13057n;

    /* renamed from: o */
    public boolean f13058o;

    /* renamed from: p */
    public int f13059p;

    /* renamed from: q */
    public int f13060q;

    /* renamed from: r */
    public int f13061r;

    /* renamed from: u */
    public boolean f13064u;

    /* renamed from: v */
    public boolean f13065v;

    /* renamed from: w */
    public C26109c f13066w;

    /* renamed from: x */
    public C5511r f13067x;

    /* renamed from: a */
    public final g f13044a = C19286f.m13660s(this, C2752R.C2754id.buttonContact);

    /* renamed from: b */
    public final g f13045b = C19286f.m13660s(this, C2752R.C2754id.buttonDocument);

    /* renamed from: c */
    public final g f13046c = C19286f.m13660s(this, C2752R.C2754id.buttonFlash);

    /* renamed from: d */
    public final g f13047d = C19286f.m13660s(this, C2752R.C2754id.buttonGallery);

    /* renamed from: e */
    public final g f13048e = C19286f.m13660s(this, C2752R.C2754id.buttonLocation);

    /* renamed from: f */
    public final g f13049f = C19286f.m13660s(this, C2752R.C2754id.buttonVideo);

    /* renamed from: g */
    public final g f13050g = C19286f.m13660s(this, C2752R.C2754id.disableViewlayout);

    /* renamed from: h */
    public final g f13051h = C19286f.m13660s(this, C2752R.C2754id.pickerButtons);

    /* renamed from: i */
    public final g f13052i = C19286f.m13660s(this, C2752R.C2754id.recyclerViewPreview);

    /* renamed from: j */
    public ArrayList<Object> f13053j = new ArrayList<>();

    /* renamed from: s */
    public final int f13062s = (int) getResources().getDimension(C2752R.dimen.attachment_buttons_padding);

    /* renamed from: t */
    public final int f13063t = (int) getResources().getDimension(2131165616);

    /* renamed from: y */
    public final C4172d f13068y = new C4172d(new Handler(Looper.getMainLooper()));

    /* renamed from: com.truecaller.messaging.conversation.atttachmentPicker.AttachmentPicker$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$a.class */
    public static final class View$OnClickListenerC4169a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f13069a;

        /* renamed from: b */
        public final /* synthetic */ Object f13070b;

        public View$OnClickListenerC4169a(int i, Object obj) {
            this.f13069a = i;
            this.f13070b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f13069a;
            if (i == 0) {
                AttachmentPicker.m35111a((AttachmentPicker) this.f13070b).mo33306l4();
            } else if (i == 1) {
                AttachmentPicker.m35111a((AttachmentPicker) this.f13070b).mo33387D6();
            } else if (i == 2) {
                AbstractC4170b abstractC4170b = ((AttachmentPicker) this.f13070b).f13055l;
                if (abstractC4170b != null) {
                    ((C5787v5) abstractC4170b).m32594Mj(true);
                } else {
                    l.l("cameraCallback");
                    throw null;
                }
            } else if (i == 3) {
                AttachmentPicker.m35111a((AttachmentPicker) this.f13070b).mo33381Ja();
            } else if (i == 4) {
                AttachmentPicker.m35111a((AttachmentPicker) this.f13070b).mo33350T1();
            } else if (i != 5) {
                throw null;
            } else {
                AttachmentPicker.m35111a((AttachmentPicker) this.f13070b).mo33338Yd();
            }
        }
    }

    /* renamed from: com.truecaller.messaging.conversation.atttachmentPicker.AttachmentPicker$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$b.class */
    public interface AbstractC4170b {
    }

    /* renamed from: com.truecaller.messaging.conversation.atttachmentPicker.AttachmentPicker$c */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c.class */
    public interface AbstractC4171c {
        /* renamed from: D6 */
        void mo33387D6();

        /* renamed from: Ja */
        void mo33381Ja();

        /* renamed from: T1 */
        void mo33350T1();

        /* renamed from: Yd */
        void mo33338Yd();

        /* renamed from: c9 */
        void mo33327c9();

        /* renamed from: h4 */
        boolean mo33317h4();

        /* renamed from: l4 */
        void mo33306l4();

        /* renamed from: y6 */
        void mo33293y6(Uri uri, int i);
    }

    /* renamed from: com.truecaller.messaging.conversation.atttachmentPicker.AttachmentPicker$d */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$d.class */
    public static final class C4172d extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4172d(Handler handler) {
            super(handler);
            AttachmentPicker.this = r4;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            AttachmentPicker.this.m35109c();
        }
    }

    /* renamed from: com.truecaller.messaging.conversation.atttachmentPicker.AttachmentPicker$e */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$e.class */
    public static final class C4173e<R> implements AbstractC19851d0<ArrayList<C5494g>> {
        public C4173e() {
            AttachmentPicker.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(ArrayList<C5494g> arrayList) {
            ArrayList<C5494g> arrayList2 = arrayList;
            AttachmentPicker.this.f13053j.clear();
            AttachmentPicker.this.f13053j.add(C5490d.f18642a);
            if (arrayList2 != null) {
                AttachmentPicker.this.f13053j.addAll(arrayList2);
            }
            C5511r c5511r = AttachmentPicker.this.f13067x;
            if (c5511r != null) {
                c5511r.notifyDataSetChanged();
            }
        }
    }

    /* renamed from: com.truecaller.messaging.conversation.atttachmentPicker.AttachmentPicker$f */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$f.class */
    public static final class C4174f extends RecyclerView.AbstractC0338t {
        public C4174f() {
            AttachmentPicker.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            l.e(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i);
            if (i != 1 || !AttachmentPicker.m35111a(AttachmentPicker.this).mo33317h4()) {
                return;
            }
            AttachmentPicker.this.f13058o = true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            l.e(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i, i2);
            AttachmentPicker attachmentPicker = AttachmentPicker.this;
            RecyclerView recyclerViewPreview = attachmentPicker.getRecyclerViewPreview();
            l.d(recyclerViewPreview, "recyclerViewPreview");
            RecyclerView.AbstractC0329o layoutManager = recyclerViewPreview.getLayoutManager();
            Objects.requireNonNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            attachmentPicker.f13059p = ((LinearLayoutManager) layoutManager).getChildCount();
            AttachmentPicker attachmentPicker2 = AttachmentPicker.this;
            RecyclerView recyclerViewPreview2 = attachmentPicker2.getRecyclerViewPreview();
            l.d(recyclerViewPreview2, "recyclerViewPreview");
            RecyclerView.AbstractC0329o layoutManager2 = recyclerViewPreview2.getLayoutManager();
            Objects.requireNonNull(layoutManager2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            attachmentPicker2.f13060q = ((LinearLayoutManager) layoutManager2).getItemCount();
            AttachmentPicker attachmentPicker3 = AttachmentPicker.this;
            RecyclerView recyclerViewPreview3 = attachmentPicker3.getRecyclerViewPreview();
            l.d(recyclerViewPreview3, "recyclerViewPreview");
            RecyclerView.AbstractC0329o layoutManager3 = recyclerViewPreview3.getLayoutManager();
            Objects.requireNonNull(layoutManager3, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            attachmentPicker3.f13061r = ((LinearLayoutManager) layoutManager3).findFirstVisibleItemPosition();
            AttachmentPicker attachmentPicker4 = AttachmentPicker.this;
            if (!attachmentPicker4.f13058o || attachmentPicker4.f13059p + attachmentPicker4.f13061r < Math.abs(attachmentPicker4.f13060q - 25)) {
                return;
            }
            AttachmentPicker attachmentPicker5 = AttachmentPicker.this;
            attachmentPicker5.f13058o = false;
            int i3 = attachmentPicker5.f13060q;
            AbstractC19854f<AbstractC5498i> abstractC19854f = attachmentPicker5.f13056m;
            if (abstractC19854f == null) {
                l.l("galleryItemsLoader");
                throw null;
            }
            AbstractC19891x<ArrayList<C5494g>> mo33009a = abstractC19854f.mo11854a().mo33009a(i3 + 50, attachmentPicker5.f13064u, attachmentPicker5.f13065v);
            AbstractC19868j abstractC19868j = attachmentPicker5.f13057n;
            if (abstractC19868j != null) {
                mo33009a.mo11830e(abstractC19868j, new C5488b(attachmentPicker5));
            } else {
                l.l("uiThread");
                throw null;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AttachmentPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.e(context, AnalyticsConstants.CONTEXT);
        LayoutInflater from = LayoutInflater.from(context);
        l.d(from, "LayoutInflater.from(context)");
        C17422k.m16050u0(from, true).inflate(C2752R.layout.view_attachments_picker, this);
        C19291g.m13525o1(this, C19291g.m13612L(getContext(), 2130970356), PorterDuff.Mode.MULTIPLY);
        getButtonGallery().setOnClickListener(new View$OnClickListenerC4169a(0, this));
        getButtonDocument().setOnClickListener(new View$OnClickListenerC4169a(1, this));
        getButtonVideo().setOnClickListener(new View$OnClickListenerC4169a(2, this));
        getButtonFlash().setOnClickListener(new View$OnClickListenerC4169a(3, this));
        getButtonLocation().setOnClickListener(new View$OnClickListenerC4169a(4, this));
        getButtonContact().setOnClickListener(new View$OnClickListenerC4169a(5, this));
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC4171c m35111a(AttachmentPicker attachmentPicker) {
        AbstractC4171c abstractC4171c = attachmentPicker.f13054k;
        if (abstractC4171c != null) {
            return abstractC4171c;
        }
        l.l("fileCallback");
        throw null;
    }

    private final View getButtonContact() {
        return (View) this.f13044a.getValue();
    }

    private final View getButtonDocument() {
        return (View) this.f13045b.getValue();
    }

    private final View getButtonFlash() {
        return (View) this.f13046c.getValue();
    }

    private final View getButtonGallery() {
        return (View) this.f13047d.getValue();
    }

    private final View getButtonLocation() {
        return (View) this.f13048e.getValue();
    }

    private final View getButtonVideo() {
        return (View) this.f13049f.getValue();
    }

    private final View getDisableViewlayout() {
        return (View) this.f13050g.getValue();
    }

    private final LinearLayout getPickerButtons() {
        return (LinearLayout) this.f13051h.getValue();
    }

    public final RecyclerView getRecyclerViewPreview() {
        return (RecyclerView) this.f13052i.getValue();
    }

    private final int getVisibleChildrenCount() {
        LinearLayout pickerButtons = getPickerButtons();
        l.d(pickerButtons, "pickerButtons");
        int childCount = pickerButtons.getChildCount();
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < childCount) {
                View childAt = getPickerButtons().getChildAt(i);
                l.d(childAt, "pickerButtons.getChildAt(i)");
                int i4 = i3;
                if (childAt.getVisibility() == 0) {
                    i4 = i3 + 1;
                }
                i++;
                i2 = i4;
            } else {
                return i3;
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.p213l8.AbstractC5489c
    /* renamed from: V */
    public void mo33016V(boolean z) {
        if (z) {
            View disableViewlayout = getDisableViewlayout();
            l.d(disableViewlayout, "disableViewlayout");
            disableViewlayout.setVisibility(4);
            return;
        }
        View disableViewlayout2 = getDisableViewlayout();
        l.d(disableViewlayout2, "disableViewlayout");
        disableViewlayout2.setVisibility(0);
    }

    @Override // p193e.p194a.p195a.p200c.p213l8.AbstractC5489c
    /* renamed from: W */
    public void mo33015W(boolean z, boolean z2, boolean z3) {
        this.f13064u = z;
        this.f13065v = z2;
        View buttonGallery = getButtonGallery();
        l.d(buttonGallery, "buttonGallery");
        C19286f.m13683U(buttonGallery, z);
        View buttonVideo = getButtonVideo();
        l.d(buttonVideo, "buttonVideo");
        C19286f.m13683U(buttonVideo, z2);
        View buttonDocument = getButtonDocument();
        l.d(buttonDocument, "buttonDocument");
        C19286f.m13683U(buttonDocument, z3);
    }

    @Override // p193e.p194a.p195a.p200c.p213l8.AbstractC5489c
    /* renamed from: X */
    public void mo33014X() {
        C5511r c5511r = this.f13067x;
        if (c5511r != null) {
            c5511r.notifyItemChanged(0);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p213l8.AbstractC5489c
    /* renamed from: Y */
    public void mo33013Y(AbstractC4171c abstractC4171c, AbstractC4170b abstractC4170b) {
        l.e(abstractC4171c, "fileCallback");
        l.e(abstractC4170b, "cameraCallback");
        this.f13054k = abstractC4171c;
        this.f13055l = abstractC4170b;
    }

    @Override // p193e.p194a.p195a.p200c.p213l8.AbstractC5489c
    /* renamed from: Y2 */
    public void mo33012Y2() {
        m35109c();
    }

    /* renamed from: c */
    public final void m35109c() {
        this.f13053j.clear();
        if (this.f13064u) {
            this.f13053j.add(C5490d.f18642a);
        }
        if (!this.f13064u && !this.f13065v) {
            this.f13053j.add(C5505n.f18664a);
            C5511r c5511r = this.f13067x;
            if (c5511r == null) {
                return;
            }
            c5511r.notifyDataSetChanged();
            return;
        }
        AbstractC4171c abstractC4171c = this.f13054k;
        if (abstractC4171c == null) {
            l.l("fileCallback");
            throw null;
        } else if (!abstractC4171c.mo33317h4()) {
            this.f13053j.add(C5501k.f18656a);
            C5511r c5511r2 = this.f13067x;
            if (c5511r2 == null) {
                return;
            }
            c5511r2.notifyDataSetChanged();
        } else {
            AbstractC19854f<AbstractC5498i> abstractC19854f = this.f13056m;
            if (abstractC19854f == null) {
                l.l("galleryItemsLoader");
                throw null;
            }
            AbstractC19891x<ArrayList<C5494g>> mo33009a = abstractC19854f.mo11854a().mo33009a(50, this.f13064u, this.f13065v);
            AbstractC19868j abstractC19868j = this.f13057n;
            if (abstractC19868j != null) {
                mo33009a.mo11830e(abstractC19868j, new C4173e());
            } else {
                l.l("uiThread");
                throw null;
            }
        }
    }

    /* renamed from: d */
    public final void m35108d() {
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        context.getContentResolver().registerContentObserver(MediaStore.Files.getContentUri("external"), true, this.f13068y);
    }

    @Override // p193e.p194a.p195a.p200c.p213l8.AbstractC5489c
    /* renamed from: e */
    public void mo33011e() {
        C19286f.m13683U(this, false);
        C26109c c26109c = this.f13066w;
        if (c26109c != null) {
            c26109c.m2708c();
        }
        this.f13066w = null;
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        context.getContentResolver().unregisterContentObserver(this.f13068y);
    }

    @Override // p193e.p194a.p195a.p200c.p213l8.AbstractC5489c
    public boolean isVisible() {
        return getVisibility() == 0;
    }

    @Override // p193e.p194a.p195a.p200c.p213l8.AbstractC5489c
    public void onPause() {
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        context.getContentResolver().unregisterContentObserver(this.f13068y);
    }

    @Override // p193e.p194a.p195a.p200c.p213l8.AbstractC5489c
    public void onResume() {
        if (isVisible()) {
            m35108d();
        }
    }

    @Override // p193e.p194a.p195a.p200c.p213l8.AbstractC5489c
    public void setContactVisible(boolean z) {
        View buttonContact = getButtonContact();
        l.d(buttonContact, "buttonContact");
        C19286f.m13683U(buttonContact, z);
    }

    @Override // p193e.p194a.p195a.p200c.p213l8.AbstractC5489c
    public void setFlashVisible(boolean z) {
        View buttonFlash = getButtonFlash();
        l.d(buttonFlash, "buttonFlash");
        C19286f.m13683U(buttonFlash, z);
    }

    @Override // p193e.p194a.p195a.p200c.p213l8.AbstractC5489c
    public void setGalleryItemsLoader(AbstractC19854f<AbstractC5498i> abstractC19854f) {
        l.e(abstractC19854f, "galleryItemsLoader");
        this.f13056m = abstractC19854f;
    }

    @Override // p193e.p194a.p195a.p200c.p213l8.AbstractC5489c
    public void setLocationVisible(boolean z) {
        View buttonLocation = getButtonLocation();
        l.d(buttonLocation, "buttonLocation");
        C19286f.m13683U(buttonLocation, z);
    }

    @Override // p193e.p194a.p195a.p200c.p213l8.AbstractC5489c
    public void setUiThread(AbstractC19868j abstractC19868j) {
        l.e(abstractC19868j, "uiThread");
        this.f13057n = abstractC19868j;
    }

    @Override // p193e.p194a.p195a.p200c.p213l8.AbstractC5489c
    public void show() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = getVisibleChildrenCount() <= 4 ? 17 : 16;
        LinearLayout pickerButtons = getPickerButtons();
        l.d(pickerButtons, "pickerButtons");
        pickerButtons.setLayoutParams(layoutParams);
        int visibleChildrenCount = getVisibleChildrenCount();
        LinearLayout pickerButtons2 = getPickerButtons();
        l.d(pickerButtons2, "pickerButtons");
        if (visibleChildrenCount == pickerButtons2.getChildCount()) {
            View buttonLocation = getButtonLocation();
            int i = this.f13062s;
            int i2 = this.f13063t;
            buttonLocation.setPaddingRelative(i, i2, i, i2);
            View buttonContact = getButtonContact();
            int i3 = this.f13062s;
            int i4 = this.f13063t;
            buttonContact.setPaddingRelative(i3, i4, i3, i4);
            View buttonFlash = getButtonFlash();
            int i5 = this.f13062s;
            int i6 = this.f13063t;
            buttonFlash.setPaddingRelative(i5, i6, i5, i6);
            View buttonGallery = getButtonGallery();
            int i7 = this.f13062s;
            int i8 = this.f13063t;
            buttonGallery.setPaddingRelative(i7, i8, i7, i8);
            View buttonVideo = getButtonVideo();
            int i9 = this.f13062s;
            int i10 = this.f13063t;
            buttonVideo.setPaddingRelative(i9, i10, i9, i10);
            View buttonDocument = getButtonDocument();
            int i11 = this.f13062s;
            int i12 = this.f13063t;
            buttonDocument.setPaddingRelative(i11, i12, i11, i12);
        }
        C19286f.m13684T(this);
        ArrayList<Object> arrayList = this.f13053j;
        AbstractC4170b abstractC4170b = this.f13055l;
        if (abstractC4170b == null) {
            l.l("cameraCallback");
            throw null;
        }
        AbstractC4171c abstractC4171c = this.f13054k;
        if (abstractC4171c == null) {
            l.l("fileCallback");
            throw null;
        }
        C25898c1 m2916a = new C25898c1.C25900b().m2916a();
        l.d(m2916a, "Preview.Builder().build()");
        ListenableFuture<C26109c> m2709b = C26109c.m2709b(getContext());
        l.d(m2709b, "ProcessCameraProvider.getInstance(context)");
        ((C26031e) m2709b).f72694a.addListener(new RunnableC5487a(this, m2709b, m2916a), C26467a.m1797e(getContext()));
        this.f13067x = new C5511r(arrayList, abstractC4170b, abstractC4171c, m2916a, this.f13064u);
        RecyclerView recyclerViewPreview = getRecyclerViewPreview();
        l.d(recyclerViewPreview, "recyclerViewPreview");
        recyclerViewPreview.setAdapter(this.f13067x);
        getRecyclerViewPreview().addOnScrollListener(new C4174f());
        m35109c();
        m35108d();
    }
}
