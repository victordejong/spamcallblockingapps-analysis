package p081h.p119d.p120a.p124s.p131j;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import p081h.p119d.p120a.p124s.p125h.AbstractC5813c;
/* renamed from: h.d.a.s.j.n */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/n.class */
public class C5920n<T> implements AbstractC5918l<Integer, T> {

    /* renamed from: a */
    public final AbstractC5918l<Uri, T> f14857a;

    /* renamed from: b */
    public final Resources f14858b;

    public C5920n(Context context, AbstractC5918l<Uri, T> lVar) {
        this(context.getResources(), lVar);
    }

    public C5920n(Resources resources, AbstractC5918l<Uri, T> lVar) {
        this.f14858b = resources;
        this.f14857a = lVar;
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public AbstractC5813c<T> mo24060a(Integer num, int i, int i2) {
        Uri uri;
        try {
            uri = Uri.parse("android.resource://" + this.f14858b.getResourcePackageName(num.intValue()) + '/' + this.f14858b.getResourceTypeName(num.intValue()) + '/' + this.f14858b.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException e) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                String str = "Received invalid resource id: " + num;
            }
            uri = null;
        }
        if (uri != null) {
            return this.f14857a.mo24060a(uri, i, i2);
        }
        return null;
    }
}
