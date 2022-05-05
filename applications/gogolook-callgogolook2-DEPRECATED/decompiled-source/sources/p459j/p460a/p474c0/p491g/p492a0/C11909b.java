package p459j.p460a.p474c0.p491g.p492a0;

import android.content.Context;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.core.text.BidiFormatter;
import androidx.core.text.TextDirectionHeuristicsCompat;
import com.gogolook.whoscallsdk.core.num.data.NumInfo;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import gogolook.callgogolook2.messaging.p078ui.ContactIconView;
import gogolook.callgogolook2.messaging.p078ui.contact.ContactListItemView;
import p081h.p093b.p099c.p100a.C5592d;
import p081h.p093b.p099c.p100a.C5607h;
import p081h.p160h.p179e.p180a.p187n.AbstractC6391b;
import p459j.p460a.p474c0.p475c.p478y.C11593a;
import p459j.p460a.p474c0.p499h.C12145c;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12155e;
import p459j.p460a.p474c0.p499h.C12177j0;
import p459j.p460a.p474c0.p499h.C12195p;
/* renamed from: j.a.c0.g.a0.b */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/a0/b.class */
public class C11909b extends C5592d {

    /* renamed from: f */
    public final ContactListItemView.AbstractC4717a f26698f = new C11910a(this);

    /* renamed from: g */
    public final int f26699g;

    /* renamed from: j.a.c0.g.a0.b$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/a0/b$a.class */
    public class C11910a implements ContactListItemView.AbstractC4717a {
        public C11910a(C11909b bVar) {
        }

        @Override // gogolook.callgogolook2.messaging.p078ui.contact.ContactListItemView.AbstractC4717a
        /* renamed from: a */
        public void mo7938a(C11593a aVar, ContactListItemView contactListItemView) {
        }

        @Override // gogolook.callgogolook2.messaging.p078ui.contact.ContactListItemView.AbstractC4717a
        /* renamed from: a */
        public boolean mo7939a(C11593a aVar) {
            return false;
        }
    }

    /* renamed from: j.a.c0.g.a0.b$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/a0/b$b.class */
    public class C11911b extends AbstractC6391b {

        /* renamed from: a */
        public final /* synthetic */ C5607h f26700a;

        /* renamed from: b */
        public final /* synthetic */ C5592d.C5597e f26701b;

        /* renamed from: c */
        public final /* synthetic */ C5592d.EnumC5595c f26702c;

        public C11911b(C5607h hVar, C5592d.C5597e eVar, C5592d.EnumC5595c cVar) {
            this.f26700a = hVar;
            this.f26701b = eVar;
            this.f26702c = cVar;
        }

        @Override // p081h.p160h.p179e.p180a.p187n.AbstractC6391b
        /* renamed from: a */
        public void mo7788a() {
        }

        @Override // p081h.p160h.p179e.p180a.p187n.AbstractC6391b
        /* renamed from: a */
        public void mo4669a(int i) {
            String str = "onError:" + i;
        }

        @Override // p081h.p160h.p179e.p180a.p187n.AbstractC6391b
        /* renamed from: a */
        public void mo4668a(int i, @Nullable NumInfo numInfo) throws Exception {
            if (numInfo != null) {
                int i2 = C12145c.m7025a() ? R$drawable.meta_noinfo : R$drawable.meta_nointernet;
                if (C12177j0.m6915a(numInfo) == 2) {
                    i2 = TextUtils.equals("bank", numInfo.bizcate) ? R$drawable.meta_financial : R$drawable.meta_yp;
                }
                C11909b.this.m7947a(true, Uri.parse("android.resource://gogolook.callgogolook2.messaging/" + i2), this.f26700a, this.f26701b, this.f26702c);
                if (!TextUtils.isEmpty(this.f26700a.m25023g())) {
                    C11909b.this.m25069a(this.f26700a.m25023g(), this.f26701b.f13986a);
                    C11909b.this.m25069a(this.f26700a.m25027c(), this.f26701b.f13987b);
                } else if (numInfo == null || TextUtils.isEmpty(numInfo.name)) {
                    C11909b.this.m25069a(this.f26700a.m25027c(), this.f26701b.f13986a);
                    C11909b.this.m25069a((CharSequence) null, this.f26701b.f13987b);
                } else {
                    C11909b.this.m25069a(numInfo.name, this.f26701b.f13986a);
                    C11909b.this.m25069a(this.f26700a.m25027c(), this.f26701b.f13987b);
                }
                if (this.f26701b.f13987b.getVisibility() == 8) {
                    this.f26701b.f13986a.setPadding(0, 24, 0, 0);
                } else {
                    this.f26701b.f13986a.setPadding(0, 0, 0, 0);
                }
            }
        }

        @Override // p081h.p160h.p179e.p180a.p187n.AbstractC6391b
        /* renamed from: b */
        public void mo7787b() {
        }
    }

