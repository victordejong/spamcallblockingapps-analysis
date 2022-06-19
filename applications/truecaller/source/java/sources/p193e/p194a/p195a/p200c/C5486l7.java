package p193e.p194a.p195a.p200c;

import android.view.View;
import android.widget.AdapterView;
import android.widget.SimpleAdapter;
import com.truecaller.messaging.conversation.CallType;
/* renamed from: e.a.a.c.l7 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/l7.class */
public final class C5486l7 implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ View f18636a;

    /* renamed from: b */
    public final /* synthetic */ C5310g1 f18637b;

    public C5486l7(View view, SimpleAdapter simpleAdapter, C5310g1 c5310g1) {
        this.f18636a = view;
        this.f18637b = c5310g1;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f18637b.f18167a.f19482a.mo33535Jj(i != 0 ? CallType.VOIP : CallType.PHONE);
    }
}
