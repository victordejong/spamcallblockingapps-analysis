package com.libaray.gdpr;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import p131c.p394h.p395a.C6483c;
import p131c.p394h.p395a.DialogC6484d;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:com/libaray/gdpr/GdprSettingsItem.class */
public class GdprSettingsItem extends TextView {

    /* renamed from: com.libaray.gdpr.GdprSettingsItem$a */
    /* loaded from: classes2-dex2jar.jar:com/libaray/gdpr/GdprSettingsItem$a.class */
    public static final class View$OnClickListenerC8509a implements View.OnClickListener {
        public View$OnClickListenerC8509a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Activity a = C6483c.m20725a(GdprSettingsItem.this);
            if (a != null) {
                new DialogC6484d(a).show();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GdprSettingsItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C10059q.m1637b(context, "context");
        if (!GdprHelper.f33128i.m5344d()) {
            setVisibility(8);
        } else {
            setOnClickListener(new View$OnClickListenerC8509a());
        }
    }

    public /* synthetic */ GdprSettingsItem(Context context, AttributeSet attributeSet, int i, C10057o oVar) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }
}