    /* renamed from: j.a.c0.g.a0.b$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/a0/b$c.class */
    public static /* synthetic */ class C11912c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f26704a = new int[C5592d.EnumC5595c.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                f26704a[C5592d.EnumC5595c.BASE_RECIPIENT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f26704a[C5592d.EnumC5595c.RECIPIENT_ALTERNATES.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public C11909b(LayoutInflater layoutInflater, Context context, ContactListItemView.AbstractC4717a aVar) {
        super(layoutInflater, context);
        this.f26699g = context.getResources().getDimensionPixelSize(R$dimen.app_contact_picker_popup_single_line_padding_top);
    }

    @Override // p081h.p093b.p099c.p100a.C5592d
    /* renamed from: a */
    public int mo7951a(C5592d.EnumC5595c cVar) {
        return mo7945b(cVar);
    }

    @Override // p081h.p093b.p099c.p100a.C5592d
    /* renamed from: a */
    public View mo7952a(View view, ViewGroup viewGroup, C5607h hVar, int i, C5592d.EnumC5595c cVar, String str, StateListDrawable stateListDrawable) {
        if (cVar != C5592d.EnumC5595c.BASE_RECIPIENT) {
            C5592d.EnumC5595c cVar2 = cVar;
            if (cVar == C5592d.EnumC5595c.SINGLE_RECIPIENT) {
                cVar2 = C5592d.EnumC5595c.RECIPIENT_ALTERNATES;
            }
            return super.mo7952a(view, viewGroup, hVar, i, cVar2, str, stateListDrawable);
        }
        BidiFormatter instance = BidiFormatter.getInstance();
        String unicodeWrap = instance.unicodeWrap(C12195p.m6838b(hVar), TextDirectionHeuristicsCompat.LTR);
        String unicodeWrap2 = instance.unicodeWrap(C12195p.m6841a(hVar), TextDirectionHeuristicsCompat.LTR);
        View a = m25075a(view, viewGroup, cVar);
        CharSequence[] a2 = m25067a(str, unicodeWrap, unicodeWrap2);
        C12151d.m6999b(a instanceof ContactListItemView);
        ContactListItemView contactListItemView = (ContactListItemView) a;
        contactListItemView.m27272a(true);
        contactListItemView.m27273a(hVar, a2[0], a2[1], this.f26698f, cVar == C5592d.EnumC5595c.SINGLE_RECIPIENT);
        return a;
    }

    /* renamed from: a */
    public final void m7950a(C5607h hVar, C5592d.C5597e eVar, C5592d.EnumC5595c cVar) {
        if (!TextUtils.isEmpty(hVar.m25027c())) {
            String str = hVar.m25027c().toString();
            NumInfo a = C12145c.m7023a(str);
            int i = R$drawable.meta_noinfo;
            if (a != null) {
                if (!C12145c.m7025a()) {
                    i = R$drawable.meta_nointernet;
                }
                if (C12177j0.m6915a(a) == 2) {
                    i = TextUtils.equals("bank", a.bizcate) ? R$drawable.meta_financial : R$drawable.meta_yp;
                }
                m7947a(true, Uri.parse("android.resource://gogolook.callgogolook2.messaging/" + i), hVar, eVar, cVar);
                if (!TextUtils.isEmpty(hVar.m25023g())) {
                    m25069a(hVar.m25023g(), eVar.f13986a);
                    m25069a(hVar.m25027c(), eVar.f13987b);
                } else if (a == null || TextUtils.isEmpty(a.name)) {
                    m25069a(hVar.m25027c(), eVar.f13986a);
                    m25069a((CharSequence) null, eVar.f13987b);
                } else {
                    m25069a(a.name, eVar.f13986a);
                    m25069a(hVar.m25027c(), eVar.f13987b);
                }
                if (eVar.f13987b.getVisibility() == 8) {
                    eVar.f13986a.setPadding(0, this.f26699g, 0, 0);
                } else {
                    eVar.f13986a.setPadding(0, 0, 0, 0);
                }
            } else {
                if (!C12145c.m7025a()) {
                    i = R$drawable.meta_nointernet;
                }
                m7947a(true, Uri.parse("android.resource://gogolook.callgogolook2.messaging/" + i), hVar, eVar, cVar);
                if (TextUtils.isEmpty(hVar.m25023g())) {
                    m25069a(hVar.m25027c(), eVar.f13986a);
                    m25069a((CharSequence) null, eVar.f13987b);
                } else {
                    m25069a(hVar.m25023g(), eVar.f13986a);
                    m25069a(hVar.m25027c(), eVar.f13987b);
                }
                if (eVar.f13987b.getVisibility() == 8) {
                    eVar.f13986a.setPadding(0, this.f26699g, 0, 0);
                } else {
                    eVar.f13986a.setPadding(0, 0, 0, 0);
                }
                C12145c.m7022a(str, new C11911b(hVar, eVar, cVar));
            }
        }
    }

    /* renamed from: a */
    public final void m7947a(boolean z, Uri uri, C5607h hVar, C5592d.C5597e eVar, C5592d.EnumC5595c cVar) {
        if (z) {
            ImageView imageView = eVar.f13989d;
            if (imageView instanceof ContactIconView) {
                ((ContactIconView) imageView).m27373a(uri);
                return;
            }
        }
        super.mo7946a(z, hVar, eVar, cVar);
    }

    @Override // p081h.p093b.p099c.p100a.C5592d
    /* renamed from: a */
    public void mo7946a(boolean z, C5607h hVar, C5592d.C5597e eVar, C5592d.EnumC5595c cVar) {
        if (z) {
            ImageView imageView = eVar.f13989d;
            if (imageView instanceof ContactIconView) {
                ContactIconView contactIconView = (ContactIconView) imageView;
                contactIconView.m27371a(true);
                contactIconView.m27373a(C12155e.m6975a(ParticipantData.m27540a(hVar)));
                if (hVar.m25039a() <= 0 && z) {
                    m7950a(hVar, eVar, cVar);
                    return;
                }
                return;
            }
        }
        super.mo7946a(z, hVar, eVar, cVar);
    }

    @Override // p081h.p093b.p099c.p100a.C5592d
    /* renamed from: b */
    public int mo7945b(C5592d.EnumC5595c cVar) {
        int i = C11912c.f26704a[cVar.ordinal()];
        if (i == 1) {
            return R$layout.contact_list_item_view;
        }
        if (i != 2) {
        }
        return R$layout.chips_alternates_dropdown_item;
    }
}
