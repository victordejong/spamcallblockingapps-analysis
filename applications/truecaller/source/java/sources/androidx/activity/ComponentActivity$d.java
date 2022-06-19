package androidx.activity;

import android.content.Context;
import android.os.Bundle;
import androidx.activity.result.ActivityResultRegistry;
import java.util.ArrayList;
import java.util.Objects;
import java.util.Random;
import p1727n3.p1728a.p1729d.AbstractC25372b;
/* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$d.class */
public class ComponentActivity$d implements AbstractC25372b {

    /* renamed from: a */
    public final /* synthetic */ ComponentActivity f69a;

    public ComponentActivity$d(ComponentActivity componentActivity) {
        this.f69a = componentActivity;
    }

    @Override // p1727n3.p1728a.p1729d.AbstractC25372b
    /* renamed from: a */
    public void mo1116a(Context context) {
        Bundle m3047a = this.f69a.getSavedStateRegistry().m3047a("android:support:activity-result");
        if (m3047a != null) {
            ActivityResultRegistry access$100 = ComponentActivity.access$100(this.f69a);
            Objects.requireNonNull(access$100);
            ArrayList<Integer> integerArrayList = m3047a.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
            ArrayList<String> stringArrayList = m3047a.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
            if (stringArrayList == null || integerArrayList == null) {
                return;
            }
            access$100.f82e = m3047a.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
            access$100.f78a = (Random) m3047a.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
            access$100.f85h.putAll(m3047a.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
            for (int i = 0; i < stringArrayList.size(); i++) {
                String str = stringArrayList.get(i);
                if (access$100.f80c.containsKey(str)) {
                    Integer remove = access$100.f80c.remove(str);
                    if (!access$100.f85h.containsKey(str)) {
                        access$100.f79b.remove(remove);
                    }
                }
                int intValue = integerArrayList.get(i).intValue();
                String str2 = stringArrayList.get(i);
                access$100.f79b.put(Integer.valueOf(intValue), str2);
                access$100.f80c.put(str2, Integer.valueOf(intValue));
            }
        }
    }
}
