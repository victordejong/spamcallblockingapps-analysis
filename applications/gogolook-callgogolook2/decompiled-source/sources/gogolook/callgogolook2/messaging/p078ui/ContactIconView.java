package gogolook.callgogolook2.messaging.p078ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.flurry.sdk.C3496r;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$styleable;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11667n;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11669o;
import p459j.p460a.p474c0.p475c.p479z.C11643c;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12155e;
/* renamed from: gogolook.callgogolook2.messaging.ui.ContactIconView */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/ContactIconView.class */
public class ContactIconView extends AsyncImageView {

    /* renamed from: n */
    public final int f11472n;

    /* renamed from: o */
    public final int f11473o;

    public ContactIconView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Resources resources = context.getResources();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ContactIconView);
        int i = obtainStyledAttributes.getInt(0, 0);
        if (i == 0) {
            this.f11472n = (int) resources.getDimension(R$dimen.contact_icon_view_normal_size);
        } else if (i == 1) {
            this.f11472n = (int) resources.getDimension(R$dimen.contact_icon_view_large_size);
        } else if (i != 2) {
            this.f11472n = 0;
            C12151d.m7005a("Unsupported ContactIconView icon size attribute");
        } else {
            this.f11472n = (int) resources.getDimension(R$dimen.contact_icon_view_small_size);
        }
        this.f11473o = 0;
        m27444a((AbstractC11669o) null);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public void m27373a(Uri uri) {
        m27372a(uri, 0L, null, null);
    }

    /* renamed from: a */
    public void m27372a(Uri uri, long j, String str, String str2) {
        if (uri == null) {
            m27439b((AbstractC11667n) null);
            return;
        }
        String a = C12155e.m6978a(uri);
        if ("g".equals(a)) {
            setImageResource(R$drawable.ic_metaphor_group);
            return;
        }
        boolean z = "g".equals(a) || C3496r.f6031a.equals(a) || "l".equals(a) || "d".equals(a) || "b".equals(a) || "s".equals(a);
        int i = this.f11472n;
        m27439b(new C11643c(uri, i, i, z));
    }

    /* renamed from: a */
    public void m27371a(boolean z) {
        setOnClickListener(null);
        setClickable(false);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f11473o > 0) {
            if (motionEvent.getActionMasked() == 0) {
                setColorFilter(this.f11473o);
            } else {
                clearColorFilter();
            }
        }
        return super.onTouchEvent(motionEvent);
    }
}
