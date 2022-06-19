package androidx.activity;

import android.os.Bundle;
import androidx.activity.result.ActivityResultRegistry;
import java.util.ArrayList;
import java.util.Objects;
import p1727n3.p1757d0.C25700a;
/* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$c.class */
public class ComponentActivity$c implements C25700a.AbstractC25702b {

    /* renamed from: a */
    public final /* synthetic */ ComponentActivity f68a;

    public ComponentActivity$c(ComponentActivity componentActivity) {
        this.f68a = componentActivity;
    }

    @Override // p1727n3.p1757d0.C25700a.AbstractC25702b
    /* renamed from: a */
    public Bundle mo990a() {
        Bundle bundle = new Bundle();
        ActivityResultRegistry access$100 = ComponentActivity.access$100(this.f68a);
        Objects.requireNonNull(access$100);
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(access$100.f80c.values()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(access$100.f80c.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(access$100.f82e));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) access$100.f85h.clone());
        bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", access$100.f78a);
        return bundle;
    }
}
