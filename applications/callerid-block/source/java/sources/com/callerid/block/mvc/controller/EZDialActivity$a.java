package com.callerid.block.mvc.controller;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.provider.ContactsContract;
import android.text.Spannable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ResourceCursorAdapter;
import android.widget.TextView;
import com.callerid.block.R$attr;
import com.callerid.block.R$drawable;
import com.callerid.block.R$id;
import com.callerid.block.R$layout;
import com.callerid.block.util.C1183i0;
import com.callerid.block.util.C1199n0;
import com.callerid.block.util.C1202o0;
import com.callerid.block.util.C1205p0;
import com.callerid.block.util.C1227w;
import com.callerid.block.util.p060x0.C1230a;
import com.github.clans.fab.FloatingActionButton;
import com.rey.material.widget.ImageButton;
import fydialer.ContactAccessor;
import fydialer.IContactSplit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZDialActivity$a.class */
public class EZDialActivity$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ EZDialActivity f4617b;

    /* renamed from: com.callerid.block.mvc.controller.EZDialActivity$a$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZDialActivity$a$b.class */
    class View$OnClickListenerC1099b implements View.OnClickListener {
        View$OnClickListenerC1099b() {
            EZDialActivity$a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FloatingActionButton v0;
            int S;
            Context applicationContext;
            String f0;
            try {
                if (EZDialActivity.T(EZDialActivity$a.this.f4617b).getVisibility() != 0) {
                    EZDialActivity.T(EZDialActivity$a.this.f4617b).setVisibility(0);
                    EZDialActivity.o0(EZDialActivity$a.this.f4617b);
                    if (EZDialActivity.f0(EZDialActivity$a.this.f4617b) == null || EZDialActivity.f0(EZDialActivity$a.this.f4617b).equals("")) {
                        v0 = EZDialActivity.v0(EZDialActivity$a.this.f4617b);
                        S = EZDialActivity.S(EZDialActivity$a.this.f4617b);
                    } else {
                        v0 = EZDialActivity.v0(EZDialActivity$a.this.f4617b);
                        S = EZDialActivity.u0(EZDialActivity$a.this.f4617b);
                    }
                    v0.setImageResource(S);
                } else if (EZDialActivity.f0(EZDialActivity$a.this.f4617b) == null || EZDialActivity.f0(EZDialActivity$a.this.f4617b).equals("")) {
                    EZDialActivity$a.this.f4617b.A0();
                } else {
                    if (C1202o0.m9641b(EZDialActivity$a.this.f4617b.getApplicationContext())) {
                        int m9659v = C1199n0.m9659v();
                        if (m9659v != -1) {
                            EZDialActivity eZDialActivity = EZDialActivity$a.this.f4617b;
                            C1202o0.m9642a(eZDialActivity, m9659v, EZDialActivity.f0(eZDialActivity));
                            return;
                        } else if (Build.VERSION.SDK_INT >= 22) {
                            EZDialActivity eZDialActivity2 = EZDialActivity$a.this.f4617b;
                            C1202o0.m9640c(eZDialActivity2, EZDialActivity.f0(eZDialActivity2));
                            return;
                        } else {
                            applicationContext = EZDialActivity$a.this.f4617b.getApplicationContext();
                            f0 = EZDialActivity.f0(EZDialActivity$a.this.f4617b);
                        }
                    } else {
                        applicationContext = EZDialActivity$a.this.f4617b.getApplicationContext();
                        f0 = EZDialActivity.f0(EZDialActivity$a.this.f4617b);
                    }
                    C1183i0.m9834a(applicationContext, f0);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    EZDialActivity$a(EZDialActivity eZDialActivity) {
        this.f4617b = eZDialActivity;
    }

    /* JADX WARN: Type inference failed for: r0v140, types: [com.callerid.block.mvc.controller.EZDialActivity$d] */
    @Override // java.lang.Runnable
    public void run() {
        Uri data;
        String replace;
        try {
            EZDialActivity.R(this.f4617b).post(EZDialActivity.Q(this.f4617b));
            EZDialActivity.h0(this.f4617b, "");
            EZDialActivity.o0(this.f4617b);
            EZDialActivity.T(this.f4617b).setNumberCallBack(new a(this));
            EZDialActivity.r0(this.f4617b, new StringBuilder());
            EZDialActivity eZDialActivity = this.f4617b;
            EZDialActivity.V(eZDialActivity, (ListView) eZDialActivity.findViewById((int) R$id.contactlist));
            EZDialActivity.U(this.f4617b).setOnCreateContextMenuListener(this.f4617b);
            EZDialActivity.U(this.f4617b).setOnItemClickListener(this.f4617b);
            EZDialActivity.U(this.f4617b).setOnScrollListener(EZDialActivity.W(this.f4617b));
            String str = null;
            if (C1230a.m9514b(this.f4617b.getApplicationContext(), "android.permission.READ_CONTACTS")) {
                EZDialActivity eZDialActivity2 = this.f4617b;
                EZDialActivity.Y(eZDialActivity2, ContactAccessor.getInstance(eZDialActivity2.getContentResolver()));
                EZDialActivity eZDialActivity3 = this.f4617b;
                EZDialActivity eZDialActivity4 = this.f4617b;
                EZDialActivity.a0(eZDialActivity3, (EZDialActivity$d) new ResourceCursorAdapter(eZDialActivity4, eZDialActivity4, null, EZDialActivity.X(eZDialActivity4).getContactSplit()) { // from class: com.callerid.block.mvc.controller.EZDialActivity$d

                    /* renamed from: b */
                    private final int f4620b;

                    /* renamed from: c */
                    IContactSplit f4621c;

                    /* renamed from: d */
                    private Context f4622d;

                    /* renamed from: e */
                    final /* synthetic */ EZDialActivity f4623e;

                    /* renamed from: com.callerid.block.mvc.controller.EZDialActivity$d$a */
                    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/EZDialActivity$d$a.class */
                    class View$OnClickListenerC1100a implements View.OnClickListener {

                        /* renamed from: b */
                        final /* synthetic */ View f4624b;

                        View$OnClickListenerC1100a(View view) {
                            this.f4624b = view;
                        }

                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            int intValue = ((Integer) view.getTag()).intValue();
                            EZDialActivity.U(EZDialActivity$d.this.f4623e).performItemClick(this.f4624b, intValue, getItemId(intValue));
                        }
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(eZDialActivity4, (int) R$layout.contacts_list_item, r9, false);
                        this.f4621c = contactSplit;
                        this.f4622d = eZDialActivity4;
                        this.f4620b = C1205p0.m9635b(eZDialActivity4, R$attr.touxiang_gray, R$drawable.touxiang_gray);
                    }

                    /* renamed from: a */
                    public String convertToString(Cursor cursor) {
                        return cursor.getString(2);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
                    /* JADX WARN: Type inference failed for: r11v0 */
                    /* JADX WARN: Type inference failed for: r11v1 */
                    /* JADX WARN: Type inference failed for: r11v2 */
                    /* JADX WARN: Type inference failed for: r1v19 */
                    @Override // android.widget.CursorAdapter
                    public void bindView(View view, Context context, Cursor cursor) {
                        try {
                            EZDialActivity$e eZDialActivity$e = (EZDialActivity$e) view.getTag();
                            eZDialActivity$e.f4626a.setText(cursor.getString(2), TextView.BufferType.SPANNABLE);
                            EZDialActivity.m0((Spannable) eZDialActivity$e.f4626a.getText(), EZDialActivity.f0(this.f4623e), false);
                            if (!cursor.isNull(4)) {
                                eZDialActivity$e.f4628c.setVisibility(0);
                                eZDialActivity$e.f4628c.setText(ContactsContract.CommonDataKinds.Phone.getTypeLabel(context.getResources(), cursor.getInt(4), cursor.getString(5)));
                            } else {
                                eZDialActivity$e.f4628c.setVisibility(8);
                            }
                            String replace2 = cursor.getString(3).replace(" ", "");
                            eZDialActivity$e.f4629d.setText(replace2, TextView.BufferType.SPANNABLE);
                            EZDialActivity.m0((Spannable) eZDialActivity$e.f4629d.getText(), EZDialActivity.f0(this.f4623e), true);
                            eZDialActivity$e.f4627b.setTag(replace2);
                            eZDialActivity$e.f4630e = this.f4621c.getLookupUri(cursor);
                            if (!EZDialActivity.n0()) {
                                eZDialActivity$e.f4631f.setVisibility(8);
                                return;
                            }
                            eZDialActivity$e.f4631f.setVisibility(0);
                            ?? r11 = true;
                            if (!cursor.isNull(6)) {
                                r11 = cursor.getLong(6);
                            }
                            Bitmap E0 = EZDialActivity.E0(this.f4622d, r11 == true ? 1L : 0L, (BitmapFactory.Options) null);
                            if (E0 != null) {
                                eZDialActivity$e.f4631f.setImageBitmap(E0);
                            } else {
                                eZDialActivity$e.f4631f.setImageResource(this.f4620b);
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }

                    @Override // android.widget.ResourceCursorAdapter, android.widget.CursorAdapter
                    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                        View newView = super.newView(context, cursor, viewGroup);
                        EZDialActivity$e eZDialActivity$e = new EZDialActivity$e();
                        eZDialActivity$e.f4626a = (TextView) newView.findViewById(R$id.name);
                        ImageButton imageButton = (ImageButton) newView.findViewById(R$id.call_button);
                        eZDialActivity$e.f4627b = imageButton;
                        if (imageButton != null) {
                            imageButton.setOnClickListener(this.f4623e);
                        }
                        eZDialActivity$e.f4628c = (TextView) newView.findViewById(R$id.label);
                        eZDialActivity$e.f4629d = (TextView) newView.findViewById(R$id.data);
                        eZDialActivity$e.f4631f = (ImageView) newView.findViewById(R$id.photoview);
                        eZDialActivity$e.f4632g = (ImageButton) newView.findViewById(R$id.ripple_bg);
                        eZDialActivity$e.f4628c.setTypeface(this.f4623e.E);
                        eZDialActivity$e.f4629d.setTypeface(this.f4623e.E);
                        newView.setTag(eZDialActivity$e);
                        eZDialActivity$e.f4632g.setTag(Integer.valueOf(cursor.getPosition()));
                        eZDialActivity$e.f4632g.setOnClickListener(new View$OnClickListenerC1100a(newView));
                        return newView;
                    }
                });
                EZDialActivity.U(this.f4617b).setAdapter((ListAdapter) EZDialActivity.Z(this.f4617b));
                try {
                    new EZDialActivity$f(this.f4617b, "").executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            EZDialActivity.b0(this.f4617b);
            try {
                EZDialActivity.v0(this.f4617b).setImageResource(EZDialActivity.S(this.f4617b));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            EZDialActivity.v0(this.f4617b).setOnClickListener(new View$OnClickListenerC1099b());
            String action = this.f4617b.getIntent().getAction();
            if ("android.intent.action.DIAL".equals(this.f4617b.getIntent().getAction())) {
                String dataString = this.f4617b.getIntent().getDataString();
                if (dataString != null) {
                    str = dataString.replace("tel:", "");
                }
                if (str == null || "".equals(str)) {
                    return;
                }
                try {
                    EZDialActivity.h0(this.f4617b, str);
                    EZDialActivity.T(this.f4617b).f4131c.setText(EZDialActivity.f0(this.f4617b));
                    EZDialActivity.T(this.f4617b).f4131c.setSelection(EZDialActivity.T(this.f4617b).f4131c.getText().length());
                    EZDialActivity.v0(this.f4617b).setImageResource(EZDialActivity.u0(this.f4617b));
                    EZDialActivity.p0(this.f4617b, true);
                    C1227w.m9527a("dialnumber", "number:" + str);
                    return;
                } catch (Exception e3) {
                    e = e3;
                }
            } else if (!"android.intent.action.VIEW".equals(action) || (data = this.f4617b.getIntent().getData()) == null || !"tel".equals(data.getScheme()) || (replace = data.toString().replace("tel:", "")) == null || "".equals(replace)) {
                return;
            } else {
                try {
                    EZDialActivity.h0(this.f4617b, replace);
                    EZDialActivity.T(this.f4617b).f4131c.setText(EZDialActivity.f0(this.f4617b));
                    EZDialActivity.T(this.f4617b).f4131c.setSelection(EZDialActivity.T(this.f4617b).f4131c.getText().length());
                    EZDialActivity.v0(this.f4617b).setImageResource(EZDialActivity.u0(this.f4617b));
                    EZDialActivity.p0(this.f4617b, true);
                    C1227w.m9527a("dialnumber", "number:" + replace);
                    return;
                } catch (Exception e4) {
                    e = e4;
                }
            }
            e.printStackTrace();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }
}
