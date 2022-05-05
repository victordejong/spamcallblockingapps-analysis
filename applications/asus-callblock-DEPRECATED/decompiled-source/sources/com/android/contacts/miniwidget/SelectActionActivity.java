package com.android.contacts.miniwidget;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.TextView;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.vcard.VCardConfig;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/SelectActionActivity.class */
public class SelectActionActivity extends Activity implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1949a = SelectActionActivity.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private String f1950b;
    private long c;
    private ArrayList<g> f;
    private long g;
    private Drawable h;
    private Drawable i;
    private boolean j;
    private final int d = 0;
    private final int e = 1;
    private View.OnClickListener k = new View.OnClickListener() { // from class: com.android.contacts.miniwidget.SelectActionActivity.2
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Log.d(SelectActionActivity.f1949a, "mSendSmsListener onClick");
            g gVar = (g) view.getTag();
            if (gVar != null) {
                SelectActionActivity.this.a(gVar);
                SelectActionActivity.this.finish();
            }
        }
    };
    private BaseAdapter l = new BaseAdapter() { // from class: com.android.contacts.miniwidget.SelectActionActivity.3

        /* renamed from: com.android.contacts.miniwidget.SelectActionActivity$3$a */
        /* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/SelectActionActivity$3$a.class */
        final class a {

            /* renamed from: a  reason: collision with root package name */
            TextView f1954a;

            /* renamed from: b  reason: collision with root package name */
            TextView f1955b;
            ImageButton c;
            View d;
            View e;

            a() {
            }
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return SelectActionActivity.this.f == null ? 0 : SelectActionActivity.this.f.size();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            a aVar;
            View view2;
            g gVar = (g) SelectActionActivity.this.f.get(i);
            if (view == null) {
                a aVar2 = new a();
                view2 = View.inflate(SelectActionActivity.this.getApplicationContext(), 2131427333, null);
                aVar2.f1954a = (TextView) view2.findViewById(2131297425);
                aVar2.f1955b = (TextView) view2.findViewById(2131296634);
                aVar2.e = view2.findViewById(2131296436);
                aVar2.c = (ImageButton) view2.findViewById(2131296438);
                aVar2.d = view2.findViewById(2131297274);
                view2.setTag(aVar2);
                aVar = aVar2;
            } else {
                aVar = (a) view.getTag();
                view2 = view;
            }
            if (gVar.e) {
                aVar.c.setVisibility(0);
                aVar.d.setVisibility(8);
                aVar.c.setImageDrawable(SelectActionActivity.this.i);
                aVar.f1954a.setVisibility(0);
                aVar.f1955b.setVisibility(0);
                aVar.f1954a.setText(gVar.a());
                aVar.f1955b.setText(gVar.b());
            } else if (gVar.d) {
                aVar.c.setVisibility(0);
                aVar.c.setImageDrawable(SelectActionActivity.this.h);
                aVar.f1954a.setVisibility(0);
                aVar.f1955b.setVisibility(0);
                aVar.f1954a.setText(gVar.a());
                aVar.f1955b.setText(gVar.b());
                if (!SelectActionActivity.this.j || !gVar.f) {
                    aVar.d.setVisibility(8);
                } else {
                    aVar.d.setVisibility(0);
                    aVar.d.setTag(gVar.g);
                    aVar.d.setOnClickListener(SelectActionActivity.this.k);
                }
            } else if (gVar.f) {
                aVar.c.setVisibility(8);
                aVar.d.setVisibility(0);
                aVar.f1954a.setVisibility(0);
                aVar.f1955b.setVisibility(0);
                aVar.f1954a.setText(gVar.a());
                aVar.f1955b.setText(gVar.b());
            } else {
                aVar.c.setVisibility(8);
                aVar.d.setVisibility(8);
                aVar.f1954a.setVisibility(8);
                aVar.f1955b.setVisibility(0);
                aVar.f1955b.setText(gVar.a());
            }
            return view2;
        }
    };

    private void a(int i, long j) {
        Log.d(f1949a, "alert");
        Intent intent = new Intent();
        intent.setClass(this, AlertActivity.class);
        Bundle bundle = new Bundle();
        ContentResolver contentResolver = getContentResolver();
        if (i == 0) {
            bundle.putString("msg", getResources().getString(2131756231));
            contentResolver.delete(ContactsWidgetProvider.f1929a, "contact_id = " + this.c, null);
        } else if (i == 1) {
            bundle.putString("msg", getResources().getString(2131755710));
            g gVar = new g(this, -1, (String) null);
            ContentValues contentValues = new ContentValues();
            contentValues.put("action", Integer.valueOf(gVar.f1985a));
            contentValues.put("data", gVar.f1986b);
            contentResolver.update(ContactsWidgetProvider.f1929a, contentValues, "contact_id = " + j, null);
        }
        bundle.putBoolean("update", true);
        intent.putExtras(bundle);
        intent.setAction(String.valueOf(System.currentTimeMillis()));
        intent.addFlags(VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
        ImplicitIntentsUtil.startActivityInApp(this, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(g gVar) {
        Log.d(f1949a, "doAction");
        if (gVar.f1985a == 7) {
            Log.d(f1949a, "Default Actions");
            Intent a2 = gVar.a(this.c);
            Bundle extras = a2.getExtras();
            extras.putString(ContactDetailCallogActivity.EXTRA_NAME, this.f1950b);
            extras.putLong("widget_id", this.g);
            a2.putExtras(extras);
            ImplicitIntentsUtil.startActivityInAppIfPossible(this, a2);
            return;
        }
        Log.d(f1949a, "other Action");
        ImplicitIntentsUtil.startActivityInAppIfPossible(this, gVar.a(this.c));
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        finish();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Log.d(f1949a, "onClick");
        a(this.f.get(i));
        finish();
    }

    /* JADX WARN: Removed duplicated region for block: B:168:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x029c A[Catch: Exception -> 0x02a6, TRY_ENTER, TRY_LEAVE, TryCatch #3 {Exception -> 0x02a6, blocks: (B:14:0x00cd, B:15:0x00d8, B:94:0x029c, B:147:0x038c, B:149:0x0394), top: B:159:0x00cd }] */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 965
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.miniwidget.SelectActionActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.f != null) {
            this.f.clear();
            this.f = null;
        }
    }
}
