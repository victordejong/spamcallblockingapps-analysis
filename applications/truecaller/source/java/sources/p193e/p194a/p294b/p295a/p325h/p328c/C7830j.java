package p193e.p194a.p294b.p295a.p325h.p328c;

import android.app.Activity;
import android.content.Intent;
import android.widget.Toast;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.truecaller.bizmon.C3478R;
import com.truecaller.log.AssertionUtil;
import com.truecaller.placepicker.PlacePickerActivity;
import p193e.p194a.p1002k4.C16506c;
import p193e.p194a.p1272u3.C20592g;
import s1.k;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.b.a.h.c.j */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/h/c/j.class */
public final class C7830j extends m implements l<k<? extends Double, ? extends Double>, s> {

    /* renamed from: b */
    public final /* synthetic */ View$OnClickListenerC7819a f24354b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7830j(View$OnClickListenerC7819a view$OnClickListenerC7819a) {
        super(1);
        this.f24354b = view$OnClickListenerC7819a;
    }

    /* renamed from: d */
    public Object m29268d(Object obj) {
        k kVar = (k) obj;
        s1.z.c.l.e(kVar, "it");
        View$OnClickListenerC7819a view$OnClickListenerC7819a = this.f24354b;
        double doubleValue = ((Number) kVar.a).doubleValue();
        double doubleValue2 = ((Number) kVar.b).doubleValue();
        C20592g c20592g = this.f24354b.f24340a;
        if (c20592g == null) {
            s1.z.c.l.l("featuresRegistry");
            throw null;
        }
        boolean isEnabled = c20592g.m10971d0().isEnabled();
        Activity activity = view$OnClickListenerC7819a.getActivity();
        if (activity != null) {
            try {
                String string = view$OnClickListenerC7819a.getString(C3478R.string.google_maps_api_key);
                s1.z.c.l.d(string, "getString(R.string.google_maps_api_key)");
                s1.z.c.l.e(string, "apiKey");
                String str = C16506c.f46413a;
                s1.z.c.l.e(str, "<set-?>");
                C16506c.f46414b = str;
                s1.z.c.l.e(string, "<set-?>");
                C16506c.f46413a = string;
                s1.z.c.l.d(activity, "it");
                s1.z.c.l.e(activity, "activity");
                GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.f5673d;
                s1.z.c.l.d(googleApiAvailability, "GoogleApiAvailability.getInstance()");
                int mo39062e = googleApiAvailability.mo39062e(activity, 13400000);
                if (mo39062e != 0) {
                    if (!GooglePlayServicesUtilLight.isUserRecoverableError(mo39062e)) {
                        throw new GooglePlayServicesNotAvailableException(mo39062e);
                    }
                    googleApiAvailability.m39072f(activity, mo39062e, 0, null).show();
                    throw new GooglePlayServicesRepairableException(mo39062e, GooglePlayServicesUtilLight.getErrorString(mo39062e), new Intent());
                }
                Intent intent = new Intent(activity, PlacePickerActivity.class);
                intent.putExtra("latitude", doubleValue);
                intent.putExtra("longitude", doubleValue2);
                intent.putExtra("forceRemoteGeocoding", false);
                intent.putExtra("toolbarTitle", (String) null);
                intent.putExtra("showAutocomplete", isEnabled);
                view$OnClickListenerC7819a.startActivityForResult(intent, 10001);
            } catch (Exception e) {
                if (!(e instanceof GooglePlayServicesNotAvailableException) && !(e instanceof GooglePlayServicesRepairableException)) {
                    AssertionUtil.reportThrowableButNeverCrash(e);
                } else {
                    Toast.makeText(view$OnClickListenerC7819a.getContext(), view$OnClickListenerC7819a.getString(C3478R.string.GooglePlayServicesNotAvailable), 0).show();
                }
            }
        }
        return s.a;
    }
}
