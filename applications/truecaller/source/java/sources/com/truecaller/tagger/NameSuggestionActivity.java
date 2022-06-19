package com.truecaller.tagger;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.log.AssertionUtil;
import java.util.Objects;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p798g5.AbstractC14469d;
import p193e.p194a.p798g5.AbstractView$OnClickListenerC14526l;
import p193e.p194a.p798g5.View$OnClickListenerC14517j;
import s1.z.c.l;
/* loaded from: classes14-dex2jar.jar:com/truecaller/tagger/NameSuggestionActivity.class */
public class NameSuggestionActivity extends AbstractC14469d {
    /* renamed from: ra */
    public static Intent m34625ra(Context context, Contact contact, String str) {
        Intent intent = new Intent(context, NameSuggestionActivity.class);
        intent.putExtra(AnalyticsConstants.CONTACT, contact);
        intent.putExtra("source", str);
        return intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p798g5.AbstractView$OnClickListenerC14526l
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C17422k.m16066m0(this, true);
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p798g5.AbstractView$OnClickListenerC14526l
    /* renamed from: qa */
    public AbstractView$OnClickListenerC14526l.AbstractC14530d mo20029qa() {
        Intent intent = getIntent();
        Contact contact = (Contact) intent.getParcelableExtra(AnalyticsConstants.CONTACT);
        AssertionUtil.OnlyInDebug.isTrue(contact != null, new String[0]);
        if (contact == null) {
            finish();
            return null;
        }
        String stringExtra = intent.getStringExtra("source");
        Objects.requireNonNull(View$OnClickListenerC14517j.f41782s);
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(stringExtra, "source");
        Bundle bundle = new Bundle();
        bundle.putParcelable(View$OnClickListenerC14517j.f41780q, contact);
        bundle.putString(View$OnClickListenerC14517j.f41781r, stringExtra);
        View$OnClickListenerC14517j view$OnClickListenerC14517j = new View$OnClickListenerC14517j();
        view$OnClickListenerC14517j.setArguments(bundle);
        return view$OnClickListenerC14517j;
    }
}
