package com.truecaller.notifications.enhancing;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.C2752R;
import com.truecaller.notifications.enhancing.SourcedContactListActivity;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import n3.b.a.h;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1114o5.RunnableC18950b;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p912i4.p913x.C15297b;
import p193e.p194a.p912i4.p913x.C15301e;
/* loaded from: classes11-dex2jar.jar:com/truecaller/notifications/enhancing/SourcedContactListActivity.class */
public class SourcedContactListActivity extends h {

    /* renamed from: a */
    public AbstractC19854f<AbstractC19463a0> f14110a;

    /* renamed from: pa */
    public static Intent m34849pa(Context context, LinkedHashSet<SourcedContact> linkedHashSet) {
        Intent intent = new Intent(context, SourcedContactListActivity.class);
        intent.addFlags(268435456);
        intent.addFlags(32768);
        intent.addFlags(8388608);
        intent.addFlags(524288);
        intent.putParcelableArrayListExtra("sourcedContacts", new ArrayList<>(linkedHashSet));
        return intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v53 */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.truecaller.notifications.enhancing.SourcedContactListActivity, n3.r.a.l, android.content.Context, android.app.Activity, n3.b.a.h] */
    public void onCreate(Bundle bundle) {
        SourcedContactListActivity.super.onCreate(bundle);
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
        C17422k.m16069l(getTheme());
        ArrayList<SourcedContact> arrayList = null;
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) getApplication()).mo10154s();
        this.f14110a = mo10154s.mo12217s();
        Intent intent = getIntent();
        if (intent != null) {
            arrayList = intent.getParcelableArrayListExtra("sourcedContacts");
        }
        if (arrayList == null || arrayList.isEmpty()) {
            finish();
        } else {
            if (bundle == null) {
                long[] jArr = new long[arrayList.size()];
                int i = 0;
                for (SourcedContact sourcedContact : arrayList) {
                    Long l = sourcedContact.f14104c;
                    jArr[i] = (l == null ? 0 : l.longValue()) == true ? 1 : 0;
                    i++;
                }
                Intent intent2 = new Intent("com.truecaller.ACTION_ENHANCED_NOTIFICATION_DELETED");
                intent2.putExtra("ids", jArr);
                sendBroadcast(intent2);
            }
            setContentView((int) C2752R.layout.view_sourced_contact_list);
            View findViewById = findViewById(2131362821);
            int dimensionPixelSize = getResources().getDimensionPixelSize(2131166346);
            int i2 = C19045j0.f53198b;
            findViewById.post(new RunnableC18950b(findViewById, dimensionPixelSize, dimensionPixelSize));
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: e.a.i4.x.c
                /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.notifications.enhancing.SourcedContactListActivity, android.app.Activity] */
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SourcedContactListActivity.this.finish();
                }
            });
            C15301e c15301e = new C15301e(C17891a1.C17902k.m15655N1(this), arrayList, new C15297b(this));
            RecyclerView recyclerView = (RecyclerView) findViewById((int) C2752R.C2754id.rvSourcedContact);
            recyclerView.setLayoutManager(new LinearLayoutManager(this, 1, false));
            recyclerView.setAdapter(c15301e);
        }
        mo10154s.mo12776C4().mo13274b(C19597a.m13114b("sourcedContactList"));
    }
}
