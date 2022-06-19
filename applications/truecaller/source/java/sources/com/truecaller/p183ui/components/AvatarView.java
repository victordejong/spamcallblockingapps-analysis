package com.truecaller.p183ui.components;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.truecaller.C2752R;
import com.truecaller.log.AssertionUtil;
import com.truecaller.p183ui.components.AvatarView;
import com.truecaller.p183ui.view.ContactPhoto;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1460o.C22387r;
import p193e.p1451f.p1452a.p1476r.AbstractC22590g;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p682e.p683a.DialogC12717e2;
import p193e.p194a.p682e.p699c2.C13206q;
/* renamed from: com.truecaller.ui.components.AvatarView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/AvatarView.class */
public class AvatarView extends FrameLayout {

    /* renamed from: b */
    public final int f15685b;

    /* renamed from: c */
    public final int f15686c;

    /* renamed from: d */
    public ContactPhoto f15687d;

    /* renamed from: e */
    public TextView f15688e;

    /* renamed from: f */
    public Uri f15689f;

    /* renamed from: g */
    public Uri f15690g;

    /* renamed from: h */
    public boolean f15691h;

    /* renamed from: i */
    public boolean f15692i;

    /* renamed from: j */
    public boolean f15693j;

    /* renamed from: a */
    public final AbstractC22590g<Drawable> f15684a = new C4671a();

    /* renamed from: k */
    public boolean f15694k = false;

    /* renamed from: l */
    public long f15695l = Long.MIN_VALUE;

    /* renamed from: com.truecaller.ui.components.AvatarView$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/AvatarView$a.class */
    public class C4671a implements AbstractC22590g<Drawable> {
        public C4671a() {
            AvatarView.this = r4;
        }

        @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
        public boolean onLoadFailed(C22387r c22387r, Object obj, AbstractC22598k<Drawable> abstractC22598k, boolean z) {
            return false;
        }

        @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
        public boolean onResourceReady(Drawable drawable, Object obj, AbstractC22598k<Drawable> abstractC22598k, EnumC22258a enumC22258a, boolean z) {
            AvatarView avatarView = AvatarView.this;
            avatarView.m34542b(avatarView.f15689f, avatarView.f15690g, avatarView.f15692i, avatarView.f15693j);
            return false;
        }
    }

    public AvatarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2752R.styleable.AvatarView);
        int resourceId = obtainStyledAttributes.getResourceId(3, C2752R.layout.view_avatar);
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, C2752R.string.NotificationAddPhoto);
        this.f15685b = resourceId2;
        int resourceId3 = obtainStyledAttributes.getResourceId(2, -16777216);
        this.f15686c = resourceId3;
        obtainStyledAttributes.recycle();
        if (!isInEditMode()) {
            AssertionUtil.isTrue(resourceId2 != 0, new String[0]);
            AssertionUtil.isTrue(resourceId3 != 0, new String[0]);
        }
        if (z) {
            setOnClickListener(new View.OnClickListener() { // from class: e.a.e.c2.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AvatarView avatarView = AvatarView.this;
                    if (avatarView.f15694k) {
                        new DialogC12717e2(avatarView.getContext(), avatarView.f15690g, avatarView.f15687d, 0, avatarView.f15684a, avatarView.f15691h).show();
                    }
                }
            });
        }
        View inflate = LayoutInflater.from(context).inflate(resourceId, this);
        ContactPhoto contactPhoto = (ContactPhoto) inflate.findViewById(C2752R.C2754id.avatar_view_img_avatar);
        this.f15687d = contactPhoto;
        contactPhoto.setCallback(new C13206q(this));
        this.f15688e = (TextView) inflate.findViewById(C2752R.C2754id.txt_add_avatar);
        AssertionUtil.isTrue(this.f15687d != null, new String[0]);
        if (isInEditMode()) {
            this.f15687d.setImageResource(C2752R.C2753drawable.ic_avatar);
        }
    }

    /* renamed from: a */
    public final void m34543a() {
        if (!isAttachedToWindow()) {
            return;
        }
        this.f15689f = null;
        this.f15690g = null;
        this.f15691h = false;
        this.f15694k = false;
        ContactPhoto contactPhoto = this.f15687d;
        if (contactPhoto.isAttachedToWindow()) {
            C17891a1.C17902k.m15664K1(contactPhoto.getContext()).m8412m(contactPhoto);
        }
        TextView textView = this.f15688e;
        if (textView != null) {
            textView.setVisibility(8);
        }
        this.f15687d.m34479f(null, null);
    }

    /* renamed from: b */
    public final void m34542b(Uri uri, Uri uri2, boolean z, boolean z2) {
        m34543a();
        this.f15692i = z;
        this.f15693j = z2;
        this.f15689f = uri;
        if (uri2 == null) {
            uri2 = uri;
        }
        this.f15690g = uri2;
        this.f15687d.setIsSpam(false);
        this.f15687d.setIsGold(this.f15692i);
        if (uri != null) {
            this.f15687d.m34479f(uri, null);
            return;
        }
        long j = this.f15695l;
        if (j == Long.MIN_VALUE || this.f15691h) {
            return;
        }
        C19291g.m13516r1(this.f15687d, (int) j);
    }

    public void setPrivateAvatar(int i) {
        this.f15687d.setPrivateAvatar(i);
    }
}
