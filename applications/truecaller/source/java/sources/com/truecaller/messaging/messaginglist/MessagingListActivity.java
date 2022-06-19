package com.truecaller.messaging.messaginglist;

import android.os.Bundle;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import com.truecaller.C2752R;
import com.truecaller.messaging.data.types.InboxTab;
import java.io.Serializable;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p195a.p198b.C4916a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/truecaller/messaging/messaginglist/MessagingListActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/messaginglist/MessagingListActivity.class */
public final class MessagingListActivity extends h {
    public MessagingListActivity() {
        super((int) C2752R.layout.activity_messaging_list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        MessagingListActivity.super.onCreate(bundle);
        setSupportActionBar((Toolbar) findViewById(2131366512));
        AbstractC25393a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
        if (bundle != null) {
            return;
        }
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        Serializable serializableExtra = getIntent().getSerializableExtra("inbox_tab");
        Objects.requireNonNull(serializableExtra, "null cannot be cast to non-null type com.truecaller.messaging.data.types.InboxTab");
        InboxTab inboxTab = (InboxTab) serializableExtra;
        l.e(inboxTab, "inboxTab");
        Bundle bundle2 = new Bundle();
        bundle2.putSerializable("conversation_tab", inboxTab);
        C4916a c4916a = new C4916a();
        c4916a.setArguments(bundle2);
        c26907a.m1120m(2131362924, c4916a, null);
        c26907a.mo1127f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.e(menuItem, "item");
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return MessagingListActivity.super.onOptionsItemSelected(menuItem);
    }
}
