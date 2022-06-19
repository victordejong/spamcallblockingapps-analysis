package p193e.p194a.p294b.p295a.p296a.p297a;

import android.view.View;
import android.widget.CheckBox;
import android.widget.Spinner;
import android.widget.Switch;
import com.truecaller.bizmon.C3478R;
import com.truecaller.profile.data.dto.businessV2.BusinessProfileRequest;
import com.truecaller.profile.data.dto.businessV2.LocationDetail;
import com.truecaller.profile.data.dto.businessV2.OpenHours;
import java.util.ArrayList;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.a.l;
/* renamed from: e.a.b.a.a.a.z */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/z.class */
public final class View$OnClickListenerC7590z implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C7578v f23916a;

    /* renamed from: b */
    public final /* synthetic */ String f23917b;

    public View$OnClickListenerC7590z(C7578v c7578v, String str) {
        this.f23916a = c7578v;
        this.f23917b = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str;
        String str2;
        C7578v c7578v = this.f23916a;
        l[] lVarArr = C7578v.f23897h;
        Objects.requireNonNull(c7578v);
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            OpenHours openHours = null;
            if (i >= 7) {
                break;
            }
            CheckBox checkBox = c7578v.f23902d.get(i);
            Spinner spinner = c7578v.f23900b.get(i);
            Spinner spinner2 = c7578v.f23901c.get(i);
            int i2 = i + 1;
            if (checkBox.isChecked()) {
                OpenHours openHours2 = new OpenHours(null, null, null, 7, null);
                openHours2.setWeekday(Integer.valueOf(i2));
                Switch r0 = c7578v.m29510OA().f25015b;
                s1.z.c.l.d(r0, "binding.chkEachDayTime");
                if (r0.isChecked()) {
                    str = c7578v.m29508QA()[spinner.getSelectedItemPosition()];
                } else {
                    String[] m29508QA = c7578v.m29508QA();
                    Spinner spinner3 = c7578v.m29510OA().f25026m;
                    s1.z.c.l.d(spinner3, "binding.mainOpeningSpinner");
                    str = m29508QA[spinner3.getSelectedItemPosition()];
                }
                openHours2.setOpens(str);
                Switch r02 = c7578v.m29510OA().f25015b;
                s1.z.c.l.d(r02, "binding.chkEachDayTime");
                if (r02.isChecked()) {
                    str2 = c7578v.m29508QA()[spinner2.getSelectedItemPosition()];
                } else {
                    String[] m29508QA2 = c7578v.m29508QA();
                    Spinner spinner4 = c7578v.m29510OA().f25025l;
                    s1.z.c.l.d(spinner4, "binding.mainClosingSpinner");
                    str2 = m29508QA2[spinner4.getSelectedItemPosition()];
                }
                openHours2.setCloses(str2);
                openHours = openHours2;
            }
            i = i2;
            if (openHours != null) {
                arrayList.add(openHours);
                i = i2;
            }
        }
        if (arrayList.isEmpty()) {
            n3.r.a.l activity = this.f23916a.getActivity();
            if (activity == null) {
                return;
            }
            C19291g.m13589S1(activity, C3478R.string.BusinessEditProfile_empty_time_error, null, 0, 6);
            return;
        }
        LocationDetail locationDetail = new LocationDetail(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16383, null);
        locationDetail.setOpenHours(arrayList);
        locationDetail.setLocId(this.f23917b);
        this.f23916a.m29509PA().m29465e(new BusinessProfileRequest(null, null, null, null, null, null, null, null, C25225a.m3962T1(locationDetail), null, null, null, null, null, 16127, null));
    }
}
