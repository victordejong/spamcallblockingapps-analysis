package com.truecaller.contactfeedback.presentation.addcomment;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import com.razorpay.AnalyticsConstants;
import com.truecaller.contactfeedback.C3744R;
import com.truecaller.contactfeedback.p157db.NumberAndType;
import com.truecaller.contactfeedback.p157db.PhoneNumberType;
import com.truecaller.contactfeedback.presentation.addcomment.model.AddCommentRequest;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1138q.p1139a.p1140b.AbstractC19371h;
import p193e.p194a.p1138q.p1139a.p1140b.C19358a;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\t\u0010\bR\u001d\u0010\u000f\u001a\u00020\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/truecaller/contactfeedback/presentation/addcomment/AddCommentActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onStart", "()V", "onPause", "Landroid/graphics/drawable/ColorDrawable;", "d", "Ls1/g;", "getWindowBackgroundColor", "()Landroid/graphics/drawable/ColorDrawable;", "windowBackgroundColor", "<init>", "contact-feedback_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes4-dex2jar.jar:com/truecaller/contactfeedback/presentation/addcomment/AddCommentActivity.class */
public final class AddCommentActivity extends AbstractC19371h {

    /* renamed from: d */
    public final g f11341d = C25225a.m3978P1(new C3754a());

    /* renamed from: com.truecaller.contactfeedback.presentation.addcomment.AddCommentActivity$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/contactfeedback/presentation/addcomment/AddCommentActivity$a.class */
    public static final class C3754a extends m implements a<ColorDrawable> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3754a() {
            super(0);
            AddCommentActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [android.content.Context, com.truecaller.contactfeedback.presentation.addcomment.AddCommentActivity] */
        public Object invoke() {
            ?? r0 = AddCommentActivity.this;
            int i = C3744R.color.color_bottom_sheet_background;
            Object obj = C26467a.f74235a;
            return new ColorDrawable(C26467a.C26471d.m1787a(r0, i));
        }
    }

    /* renamed from: pa */
    public static final void m35610pa(Context context, Contact contact) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(contact, "spammer");
        Intent putExtra = new Intent(context, AddCommentActivity.class).putExtra("spammer", contact);
        l.d(putExtra, "Intent(context, AddComme…tra(KEY_SPAMMER, spammer)");
        context.startActivity(putExtra);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        AddCommentActivity.super.onCreate(bundle);
        Resources.Theme theme = getTheme();
        l.d(theme, "theme");
        C17422k.m16065n(theme, false, 1);
        getWindow().setBackgroundDrawable((ColorDrawable) this.f11341d.getValue());
        Parcelable parcelableExtra = getIntent().getParcelableExtra("spammer");
        if (parcelableExtra != null) {
            List<Number> m35557M = ((Contact) parcelableExtra).m35557M();
            l.d(m35557M, "contact.numbers");
            List<String> m15559x1 = C17891a1.C17902k.m15559x1(m35557M);
            ArrayList arrayList = new ArrayList(C25225a.m4004J(m15559x1, 10));
            Iterator it = ((ArrayList) m15559x1).iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                l.d(str, "it");
                arrayList.add(new NumberAndType(str, PhoneNumberType.UNKNOWN_NUMBER_TYPE));
            }
            AddCommentRequest addCommentRequest = new AddCommentRequest(arrayList);
            l.e(addCommentRequest, "request");
            C19358a c19358a = new C19358a();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("request", addCommentRequest);
            c19358a.setArguments(bundle2);
            c19358a.show(getSupportFragmentManager(), (String) null);
            return;
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onPause() {
        AddCommentActivity.super.onPause();
        overridePendingTransition(0, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onStart() {
        AddCommentActivity.super.onStart();
        overridePendingTransition(0, 0);
    }
}
