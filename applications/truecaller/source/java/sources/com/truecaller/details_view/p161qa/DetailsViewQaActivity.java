package com.truecaller.details_view.p161qa;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.widget.SwitchCompat;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.data.entity.Address;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Link;
import com.truecaller.data.entity.Note;
import com.truecaller.data.entity.Number;
import com.truecaller.data.entity.SearchWarning;
import com.truecaller.data.entity.Tag;
import com.truecaller.details_view.DetailsViewActivity;
import com.truecaller.details_view.analytics.SourceType;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import n3.b.a.h;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1275v.p1306m.C20915a;
import q3.a.h1;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.c0.c;
import s1.g;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\bb\u0010cJ\u0013\u0010\u0003\u001a\u00020\u0002*\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tR%\u0010\u000e\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0014\u001a\u00020\u00108B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\r\u001a\u0004\b\u0012\u0010\u0013R%\u0010\u0017\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\r\u001a\u0004\b\u0016\u0010\u000fR%\u0010\u001a\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\r\u001a\u0004\b\u0019\u0010\u000fR%\u0010\u001c\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\r\u001a\u0004\b\u001c\u0010\u000fR%\u0010\u001f\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\r\u001a\u0004\b\u001e\u0010\u000fR%\u0010\"\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\r\u001a\u0004\b!\u0010\u000fR%\u0010%\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\r\u001a\u0004\b$\u0010\u000fR%\u0010(\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\r\u001a\u0004\b'\u0010\u000fR%\u0010+\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010\r\u001a\u0004\b*\u0010\u000fR\u001d\u00100\u001a\u00020,8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010\r\u001a\u0004\b.\u0010/R%\u00103\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u0010\r\u001a\u0004\b2\u0010\u000fR%\u00106\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u0010\r\u001a\u0004\b5\u0010\u000fR%\u00108\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u0010\r\u001a\u0004\b8\u0010\u000fR%\u0010:\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010\r\u001a\u0004\b:\u0010\u000fR%\u0010=\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b;\u0010\r\u001a\u0004\b<\u0010\u000fR%\u0010@\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b>\u0010\r\u001a\u0004\b?\u0010\u000fR\u0016\u0010C\u001a\u00020\u00028\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\bA\u0010BR%\u0010F\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bD\u0010\r\u001a\u0004\bE\u0010\u000fR%\u0010H\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bG\u0010\r\u001a\u0004\bH\u0010\u000fR%\u0010K\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bI\u0010\r\u001a\u0004\bJ\u0010\u000fR%\u0010M\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bL\u0010\r\u001a\u0004\bM\u0010\u000fR%\u0010P\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bN\u0010\r\u001a\u0004\bO\u0010\u000fR%\u0010S\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bQ\u0010\r\u001a\u0004\bR\u0010\u000fR%\u0010U\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bT\u0010\r\u001a\u0004\bU\u0010\u000fR%\u0010W\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bV\u0010\r\u001a\u0004\bW\u0010\u000fR%\u0010Y\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bX\u0010\r\u001a\u0004\bY\u0010\u000fR%\u0010^\u001a\n \u000b*\u0004\u0018\u00010Z0Z8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b[\u0010\r\u001a\u0004\b\\\u0010]R%\u0010a\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b_\u0010\r\u001a\u0004\b`\u0010\u000f¨\u0006d"}, d2 = {"Lcom/truecaller/details_view/qa/DetailsViewQaActivity;", "Ln3/b/a/h;", "", "pa", "(Ljava/lang/String;)Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroidx/appcompat/widget/SwitchCompat;", "kotlin.jvm.PlatformType", "u", "Ls1/g;", "isPhonebookContact", "()Landroidx/appcompat/widget/SwitchCompat;", "Le/a/j2;", "a", "getTrueGraph", "()Le/a/j2;", "trueGraph", "q", "getHasTransliteratedNameSwitch", "hasTransliteratedNameSwitch", "C", "getUseLongText", "useLongText", "z", "isVerifiedSwitch", "m", "getHasSearchWarningsMessage", "hasSearchWarningsMessage", "k", "getHasNotesSwitch", "hasNotesSwitch", "l", "getHasSearchWarnings", "hasSearchWarnings", "d", "getHasAboutSwitch", "hasAboutSwitch", "i", "getHasJobSwitch", "hasJobSwitch", "Le/a/p5/c;", AbstractC2405c.f7629a, "getClock", "()Le/a/p5/c;", "clock", "j", "getHasNameSwitch", "hasNameSwitch", "n", "getHasSpamCategorySwitch", "hasSpamCategorySwitch", "v", "isPremiumSwitch", "y", "isVerifiedBusinessSwitch", "B", "getShowTimezone", "showTimezone", "g", "getHasAvatarSwitch", "hasAvatarSwitch", C22021b.f61237c, "Ljava/lang/String;", "phoneNumber", "p", "getHasTagSwitch", "hasTagSwitch", "t", "isGoldSwitch", "h", "getHasEmailSwitch", "hasEmailSwitch", "x", "isSpamSwitch", "f", "getHasAltNameSwitch", "hasAltNameSwitch", "o", "getHasSpamReportsSwitch", "hasSpamReportsSwitch", "r", "isBusinessSwitch", "s", "isCredPrivilegeSwitch", "w", "isPrioritySwitch", "Landroid/widget/Button;", "A", "getOpenDetailsView", "()Landroid/widget/Button;", "openDetailsView", "e", "getHasAddressSwitch", "hasAddressSwitch", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.details_view.qa.DetailsViewQaActivity */
/* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/qa/DetailsViewQaActivity.class */
public final class DetailsViewQaActivity extends h {

    /* renamed from: a */
    public final g f11694a = C25225a.m3978P1(new C3865c());

    /* renamed from: b */
    public final String f11695b = "+46735358210";

    /* renamed from: c */
    public final g f11696c = C25225a.m3978P1(new C3863a());

    /* renamed from: d */
    public final g f11697d = C19286f.m13662q(this, C2752R.C2754id.hasAboutSwitch);

    /* renamed from: e */
    public final g f11698e = C19286f.m13662q(this, C2752R.C2754id.hasAddressSwitch);

    /* renamed from: f */
    public final g f11699f = C19286f.m13662q(this, C2752R.C2754id.hasAltNameSwitch);

    /* renamed from: g */
    public final g f11700g = C19286f.m13662q(this, C2752R.C2754id.hasAvatarSwitch);

    /* renamed from: h */
    public final g f11701h = C19286f.m13662q(this, C2752R.C2754id.hasEmailSwitch);

    /* renamed from: i */
    public final g f11702i = C19286f.m13662q(this, C2752R.C2754id.hasJobSwitch);

    /* renamed from: j */
    public final g f11703j = C19286f.m13662q(this, C2752R.C2754id.hasNameSwitch);

    /* renamed from: k */
    public final g f11704k = C19286f.m13662q(this, C2752R.C2754id.hasNotesSwitch);

    /* renamed from: l */
    public final g f11705l = C19286f.m13662q(this, C2752R.C2754id.hasSearchWarnings);

    /* renamed from: m */
    public final g f11706m = C19286f.m13662q(this, C2752R.C2754id.hasSearchWarningsMessage);

    /* renamed from: n */
    public final g f11707n = C19286f.m13662q(this, C2752R.C2754id.hasSpamCategorySwitch);

    /* renamed from: o */
    public final g f11708o = C19286f.m13662q(this, C2752R.C2754id.hasSpamReportsSwitch);

    /* renamed from: p */
    public final g f11709p = C19286f.m13662q(this, C2752R.C2754id.hasTagSwitch);

    /* renamed from: q */
    public final g f11710q = C19286f.m13662q(this, C2752R.C2754id.hasTransliteratedNameSwitch);

    /* renamed from: r */
    public final g f11711r = C19286f.m13662q(this, C2752R.C2754id.isBusinessSwitch);

    /* renamed from: s */
    public final g f11712s = C19286f.m13662q(this, C2752R.C2754id.isCredPrivilegeSwitch);

    /* renamed from: t */
    public final g f11713t = C19286f.m13662q(this, C2752R.C2754id.isGoldSwitch);

    /* renamed from: u */
    public final g f11714u = C19286f.m13662q(this, C2752R.C2754id.isPhonebookContact);

    /* renamed from: v */
    public final g f11715v = C19286f.m13662q(this, C2752R.C2754id.isPremiumSwitch);

    /* renamed from: w */
    public final g f11716w = C19286f.m13662q(this, C2752R.C2754id.isPrioritySwitch);

    /* renamed from: x */
    public final g f11717x = C19286f.m13662q(this, C2752R.C2754id.isSpamSwitch);

    /* renamed from: y */
    public final g f11718y = C19286f.m13662q(this, C2752R.C2754id.isVerifiedBusinessSwitch);

    /* renamed from: z */
    public final g f11719z = C19286f.m13662q(this, C2752R.C2754id.isVerifiedSwitch);

    /* renamed from: A */
    public final g f11691A = C19286f.m13662q(this, C2752R.C2754id.openDetailsView);

    /* renamed from: B */
    public final g f11692B = C19286f.m13662q(this, C2752R.C2754id.showTimezone);

    /* renamed from: C */
    public final g f11693C = C19286f.m13662q(this, C2752R.C2754id.useLongText);

    /* renamed from: com.truecaller.details_view.qa.DetailsViewQaActivity$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/qa/DetailsViewQaActivity$a.class */
    public static final class C3863a extends m implements a<AbstractC19222c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3863a() {
            super(0);
            DetailsViewQaActivity.this = r4;
        }

        public Object invoke() {
            AbstractC19222c mo11637k = ((AbstractC15539j2) DetailsViewQaActivity.this.f11694a.getValue()).mo11637k();
            l.d(mo11637k, "trueGraph.clock()");
            return mo11637k;
        }
    }

    /* renamed from: com.truecaller.details_view.qa.DetailsViewQaActivity$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/qa/DetailsViewQaActivity$b.class */
    public static final class View$OnClickListenerC3864b implements View.OnClickListener {
        public View$OnClickListenerC3864b() {
            DetailsViewQaActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v10, types: [android.content.Context, com.truecaller.details_view.qa.DetailsViewQaActivity, java.lang.Object, android.app.Activity] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DetailsViewQaActivity detailsViewQaActivity = DetailsViewQaActivity.this;
            SwitchCompat switchCompat = (SwitchCompat) detailsViewQaActivity.f11705l.getValue();
            l.d(switchCompat, "hasSearchWarnings");
            if (switchCompat.isChecked()) {
                d.w2(h1.a, (f) null, (j0) null, new C20915a(detailsViewQaActivity, null), 3, (Object) null);
            }
            ?? r0 = DetailsViewQaActivity.this;
            Objects.requireNonNull(r0);
            Contact contact = new Contact();
            contact.setTcId("12345");
            SwitchCompat switchCompat2 = (SwitchCompat) r0.f11703j.getValue();
            l.d(switchCompat2, "hasNameSwitch");
            if (switchCompat2.isChecked()) {
                contact.m35546S0(r0.m35438pa("Alan Mamedi"));
            }
            SwitchCompat switchCompat3 = (SwitchCompat) r0.f11699f.getValue();
            l.d(switchCompat3, "hasAltNameSwitch");
            if (switchCompat3.isChecked()) {
                contact.m35558L0(r0.m35438pa("Bruce Wayne"));
            }
            SwitchCompat switchCompat4 = (SwitchCompat) r0.f11710q.getValue();
            l.d(switchCompat4, "hasTransliteratedNameSwitch");
            if (switchCompat4.isChecked()) {
                contact.m35558L0(r0.m35438pa("Transliterated Name"));
            }
            SwitchCompat switchCompat5 = (SwitchCompat) r0.f11698e.getValue();
            l.d(switchCompat5, "hasAddressSwitch");
            if (switchCompat5.isChecked()) {
                Address address = new Address();
                address.setCity(r0.m35438pa("Stockholm"));
                address.setCountryCode("SE");
                contact.m35531b(address);
            }
            SwitchCompat switchCompat6 = (SwitchCompat) r0.f11692B.getValue();
            l.d(switchCompat6, "showTimezone");
            if (switchCompat6.isChecked()) {
                Address address2 = new Address();
                address2.setCity("India");
                address2.setCountryCode("IN");
                address2.setTimeZone("+05:30");
                contact.m35531b(address2);
            }
            SwitchCompat switchCompat7 = (SwitchCompat) r0.f11700g.getValue();
            l.d(switchCompat7, "hasAvatarSwitch");
            if (switchCompat7.isChecked()) {
                ((ContactDto.Contact) contact.mRow).image = "https://storage.googleapis.com/tc-images-eu/myview/1/e9118ec2a5b4fdf1ab572ab98362bd74/3";
            }
            SwitchCompat switchCompat8 = (SwitchCompat) r0.f11709p.getValue();
            l.d(switchCompat8, "hasTagSwitch");
            if (switchCompat8.isChecked()) {
                Tag tag = new Tag();
                tag.setValue(String.valueOf(c.b.d(1, 12)));
                contact.m35517g(tag);
            }
            SwitchCompat switchCompat9 = (SwitchCompat) r0.f11717x.getValue();
            l.d(switchCompat9, "isSpamSwitch");
            if (switchCompat9.isChecked()) {
                ((ContactDto.Contact) contact.mRow).spamType = "SPAMMER";
            }
            SwitchCompat switchCompat10 = (SwitchCompat) r0.f11708o.getValue();
            l.d(switchCompat10, "hasSpamReportsSwitch");
            if (switchCompat10.isChecked()) {
                contact.m35535Z0(142);
            }
            SwitchCompat switchCompat11 = (SwitchCompat) r0.f11707n.getValue();
            l.d(switchCompat11, "hasSpamCategorySwitch");
            if (switchCompat11.isChecked()) {
                ((ContactDto.Contact) contact.mRow).spamCategoryIds = "1";
            }
            SwitchCompat switchCompat12 = (SwitchCompat) r0.f11716w.getValue();
            l.d(switchCompat12, "isPrioritySwitch");
            if (switchCompat12.isChecked()) {
                contact.f11523r += 16;
            }
            SwitchCompat switchCompat13 = (SwitchCompat) r0.f11719z.getValue();
            l.d(switchCompat13, "isVerifiedSwitch");
            if (switchCompat13.isChecked()) {
                contact.f11523r += 2;
            }
            SwitchCompat switchCompat14 = (SwitchCompat) r0.f11715v.getValue();
            l.d(switchCompat14, "isPremiumSwitch");
            if (switchCompat14.isChecked()) {
                contact.f11523r += 4;
            }
            SwitchCompat switchCompat15 = (SwitchCompat) r0.f11713t.getValue();
            l.d(switchCompat15, "isGoldSwitch");
            if (switchCompat15.isChecked()) {
                contact.f11523r += 32;
            }
            SwitchCompat switchCompat16 = (SwitchCompat) r0.f11711r.getValue();
            l.d(switchCompat16, "isBusinessSwitch");
            if (switchCompat16.isChecked()) {
                contact.f11523r += 64;
                contact.m35554N0(r0.m35438pa("True Software Scandinavia AB"));
            }
            SwitchCompat switchCompat17 = (SwitchCompat) r0.f11718y.getValue();
            l.d(switchCompat17, "isVerifiedBusinessSwitch");
            if (switchCompat17.isChecked()) {
                contact.f11523r += 128;
                contact.m35554N0(r0.m35438pa("True Software Scandinavia AB"));
            }
            SwitchCompat switchCompat18 = (SwitchCompat) r0.f11712s.getValue();
            l.d(switchCompat18, "isCredPrivilegeSwitch");
            if (switchCompat18.isChecked()) {
                contact.f11523r += 256;
            }
            SwitchCompat switchCompat19 = (SwitchCompat) r0.f11702i.getValue();
            l.d(switchCompat19, "hasJobSwitch");
            if (switchCompat19.isChecked()) {
                contact.m35554N0(r0.m35438pa("True Software Scandinavia AB"));
                contact.m35547R0(r0.m35438pa("CEO"));
            }
            SwitchCompat switchCompat20 = (SwitchCompat) r0.f11704k.getValue();
            l.d(switchCompat20, "hasNotesSwitch");
            if (switchCompat20.isChecked()) {
                Note note = new Note();
                note.setValue("My bestest friend in the whole wide world.");
                contact.f11525t = note;
            }
            SwitchCompat switchCompat21 = (SwitchCompat) r0.f11705l.getValue();
            l.d(switchCompat21, "hasSearchWarnings");
            if (switchCompat21.isChecked()) {
                SearchWarning searchWarning = new SearchWarning();
                searchWarning.setId("2147483647");
                contact.m35522e(searchWarning);
            }
            SwitchCompat switchCompat22 = (SwitchCompat) r0.f11714u.getValue();
            l.d(switchCompat22, "isPhonebookContact");
            if (switchCompat22.isChecked()) {
                contact.m35544T0(1L);
            }
            contact.setSource(1);
            contact.m35539X0(((AbstractC19222c) r0.f11696c.getValue()).mo13819c());
            contact.m35556M0(Long.valueOf(TimeUnit.DAYS.toMillis(30L)));
            String str = r0.f11695b;
            Number m35483a = Number.m35483a(str, str, "SE");
            if (m35483a != null) {
                m35483a.f11564a = 13;
            }
            if (m35483a == null) {
                m35483a = new Number();
            }
            contact.m35525d(m35483a);
            SwitchCompat switchCompat23 = (SwitchCompat) r0.f11697d.getValue();
            l.d(switchCompat23, "hasAboutSwitch");
            if (switchCompat23.isChecked()) {
                ((ContactDto.Contact) contact.mRow).about = "Hi! I’m a freelance designer always looking for work, check my portfolio on my website. Hope to hear from you!";
            }
            SwitchCompat switchCompat24 = (SwitchCompat) r0.f11701h.getValue();
            l.d(switchCompat24, "hasEmailSwitch");
            if (switchCompat24.isChecked()) {
                for (String str2 : C25225a.m3962T1("test@test.com")) {
                    if (!TextUtils.isEmpty(str2)) {
                        Link link = new Link();
                        link.setService(AnalyticsConstants.EMAIL);
                        link.setInfo(str2);
                        contact.m35528c(link);
                    }
                }
            }
            SourceType sourceType = SourceType.External;
            l.e((Object) r0, AnalyticsConstants.CONTEXT);
            l.e(contact, AnalyticsConstants.CONTACT);
            l.e(sourceType, "source");
            Intent intent = new Intent((Context) r0, DetailsViewActivity.class);
            intent.putExtra("ARG_CONTACT", contact);
            intent.putExtra("ARG_SOURCE_TYPE", sourceType.ordinal());
            intent.putExtra("SHOULD_SAVE", false);
            intent.putExtra("SHOULD_FETCH_MORE_IF_NEEDED", false);
            r0.startActivity(intent);
        }
    }

    /* renamed from: com.truecaller.details_view.qa.DetailsViewQaActivity$c */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/qa/DetailsViewQaActivity$c.class */
    public static final class C3865c extends m implements a<AbstractC15539j2> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3865c() {
            super(0);
            DetailsViewQaActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.details_view.qa.DetailsViewQaActivity, android.app.Activity] */
        public Object invoke() {
            Context applicationContext = DetailsViewQaActivity.this.getApplicationContext();
            Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
            return ((AbstractC21187w1) applicationContext).mo10154s();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        AbstractC19230g mo12512W = ((AbstractC15539j2) this.f11694a.getValue()).mo12512W();
        l.d(mo12512W, "trueGraph.deviceInfoHelper()");
        if (!mo12512W.mo13796a() && !mo12512W.mo13788i()) {
            finish();
        }
        C17422k.m16066m0(this, true);
        DetailsViewQaActivity.super.onCreate(bundle);
        setContentView((int) C2752R.layout.activity_details_view_qa);
        ((Button) this.f11691A.getValue()).setOnClickListener(new View$OnClickListenerC3864b());
    }

    /* renamed from: pa */
    public final String m35438pa(String str) {
        SwitchCompat switchCompat = (SwitchCompat) this.f11693C.getValue();
        l.d(switchCompat, "useLongText");
        if (switchCompat.isChecked()) {
            str = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, \n        |quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse \n        |cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est \n        |laborum.";
        }
        return str;
    }
}
