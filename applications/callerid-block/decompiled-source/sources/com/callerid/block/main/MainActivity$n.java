package com.callerid.block.main;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import androidx.viewpager.widget.AbstractC0533a;
import com.callerid.block.R$anim;
import com.callerid.block.R$string;
import com.callerid.block.b.i;
import com.callerid.block.fragment.EZCallLogFragment;
import com.callerid.block.fragment.EZInterceptFragment;
import com.callerid.block.fragment.a;
import com.callerid.block.fragment.b;
import com.callerid.block.start.GgGuideActivity;
import com.callerid.block.util.C1186k;
import com.callerid.block.util.C1199n0;
import com.callerid.block.util.C1227w;
/* loaded from: classes-dex2jar.jar:com/callerid/block/main/MainActivity$n.class */
class MainActivity$n implements Runnable {

    /* renamed from: b */
    final /* synthetic */ MainActivity f4597b;

    /* renamed from: com.callerid.block.main.MainActivity$n$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/main/MainActivity$n$a.class */
    class ClipboardManager$OnPrimaryClipChangedListenerC1096a implements ClipboardManager.OnPrimaryClipChangedListener {

        /* renamed from: a */
        final /* synthetic */ ClipboardManager f4598a;

        ClipboardManager$OnPrimaryClipChangedListenerC1096a(ClipboardManager clipboardManager) {
            this.f4598a = clipboardManager;
        }

        @Override // android.content.ClipboardManager.OnPrimaryClipChangedListener
        public void onPrimaryClipChanged() {
            ClipData primaryClip;
            try {
                if (this.f4598a.hasPrimaryClip() && (primaryClip = this.f4598a.getPrimaryClip()) != null && primaryClip.getItemCount() > 0) {
                    String charSequence = primaryClip.getItemAt(0).getText().toString();
                    if (!"".equals(charSequence)) {
                        String replace = charSequence.replace(" ", "").replace("-", "");
                        if (replace.matches("[0-9]+")) {
                            C1227w.m9527a("searchCopy", "text：" + replace);
                            if (C1199n0.m9740R(MainActivity$n.this.f4597b.getApplicationContext())) {
                                C1199n0.m9711d1(MainActivity$n.this.f4597b.getApplicationContext(), true);
                                MainActivity.E0(MainActivity$n.this.f4597b, replace);
                            }
                        }
                        if (replace.startsWith("+") && replace.substring(1, replace.length()).matches("[0-9]+")) {
                            if (C1199n0.m9740R(MainActivity$n.this.f4597b.getApplicationContext())) {
                                C1199n0.m9711d1(MainActivity$n.this.f4597b.getApplicationContext(), true);
                                MainActivity.E0(MainActivity$n.this.f4597b, replace);
                            }
                            C1227w.m9527a("searchCopy", "text：" + replace);
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    MainActivity$n(MainActivity mainActivity) {
        this.f4597b = mainActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        AbstractC0533a iVar = new i(this.f4597b.v());
        iVar.x(new EZCallLogFragment(), this.f4597b.getResources().getString(R$string.calls));
        iVar.x(new a(), this.f4597b.getResources().getString(R$string.contacts));
        iVar.x(new EZInterceptFragment(), this.f4597b.getResources().getString(R$string.blockT));
        iVar.x(new b(), this.f4597b.getResources().getString(R$string.messages));
        MainActivity.C0(this.f4597b).setAdapter(iVar);
        MainActivity.D0(this.f4597b).setViewPager(MainActivity.C0(this.f4597b));
        MainActivity.C0(this.f4597b).setOffscreenPageLimit(3);
        try {
            ClipboardManager clipboardManager = (ClipboardManager) this.f4597b.getSystemService("clipboard");
            if (clipboardManager != null) {
                clipboardManager.setPrimaryClip(ClipData.newPlainText("", ""));
                clipboardManager.addPrimaryClipChangedListener(new ClipboardManager$OnPrimaryClipChangedListenerC1096a(clipboardManager));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        MainActivity.C0(this.f4597b).setCurrentItem(0);
        if (this.f4597b.getIntent().getBooleanExtra("blockenable", false)) {
            MainActivity.C0(this.f4597b).setCurrentItem(2);
        }
        if (this.f4597b.getIntent().getBooleanExtra("download_db", false)) {
            MainActivity.C0(this.f4597b).setCurrentItem(2);
            if (C1227w.f5084a) {
                C1227w.m9527a("tony", "download_db111");
            }
            C1186k.m9816c().m9812g("noti_offlinedb_download");
        }
        if (this.f4597b.getIntent().getBooleanExtra("update_db", false)) {
            MainActivity.C0(this.f4597b).setCurrentItem(2);
            if (C1227w.f5084a) {
                C1227w.m9527a("tony", "update_db111");
            }
            C1186k.m9816c().m9812g("noti_offlinedb_update");
        }
        if (this.f4597b.getIntent().getBooleanExtra("receiversms", false)) {
            MainActivity.C0(this.f4597b).setCurrentItem(3);
            C1186k.m9816c().m9812g("search_sms_ok_notifi_ok");
        }
        if (this.f4597b.getIntent() != null && "open_offline".equals(this.f4597b.getIntent().getStringExtra("offline_notifi"))) {
            if (C1227w.f5084a) {
                C1227w.m9527a("fcm", "open_offline");
            }
            if (MainActivity.C0(this.f4597b) != null) {
                MainActivity.C0(this.f4597b).setCurrentItem(2);
            }
        }
        if (this.f4597b.getIntent() != null && this.f4597b.getIntent().getBooleanExtra("open_subscription", false)) {
            if (C1227w.f5084a) {
                C1227w.m9527a("fcm", "open_subscription");
            }
            Intent intent = new Intent((Context) this.f4597b, (Class<?>) GgGuideActivity.class);
            if (MainActivity.F0(this.f4597b)) {
                intent.putExtra("isbug", "maigou");
            }
            this.f4597b.startActivity(intent);
            this.f4597b.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }
}
