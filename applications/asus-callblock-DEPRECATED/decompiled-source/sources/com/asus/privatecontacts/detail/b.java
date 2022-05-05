package com.asus.privatecontacts.detail;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.privatecontacts.a.f;
import com.asus.privatecontacts.b.d;
import com.asus.privatecontacts.e;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/detail/b.class */
public class b {
    Activity c;
    f d;
    View e;
    ImageView f;
    ImageView g;
    ImageView h;
    View.OnClickListener i = new View.OnClickListener() { // from class: com.asus.privatecontacts.detail.b.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (b.this.d != null && b.this.d.f2998a != null) {
                if (b.this.c instanceof e) {
                    ((e) b.this.c).setStayPrivate(true);
                }
                String a2 = d.a(b.this.c, b.this.d);
                long longValue = b.this.d.f2998a.getAsLong("_id").longValue();
                Intent intent = new Intent(view.getContext(), ContactDetailCallogActivity.class);
                Bundle bundle = new Bundle();
                bundle.putString(ContactDetailCallogActivity.EXTRA_NAME, a2);
                bundle.putLong(ContactDetailCallogActivity.EXTRA_CONTACT_ID, longValue);
                bundle.putBoolean(ContactDetailCallogActivity.EXTRA_CONTACT, true);
                intent.putExtras(bundle);
                ImplicitIntentsUtil.startActivityInApp(b.this.c, intent);
            }
        }
    };
    private boolean k;
    private TextView l;
    private TextView m;
    private RelativeLayout n;
    private LinearLayout o;

    /* renamed from: a  reason: collision with root package name */
    public static final String f3022a = b.class.getSimpleName();
    private static int j = 0;

    /* renamed from: b  reason: collision with root package name */
    static int f3023b = 2;

    public b(Activity activity, View view) {
        this.c = activity;
        this.k = PhoneCapabilityTester.isPhone(this.c);
        this.e = view;
        this.l = (TextView) view.findViewById(2131296576);
        this.m = (TextView) view.findViewById(2131297140);
        this.f = (ImageView) view.findViewById(2131296580);
        this.g = (ImageView) view.findViewById(2131297153);
        this.n = (RelativeLayout) view.findViewById(2131296269);
        this.h = (ImageView) view.findViewById(2131296547);
        this.o = (LinearLayout) view.findViewById(2131296667);
        if (!this.k) {
            this.h.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.o.getLayoutParams();
            layoutParams.addRule(11);
            this.o.setLayoutParams(layoutParams);
        }
        this.e.setVisibility(4);
    }

    public final void a(float f) {
        this.e.setY(f);
    }
}
