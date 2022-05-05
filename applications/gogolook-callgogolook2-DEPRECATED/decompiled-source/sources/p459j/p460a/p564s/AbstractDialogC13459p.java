package p459j.p460a.p564s;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.Html;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentTransaction;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import p459j.p460a.p582w0.C14217x3;
/* renamed from: j.a.s.p */
/* loaded from: classes2-dex2jar.jar:j/a/s/p.class */
public abstract class AbstractDialogC13459p extends Dialog {

    /* renamed from: a */
    public LinearLayout f30235a;

    /* renamed from: b */
    public ScrollView f30236b;

    /* renamed from: c */
    public TextView f30237c;

    /* renamed from: d */
    public TextView f30238d;

    /* renamed from: e */
    public TextView f30239e;

    /* renamed from: f */
    public ArrayList<String> f30240f;

    /* renamed from: g */
    public ArrayList<LinearLayout> f30241g;

    /* renamed from: h */
    public ArrayList<TextView> f30242h;

    /* renamed from: i */
    public HashMap<String, View> f30243i;

    /* renamed from: j */
    public Activity f30244j;

    /* renamed from: k */
    public int f30245k;

    /* renamed from: l */
    public int f30246l;

    /* renamed from: m */
    public int f30247m;

    /* renamed from: n */
    public int f30248n;

    /* renamed from: o */
    public int f30249o;

    /* renamed from: p */
    public int f30250p;

    /* renamed from: q */
    public int f30251q;

    /* renamed from: r */
    public int f30252r;

    /* renamed from: s */
    public int f30253s;

    /* renamed from: j.a.s.p$a */
    /* loaded from: classes2-dex2jar.jar:j/a/s/p$a.class */
    public class View$OnClickListenerC13460a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ LinearLayout f30254a;

