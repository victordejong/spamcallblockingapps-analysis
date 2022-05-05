package gogolook.callgogolook2.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.provider.ContactsContract;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import p081h.p119d.p120a.C5768f;
import p081h.p119d.p120a.C5769g;
import p081h.p119d.p120a.C5776l;
import p081h.p119d.p120a.C5780o;
import p081h.p119d.p120a.p124s.AbstractC5810g;
import p081h.p119d.p120a.p124s.p126i.EnumC5827b;
import p081h.p119d.p120a.p124s.p131j.p133t.AbstractC5940d;
import p081h.p119d.p120a.p124s.p134k.p137g.AbstractC5979b;
import p081h.p119d.p120a.p145w.AbstractC6057f;
import p081h.p119d.p120a.p145w.p147j.AbstractC6082k;
import p459j.p460a.p521j0.p522u.p523d.C12694u0;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/RecycleSafeImageView.class */
public class RecycleSafeImageView extends AppCompatImageView {
    @Nullable

    /* renamed from: a */
    public AbstractC6057f<Uri, AbstractC5979b> f13067a;

    /* renamed from: b */
    public EnumC5279b f13068b;

    /* renamed from: gogolook.callgogolook2.view.RecycleSafeImageView$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/RecycleSafeImageView$a.class */
    public class C5278a implements AbstractC6057f<Uri, AbstractC5979b> {
        public C5278a() {
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public boolean mo3711a(AbstractC5979b bVar, Uri uri, AbstractC6082k<AbstractC5979b> kVar, boolean z, boolean z2) {
            return RecycleSafeImageView.this.f13067a != null && RecycleSafeImageView.this.f13067a.mo3711a(bVar, uri, kVar, z, z2);
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public boolean mo3713a(Exception exc, Uri uri, AbstractC6082k<AbstractC5979b> kVar, boolean z) {
            return RecycleSafeImageView.this.f13067a != null && RecycleSafeImageView.this.f13067a.mo3713a(exc, uri, kVar, z);
        }
    }

    /* renamed from: gogolook.callgogolook2.view.RecycleSafeImageView$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/RecycleSafeImageView$b.class */
    public enum EnumC5279b {
        cacheDefault,
        cacheOriginal
    }

    public RecycleSafeImageView(Context context) {
        this(context, null, 0);
    }

    public RecycleSafeImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RecycleSafeImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f13068b = EnumC5279b.cacheDefault;
    }

    /* renamed from: a */
    public C5768f<Integer> m25907a(int i) {
        C5769g<Integer> gVar;
        C5780o c = C5776l.m24470c(getContext().getApplicationContext());
        AbstractC5810g<Bitmap> a = mo25902a();
        if (a != null) {
            gVar = c.m24452a(Integer.valueOf(i));
            gVar.m24530b(a);
        } else {
            gVar = c.m24452a(Integer.valueOf(i));
        }
        gVar.mo24491f();
        return gVar;
    }

    /* renamed from: a */
    public C5768f<Uri> m25906a(Uri uri) {
        Context applicationContext = getContext().getApplicationContext();
        C5780o c = C5776l.m24470c(applicationContext);
        AbstractC5810g<Bitmap> a = mo25902a();
        C5769g<Uri> a2 = (uri == null || !uri.toString().startsWith(ContactsContract.Contacts.CONTENT_URI.toString())) ? c.m24457a(uri) : c.m24454a((AbstractC5940d) new C12694u0(applicationContext)).m24430a((C5780o.C5785d) uri);
        ImageView.ScaleType scaleType = getScaleType();
        if (a != null) {
            a2.m24530b(a);
        } else if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            a2.m24529i();
        } else if (scaleType == ImageView.ScaleType.FIT_CENTER) {
            a2.m24527k();
        }
        a2.mo24502a(this.f13068b == EnumC5279b.cacheOriginal ? EnumC5827b.SOURCE : EnumC5827b.RESULT);
        a2.mo24501a((AbstractC6057f<? super Uri, AbstractC5979b>) new C5278a());
        a2.mo24491f();
        return a2;
    }

    /* renamed from: a */
    public AbstractC5810g<Bitmap> mo25902a() {
        return null;
    }

    @Override // android.view.View
    @TargetApi(11)
    public void setAlpha(float f) {
        if (Build.VERSION.SDK_INT >= 11) {
            super.setAlpha(f);
        } else {
            super.setAlpha((int) (f * 255.0f));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i) {
        C5768f<Integer> a = m25907a(i);
        a.mo24519a(getDrawable());
        a.mo24518a(this);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        C5768f<Uri> a = m25906a(uri);
        a.mo24519a(getDrawable());
        a.mo24518a(this);
    }
}
