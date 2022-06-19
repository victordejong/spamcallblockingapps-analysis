package com.mglab.scm.intro;

import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import butterknife.Unbinder;
import p027c2.AbstractView$OnClickListenerC0814b;
import p027c2.C0815c;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/intro/Intro4_ViewBinding.class */
public class Intro4_ViewBinding implements Unbinder {

    /* renamed from: b */
    public Intro4 f7298b;

    /* renamed from: c */
    public View f7299c;

    /* renamed from: com.mglab.scm.intro.Intro4_ViewBinding$a */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/intro/Intro4_ViewBinding$a.class */
    public class C1984a extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ Intro4 f7300c;

        public C1984a(Intro4_ViewBinding intro4_ViewBinding, Intro4 intro4) {
            this.f7300c = intro4;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7300c.onRetryClick();
        }
    }

    public Intro4_ViewBinding(Intro4 intro4, View view) {
        this.f7298b = intro4;
        intro4.contacts = (ImageView) C0815c.m7348a(C0815c.m7347b(view, 2131296671, "field 'contacts'"), 2131296671, "field 'contacts'", ImageView.class);
        intro4.phone = (ImageView) C0815c.m7348a(C0815c.m7347b(view, 2131296678, "field 'phone'"), 2131296678, "field 'phone'", ImageView.class);
        intro4.pbCallLog = (ProgressBar) C0815c.m7348a(C0815c.m7347b(view, 2131296958, "field 'pbCallLog'"), 2131296958, "field 'pbCallLog'", ProgressBar.class);
        intro4.pbContacts = (ProgressBar) C0815c.m7348a(C0815c.m7347b(view, 2131296959, "field 'pbContacts'"), 2131296959, "field 'pbContacts'", ProgressBar.class);
        intro4.pbDb = (ProgressBar) C0815c.m7348a(C0815c.m7347b(view, 2131296960, "field 'pbDb'"), 2131296960, "field 'pbDb'", ProgressBar.class);
        intro4.copyContactsIV = (ImageView) C0815c.m7348a(C0815c.m7347b(view, 2131296673, "field 'copyContactsIV'"), 2131296673, "field 'copyContactsIV'", ImageView.class);
        intro4.copyCallLogIV = (ImageView) C0815c.m7348a(C0815c.m7347b(view, 2131296672, "field 'copyCallLogIV'"), 2131296672, "field 'copyCallLogIV'", ImageView.class);
        View m7347b = C0815c.m7347b(view, 2131296675, "field 'downloadDBIV' and method 'onRetryClick'");
        intro4.downloadDBIV = (ImageView) C0815c.m7348a(m7347b, 2131296675, "field 'downloadDBIV'", ImageView.class);
        this.f7299c = m7347b;
        m7347b.setOnClickListener(new C1984a(this, intro4));
        intro4.dbDownloadTextView = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131296517, "field 'dbDownloadTextView'"), 2131296517, "field 'dbDownloadTextView'", TextView.class);
        intro4.descriptionTV = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131296690, "field 'descriptionTV'"), 2131296690, "field 'descriptionTV'", TextView.class);
        intro4.waitTV = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297214, "field 'waitTV'"), 2131297214, "field 'waitTV'", TextView.class);
    }

    @Override // butterknife.Unbinder
    /* renamed from: a */
    public void mo3937a() {
        Intro4 intro4 = this.f7298b;
        if (intro4 != null) {
            this.f7298b = null;
            intro4.contacts = null;
            intro4.phone = null;
            intro4.pbCallLog = null;
            intro4.pbContacts = null;
            intro4.pbDb = null;
            intro4.copyContactsIV = null;
            intro4.copyCallLogIV = null;
            intro4.downloadDBIV = null;
            intro4.dbDownloadTextView = null;
            intro4.descriptionTV = null;
            intro4.waitTV = null;
            this.f7299c.setOnClickListener(null);
            this.f7299c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
