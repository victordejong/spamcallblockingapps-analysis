package com.truecaller.flashsdk.assist;

import android.app.IntentService;
import android.content.Intent;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.TextUtils;
import com.truecaller.flashsdk.C3909R;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.d0.i;
import s1.d0.j;
import s1.u.z;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J)\u0010\r\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/truecaller/flashsdk/assist/FetchAddressIntentService;", "Landroid/app/IntentService;", "Landroid/content/Intent;", "intent", "Ls1/s;", "onHandleIntent", "(Landroid/content/Intent;)V", "", "resultCode", "", "message", "Landroid/location/Address;", "address", "a", "(ILjava/lang/String;Landroid/location/Address;)V", "Landroid/os/ResultReceiver;", "Landroid/os/ResultReceiver;", "receiver", "<init>", "()V", "flash_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/assist/FetchAddressIntentService.class */
public final class FetchAddressIntentService extends IntentService {

    /* renamed from: a */
    public ResultReceiver f11954a;

    public FetchAddressIntentService() {
        super("FetchAddressIS");
    }

    /* renamed from: a */
    public final void m35416a(int i, String str, Address address) {
        ResultReceiver resultReceiver = this.f11954a;
        if (resultReceiver == null || address == null) {
            return;
        }
        Bundle m8654X0 = C22128a.m8654X0("com.truecaller.flashsdk.assist.RESULT_DATA_KEY", str);
        m8654X0.putString("com.truecaller.flashsdk.assist.LOCATION_DATA_AREA", address.getSubLocality());
        m8654X0.putString("com.truecaller.flashsdk.assist.LOCATION_DATA_CITY", address.getLocality());
        m8654X0.putString("com.truecaller.flashsdk.assist.LOCATION_DATA_STREET", address.getAddressLine(0));
        resultReceiver.send(i, m8654X0);
    }

    @Override // android.app.IntentService
    public void onHandleIntent(Intent intent) {
        ResultReceiver resultReceiver;
        List<Address> list;
        String str;
        if (intent == null || (resultReceiver = (ResultReceiver) intent.getParcelableExtra("com.truecaller.flashsdk.assist.RECEIVER")) == null) {
            return;
        }
        this.f11954a = resultReceiver;
        Location location = (Location) intent.getParcelableExtra("com.truecaller.flashsdk.assist.LOCATION_DATA_EXTRA");
        if (location == null) {
            String string = getString(C3909R.string.no_location_data_provided);
            l.d(string, "getString(R.string.no_location_data_provided)");
            m35416a(1, string, null);
            return;
        }
        try {
            list = new Geocoder(this, Locale.getDefault()).getFromLocation(location.getLatitude(), location.getLongitude(), 1);
            str = "";
        } catch (Exception e) {
            str = getString(C3909R.string.service_not_available);
            l.d(str, "getString(R.string.service_not_available)");
            C10480a.m26061I1(e);
            list = null;
        }
        boolean z = false;
        if (list == null || list.isEmpty()) {
            if (str.length() == 0) {
                z = true;
            }
            if (z) {
                str = getString(C3909R.string.no_address_found);
                l.d(str, "getString(R.string.no_address_found)");
            }
            m35416a(1, str, null);
            return;
        }
        Address address = list.get(0);
        i j = j.j(0, address.getMaxAddressLineIndex());
        ArrayList arrayList = new ArrayList(C25225a.m4004J(j, 10));
        z it = j.iterator();
        while (it.hasNext()) {
            arrayList.add(address.getAddressLine(it.a()));
        }
        String join = TextUtils.join(System.lineSeparator(), arrayList);
        l.d(join, "TextUtils.join(System.li…ator(), addressFragments)");
        m35416a(0, join, address);
    }
}
