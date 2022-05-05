package com.android.contacts.dialpad;

import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.ezmode.h;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.asus.a.a;
import com.asus.contacts.c;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/AsusQuickContactBadge.class */
public class AsusQuickContactBadge extends ImageView implements View.OnClickListener {
    static final String[] e = {ContactDetailCallogActivity.EXTRA_CONTACT_ID, "lookup"};
    public static final String[] f = {"_id", "lookup"};

    /* renamed from: a  reason: collision with root package name */
    public String f842a;

    /* renamed from: b  reason: collision with root package name */
    public a f843b;
    protected String[] c;
    public a.c d;
    private Uri g;
    private String h;
    private Drawable i;
    private Drawable j;
    private String k;
    private String l;
    private boolean m;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/AsusQuickContactBadge$a.class */
    public final class a extends AsyncQueryHandler {
        public a(ContentResolver contentResolver) {
            super(contentResolver);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00c0  */
        @Override // android.content.AsyncQueryHandler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected final void onQueryComplete(int r7, java.lang.Object r8, android.database.Cursor r9) {
            /*
                Method dump skipped, instructions count: 303
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.dialpad.AsusQuickContactBadge.a.onQueryComplete(int, java.lang.Object, android.database.Cursor):void");
        }
    }

    public AsusQuickContactBadge(Context context) {
        this(context, null);
    }

    public AsusQuickContactBadge(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AsusQuickContactBadge(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.k = null;
        this.l = null;
        this.c = null;
        this.m = true;
        this.d = null;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, c.a.f2601a);
        this.i = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        this.f843b = new a(context.getContentResolver());
        setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        setEnabled((this.g == null && this.h == null && this.f842a == null) ? false : true);
    }

    public final void a(Uri uri) {
        this.g = uri;
        this.h = null;
        this.f842a = null;
        this.d = null;
        a();
    }

    public final void a(String str) {
        this.g = null;
        this.k = str;
        this.l = null;
        this.d = null;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.i != null && this.i.isStateful()) {
            this.i.setState(getDrawableState());
            invalidate();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!h.a(getContext()) || !this.m) {
            if (!this.m) {
                return;
            }
            if (this.d != null) {
                a.c cVar = this.d;
                Intent intent = new Intent();
                Bundle bundle = new Bundle();
                intent.setAction("com.android.contacts.action.QUICK_BUSINESS");
                bundle.putBoolean("extra_isunknown_contacts", false);
                bundle.putString("extra_business_name", cVar.f2356b);
                bundle.putString("extra_business_number", cVar.f2355a);
                bundle.putString("extra_business_photo_url", cVar.e);
                bundle.putByteArray("extra_business_photo_array", cVar.o);
                bundle.putInt("extra_tag_status", cVar.l);
                bundle.putString("extra_tag_name", cVar.d);
                intent.putExtras(bundle);
                ImplicitIntentsUtil.startActivityInApp(getContext(), intent);
            } else if (this.g != null) {
                ContactsContract.QuickContact.showQuickContact(getContext(), this, this.g, 3, this.c);
            } else if (this.h != null) {
                this.f843b.startQuery(2, this.h, Uri.withAppendedPath(ContactsContract.CommonDataKinds.Email.CONTENT_LOOKUP_URI, Uri.encode(this.h)), e, null, null, null);
            } else if (this.f842a != null) {
                this.f843b.startQuery(3, this.f842a, Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, this.f842a), f, null, null, null);
            } else if (this.k != null || this.l != null) {
                String str = this.k;
                String str2 = this.l;
                Intent intent2 = new Intent();
                Bundle bundle2 = new Bundle();
                intent2.setAction("com.android.contacts.action.QUICK_UNKNOWN_CALLLOG");
                bundle2.putBoolean("extra_isunknown_contacts", true);
                bundle2.putString("extra_business_number", str);
                bundle2.putString("extra_business_email", str2);
                intent2.putExtras(bundle2);
                ImplicitIntentsUtil.startActivityInApp(getContext(), intent2);
            }
        } else if (this.g == null) {
            if (!CallUtil.isUriNumber(this.k) && !TextUtils.isEmpty(this.k)) {
                Intent intent3 = new Intent("android.intent.action.EZ_NEW_CONTACT");
                intent3.putExtra("phone", this.k);
                ImplicitIntentsUtil.startActivityInApp(getContext(), intent3);
            }
        } else if (!CallUtil.isUriNumber(this.f842a)) {
            Intent intent4 = new Intent("android.intent.action.EZ_CONTACT_DETAIL", this.g);
            intent4.putExtra("PHONE_NUMBER", this.f842a);
            ImplicitIntentsUtil.startActivityInApp(getContext(), intent4);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isEnabled() && this.m && this.i != null && this.i.getIntrinsicWidth() != 0 && this.i.getIntrinsicHeight() != 0) {
            this.i.setBounds(0, 0, getWidth(), getHeight());
            if (getPaddingTop() == 0 && getPaddingLeft() == 0) {
                this.i.draw(canvas);
                return;
            }
            int saveCount = canvas.getSaveCount();
            canvas.save();
            canvas.translate(getPaddingLeft(), getPaddingTop());
            this.i.draw(canvas);
            canvas.restoreToCount(saveCount);
        }
    }

    public void setExcludeMimes(String[] strArr) {
        this.c = strArr;
    }

    public void setImageToDefault() {
        if (this.j == null) {
            this.j = getResources().getDrawable(Resources.getSystem().getIdentifier("ic_contact_picture", "drawable", "android"));
        }
        setImageDrawable(this.j);
    }

    public void setIsShowOverlay(boolean z) {
        this.m = z;
    }

    public void setMode(int i) {
    }
}
