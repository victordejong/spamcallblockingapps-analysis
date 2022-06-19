package com.truecaller.contactfeedback.presentation;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import com.truecaller.contactfeedback.C3744R;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1138q.p1139a.AbstractC19385j;
import p193e.p194a.p1138q.p1139a.C19354a;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\t\u0010\bR\u001d\u0010\u000f\u001a\u00020\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/truecaller/contactfeedback/presentation/ContactFeedbackActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onStart", "()V", "onPause", "Landroid/graphics/drawable/ColorDrawable;", "d", "Ls1/g;", "getWindowBackgroundColor", "()Landroid/graphics/drawable/ColorDrawable;", "windowBackgroundColor", "<init>", "contact-feedback_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes4-dex2jar.jar:com/truecaller/contactfeedback/presentation/ContactFeedbackActivity.class */
public final class ContactFeedbackActivity extends AbstractC19385j {

    /* renamed from: d */
    public final g f11339d = C25225a.m3978P1(new C3753a());

    /* renamed from: com.truecaller.contactfeedback.presentation.ContactFeedbackActivity$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/contactfeedback/presentation/ContactFeedbackActivity$a.class */
    public static final class C3753a extends m implements a<ColorDrawable> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3753a() {
            super(0);
            ContactFeedbackActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [android.content.Context, com.truecaller.contactfeedback.presentation.ContactFeedbackActivity] */
        public Object invoke() {
            ?? r0 = ContactFeedbackActivity.this;
            int i = C3744R.color.color_background;
            Object obj = C26467a.f74235a;
            return new ColorDrawable(C26467a.C26471d.m1787a(r0, i));
        }
    }

    /* renamed from: pa */
    public static final Intent m35611pa(Context context, long j, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "analyticsContext");
        Intent intent = new Intent(context, ContactFeedbackActivity.class);
        intent.putExtra("aggregated_contact_id", j);
        intent.putExtra("analytics_context", str);
        return intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        ContactFeedbackActivity.super.onCreate(bundle);
        if (bundle != null) {
            return;
        }
        getWindow().setBackgroundDrawable((ColorDrawable) this.f11339d.getValue());
        new C19354a().show(getSupportFragmentManager(), "ContactFeedbackFragment");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onPause() {
        ContactFeedbackActivity.super.onPause();
        overridePendingTransition(0, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onStart() {
        ContactFeedbackActivity.super.onStart();
        overridePendingTransition(0, 0);
    }
}
