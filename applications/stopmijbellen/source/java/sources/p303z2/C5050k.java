package p303z2;

import android.content.IntentSender;
import android.database.Cursor;
import android.os.Bundle;
import android.view.Menu;
import android.widget.Toast;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.material.navigation.NavigationView;
import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.remoteconfig.internal.C1853a;
import com.mglab.scm.visual.FragmentAbout;
import com.mglab.scm.visual.FragmentPreferences;
import com.mglab.scm.visual.FragmentStat;
import com.rengwuxian.materialedittext.MaterialEditText;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p006a5.C0017a;
import p030c5.AbstractC0842a;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p095f8.C2779g;
import p095f8.C2780h;
import p095f8.C2782j;
import p124i4.C3099a;
import p193o8.C3948e;
import p220r4.AbstractC4193b;
import p222r6.C4221e;
import p303z2.C5057r;
/* renamed from: z2.k */
/* loaded from: classes2-dex2jar.jar:z2/k.class */
public final /* synthetic */ class C5050k implements C5057r.AbstractC5059b, AbstractC0842a, OnSuccessListener, SuccessContinuation, AbstractC4193b, View$OnClickListenerC2530g.AbstractC2533c {

    /* renamed from: a */
    public final /* synthetic */ int f15324a;

    /* renamed from: b */
    public final /* synthetic */ Object f15325b;

    public /* synthetic */ C5050k(Object obj, int i) {
        this.f15324a = i;
        this.f15325b = obj;
    }

    @Override // p030c5.AbstractC0842a
    /* renamed from: a */
    public void mo107a(String str, Bundle bundle) {
        ((C0017a) this.f15325b).f18b.mo107a(str, bundle);
    }

    @Override // p303z2.C5057r.AbstractC5059b
    public Object apply(Object obj) {
        Map map = (Map) this.f15325b;
        Cursor cursor = (Cursor) obj;
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            Set set = (Set) map.get(Long.valueOf(j));
            HashSet hashSet = set;
            if (set == null) {
                hashSet = new HashSet();
                map.put(Long.valueOf(j), hashSet);
            }
            hashSet.add(new C5057r.C5060c(cursor.getString(1), cursor.getString(2), null));
        }
        return null;
    }

    @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
    /* renamed from: g */
    public void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
        switch (this.f15324a) {
            case 6:
                FragmentAbout fragmentAbout = (FragmentAbout) this.f15325b;
                int i = FragmentAbout.f7361e;
                C2780h.m3049g0(fragmentAbout.getContext(), "psetdev", true);
                Menu menu = ((NavigationView) fragmentAbout.requireActivity().findViewById(2131296864)).getMenu();
                menu.findItem(2131296859).setVisible(true);
                menu.findItem(2131296858).setVisible(true);
                Toast.makeText(fragmentAbout.getContext(), "DEV UNLOCKED ", 0).show();
                return;
            case 7:
                FragmentPreferences fragmentPreferences = (FragmentPreferences) this.f15325b;
                C2780h.m3049g0(fragmentPreferences.f7540b, "psetaspe", true);
                C2780h.m3033o0(fragmentPreferences.f7540b, "psetasnip", C2779g.m3110e("lfTY9y7#bhZA4qf8", String.valueOf(((MaterialEditText) view$OnClickListenerC2530g.f8822c.f8864o.findViewById(2131296921)).getText())));
                return;
            default:
                FragmentStat fragmentStat = (FragmentStat) this.f15325b;
                C3948e c3948e = FragmentStat.f7603g;
                C2780h.m3031p0(fragmentStat.getContext());
                return;
        }
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        switch (this.f15324a) {
            case 3:
                ((RemoteConfigManager) this.f15325b).m4468xc904e813((Boolean) obj);
                return;
            default:
                C2782j c2782j = (C2782j) this.f15325b;
                C3099a c3099a = (C3099a) obj;
                Objects.requireNonNull(c2782j);
                if (c3099a.f10489b == 11) {
                    c2782j.f9499c.getLocalClassName();
                    c2782j.m3017b();
                    c2782j.f9497a.mo2610c();
                }
                if (c3099a.f10488a != 3) {
                    return;
                }
                c2782j.f9499c.getLocalClassName();
                try {
                    c2782j.f9497a.mo2608e(c3099a, 1, c2782j.f9499c, 530);
                    return;
                } catch (IntentSender.SendIntentException e) {
                    e.printStackTrace();
                    return;
                }
        }
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task then(Object obj) {
        C1853a.C1854a c1854a = (C1853a.C1854a) this.f15325b;
        C4221e c4221e = (C4221e) obj;
        int[] iArr = C1853a.f7009k;
        return Tasks.forResult(c1854a);
    }
}