        public View$OnClickListenerC13460a(LinearLayout linearLayout) {
            this.f30254a = linearLayout;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TextView textView = (TextView) view;
            Iterator it = AbstractDialogC13459p.this.f30242h.iterator();
            while (it.hasNext()) {
                ((TextView) it.next()).setBackgroundResource(0);
            }
            AbstractDialogC13459p.this.f30236b.removeAllViews();
            AbstractDialogC13459p.this.f30236b.addView(this.f30254a);
            textView.setBackgroundColor(AbstractDialogC13459p.this.f30253s);
        }
    }

    /* renamed from: j.a.s.p$b */
    /* loaded from: classes2-dex2jar.jar:j/a/s/p$b.class */
    public class View$OnClickListenerC13461b implements View.OnClickListener {
        public View$OnClickListenerC13461b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractDialogC13459p.this.m4010d();
        }
    }

    /* renamed from: j.a.s.p$c */
    /* loaded from: classes2-dex2jar.jar:j/a/s/p$c.class */
    public class View$OnClickListenerC13462c implements View.OnClickListener {
        public View$OnClickListenerC13462c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractDialogC13459p.this.mo3909e();
        }
    }

    /* renamed from: j.a.s.p$d */
    /* loaded from: classes2-dex2jar.jar:j/a/s/p$d.class */
    public class View$OnClickListenerC13463d implements View.OnClickListener {

        /* renamed from: a */
        public Context f30258a;

        /* renamed from: b */
        public int f30259b;

        /* renamed from: c */
        public String f30260c;

        /* renamed from: d */
        public ArrayList<Pair<String, Object>> f30261d;

        /* renamed from: e */
        public TextView f30262e;

        /* renamed from: j.a.s.p$d$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/p$d$a.class */
        public class DialogInterface$OnClickListenerC13464a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC13464a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Object obj = ((Pair) View$OnClickListenerC13463d.this.f30261d.get(i)).second;
                View$OnClickListenerC13463d.this.f30262e.setText((String) ((Pair) View$OnClickListenerC13463d.this.f30261d.get(i)).first);
                View$OnClickListenerC13463d.this.f30262e.setVisibility(0);
                View$OnClickListenerC13463d dVar = View$OnClickListenerC13463d.this;
                AbstractDialogC13459p.this.m4015b(dVar.f30260c, obj);
                View$OnClickListenerC13463d dVar2 = View$OnClickListenerC13463d.this;
                if (!AbstractDialogC13459p.this.mo3911a(dVar2.f30260c, obj)) {
                    View$OnClickListenerC13463d dVar3 = View$OnClickListenerC13463d.this;
                    AbstractDialogC13459p.this.m4011c(dVar3.f30260c);
                    View$OnClickListenerC13463d.this.f30262e.setText((CharSequence) null);
                    View$OnClickListenerC13463d.this.f30262e.setVisibility(8);
                }
            }
        }

        public View$OnClickListenerC13463d(Context context, int i, String str, TextView textView) {
            m4006a(context, i, str, textView);
        }

        public /* synthetic */ View$OnClickListenerC13463d(AbstractDialogC13459p pVar, Context context, int i, String str, TextView textView, View$OnClickListenerC13460a aVar) {
            this(context, i, str, textView);
        }

        public View$OnClickListenerC13463d(Context context, int i, String str, ArrayList<Pair<String, Object>> arrayList, TextView textView) {
            m4006a(context, i, str, textView);
            this.f30261d = arrayList;
        }

        public /* synthetic */ View$OnClickListenerC13463d(AbstractDialogC13459p pVar, Context context, int i, String str, ArrayList arrayList, TextView textView, View$OnClickListenerC13460a aVar) {
            this(context, i, str, arrayList, textView);
        }

        /* renamed from: a */
        public final void m4006a(Context context, int i, String str, TextView textView) {
            this.f30258a = context;
            this.f30259b = i;
            this.f30260c = str;
            this.f30262e = textView;
        }

        /* renamed from: a */
        public final void m4005a(View view) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            CheckBox checkBox = null;
            for (int i = 0; i < relativeLayout.getChildCount(); i++) {
                if (relativeLayout.getChildAt(i) instanceof CheckBox) {
                    checkBox = (CheckBox) relativeLayout.getChildAt(i);
                }
            }
            if (checkBox != null) {
                checkBox.setChecked(!checkBox.isChecked());
                AbstractDialogC13459p.this.m4015b(this.f30260c, Boolean.valueOf(checkBox.isChecked()));
                if (!AbstractDialogC13459p.this.mo3911a(this.f30260c, Boolean.valueOf(checkBox.isChecked()))) {
                    AbstractDialogC13459p.this.m4011c(this.f30260c);
                }
            }
        }

        /* renamed from: b */
        public final void m4003b(View view) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.f30258a);
            ArrayAdapter arrayAdapter = new ArrayAdapter(this.f30258a, 17367058);
            for (int i = 0; i < this.f30261d.size(); i++) {
                arrayAdapter.add(this.f30261d.get(i).first);
            }
            builder.setAdapter(arrayAdapter, new DialogInterface$OnClickListenerC13464a());
            builder.create().show();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i = this.f30259b;
            if (i == 1) {
                AbstractDialogC13459p.this.mo3911a(this.f30260c, (Object) null);
            } else if (i == 2) {
                m4005a(view);
            } else if (i == 3) {
                m4003b(view);
            }
        }
    }

    @SuppressLint({"InlinedApi"})
    public AbstractDialogC13459p(Activity activity) {
        super(activity, Build.VERSION.SDK_INT >= 14 ? 16974135 : 16973833);
        this.f30243i = new HashMap<>();
        this.f30244j = activity;
    }

    /* renamed from: a */
    public final void m4033a() {
        this.f30235a = (LinearLayout) findViewById(R$id.ll_tab);
        this.f30236b = (ScrollView) findViewById(R$id.sv_item);
        this.f30237c = (TextView) findViewById(R$id.tv_title);
        this.f30238d = (TextView) findViewById(R$id.tv_subtitle);
        this.f30239e = (TextView) findViewById(R$id.tv_next);
    }

    /* renamed from: a */
    public final void m4031a(String str) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.weight = 1.0f;
        int parseColor = Color.parseColor("#eeeeee");
        this.f30240f.add(str);
        LinearLayout linearLayout = new LinearLayout(this.f30244j);
        linearLayout.setOrientation(1);
        this.f30241g.add(linearLayout);
        TextView textView = new TextView(this.f30244j);
        textView.setText(str);
        textView.setLayoutParams(layoutParams);
        textView.setGravity(17);
        textView.setTextSize(16.0f);
        textView.setTextColor(parseColor);
        int i = this.f30245k;
        textView.setPadding(0, i, 0, i);
        this.f30235a.addView(textView);
        this.f30242h.add(textView);
        textView.setOnClickListener(new View$OnClickListenerC13460a(linearLayout));
        if (this.f30242h.size() == 1) {
            this.f30242h.get(0).setBackgroundColor(this.f30253s);
            this.f30236b.addView(linearLayout);
        }
    }

    /* renamed from: a */
    public void m4030a(String str, float f) {
        PreferenceManager.getDefaultSharedPreferences(getContext()).edit().putFloat(str, f).commit();
    }

    /* renamed from: a */
    public void m4029a(String str, int i) {
        PreferenceManager.getDefaultSharedPreferences(getContext()).edit().putInt(str, i).commit();
    }

    /* renamed from: a */
    public void m4028a(String str, long j) {
        PreferenceManager.getDefaultSharedPreferences(getContext()).edit().putLong(str, j).commit();
    }

    /* renamed from: a */
    public void m4027a(String str, String str2) {
        int b = m4016b(str2);
        if (this.f30241g.get(b).getChildCount() != 0) {
            View view = new View(getContext());
            view.setLayoutParams(new LinearLayout.LayoutParams(-1, 30));
            this.f30241g.get(b).addView(view);
        }
        TextView textView = new TextView(getContext());
        textView.setText(Html.fromHtml("<b>" + str + "</b>"));
        textView.setTextColor(this.f30252r);
        textView.setTextSize(15.0f);
        int i = this.f30245k;
        textView.setPadding(i, i, i, i / 3);
        this.f30241g.get(b).addView(textView);
        View view2 = new View(getContext());
        view2.setLayoutParams(new LinearLayout.LayoutParams(-1, this.f30249o * 3));
        view2.setBackgroundColor(this.f30248n);
        this.f30241g.get(b).addView(view2);
    }

    /* renamed from: a */
    public void m4026a(String str, String str2, String str3) {
        Object obj = PreferenceManager.getDefaultSharedPreferences(getContext()).getAll().get(str);
        m4025a(str, str2, obj == null ? "" : obj.toString(), str3);
    }

    /* renamed from: a */
    public void m4025a(String str, String str2, String str3, String str4) {
        int b = m4016b(str4);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setBackgroundResource(R$drawable.debugmode_item_selector);
        relativeLayout.setClickable(true);
        int i = this.f30245k;
        relativeLayout.setPadding(i, i, i, i);
        this.f30241g.get(b).addView(relativeLayout);
        TextView textView = new TextView(getContext());
        textView.setId(FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        textView.setText(Html.fromHtml(str2));
        textView.setTextColor(this.f30250p);
        textView.setPadding(0, 0, 0, 0);
        textView.setTextSize(17.0f);
        relativeLayout.addView(textView);
        HashMap<String, View> hashMap = this.f30243i;
        hashMap.put(str + "_1", textView);
        TextView textView2 = new TextView(getContext());
        textView2.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        ((RelativeLayout.LayoutParams) textView2.getLayoutParams()).addRule(3, textView.getId());
        textView2.setTextColor(this.f30251q);
        textView2.setTextSize(12.0f);
        textView2.setPadding(0, this.f30246l, 0, 0);
        relativeLayout.addView(textView2);
        if (TextUtils.isEmpty(str3)) {
            textView2.setVisibility(8);
            textView2.setText((CharSequence) null);
        } else {
            textView2.setVisibility(0);
            textView2.setText(Html.fromHtml(str3));
        }
        HashMap<String, View> hashMap2 = this.f30243i;
        hashMap2.put(str + "_2", textView2);
        View view = new View(getContext());
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, this.f30249o));
        view.setBackgroundColor(this.f30247m);
        this.f30241g.get(b).addView(view);
        relativeLayout.setOnClickListener(new View$OnClickListenerC13463d(this, getContext(), 1, str, textView2, (View$OnClickListenerC13460a) null));
    }

    /* renamed from: a */
    public void m4024a(String str, String str2, String str3, ArrayList<Pair<String, Object>> arrayList, String str4) {
        int b = m4016b(str4);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setBackgroundResource(R$drawable.debugmode_item_selector);
        relativeLayout.setClickable(true);
        int i = this.f30245k;
        relativeLayout.setPadding(i, i, i, i);
        this.f30241g.get(b).addView(relativeLayout);
        TextView textView = new TextView(getContext());
        textView.setId(FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        textView.setText(Html.fromHtml(str2));
        textView.setTextColor(this.f30250p);
        textView.setTextSize(17.0f);
        relativeLayout.addView(textView);
        Object obj = PreferenceManager.getDefaultSharedPreferences(getContext()).getAll().get(str);
        String str5 = str3;
        if (str3 == null) {
            str5 = str3;
            if (obj != null) {
                Iterator<Pair<String, Object>> it = arrayList.iterator();
                while (it.hasNext()) {
                    Pair<String, Object> next = it.next();
                    if (next.second.equals(obj)) {
                        str3 = (String) next.first;
                    }
                }
                str5 = str3;
                if (str3 == null) {
                    str5 = str3;
                    if (obj != null) {
                        str5 = obj.toString();
                    }
                }
            }
        }
        TextView textView2 = new TextView(getContext());
        textView2.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        ((RelativeLayout.LayoutParams) textView2.getLayoutParams()).addRule(3, textView.getId());
        textView2.setTextColor(this.f30251q);
        textView2.setTextSize(12.0f);
        relativeLayout.addView(textView2);
        if (TextUtils.isEmpty(str5)) {
            textView2.setVisibility(8);
            textView2.setText((CharSequence) null);
        } else {
            textView2.setVisibility(0);
            textView2.setText(Html.fromHtml(str5));
        }
        View view = new View(getContext());
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, this.f30249o));
        view.setBackgroundColor(this.f30247m);
        this.f30241g.get(b).addView(view);
        relativeLayout.setOnClickListener(new View$OnClickListenerC13463d(this, getContext(), 3, str, arrayList, textView2, null));
    }

    /* renamed from: a */
    public void m4023a(String str, String str2, String str3, boolean z, String str4) {
        int b = m4016b(str4);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        relativeLayout.setBackgroundResource(R$drawable.debugmode_item_selector);
        relativeLayout.setClickable(true);
        int i = this.f30245k;
        relativeLayout.setPadding(i, i, i, i);
        this.f30241g.get(b).addView(relativeLayout);
        TextView textView = new TextView(getContext());
        textView.setId(FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        textView.setText(Html.fromHtml(str2));
        textView.setTextColor(this.f30250p);
        textView.setTextSize(17.0f);
        textView.setPadding(0, 0, 0, 0);
        relativeLayout.addView(textView);
        HashMap<String, View> hashMap = this.f30243i;
        hashMap.put(str + "_1", textView);
        TextView textView2 = new TextView(getContext());
        textView2.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        ((RelativeLayout.LayoutParams) textView2.getLayoutParams()).addRule(3, textView.getId());
        textView2.setTextColor(this.f30251q);
        textView2.setTextSize(12.0f);
        textView2.setPadding(0, this.f30246l, 0, 0);
        textView2.setTag(str + "_2");
        relativeLayout.addView(textView2);
        if (TextUtils.isEmpty(str3)) {
            textView2.setVisibility(8);
            textView2.setText((CharSequence) null);
        } else {
            textView2.setVisibility(0);
            textView2.setText(Html.fromHtml(str3));
        }
        HashMap<String, View> hashMap2 = this.f30243i;
        hashMap2.put(str + "_2", textView2);
        CheckBox checkBox = new CheckBox(getContext());
        checkBox.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        ((RelativeLayout.LayoutParams) checkBox.getLayoutParams()).addRule(11);
        ((RelativeLayout.LayoutParams) checkBox.getLayoutParams()).addRule(15);
        checkBox.setClickable(false);
        checkBox.setChecked(PreferenceManager.getDefaultSharedPreferences(getContext()).getBoolean(str, z));
        relativeLayout.addView(checkBox);
        HashMap<String, View> hashMap3 = this.f30243i;
        hashMap3.put(str + "_check", checkBox);
        View view = new View(getContext());
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, this.f30249o));
        view.setBackgroundColor(this.f30247m);
        this.f30241g.get(b).addView(view);
        relativeLayout.setOnClickListener(new View$OnClickListenerC13463d(this, getContext(), 2, str, textView2, (View$OnClickListenerC13460a) null));
    }

    /* renamed from: a */
    public void m4022a(String str, String str2, String str3, String[] strArr, String str4) {
        ArrayList<Pair<String, Object>> arrayList = new ArrayList<>();
        for (String str5 : strArr) {
            arrayList.add(new Pair<>(str5, str5));
        }
        m4024a(str, str2, str3, arrayList, str4);
    }

    /* renamed from: a */
    public void m4021a(String str, String str2, ArrayList<Pair<String, Object>> arrayList, String str3) {
        m4024a(str, str2, (String) null, arrayList, str3);
    }

    /* renamed from: a */
    public void m4020a(String str, String str2, String[] strArr, String str3) {
        m4022a(str, str2, (String) null, strArr, str3);
    }

    /* renamed from: a */
    public void m4019a(String str, boolean z) {
        PreferenceManager.getDefaultSharedPreferences(getContext()).edit().putBoolean(str, z).commit();
    }

    /* renamed from: a */
    public abstract boolean mo3911a(String str, Object obj);

    /* renamed from: b */
    public int m4016b(@NonNull String str) {
        for (int i = 0; i < this.f30240f.size(); i++) {
            if (str.equals(this.f30240f.get(i))) {
                return i;
            }
        }
        m4031a(str);
        return this.f30240f.size() - 1;
    }

    /* renamed from: b */
    public TextView m4018b() {
        return this.f30239e;
    }

    /* renamed from: b */
    public void m4015b(String str, Object obj) {
        if (obj instanceof Boolean) {
            m4019a(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Integer) {
            m4029a(str, ((Integer) obj).intValue());
        } else if (obj instanceof Float) {
            m4030a(str, ((Float) obj).floatValue());
        } else if (obj instanceof String) {
            m4014b(str, (String) obj);
        } else if (obj instanceof Long) {
            m4028a(str, ((Long) obj).longValue());
        }
    }

    /* renamed from: b */
    public void m4014b(String str, String str2) {
        PreferenceManager.getDefaultSharedPreferences(getContext()).edit().putString(str, str2).commit();
    }

    /* renamed from: b */
    public void m4013b(String str, String str2, String str3) {
        m4023a(str, str2, (String) null, false, str3);
    }

    /* renamed from: c */
    public final void m4012c() {
        this.f30246l = 0;
        this.f30245k = C14217x3.m2201a(13.0f);
        this.f30249o = C14217x3.m2201a(1.0f);
        this.f30247m = Color.parseColor("#4F5C4F");
        this.f30248n = Color.parseColor("#537A60");
        this.f30250p = Color.parseColor("#dfdfdf");
        this.f30251q = Color.parseColor("#c1c1c1");
        this.f30252r = Color.parseColor("#818181");
        this.f30253s = Color.parseColor("#444444");
        this.f30240f = new ArrayList<>();
        this.f30241g = new ArrayList<>();
        this.f30242h = new ArrayList<>();
    }

    /* renamed from: c */
    public void m4011c(String str) {
        PreferenceManager.getDefaultSharedPreferences(getContext()).edit().remove(str).commit();
    }

    /* renamed from: d */
    public void m4010d() {
        dismiss();
    }

    /* renamed from: d */
    public void m4009d(String str) {
        this.f30238d.setText(Html.fromHtml(str));
        if (TextUtils.isEmpty(str)) {
            this.f30238d.setVisibility(8);
        } else {
            this.f30238d.setVisibility(0);
        }
    }

    /* renamed from: e */
    public abstract void mo3909e();

    /* renamed from: e */
    public void m4008e(String str) {
        TextView textView = this.f30237c;
        textView.setText(Html.fromHtml("<b>" + str + "</b>"));
    }

    /* renamed from: f */
    public final void m4007f() {
        this.f30237c.setOnClickListener(new View$OnClickListenerC13461b());
        this.f30239e.setOnClickListener(new View$OnClickListenerC13462c());
    }

    /* renamed from: g */
    public abstract void mo3907g();

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R$layout.debug_dialog_new);
        m4012c();
        m4033a();
        mo3907g();
        m4007f();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f30244j.finish();
    }
}
