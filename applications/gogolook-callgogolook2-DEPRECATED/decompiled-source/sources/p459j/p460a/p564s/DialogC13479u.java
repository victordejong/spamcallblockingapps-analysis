package p459j.p460a.p564s;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.ContactsContract;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.cursoradapter.widget.CursorAdapter;
import com.facebook.ads.AdError;
import com.gogolook.whoscallsdk.core.num.data.Images;
import com.gogolook.whoscallsdk.core.num.data.NumInfo;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.block.BlockManageActivity;
import gogolook.callgogolook2.developmode.DevelopModeDialogActivity;
import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.phone.WCInCallActivity;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject;
import gogolook.callgogolook2.setting.SettingsActivity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p461a0.C11038a;
import p459j.p460a.p461a0.C11049g;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11068k;
import p459j.p460a.p461a0.C11077m;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p521j0.C12489b;
import p459j.p460a.p521j0.C12492c;
import p459j.p460a.p521j0.C12502f;
import p459j.p460a.p521j0.C12503g;
import p459j.p460a.p521j0.C12507k;
import p459j.p460a.p521j0.C12511o;
import p459j.p460a.p521j0.C12516s;
import p459j.p460a.p521j0.EnumC12488a;
import p459j.p460a.p521j0.p522u.C12520b;
import p459j.p460a.p521j0.p522u.p523d.C12617h0;
import p459j.p460a.p521j0.p529x.C12780l;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.C14327z3;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p583a5.C13892b;
import p459j.p460a.p582w0.p585b5.C13921a;
import p459j.p460a.p613z0.p617p.C14687h;
import p660rx.Subscription;
import p660rx.functions.Action1;
/* renamed from: j.a.s.u */
/* loaded from: classes2-dex2jar.jar:j/a/s/u.class */
public class DialogC13479u extends Dialog {

    /* renamed from: A */
    public Button f30303A;

    /* renamed from: B */
    public LinearLayout.LayoutParams f30304B;

    /* renamed from: C */
    public LinearLayout.LayoutParams f30305C;

    /* renamed from: D */
    public LinearLayout.LayoutParams f30306D;

    /* renamed from: E */
    public LinearLayout.LayoutParams f30307E;

    /* renamed from: F */
    public LinearLayout.LayoutParams f30308F;

    /* renamed from: G */
    public LinearLayout.LayoutParams f30309G;

    /* renamed from: H */
    public LinearLayout.LayoutParams f30310H;

    /* renamed from: I */
    public int f30311I;

    /* renamed from: J */
    public Subscription f30312J;

    /* renamed from: K */
    public C12492c f30313K;

    /* renamed from: L */
    public C12617h0 f30314L;

    /* renamed from: N */
    public C12520b f30315N;

    /* renamed from: O */
    public EditText f30316O;

    /* renamed from: a */
    public Activity f30317a;

    /* renamed from: b */
    public String f30318b;

    /* renamed from: c */
    public String f30319c;

    /* renamed from: d */
    public boolean f30320d;

    /* renamed from: e */
    public int f30321e;

    /* renamed from: f */
    public boolean f30322f;

    /* renamed from: g */
    public Button f30323g;

    /* renamed from: h */
    public Button f30324h;

    /* renamed from: i */
    public Button f30325i;

    /* renamed from: j */
    public LinearLayout f30326j;

    /* renamed from: k */
    public LinearLayout f30327k;

    /* renamed from: l */
    public LinearLayout f30328l;

    /* renamed from: m */
    public LinearLayout f30329m;

    /* renamed from: n */
    public LinearLayout f30330n;

    /* renamed from: o */
    public LinearLayout f30331o;

    /* renamed from: p */
    public ScrollView f30332p;

    /* renamed from: q */
    public Button f30333q;

    /* renamed from: r */
    public Button f30334r;

    /* renamed from: s */
    public Button f30335s;

    /* renamed from: t */
    public Button f30336t;

    /* renamed from: u */
    public Button f30337u;

    /* renamed from: v */
    public Button f30338v;

    /* renamed from: w */
    public Button f30339w;

    /* renamed from: x */
    public Button f30340x;

    /* renamed from: y */
    public Button f30341y;

    /* renamed from: z */
    public Button f30342z;

    /* renamed from: j.a.s.u$a */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$a.class */
    public class C13480a implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ LinearLayout f30343a;

        /* renamed from: b */
        public final /* synthetic */ RadioGroup f30344b;

        /* renamed from: c */
        public final /* synthetic */ NumberInfo f30345c;

        public C13480a(DialogC13479u uVar, LinearLayout linearLayout, RadioGroup radioGroup, NumberInfo numberInfo) {
            this.f30343a = linearLayout;
            this.f30344b = radioGroup;
            this.f30345c = numberInfo;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f30343a.setVisibility(0);
                ((RadioButton) this.f30344b.getChildAt(0)).setChecked(true);
                return;
            }
            this.f30344b.clearCheck();
            this.f30343a.setVisibility(8);
            this.f30345c.m28326g("");
        }
    }

    /* renamed from: j.a.s.u$a0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$a0.class */
    public class C13481a0 implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ LinearLayout f30346a;

        /* renamed from: b */
        public final /* synthetic */ NumberInfo f30347b;

        /* renamed from: c */
        public final /* synthetic */ EditText f30348c;

        /* renamed from: j.a.s.u$a0$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/u$a0$a.class */
        public class C13482a extends C13529o1 {
            public C13482a() {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                C13481a0.this.f30347b.whoscall.notes.clear();
                if (C14217x3.m2160b(charSequence.toString())) {
                    C13481a0 a0Var = C13481a0.this;
                    a0Var.f30347b.m28359a(a0Var.f30348c.getHint().toString(), System.currentTimeMillis(), System.currentTimeMillis());
                    return;
                }
                C13481a0.this.f30347b.m28359a(charSequence.toString(), System.currentTimeMillis(), System.currentTimeMillis());
            }
        }

        public C13481a0(DialogC13479u uVar, LinearLayout linearLayout, NumberInfo numberInfo, EditText editText) {
            this.f30346a = linearLayout;
            this.f30347b = numberInfo;
            this.f30348c = editText;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f30346a.setVisibility(0);
                this.f30347b.m28359a(this.f30348c.getHint().toString(), System.currentTimeMillis(), System.currentTimeMillis());
                this.f30348c.addTextChangedListener(new C13482a());
                return;
            }
            this.f30348c.setText("");
            this.f30346a.setVisibility(8);
            List<NumberInfo.Note> list = this.f30347b.whoscall.notes;
            if (list != null) {
                list.clear();
            }
        }
    }

    /* renamed from: j.a.s.u$a1 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$a1.class */
    public class View$OnClickListenerC13483a1 implements View.OnClickListener {

        /* renamed from: j.a.s.u$a1$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/u$a1$a.class */
        public class DialogInterface$OnClickListenerC13484a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC13484a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i == 0) {
                    C14687h.m861a(DialogC13479u.this.f30317a, "clear info db cache", 1).m858c();
                    C11052i.m10328e().m10354a();
                } else if (i == 1) {
                    C14687h.m861a(DialogC13479u.this.f30317a, "clear more db cache", 1).m858c();
                } else if (i == 2) {
                    C14217x3.m2156c(DialogC13479u.this.f30317a, DevelopModeDialogActivity.m28589a(DialogC13479u.this.f30317a, false));
                } else if (i == 3) {
                    Intent intent = new Intent();
                    intent.setClass(DialogC13479u.this.f30317a, SettingsActivity.class);
                    intent.setFlags(268435456);
                    DialogC13479u.this.f30317a.startActivity(intent);
                    DialogC13479u.this.dismiss();
                }
                dialogInterface.dismiss();
            }
        }

        public View$OnClickListenerC13483a1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AlertDialog.Builder builder = new AlertDialog.Builder(DialogC13479u.this.f30317a);
            builder.setTitle("Others");
            builder.setSingleChoiceItems(new CharSequence[]{"Clear all info cache", "Clear all more cache", "Develop Mode", "Whoscall setting"}, -1, new DialogInterface$OnClickListenerC13484a());
            builder.create().show();
        }
    }

    /* renamed from: j.a.s.u$b */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$b.class */
    public class C13485b implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo f30352a;

        public C13485b(DialogC13479u uVar, NumberInfo numberInfo) {
            this.f30352a = numberInfo;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f30352a.m28348b(z);
        }
    }

    /* renamed from: j.a.s.u$b0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$b0.class */
    public class C13486b0 extends C13529o1 {

        /* renamed from: a */
        public final /* synthetic */ EditText f30353a;

        public C13486b0(DialogC13479u uVar, EditText editText) {
            this.f30353a = editText;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String obj = this.f30353a.getText().toString();
            if (!TextUtils.isEmpty(obj) && TextUtils.isDigitsOnly(obj)) {
                C13598x.m3860g().m3867a(C11049g.class, Long.valueOf(obj).longValue());
            }
        }
    }

    /* renamed from: j.a.s.u$b1 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$b1.class */
    public class View$OnClickListenerC13487b1 implements View.OnClickListener {
        public View$OnClickListenerC13487b1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent();
            intent.setClass(DialogC13479u.this.f30317a, BlockManageActivity.class);
            DialogC13479u.this.f30317a.startActivity(intent);
            DialogC13479u.this.dismiss();
        }
    }

    /* renamed from: j.a.s.u$c */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$c.class */
    public class C13488c implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo f30355a;

        public C13488c(DialogC13479u uVar, NumberInfo numberInfo) {
            this.f30355a = numberInfo;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f30355a.m28344c(compoundButton.getTag().toString());
            }
        }
    }

    /* renamed from: j.a.s.u$c0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$c0.class */
    public class C13489c0 implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f30356a;

        public C13489c0(DialogC13479u uVar, EditText editText) {
            this.f30356a = editText;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C13598x.m3860g().m3867a(C11049g.class, z ? Long.valueOf(this.f30356a.getText().toString()).longValue() : 0L);
        }
    }

    /* renamed from: j.a.s.u$c1 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$c1.class */
    public class C13490c1 implements RadioGroup.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ LinearLayout f30357a;

        /* renamed from: b */
        public final /* synthetic */ EditText f30358b;

        /* renamed from: c */
        public final /* synthetic */ NumberInfo f30359c;

        public C13490c1(DialogC13479u uVar, LinearLayout linearLayout, EditText editText, NumberInfo numberInfo) {
            this.f30357a = linearLayout;
            this.f30358b = editText;
            this.f30359c = numberInfo;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i) {
            if (i > 0) {
                RadioButton radioButton = (RadioButton) this.f30357a.findViewById(i);
                String charSequence = TextUtils.isEmpty(this.f30358b.getText()) ? this.f30358b.getHint().toString() : this.f30358b.getText().toString();
                String str = NumInfo.TYPE_MASSES;
                str = str;
                String str2 = "";
                boolean z = false;
                str2 = "";
                switch (i) {
                    case R$id.rb_server_name_type_card /* 2131363021 */:
                        str2 = "Card description V3";
                        str = NumInfo.TYPE_WHOSCALLCARDV3;
                        z = true;
                        break;
                    case R$id.rb_server_name_type_cs /* 2131363022 */:
                    default:
                        str = NumInfo.TYPE_CS;
                        z = false;
                        str2 = "";
                        break;
                    case R$id.rb_server_name_type_masses /* 2131363023 */:
                        break;
                    case R$id.rb_server_name_type_masses_image /* 2131363024 */:
                        z = true;
                        break;
                }
                this.f30359c.m28358a(charSequence, str);
                this.f30359c.m28339d(str2);
                if (z) {
                    Images images = new Images();
                    images.meta.put("p", "https://s3-ap-northeast-1.amazonaws.com/whoscallclient");
                    images.meta.put("0", "/type_0/");
                    HashMap hashMap = new HashMap();
                    hashMap.put("0", Arrays.asList("1421052077.png", "1421052080.png", "1421052082.png"));
                    images.profile = hashMap;
                    this.f30359c.m28367a(images);
                }
            }
        }
    }

    /* renamed from: j.a.s.u$d */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$d.class */
    public class C13491d implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ RadioGroup f30360a;

        /* renamed from: b */
        public final /* synthetic */ NumberInfo f30361b;

        public C13491d(DialogC13479u uVar, RadioGroup radioGroup, NumberInfo numberInfo) {
            this.f30360a = radioGroup;
            this.f30361b = numberInfo;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f30360a.setVisibility(0);
                ((RadioButton) this.f30360a.getChildAt(0)).setChecked(true);
                return;
            }
            this.f30360a.clearCheck();
            this.f30360a.setVisibility(8);
            this.f30361b.m28344c("");
        }
    }

    /* renamed from: j.a.s.u$d0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$d0.class */
    public class C13492d0 implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo f30362a;

        public C13492d0(DialogC13479u uVar, NumberInfo numberInfo) {
            this.f30362a = numberInfo;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f30362a.whoscall.favored = z;
        }
    }

    /* renamed from: j.a.s.u$d1 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$d1.class */
    public class C13493d1 implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ LinearLayout f30363a;

        /* renamed from: b */
        public final /* synthetic */ RadioGroup f30364b;

        /* renamed from: c */
        public final /* synthetic */ NumberInfo f30365c;

        /* renamed from: d */
        public final /* synthetic */ EditText f30366d;

        /* renamed from: j.a.s.u$d1$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/u$d1$a.class */
        public class C13494a extends C13529o1 {
            public C13494a() {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (C14217x3.m2160b(charSequence.toString())) {
                    C13493d1 d1Var = C13493d1.this;
                    d1Var.f30365c.m28330f(d1Var.f30366d.getHint().toString());
                    return;
                }
                C13493d1.this.f30365c.m28330f(charSequence.toString());
            }
        }

        public C13493d1(DialogC13479u uVar, LinearLayout linearLayout, RadioGroup radioGroup, NumberInfo numberInfo, EditText editText) {
            this.f30363a = linearLayout;
            this.f30364b = radioGroup;
            this.f30365c = numberInfo;
            this.f30366d = editText;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f30363a.setVisibility(0);
                ((RadioButton) this.f30364b.getChildAt(0)).setChecked(true);
                this.f30365c.m28330f(this.f30366d.getHint().toString());
                this.f30366d.addTextChangedListener(new C13494a());
                return;
            }
            this.f30366d.setText("");
            this.f30363a.setVisibility(8);
            this.f30364b.clearCheck();
            this.f30365c.m28346c();
            this.f30365c.m28339d("");
        }
    }

    /* renamed from: j.a.s.u$e */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$e.class */
    public class C13495e extends C13529o1 {

        /* renamed from: a */
        public final /* synthetic */ EditText f30368a;

        /* renamed from: b */
        public final /* synthetic */ NumberInfo f30369b;

        public C13495e(DialogC13479u uVar, EditText editText, NumberInfo numberInfo) {
            this.f30368a = editText;
            this.f30369b = numberInfo;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String obj = this.f30368a.getText().toString();
            if (!TextUtils.isEmpty(obj) && TextUtils.isDigitsOnly(obj)) {
                this.f30369b.m28345c(Integer.valueOf(obj).intValue());
            }
        }
    }

    /* renamed from: j.a.s.u$e0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$e0.class */
    public class C13496e0 implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo f30370a;

        public C13496e0(DialogC13479u uVar, NumberInfo numberInfo) {
            this.f30370a = numberInfo;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f30370a.m28318i(z ? "Debug Telecom" : "");
        }
    }

    /* renamed from: j.a.s.u$e1 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$e1.class */
    public class C13497e1 implements TextWatcher {
        public C13497e1() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            DialogC13479u.this.f30318b = charSequence.toString();
        }
    }

    /* renamed from: j.a.s.u$f */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$f.class */
    public class C13498f extends C13529o1 {

        /* renamed from: a */
        public final /* synthetic */ EditText f30372a;

        /* renamed from: b */
        public final /* synthetic */ NumberInfo f30373b;

        public C13498f(DialogC13479u uVar, EditText editText, NumberInfo numberInfo) {
            this.f30372a = editText;
            this.f30373b = numberInfo;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String obj = this.f30372a.getText().toString();
            if (!TextUtils.isEmpty(obj) && TextUtils.isDigitsOnly(obj)) {
                this.f30373b.m28331f(Integer.valueOf(obj).intValue());
            }
        }
    }

    /* renamed from: j.a.s.u$f0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$f0.class */
    public class C13499f0 extends C13529o1 {

        /* renamed from: a */
        public final /* synthetic */ EditText f30374a;

        public C13499f0(DialogC13479u uVar, EditText editText) {
            this.f30374a = editText;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String obj = this.f30374a.getText().toString();
            if (!TextUtils.isEmpty(obj) && TextUtils.isDigitsOnly(obj)) {
                C13598x.m3860g().m3867a(C11068k.class, Long.valueOf(obj).longValue());
            }
        }
    }

    /* renamed from: j.a.s.u$f1 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$f1.class */
    public class C13500f1 implements C12617h0.AbstractC12623f {
        public C13500f1() {
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12617h0.AbstractC12623f
        public void onStop() {
            DialogC13479u.this.f30314L.m5723n();
        }
    }

    /* renamed from: j.a.s.u$g */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$g.class */
    public class C13501g extends C13529o1 {

        /* renamed from: a */
        public final /* synthetic */ EditText f30376a;

        /* renamed from: b */
        public final /* synthetic */ NumberInfo f30377b;

        public C13501g(DialogC13479u uVar, EditText editText, NumberInfo numberInfo) {
            this.f30376a = editText;
            this.f30377b = numberInfo;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String obj = this.f30376a.getText().toString();
            if (!TextUtils.isEmpty(obj) && TextUtils.isDigitsOnly(obj)) {
                this.f30377b.m28340d(Integer.valueOf(obj).intValue());
            }
        }
    }

    /* renamed from: j.a.s.u$g0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$g0.class */
    public class C13502g0 implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo f30378a;

        public C13502g0(DialogC13479u uVar, NumberInfo numberInfo) {
            this.f30378a = numberInfo;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f30378a.m28364a((NumberInfo.InfoSource) compoundButton.getTag());
            }
        }
    }

    /* renamed from: j.a.s.u$g1 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$g1.class */
    public class C13503g1 implements Action1<Object> {

        /* renamed from: j.a.s.u$g1$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/u$g1$a.class */
        public class RunnableC13504a implements Runnable {
            public RunnableC13504a(C13503g1 g1Var) {
            }

            @Override // java.lang.Runnable
            public void run() {
                CallStats.m28541a(false);
            }
        }

        public C13503g1() {
        }

        @Override // p660rx.functions.Action1
        public void call(Object obj) {
            if (obj instanceof C12507k) {
                C14037j3.m2731a().mo2704a(new C12511o(DialogC13479u.this.f30313K));
            } else if (obj instanceof C12502f) {
                DialogC13479u.this.m3945h();
                new Handler().postDelayed(new RunnableC13504a(this), 1000L);
            } else if (obj instanceof C12503g) {
                DialogC13479u.this.m3947g();
            }
        }
    }

    /* renamed from: j.a.s.u$h */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$h.class */
    public class C13505h extends C13529o1 {

        /* renamed from: a */
        public final /* synthetic */ EditText f30380a;

        /* renamed from: b */
        public final /* synthetic */ NumberInfo f30381b;

        public C13505h(DialogC13479u uVar, EditText editText, NumberInfo numberInfo) {
            this.f30380a = editText;
            this.f30381b = numberInfo;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String obj = this.f30380a.getText().toString();
            if (!TextUtils.isEmpty(obj) && TextUtils.isDigitsOnly(obj)) {
                this.f30381b.m28335e(Integer.valueOf(obj).intValue());
            }
        }
    }

    /* renamed from: j.a.s.u$h0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$h0.class */
    public class C13506h0 implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f30382a;

        public C13506h0(DialogC13479u uVar, EditText editText) {
            this.f30382a = editText;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C13598x.m3860g().m3867a(C11068k.class, z ? Long.valueOf(this.f30382a.getText().toString()).longValue() : 0L);
        }
    }

    /* renamed from: j.a.s.u$h1 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$h1.class */
    public class C13507h1 extends CursorAdapter {

        /* renamed from: a */
        public final /* synthetic */ int f30383a;

        /* renamed from: b */
        public final /* synthetic */ int f30384b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13507h1(DialogC13479u uVar, Context context, Cursor cursor, int i, int i2) {
            super(context, cursor);
            this.f30383a = i;
            this.f30384b = i2;
        }

        @Override // androidx.cursoradapter.widget.CursorAdapter
        public void bindView(View view, Context context, Cursor cursor) {
            ((TextView) view).setText(cursor.getString(this.f30383a) + "\n" + cursor.getString(this.f30384b) + "                                                                                                                                ");
        }

        @Override // androidx.cursoradapter.widget.CursorAdapter
        public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
            TextView textView = new TextView(context);
            textView.setMaxLines(2);
            textView.setPadding(C14217x3.m2201a(8.0f), C14217x3.m2201a(5.0f), C14217x3.m2201a(8.0f), C14217x3.m2201a(5.0f));
            textView.setText(cursor.getString(this.f30383a) + "\n" + cursor.getString(this.f30384b));
            return textView;
        }
    }

    /* renamed from: j.a.s.u$i */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$i.class */
    public class C13508i extends C13529o1 {

        /* renamed from: a */
        public final /* synthetic */ EditText f30385a;

        /* renamed from: b */
        public final /* synthetic */ NumberInfo f30386b;

        public C13508i(DialogC13479u uVar, EditText editText, NumberInfo numberInfo) {
            this.f30385a = editText;
            this.f30386b = numberInfo;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String obj = this.f30385a.getText().toString();
            if (!TextUtils.isEmpty(obj) && TextUtils.isDigitsOnly(obj)) {
                this.f30386b.m28327g(Integer.valueOf(obj).intValue());
            }
        }
    }

    /* renamed from: j.a.s.u$i0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$i0.class */
    public class C13509i0 implements RadioGroup.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ LinearLayout f30387a;

        /* renamed from: b */
        public final /* synthetic */ EditText f30388b;

        /* renamed from: c */
        public final /* synthetic */ NumberInfo f30389c;

        public C13509i0(DialogC13479u uVar, LinearLayout linearLayout, EditText editText, NumberInfo numberInfo) {
            this.f30387a = linearLayout;
            this.f30388b = editText;
            this.f30389c = numberInfo;
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i) {
            if (i > 0) {
                RadioButton radioButton = (RadioButton) this.f30387a.findViewById(i);
                String charSequence = TextUtils.isEmpty(this.f30388b.getText()) ? this.f30388b.getHint().toString() : this.f30388b.getText().toString();
                boolean z = false;
                String str = NumInfo.TYPE_MASSES;
                String str2 = "";
                switch (i) {
                    case R$id.rb_offline_name_type_card /* 2131363019 */:
                        z = true;
                        str2 = "Card description V3";
                        str = NumInfo.TYPE_WHOSCALLCARDV3;
                        break;
                    case R$id.rb_offline_name_type_messes /* 2131363020 */:
                        break;
                    default:
                        z = false;
                        str = NumInfo.TYPE_MASSES;
                        str2 = "";
                        break;
                }
                this.f30389c.m28358a(charSequence, str);
                this.f30389c.m28339d(str2);
                if (z) {
                    Images images = new Images();
                    images.meta.put("p", "https://s3-ap-northeast-1.amazonaws.com/whoscallclient");
                    images.meta.put("0", "/type_0/");
                    HashMap hashMap = new HashMap();
                    hashMap.put("0", Arrays.asList("1421052077.png", "1421052080.png", "1421052082.png"));
                    images.profile = hashMap;
                    this.f30389c.m28367a(images);
                }
            }
        }
    }

    /* renamed from: j.a.s.u$i1 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$i1.class */
    public class C13510i1 implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public final /* synthetic */ Cursor f30390a;

        /* renamed from: b */
        public final /* synthetic */ int f30391b;

        /* renamed from: c */
        public final /* synthetic */ Dialog f30392c;

        public C13510i1(Cursor cursor, int i, Dialog dialog) {
            this.f30390a = cursor;
            this.f30391b = i;
            this.f30392c = dialog;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            DialogC13479u.this.f30316O.setText(this.f30390a.getString(this.f30391b));
            this.f30392c.dismiss();
        }
    }

    /* renamed from: j.a.s.u$j */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$j.class */
    public class C13511j extends C13529o1 {

        /* renamed from: a */
        public final /* synthetic */ EditText f30394a;

        /* renamed from: b */
        public final /* synthetic */ NumberInfo f30395b;

        public C13511j(DialogC13479u uVar, EditText editText, NumberInfo numberInfo) {
            this.f30394a = editText;
            this.f30395b = numberInfo;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String obj = this.f30394a.getText().toString();
            if (!TextUtils.isEmpty(obj) && TextUtils.isDigitsOnly(obj)) {
                this.f30395b.m28319i(Integer.valueOf(obj).intValue());
            }
        }
    }

    /* renamed from: j.a.s.u$j0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$j0.class */
    public class C13512j0 implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ LinearLayout f30396a;

        /* renamed from: b */
        public final /* synthetic */ RadioGroup f30397b;

        /* renamed from: c */
        public final /* synthetic */ NumberInfo f30398c;

        /* renamed from: d */
        public final /* synthetic */ EditText f30399d;

        /* renamed from: j.a.s.u$j0$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/u$j0$a.class */
        public class C13513a extends C13529o1 {
            public C13513a() {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (C14217x3.m2160b(charSequence.toString())) {
                    C13512j0 j0Var = C13512j0.this;
                    j0Var.f30398c.m28330f(j0Var.f30399d.getHint().toString());
                    return;
                }
                C13512j0.this.f30398c.m28330f(charSequence.toString());
            }
        }

        public C13512j0(DialogC13479u uVar, LinearLayout linearLayout, RadioGroup radioGroup, NumberInfo numberInfo, EditText editText) {
            this.f30396a = linearLayout;
            this.f30397b = radioGroup;
            this.f30398c = numberInfo;
            this.f30399d = editText;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f30396a.setVisibility(0);
                ((RadioButton) this.f30397b.getChildAt(0)).setChecked(true);
                this.f30398c.m28330f(this.f30399d.getHint().toString());
                this.f30399d.addTextChangedListener(new C13513a());
                return;
            }
            this.f30399d.setText("");
            this.f30396a.setVisibility(8);
            this.f30397b.clearCheck();
            this.f30398c.m28346c();
            this.f30398c.m28339d("");
        }
    }

    /* renamed from: j.a.s.u$j1 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$j1.class */
    public class C13514j1 implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo f30401a;

        public C13514j1(DialogC13479u uVar, NumberInfo numberInfo) {
            this.f30401a = numberInfo;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f30401a.m28343c(z);
        }
    }

    /* renamed from: j.a.s.u$k */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$k.class */
    public class C13515k extends C13529o1 {

        /* renamed from: a */
        public final /* synthetic */ EditText f30402a;

        public C13515k(DialogC13479u uVar, EditText editText) {
            this.f30402a = editText;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String obj = this.f30402a.getText().toString();
            if (!TextUtils.isEmpty(obj) && TextUtils.isDigitsOnly(obj)) {
                C13598x.m3860g().m3867a(C11077m.class, Long.valueOf(obj).longValue());
            }
        }
    }

    /* renamed from: j.a.s.u$k0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$k0.class */
    public class C13516k0 extends C13529o1 {

        /* renamed from: a */
        public final /* synthetic */ EditText f30403a;

        /* renamed from: b */
        public final /* synthetic */ NumberInfo f30404b;

        public C13516k0(DialogC13479u uVar, EditText editText, NumberInfo numberInfo) {
            this.f30403a = editText;
            this.f30404b = numberInfo;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String obj = this.f30403a.getText().toString();
            if (!TextUtils.isEmpty(obj) && TextUtils.isDigitsOnly(obj)) {
                this.f30404b.m28323h(Integer.valueOf(obj).intValue());
            }
        }
    }

    /* renamed from: j.a.s.u$k1 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$k1.class */
    public class C13517k1 extends C13529o1 {

        /* renamed from: a */
        public final /* synthetic */ EditText f30405a;

        /* renamed from: b */
        public final /* synthetic */ NumberInfo f30406b;

        public C13517k1(DialogC13479u uVar, EditText editText, NumberInfo numberInfo) {
            this.f30405a = editText;
            this.f30406b = numberInfo;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String obj = this.f30405a.getText().toString();
            if (!TextUtils.isEmpty(obj) && TextUtils.isDigitsOnly(obj)) {
                this.f30406b.m28323h(Integer.valueOf(obj).intValue());
            }
        }
    }

    /* renamed from: j.a.s.u$l */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$l.class */
    public class C13518l implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ LinearLayout f30407a;

        /* renamed from: b */
        public final /* synthetic */ NumberInfo f30408b;

        /* renamed from: c */
        public final /* synthetic */ EditText f30409c;

        /* renamed from: d */
        public final /* synthetic */ EditText f30410d;

        /* renamed from: e */
        public final /* synthetic */ EditText f30411e;

        /* renamed from: f */
        public final /* synthetic */ EditText f30412f;

        /* renamed from: g */
        public final /* synthetic */ EditText f30413g;

        /* renamed from: h */
        public final /* synthetic */ EditText f30414h;

        public C13518l(DialogC13479u uVar, LinearLayout linearLayout, NumberInfo numberInfo, EditText editText, EditText editText2, EditText editText3, EditText editText4, EditText editText5, EditText editText6) {
            this.f30407a = linearLayout;
            this.f30408b = numberInfo;
            this.f30409c = editText;
            this.f30410d = editText2;
            this.f30411e = editText3;
            this.f30412f = editText4;
            this.f30413g = editText5;
            this.f30414h = editText6;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            int i = 0;
            this.f30407a.setVisibility(z ? 0 : 8);
            this.f30408b.m28345c(z ? Integer.valueOf(this.f30409c.getText().toString()).intValue() : 0);
            this.f30408b.m28331f(z ? Integer.valueOf(this.f30410d.getText().toString()).intValue() : 0);
            this.f30408b.m28340d(z ? Integer.valueOf(this.f30411e.getText().toString()).intValue() : 0);
            this.f30408b.m28335e(z ? Integer.valueOf(this.f30412f.getText().toString()).intValue() : 0);
            this.f30408b.m28327g(z ? Integer.valueOf(this.f30413g.getText().toString()).intValue() : 0);
            NumberInfo numberInfo = this.f30408b;
            if (z) {
                i = Integer.valueOf(this.f30414h.getText().toString()).intValue();
            }
            numberInfo.m28319i(i);
        }
    }

    /* renamed from: j.a.s.u$l0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$l0.class */
    public class C13519l0 implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo f30415a;

        /* renamed from: b */
        public final /* synthetic */ EditText f30416b;

        public C13519l0(DialogC13479u uVar, NumberInfo numberInfo, EditText editText) {
            this.f30415a = numberInfo;
            this.f30416b = editText;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f30415a.m28326g(compoundButton.getText().toString());
                this.f30415a.m28323h(Integer.valueOf(this.f30416b.getText().toString()).intValue());
            }
        }
    }

    /* renamed from: j.a.s.u$l1 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$l1.class */
    public class C13520l1 implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo f30417a;

        /* renamed from: b */
        public final /* synthetic */ EditText f30418b;

        public C13520l1(DialogC13479u uVar, NumberInfo numberInfo, EditText editText) {
            this.f30417a = numberInfo;
            this.f30418b = editText;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f30417a.m28326g(compoundButton.getText().toString());
                this.f30417a.m28323h(Integer.valueOf(this.f30418b.getText().toString()).intValue());
            }
        }
    }

    /* renamed from: j.a.s.u$m */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$m.class */
    public class C13521m implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo f30419a;

        public C13521m(DialogC13479u uVar, NumberInfo numberInfo) {
            this.f30419a = numberInfo;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f30419a.m28361a("TELMARKETING");
            } else {
                this.f30419a.m28336e();
            }
        }
    }

    /* renamed from: j.a.s.u$m0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$m0.class */
    public class C13522m0 implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ LinearLayout f30420a;

        /* renamed from: b */
        public final /* synthetic */ RadioGroup f30421b;

        /* renamed from: c */
        public final /* synthetic */ NumberInfo f30422c;

        public C13522m0(DialogC13479u uVar, LinearLayout linearLayout, RadioGroup radioGroup, NumberInfo numberInfo) {
            this.f30420a = linearLayout;
            this.f30421b = radioGroup;
            this.f30422c = numberInfo;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f30420a.setVisibility(0);
                ((RadioButton) this.f30421b.getChildAt(0)).setChecked(true);
                return;
            }
            this.f30421b.clearCheck();
            this.f30420a.setVisibility(8);
            this.f30422c.m28326g("");
        }
    }

    /* renamed from: j.a.s.u$m1 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$m1.class */
    public class View$OnClickListenerC13523m1 implements View.OnClickListener {

        /* renamed from: a */
        public View.OnClickListener f30423a;

        public View$OnClickListenerC13523m1(View.OnClickListener onClickListener) {
            this.f30423a = null;
            this.f30423a = onClickListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C13878a3.m3250a()) {
                View.OnClickListener onClickListener = this.f30423a;
                if (onClickListener != null) {
                    onClickListener.onClick(view);
                    return;
                }
                return;
            }
            C13878a3.m3213f(DialogC13479u.this.f30317a);
        }
    }

    /* renamed from: j.a.s.u$n */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$n.class */
    public class C13524n implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo f30425a;

        public C13524n(DialogC13479u uVar, NumberInfo numberInfo) {
            this.f30425a = numberInfo;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f30425a.m28360a(NumInfo.TYPE_MASSES, 10);
                this.f30425a.m28360a("Name2", 20);
            } else if (this.f30425a.m28392D() != null) {
                this.f30425a.m28392D().clear();
            }
        }
    }

    /* renamed from: j.a.s.u$n0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$n0.class */
    public class View$OnClickListenerC13525n0 implements View.OnClickListener {
        public View$OnClickListenerC13525n0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC13479u.this.m3949f();
        }
    }

    /* renamed from: j.a.s.u$n1 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$n1.class */
    public class C13526n1 {
        public C13526n1(DialogC13479u uVar, double d, double d2, String str, String str2) {
        }
    }

    /* renamed from: j.a.s.u$o */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$o.class */
    public class C13527o implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo f30427a;

        public C13527o(DialogC13479u uVar, NumberInfo numberInfo) {
            this.f30427a = numberInfo;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f30427a.m28351b(1);
            } else {
                this.f30427a.m28351b(0);
            }
        }
    }

    /* renamed from: j.a.s.u$o0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$o0.class */
    public class View$OnClickListenerC13528o0 implements View.OnClickListener {
        public View$OnClickListenerC13528o0(DialogC13479u uVar) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* renamed from: j.a.s.u$o1 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$o1.class */
    public static class C13529o1 implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: j.a.s.u$p */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$p.class */
    public class C13530p implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo f30428a;

        public C13530p(DialogC13479u uVar, NumberInfo numberInfo) {
            this.f30428a = numberInfo;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f30428a.m28350b("23F-1, No.102, Sec. 2, Roosevelt Rd., ZhongZheng Dist., Taipei City, Taiwan");
            } else {
                this.f30428a.m28350b("");
            }
        }
    }

    /* renamed from: j.a.s.u$p0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$p0.class */
    public class View$OnClickListenerC13531p0 implements View.OnClickListener {

        /* renamed from: j.a.s.u$p0$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/u$p0$a.class */
        public class RunnableC13532a implements Runnable {
            public RunnableC13532a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ((InputMethodManager) DialogC13479u.this.f30317a.getSystemService("input_method")).hideSoftInputFromWindow(DialogC13479u.this.f30316O.getWindowToken(), 0);
                Intent intent = new Intent("android.intent.action.NEW_OUTGOING_CALL");
                intent.putExtra("android.intent.extra.PHONE_NUMBER", DialogC13479u.this.f30318b);
                Intent intent2 = new Intent("android.intent.action.PHONE_STATE");
                intent2.putExtra(IapProductRealmObject.STATE, TelephonyManager.EXTRA_STATE_OFFHOOK);
                intent2.putExtra("incoming_number", DialogC13479u.this.f30318b);
                if (!DialogC13479u.this.f30325i.isSelected() || DialogC13479u.this.f30321e != 5) {
                    DialogC13479u.this.m3975a(intent);
                    DialogC13479u.this.m3975a(intent2);
                } else {
                    DialogC13479u.this.m3975a(intent2);
                    DialogC13479u.this.m3975a(intent);
                }
                DialogC13479u.this.f30336t.setVisibility(8);
                DialogC13479u.this.f30337u.setVisibility(0);
                DialogC13479u.this.f30316O.setVisibility(8);
                WindowManager windowManager = (WindowManager) MyApplication.m29013o().getSystemService("window");
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.type = C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003);
                layoutParams.width = -1;
                layoutParams.height = -2;
                layoutParams.gravity = 80;
                layoutParams.flags = 8;
                if (DialogC13479u.this.f30330n.getParent() == null) {
                    C13878a3.m3236a(windowManager, DialogC13479u.this.f30330n, layoutParams);
                }
            }
        }

        public View$OnClickListenerC13531p0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CallUtils.m26527q()) {
                DialogC13479u.this.m3956c();
                DialogC13479u.this.m3962a(true);
                return;
            }
            DialogC13479u.this.f30334r.setVisibility(4);
            DialogC13479u.this.f30333q.setVisibility(4);
            DialogC13479u.this.f30335s.setVisibility(8);
            DialogC13479u.this.m3956c();
            C12489b.m6010b().m6014a((Bundle) null);
            new Handler().postDelayed(new RunnableC13532a(), DialogC13479u.this.f30311I > 0 ? DialogC13479u.this.f30311I * 1000 : 0L);
        }
    }

    /* renamed from: j.a.s.u$q */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$q.class */
    public class C13533q extends C13529o1 {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo f30431a;

        public C13533q(DialogC13479u uVar, NumberInfo numberInfo) {
            this.f30431a = numberInfo;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.f30431a.m28322h(charSequence.toString());
        }
    }

    /* renamed from: j.a.s.u$q0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$q0.class */
    public class View$OnClickListenerC13534q0 implements View.OnClickListener {

        /* renamed from: j.a.s.u$q0$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/u$q0$a.class */
        public class RunnableC13535a implements Runnable {

            /* renamed from: j.a.s.u$q0$a$a */
            /* loaded from: classes2-dex2jar.jar:j/a/s/u$q0$a$a.class */
            public class RunnableC13536a implements Runnable {
                public RunnableC13536a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (CallStats.m28534h().m28539c().m28490m() == CallStats.BlockResult.SUCCESS) {
                        DialogC13479u.this.f30337u.performClick();
                    }
                }
            }

            public RunnableC13535a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ((InputMethodManager) DialogC13479u.this.f30317a.getSystemService("input_method")).hideSoftInputFromWindow(DialogC13479u.this.f30316O.getWindowToken(), 0);
                Intent intent = new Intent("android.intent.action.PHONE_STATE");
                intent.putExtra(IapProductRealmObject.STATE, TelephonyManager.EXTRA_STATE_RINGING);
                intent.putExtra("incoming_number", DialogC13479u.this.f30318b);
                intent.putExtra("debug_ui", true);
                DialogC13479u.this.m3975a(intent);
                DialogC13479u.this.f30336t.setVisibility(0);
                DialogC13479u.this.f30337u.setVisibility(0);
                DialogC13479u.this.f30316O.setVisibility(8);
                WindowManager windowManager = (WindowManager) MyApplication.m29013o().getSystemService("window");
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.type = C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003);
                layoutParams.width = -1;
                layoutParams.height = -2;
                layoutParams.gravity = 80;
                layoutParams.flags = 8;
                if (DialogC13479u.this.f30330n.getParent() == null) {
                    windowManager.addView(DialogC13479u.this.f30330n, layoutParams);
                }
                new Handler().postDelayed(new RunnableC13536a(), 1000L);
            }
        }

        public View$OnClickListenerC13534q0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CallUtils.m26527q()) {
                DialogC13479u.this.m3956c();
                DialogC13479u.this.m3962a(false);
                return;
            }
            int unused = DialogC13479u.this.f30311I;
            DialogC13479u.this.f30334r.setVisibility(4);
            DialogC13479u.this.f30333q.setVisibility(4);
            DialogC13479u.this.f30335s.setVisibility(8);
            DialogC13479u.this.m3956c();
            C12489b.m6010b().m6014a((Bundle) null);
            new Handler().postDelayed(new RunnableC13535a(), DialogC13479u.this.f30311I > 0 ? DialogC13479u.this.f30311I * 1000 : 0L);
        }
    }

    /* renamed from: j.a.s.u$r */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$r.class */
    public class C13537r extends C13529o1 {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo f30435a;

        public C13537r(DialogC13479u uVar, NumberInfo numberInfo) {
            this.f30435a = numberInfo;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.f30435a.m28357a(Arrays.asList(charSequence.toString().split(",")));
        }
    }

    /* renamed from: j.a.s.u$r0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$r0.class */
    public class C13538r0 implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ RadioGroup f30436a;

        /* renamed from: b */
        public final /* synthetic */ NumberInfo f30437b;

        public C13538r0(DialogC13479u uVar, RadioGroup radioGroup, NumberInfo numberInfo) {
            this.f30436a = radioGroup;
            this.f30437b = numberInfo;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f30436a.setVisibility(0);
                ((RadioButton) this.f30436a.getChildAt(0)).setChecked(true);
                return;
            }
            this.f30436a.clearCheck();
            this.f30436a.setVisibility(8);
            this.f30437b.m28364a(NumberInfo.InfoSource.SERVER);
        }
    }

    /* renamed from: j.a.s.u$s */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$s.class */
    public class C13539s extends C13529o1 {

        /* renamed from: a */
        public final /* synthetic */ EditText f30438a;

        public C13539s(DialogC13479u uVar, EditText editText) {
            this.f30438a = editText;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String obj = this.f30438a.getText().toString();
            if (!TextUtils.isEmpty(obj) && TextUtils.isDigitsOnly(obj)) {
                C13598x.m3860g().m3867a(C11038a.class, Long.valueOf(obj).longValue());
            }
        }
    }

    /* renamed from: j.a.s.u$s0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$s0.class */
    public class View$OnClickListenerC13540s0 implements View.OnClickListener {
        public View$OnClickListenerC13540s0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent("android.intent.action.PHONE_STATE");
            intent.putExtra(IapProductRealmObject.STATE, TelephonyManager.EXTRA_STATE_OFFHOOK);
            intent.putExtra("incoming_number", DialogC13479u.this.f30318b);
            DialogC13479u.this.m3975a(intent);
            DialogC13479u.this.f30333q.setVisibility(8);
            DialogC13479u.this.f30334r.setVisibility(0);
            DialogC13479u.this.f30335s.setVisibility(0);
            DialogC13479u.this.f30336t.setVisibility(8);
            DialogC13479u.this.f30337u.setVisibility(0);
            DialogC13479u.this.f30316O.setVisibility(0);
        }
    }

    /* renamed from: j.a.s.u$t */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$t.class */
    public class C13541t implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f30440a;

        public C13541t(DialogC13479u uVar, EditText editText) {
            this.f30440a = editText;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C13598x.m3860g().m3867a(C11038a.class, z ? Long.valueOf(this.f30440a.getText().toString()).longValue() : 0L);
        }
    }

    /* renamed from: j.a.s.u$t0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$t0.class */
    public class View$OnClickListenerC13542t0 implements View.OnClickListener {

        /* renamed from: j.a.s.u$t0$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/u$t0$a.class */
        public class RunnableC13543a implements Runnable {
            public RunnableC13543a(View$OnClickListenerC13542t0 t0Var) {
            }

            @Override // java.lang.Runnable
            public void run() {
                CallStats.m28541a(false);
            }
        }

        public View$OnClickListenerC13542t0() {
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0093 -> B:4:0x007c). Please submit an issue!!! */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent("android.intent.action.PHONE_STATE");
            intent.putExtra(IapProductRealmObject.STATE, TelephonyManager.EXTRA_STATE_IDLE);
            intent.putExtra("incoming_number", DialogC13479u.this.f30318b);
            DialogC13479u.this.m3975a(intent);
            DialogC13479u.this.f30333q.setVisibility(0);
            DialogC13479u.this.f30334r.setVisibility(0);
            DialogC13479u.this.f30336t.setVisibility(8);
            DialogC13479u.this.f30337u.setVisibility(8);
            DialogC13479u.this.f30316O.setVisibility(0);
            try {
                ((WindowManager) MyApplication.m29013o().getSystemService("window")).removeView(DialogC13479u.this.f30330n);
            } catch (Exception e) {
            }
            new Handler().postDelayed(new RunnableC13543a(this), 1000L);
        }
    }

    /* renamed from: j.a.s.u$u */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$u.class */
    public class C13544u implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo f30442a;

        /* renamed from: b */
        public final /* synthetic */ EditText f30443b;

        public C13544u(DialogC13479u uVar, NumberInfo numberInfo, EditText editText) {
            this.f30442a = numberInfo;
            this.f30443b = editText;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f30442a.whoscall.myTag = new NumberInfo.Whoscall.Tag(this.f30443b.getText().toString(), z ? 0L : System.currentTimeMillis());
        }
    }

    /* renamed from: j.a.s.u$u0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$u0.class */
    public class View$OnClickListenerC13545u0 implements View.OnClickListener {

        /* renamed from: j.a.s.u$u0$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/u$u0$a.class */
        public class RunnableC13546a implements Runnable {
            public RunnableC13546a(View$OnClickListenerC13545u0 u0Var) {
            }

            @Override // java.lang.Runnable
            public void run() {
                CallStats.m28541a(false);
            }
        }

        public View$OnClickListenerC13545u0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent a = NumberDetailActivity.m26859a(DialogC13479u.this.f30317a, DialogC13479u.this.f30318b, null, null);
            a.addFlags(335544320);
            DialogC13479u.this.f30317a.startActivity(a);
            DialogC13479u.this.m3956c();
            DialogC13479u.this.dismiss();
            new Handler().postDelayed(new RunnableC13546a(this), 2000L);
        }
    }

    /* renamed from: j.a.s.u$v */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$v.class */
    public class C13547v implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f30445a;

        public C13547v(DialogC13479u uVar, EditText editText) {
            this.f30445a = editText;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C13598x.m3860g().m3867a(C11077m.class, z ? Long.valueOf(this.f30445a.getText().toString()).longValue() : 0L);
        }
    }

    /* renamed from: j.a.s.u$v0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$v0.class */
    public class View$OnClickListenerC13548v0 implements View.OnClickListener {

        /* renamed from: j.a.s.u$v0$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/u$v0$a.class */
        public class C13549a implements TextWatcher {
            public C13549a() {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                DialogC13479u.this.f30319c = charSequence.toString();
            }
        }

        /* renamed from: j.a.s.u$v0$b */
        /* loaded from: classes2-dex2jar.jar:j/a/s/u$v0$b.class */
        public class C13550b implements CompoundButton.OnCheckedChangeListener {
            public C13550b() {
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                DialogC13479u.this.f30320d = z;
            }
        }

        /* renamed from: j.a.s.u$v0$c */
        /* loaded from: classes2-dex2jar.jar:j/a/s/u$v0$c.class */
        public class DialogInterface$OnClickListenerC13551c implements DialogInterface.OnClickListener {

            /* renamed from: j.a.s.u$v0$c$a */
            /* loaded from: classes2-dex2jar.jar:j/a/s/u$v0$c$a.class */
            public class RunnableC13552a implements Runnable {
                public RunnableC13552a(DialogInterface$OnClickListenerC13551c cVar) {
                }

                @Override // java.lang.Runnable
                public void run() {
                    CallStats.m28541a(false);
                }
            }

            public DialogInterface$OnClickListenerC13551c() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                DialogC13479u.this.m3956c();
                DialogC13479u uVar = DialogC13479u.this;
                C12780l.m5331a(uVar.m3963a(uVar.f30318b, DialogC13479u.this.f30319c, DialogC13479u.this.f30320d));
                new Handler().postDelayed(new RunnableC13552a(this), 2000L);
            }
        }

        public View$OnClickListenerC13548v0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LinearLayout linearLayout = new LinearLayout(DialogC13479u.this.f30317a);
            linearLayout.setOrientation(1);
            EditText editText = new EditText(DialogC13479u.this.f30317a);
            editText.setText(DialogC13479u.this.f30319c);
            editText.addTextChangedListener(new C13549a());
            CheckBox checkBox = new CheckBox(DialogC13479u.this.f30317a);
            checkBox.setText("Class 0 message");
            checkBox.setOnCheckedChangeListener(new C13550b());
            checkBox.setChecked(DialogC13479u.this.f30320d);
            linearLayout.addView(editText);
            linearLayout.addView(checkBox);
            new AlertDialog.Builder(DialogC13479u.this.f30317a).setView(linearLayout).setPositiveButton(DialogC13479u.this.f30317a.getString(R$string.okok), new DialogInterface$OnClickListenerC13551c()).setNegativeButton(DialogC13479u.this.f30317a.getString(R$string.cancel), (DialogInterface.OnClickListener) null).create().show();
        }
    }

    /* renamed from: j.a.s.u$w */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$w.class */
    public class C13553w implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ LinearLayout f30450a;

        /* renamed from: b */
        public final /* synthetic */ NumberInfo f30451b;

        /* renamed from: c */
        public final /* synthetic */ EditText f30452c;

        /* renamed from: d */
        public final /* synthetic */ CheckBox f30453d;

        /* renamed from: j.a.s.u$w$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/u$w$a.class */
        public class C13554a extends C13529o1 {
            public C13554a() {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                long j = 0;
                if (C14217x3.m2160b(charSequence.toString())) {
                    C13553w wVar = C13553w.this;
                    NumberInfo.Whoscall whoscall = wVar.f30451b.whoscall;
                    String charSequence2 = wVar.f30452c.getHint().toString();
                    if (!C13553w.this.f30453d.isChecked()) {
                        j = System.currentTimeMillis();
                    }
                    whoscall.myTag = new NumberInfo.Whoscall.Tag(charSequence2, j);
                    return;
                }
                NumberInfo.Whoscall whoscall2 = C13553w.this.f30451b.whoscall;
                String charSequence3 = charSequence.toString();
                if (!C13553w.this.f30453d.isChecked()) {
                    j = System.currentTimeMillis();
                }
                whoscall2.myTag = new NumberInfo.Whoscall.Tag(charSequence3, j);
            }
        }

        public C13553w(DialogC13479u uVar, LinearLayout linearLayout, NumberInfo numberInfo, EditText editText, CheckBox checkBox) {
            this.f30450a = linearLayout;
            this.f30451b = numberInfo;
            this.f30452c = editText;
            this.f30453d = checkBox;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f30450a.setVisibility(0);
                this.f30451b.whoscall.myTag = new NumberInfo.Whoscall.Tag(this.f30452c.getHint().toString(), this.f30453d.isChecked() ? 0L : System.currentTimeMillis());
                this.f30452c.addTextChangedListener(new C13554a());
                return;
            }
            this.f30452c.setText("");
            this.f30450a.setVisibility(8);
            this.f30451b.whoscall.myTag = null;
        }
    }

    /* renamed from: j.a.s.u$w0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$w0.class */
    public class View$OnClickListenerC13555w0 implements View.OnClickListener {

        /* renamed from: j.a.s.u$w0$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/u$w0$a.class */
        public class C13556a implements CompoundButton.OnCheckedChangeListener {
            public C13556a() {
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    DialogC13479u.this.f30318b = compoundButton.getText().toString().split("\n")[1];
                    DialogC13479u uVar = DialogC13479u.this;
                    uVar.f30316O.setText(uVar.f30318b);
                }
            }
        }

        public View$OnClickListenerC13555w0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC13479u.this.f30323g.setSelected(true);
            DialogC13479u.this.f30324h.setSelected(false);
            DialogC13479u.this.f30325i.setSelected(false);
            DialogC13479u.this.f30332p.removeAllViews();
            C11052i.m10328e().m10333c();
            LinearLayout linearLayout = new LinearLayout(DialogC13479u.this.f30317a);
            TextView textView = new TextView(DialogC13479u.this.f30317a);
            TextView textView2 = new TextView(DialogC13479u.this.f30317a);
            RadioGroup radioGroup = new RadioGroup(DialogC13479u.this.f30317a);
            View linearLayout2 = new LinearLayout(DialogC13479u.this.f30317a);
            linearLayout.setBackgroundColor(0);
            linearLayout.setOrientation(1);
            textView.setText((C12378a.f27903h.equalsIgnoreCase("https://api.whoscall.com") ? "Server: Product" : "Server: Test") + "   Country : " + C14017g4.m2810n().toUpperCase(Locale.US));
            textView.setPadding(10, 10, 10, 10);
            textView.setTextColor(Color.parseColor("#29232B"));
            linearLayout.addView(textView);
            textView2.setText("Default Real Number:");
            textView2.setPadding(10, 10, 10, 10);
            textView2.setTextColor(Color.parseColor("#29232B"));
            linearLayout.addView(linearLayout2);
            linearLayout.addView(textView2);
            for (String str : new String[]{"tw\n+886223681234", "kr\n+827043126211", "jp\n+819096856566", "in\n+919830288616", "id\n+62313554422", "th\n+6621343888", "hk\n+85231659394", "store\n+886225500561", "cardv1\n0123456660", "cardv2 without profile photo\n0123456661", "cardv2 without profile photo + spam\n0123456662", "cardv2 without profile photo + red\n0123456663", "cardv2 with profile photo\n0123456664", "cardv2 with profile photo + spam\n0123456665", "cardv2 with profile photo + red\n0123456666", "store2\n+886228832252", "語音回覆+CS\n0982469995", "語音回覆+HFB\n0982445669", "客戶服務+HRS\n0981404697", "人力招募+TLM\n0277056534", "語音回覆+TLM\n0277056536", "銷售電話+CS(no btn)\n0936447921", "語音回覆\n062421370", "客戶服務\n0227681413", "人力招募+CS\n0982469993", "預約確認+CS\n0982469994", "預約確認+HFB\n0982445668", "預約確認+TLM\n0277056535", "銷售電話+TLM(no btn)\n0982406075", "人力招募+HRS\n0981404698", "客戶服務+CS\n0982469992", "預約確認\n056222243", "銷售電話+CS\n0982469991", "銷售電話+TLM\n0982426686", "客戶服務+TLM\n0277056533", "銷售電話+HRS\n0981404696"}) {
                RadioButton radioButton = new RadioButton(DialogC13479u.this.f30317a);
                radioButton.setText(str);
                radioButton.setTextColor(Color.parseColor("#29232B"));
                radioButton.setOnCheckedChangeListener(new C13556a());
                radioGroup.addView(radioButton);
            }
            linearLayout.addView(radioGroup);
            DialogC13479u.this.f30332p.addView(linearLayout);
        }
    }

    /* renamed from: j.a.s.u$x */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$x.class */
    public class C13557x implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo f30457a;

        public C13557x(DialogC13479u uVar, NumberInfo numberInfo) {
            this.f30457a = numberInfo;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            NumberInfo numberInfo = this.f30457a;
            numberInfo.whoscall.mySpam = new NumberInfo.Whoscall.Spam(numberInfo.m28395A().reason, 0, z ? 0L : System.currentTimeMillis());
        }
    }

    /* renamed from: j.a.s.u$x0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$x0.class */
    public class View$OnClickListenerC13558x0 implements View.OnClickListener {

        /* renamed from: j.a.s.u$x0$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/u$x0$a.class */
        public class C13559a implements CompoundButton.OnCheckedChangeListener {
            public C13559a() {
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                DialogC13479u.this.f30322f = z;
            }
        }

        /* renamed from: j.a.s.u$x0$b */
        /* loaded from: classes2-dex2jar.jar:j/a/s/u$x0$b.class */
        public class C13560b implements CompoundButton.OnCheckedChangeListener {
            public C13560b() {
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    C13598x.m3860g().m3864c();
                    DialogC13479u.this.f30321e = ((Integer) compoundButton.getTag()).intValue();
                    int i = DialogC13479u.this.f30321e;
                    if (i == 1) {
                        C13598x.m3860g().m3861f();
                    } else if (i == 2) {
                        C13598x.m3860g().m3863d();
                    }
                }
            }
        }

        public View$OnClickListenerC13558x0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC13479u.this.f30321e = 0;
            DialogC13479u.this.f30322f = false;
            DialogC13479u.this.f30323g.setSelected(false);
            DialogC13479u.this.f30324h.setSelected(false);
            DialogC13479u.this.f30325i.setSelected(true);
            DialogC13479u.this.f30332p.removeAllViews();
            C11052i.m10328e().m10333c();
            LinearLayout linearLayout = new LinearLayout(DialogC13479u.this.f30317a);
            CheckBox checkBox = new CheckBox(DialogC13479u.this.f30317a);
            TextView textView = new TextView(DialogC13479u.this.f30317a);
            RadioGroup radioGroup = new RadioGroup(DialogC13479u.this.f30317a);
            linearLayout.setBackgroundColor(0);
            linearLayout.setOrientation(1);
            checkBox.setChecked(false);
            checkBox.setText("Simulate 9.0 duplicate event");
            checkBox.setOnCheckedChangeListener(new C13559a());
            textView.setText("Choose a special case:");
            textView.setPadding(10, 10, 10, 10);
            textView.setTextColor(Color.parseColor("#29232B"));
            linearLayout.addView(checkBox);
            linearLayout.addView(textView);
            String[] strArr = {"None", "Show \"searching\" dialog", "Show \"no internet\" dialog", "Miss RINGING event", "Miss RINGING and OFFHOOK events", "Simulate OFFHOOK -> OUTGOING"};
            for (int i = 0; i < strArr.length; i++) {
                RadioButton radioButton = new RadioButton(DialogC13479u.this.f30317a);
                radioButton.setText(strArr[i]);
                radioButton.setTextColor(Color.parseColor("#29232B"));
                radioButton.setTag(Integer.valueOf(i));
                radioButton.setOnCheckedChangeListener(new C13560b());
                radioGroup.addView(radioButton);
            }
            linearLayout.addView(radioGroup);
            DialogC13479u.this.f30332p.addView(linearLayout);
        }
    }

    /* renamed from: j.a.s.u$y */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$y.class */
    public class C13561y implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo f30461a;

        /* renamed from: b */
        public final /* synthetic */ CheckBox f30462b;

        public C13561y(DialogC13479u uVar, NumberInfo numberInfo, CheckBox checkBox) {
            this.f30461a = numberInfo;
            this.f30462b = checkBox;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f30461a.whoscall.mySpam = new NumberInfo.Whoscall.Spam(compoundButton.getText().toString(), 0, this.f30462b.isChecked() ? 0L : System.currentTimeMillis());
            }
        }
    }

    /* renamed from: j.a.s.u$y0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$y0.class */
    public class View$OnClickListenerC13562y0 implements View.OnClickListener {
        public View$OnClickListenerC13562y0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC13479u.this.f30324h.setSelected(true);
            DialogC13479u.this.f30323g.setSelected(false);
            DialogC13479u.this.f30325i.setSelected(false);
            C13598x.m3860g().m3864c();
            C13598x.m3860g().m3862e();
            DialogC13479u uVar = DialogC13479u.this;
            uVar.m3973a(uVar.f30332p);
        }
    }

    /* renamed from: j.a.s.u$z */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$z.class */
    public class C13563z implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ LinearLayout f30464a;

        /* renamed from: b */
        public final /* synthetic */ RadioGroup f30465b;

        /* renamed from: c */
        public final /* synthetic */ NumberInfo f30466c;

        public C13563z(DialogC13479u uVar, LinearLayout linearLayout, RadioGroup radioGroup, NumberInfo numberInfo) {
            this.f30464a = linearLayout;
            this.f30465b = radioGroup;
            this.f30466c = numberInfo;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (z) {
                this.f30464a.setVisibility(0);
                ((RadioButton) this.f30465b.getChildAt(0)).setChecked(true);
                return;
            }
            this.f30465b.clearCheck();
            this.f30464a.setVisibility(8);
            this.f30466c.whoscall.mySpam = null;
        }
    }

    /* renamed from: j.a.s.u$z0 */
    /* loaded from: classes2-dex2jar.jar:j/a/s/u$z0.class */
    public class View$OnClickListenerC13564z0 implements View.OnClickListener {
        public View$OnClickListenerC13564z0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DialogC13479u.this.f30311I == -1) {
                DialogC13479u.this.f30311I = 3;
            } else if (DialogC13479u.this.f30311I == 3) {
                DialogC13479u.this.f30311I = 15;
            } else if (DialogC13479u.this.f30311I == 15) {
                DialogC13479u.this.f30311I = 30;
            } else if (DialogC13479u.this.f30311I == 30) {
                DialogC13479u.this.f30311I = -1;
            }
            if (DialogC13479u.this.f30311I != -1) {
                Button button = DialogC13479u.this.f30341y;
                button.setText("⏳ " + DialogC13479u.this.f30311I);
                return;
            }
            DialogC13479u.this.f30341y.setText("⏳ 0");
        }
    }

    public DialogC13479u(Activity activity) {
        super(activity, Build.VERSION.SDK_INT >= 14 ? 16974135 : 16973833);
        this.f30320d = false;
        this.f30321e = 0;
        this.f30322f = false;
        this.f30311I = -1;
        new C13526n1(this, 25.0354336d, 121.5250962d, "taipei(tw)", "+886");
        new C13526n1(this, 35.7109696d, 139.7824747d, "tokyo(jp)", "+81");
        new C13526n1(this, 37.5651d, 126.98955d, "seoul(kr)", "+82");
        new C13526n1(this, 3.139003d, 101.6868554d, "Kuala Lumpur(my)", "+60");
        new C13526n1(this, 28.6454414d, 77.0907573d, "New Delhi(in)", "+91");
        new C13526n1(this, -6.2297465d, 106.829518d, "Jakarta(id)", "+62");
        new C13526n1(this, 38.8993487d, -77.0145665d, "Washington(us)", "+1");
        new C13526n1(this, 22.3700556d, 114.1535941d, "Hong Kong", "+852");
        new C13526n1(this, 31.2243489d, 121.4767528d, "Shanghai(cn)", "+86");
        new C13526n1(this, 10.768451d, 106.6943626d, "Ho Chi Minh City(vn)", "+84");
        new C13526n1(this, 14.5980716d, 120.9797033d, "Manila(ph)", "+63");
        new C13526n1(this, -33.7969235d, 150.9224326d, "Sydney(au)", "+61");
        requestWindowFeature(1);
        this.f30317a = activity;
    }

    /* renamed from: a */
    public static /* synthetic */ void m3974a(LinearLayout linearLayout, NumberInfo numberInfo, EditText editText, EditText editText2, CompoundButton compoundButton, boolean z) {
        if (z) {
            linearLayout.setVisibility(0);
            numberInfo.m28322h(editText.getText().toString());
            numberInfo.m28357a(Arrays.asList(editText2.getText().toString().split(",")));
            return;
        }
        linearLayout.setVisibility(8);
        numberInfo.m28322h("");
        numberInfo.m28357a(new ArrayList());
    }

    /* renamed from: a */
    public final Intent m3963a(String str, String str2, boolean z) {
        return new Intent().putExtra("whoscall_sms_is_fake", true).putExtra("whoscall_sms_is_fake_address", str).putExtra("whoscall_sms_is_fake_body", str2).putExtra("whoscall_sms_is_fake_is_class_zero", z);
    }

    /* renamed from: a */
    public final EnumC12488a m3971a(C12520b bVar, boolean z) {
        EnumC12488a a = !z ? bVar.m5952a(this.f30318b) : bVar.m5950b(this.f30318b);
        CallStats.Call c = CallStats.m28534h().m28539c();
        c.m28519a(c.m28492k());
        return a;
    }

    /* renamed from: a */
    public final void m3976a() {
        this.f30323g = new Button(this.f30317a);
        this.f30324h = new Button(this.f30317a);
        this.f30325i = new Button(this.f30317a);
        this.f30323g.setTextColor(Color.parseColor("#29232B"));
        this.f30324h.setTextColor(Color.parseColor("#29232B"));
        this.f30325i.setTextColor(Color.parseColor("#29232B"));
        this.f30331o = new LinearLayout(this.f30317a);
        this.f30326j = new LinearLayout(this.f30317a);
        this.f30326j.setOrientation(1);
        this.f30326j.setBackgroundColor(Color.parseColor("#FFFFFF"));
        this.f30327k = new LinearLayout(this.f30317a);
        this.f30327k.setOrientation(0);
        this.f30328l = new LinearLayout(this.f30317a);
        this.f30328l.setOrientation(0);
        this.f30329m = new LinearLayout(this.f30317a);
        this.f30329m.setOrientation(0);
        this.f30330n = new LinearLayout(this.f30317a);
        this.f30330n.setOrientation(0);
        this.f30333q = new Button(this.f30317a);
        this.f30334r = new Button(this.f30317a);
        this.f30335s = new Button(this.f30317a);
        this.f30336t = new Button(this.f30317a);
        this.f30337u = new Button(this.f30317a);
        this.f30338v = new Button(this.f30317a);
        this.f30339w = new Button(this.f30317a);
        this.f30340x = new Button(this.f30317a);
        this.f30341y = new Button(this.f30317a);
        this.f30342z = new Button(this.f30317a);
        this.f30303A = new Button(this.f30317a);
        this.f30316O = new EditText(this.f30317a);
        this.f30332p = new ScrollView(this.f30317a);
        this.f30333q.setTextColor(Color.parseColor("#29232B"));
        this.f30334r.setTextColor(Color.parseColor("#29232B"));
        this.f30335s.setTextColor(Color.parseColor("#29232B"));
        this.f30336t.setTextColor(Color.parseColor("#29232B"));
        this.f30337u.setTextColor(Color.parseColor("#29232B"));
        this.f30338v.setTextColor(Color.parseColor("#29232B"));
        this.f30339w.setTextColor(Color.parseColor("#29232B"));
        this.f30340x.setTextColor(Color.parseColor("#29232B"));
        this.f30341y.setTextColor(Color.parseColor("#29232B"));
        this.f30342z.setTextColor(Color.parseColor("#29232B"));
        this.f30303A.setTextColor(Color.parseColor("#29232B"));
        this.f30316O.setTextColor(Color.parseColor("#29232B"));
    }

    /* renamed from: a */
    public final void m3975a(Intent intent) {
        int i;
        C13921a.m3037a(C13921a.EnumC13926e.CD).m3038a();
        if (this.f30325i.isSelected() && "android.intent.action.PHONE_STATE".equals(intent.getAction())) {
            boolean equals = TelephonyManager.EXTRA_STATE_RINGING.equals(intent.getStringExtra(IapProductRealmObject.STATE));
            boolean equals2 = TelephonyManager.EXTRA_STATE_OFFHOOK.equals(intent.getStringExtra(IapProductRealmObject.STATE));
            if (equals && ((i = this.f30321e) == 3 || i == 4)) {
                return;
            }
            if (equals2 && this.f30321e == 4) {
                return;
            }
            if (this.f30322f) {
                Intent intent2 = (Intent) intent.clone();
                intent2.removeExtra("incoming_number");
                C12489b.m6010b().m6016a(intent2);
            }
        }
        C12489b.m6010b().m6016a(intent);
    }

    /* renamed from: a */
    public final void m3973a(ScrollView scrollView) {
        NumberInfo.InfoSource[] infoSourceArr;
        scrollView.removeAllViews();
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.f30317a).inflate(R$layout.debug_ui_customized_tab, (ViewGroup) null);
        scrollView.addView(linearLayout);
        final NumberInfo b = C13598x.m3860g().m3865b(C11077m.class);
        b.m28364a(NumberInfo.InfoSource.SERVER);
        CheckBox checkBox = (CheckBox) linearLayout.findViewById(R$id.cb_server_delay);
        EditText editText = (EditText) linearLayout.findViewById(R$id.et_server_delay);
        editText.addTextChangedListener(new C13515k(this, editText));
        checkBox.setOnCheckedChangeListener(new C13547v(this, editText));
        CheckBox checkBox2 = (CheckBox) linearLayout.findViewById(R$id.cb_server_cache);
        RadioGroup radioGroup = (RadioGroup) linearLayout.findViewById(R$id.rg_server_cache);
        for (NumberInfo.InfoSource infoSource : new NumberInfo.InfoSource[]{NumberInfo.InfoSource.DB_CACHE, NumberInfo.InfoSource.MEMORY_CACHE}) {
            RadioButton radioButton = new RadioButton(this.f30317a);
            radioButton.setText(infoSource.name());
            radioButton.setTag(infoSource);
            radioButton.setOnCheckedChangeListener(new C13502g0(this, b));
            radioGroup.addView(radioButton);
        }
        checkBox2.setOnCheckedChangeListener(new C13538r0(this, radioGroup, b));
        CheckBox checkBox3 = (CheckBox) linearLayout.findViewById(R$id.cb_server_name);
        LinearLayout linearLayout2 = (LinearLayout) linearLayout.findViewById(R$id.ll_server_name);
        EditText editText2 = (EditText) linearLayout.findViewById(R$id.et_server_name);
        RadioGroup radioGroup2 = (RadioGroup) linearLayout.findViewById(R$id.rg_server_name_type);
        radioGroup2.setOnCheckedChangeListener(new C13490c1(this, linearLayout, editText2, b));
        checkBox3.setOnCheckedChangeListener(new C13493d1(this, linearLayout2, radioGroup2, b, editText2));
        ((CheckBox) linearLayout.findViewById(R$id.cb_server_spam_badge)).setOnCheckedChangeListener(new C13514j1(this, b));
        CheckBox checkBox4 = (CheckBox) linearLayout.findViewById(R$id.cb_server_spam);
        LinearLayout linearLayout3 = (LinearLayout) linearLayout.findViewById(R$id.ll_server_spam);
        EditText editText3 = (EditText) linearLayout.findViewById(R$id.et_server_spam_level);
        editText3.addTextChangedListener(new C13517k1(this, editText3, b));
        RadioGroup radioGroup3 = (RadioGroup) linearLayout.findViewById(R$id.rg_server_spam);
        String[] strArr = {"TELMARKETING", "FRAUD", "HARASSMENT", "OTHER", "CALLCENTER"};
        C13520l1 l1Var = new C13520l1(this, b, editText3);
        for (String str : strArr) {
            RadioButton radioButton2 = new RadioButton(this.f30317a);
            radioButton2.setText(str);
            radioButton2.setOnCheckedChangeListener(l1Var);
            radioGroup3.addView(radioButton2);
        }
        checkBox4.setOnCheckedChangeListener(new C13480a(this, linearLayout3, radioGroup3, b));
        ((CheckBox) linearLayout.findViewById(R$id.cb_server_red)).setOnCheckedChangeListener(new C13485b(this, b));
        CheckBox checkBox5 = (CheckBox) linearLayout.findViewById(R$id.cb_server_categories);
        RadioGroup radioGroup4 = (RadioGroup) linearLayout.findViewById(R$id.rg_server_categories);
        Iterator<String> it = C14327z3.m1567a().iterator();
        while (it.hasNext()) {
            String next = it.next();
            RadioButton radioButton3 = new RadioButton(this.f30317a);
            radioButton3.setText(C14327z3.m1562c(next));
            radioButton3.setTag(next);
            radioButton3.setOnCheckedChangeListener(new C13488c(this, b));
            radioGroup4.addView(radioButton3);
        }
        checkBox5.setOnCheckedChangeListener(new C13491d(this, radioGroup4, b));
        CheckBox checkBox6 = (CheckBox) linearLayout.findViewById(R$id.cb_server_stats);
        LinearLayout linearLayout4 = (LinearLayout) linearLayout.findViewById(R$id.ll_server_stats);
        EditText editText4 = (EditText) linearLayout.findViewById(R$id.et_server_callin_count);
        EditText editText5 = (EditText) linearLayout.findViewById(R$id.et_server_offhook_count);
        EditText editText6 = (EditText) linearLayout.findViewById(R$id.et_server_contact_count);
        EditText editText7 = (EditText) linearLayout.findViewById(R$id.et_server_favor_count);
        EditText editText8 = (EditText) linearLayout.findViewById(R$id.et_server_spam_count);
        EditText editText9 = (EditText) linearLayout.findViewById(R$id.et_server_tag_count);
        editText4.addTextChangedListener(new C13495e(this, editText4, b));
        editText5.addTextChangedListener(new C13498f(this, editText5, b));
        editText6.addTextChangedListener(new C13501g(this, editText6, b));
        editText7.addTextChangedListener(new C13505h(this, editText7, b));
        editText8.addTextChangedListener(new C13508i(this, editText8, b));
        editText9.addTextChangedListener(new C13511j(this, editText9, b));
        checkBox6.setOnCheckedChangeListener(new C13518l(this, linearLayout4, b, editText4, editText5, editText6, editText7, editText8, editText9));
        ((CheckBox) linearLayout.findViewById(R$id.cb_server_spam_candidates)).setOnCheckedChangeListener(new C13521m(this, b));
        ((CheckBox) linearLayout.findViewById(R$id.cb_server_name_candidates)).setOnCheckedChangeListener(new C13524n(this, b));
        ((CheckBox) linearLayout.findViewById(R$id.cb_server_question)).setOnCheckedChangeListener(new C13527o(this, b));
        ((CheckBox) linearLayout.findViewById(R$id.cb_server_address)).setOnCheckedChangeListener(new C13530p(this, b));
        CheckBox checkBox7 = (CheckBox) linearLayout.findViewById(R$id.cb_server_spoof);
        final LinearLayout linearLayout5 = (LinearLayout) linearLayout.findViewById(R$id.ll_server_spoof);
        final EditText editText10 = (EditText) linearLayout.findViewById(R$id.et_server_sp_name);
        final EditText editText11 = (EditText) linearLayout.findViewById(R$id.et_server_sp_num);
        editText10.addTextChangedListener(new C13533q(this, b));
        editText11.addTextChangedListener(new C13537r(this, b));
        checkBox7.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: j.a.s.b
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                DialogC13479u.m3974a(linearLayout5, b, editText10, editText11, compoundButton, z);
            }
        });
        ((CheckBox) linearLayout.findViewById(R$id.cb_call_out_only)).setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: j.a.s.a
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                NumberInfo.this.m28355a(z);
            }
        });
        NumberInfo b2 = C13598x.m3860g().m3865b(C11038a.class);
        CheckBox checkBox8 = (CheckBox) linearLayout.findViewById(R$id.cb_user_delay);
        EditText editText12 = (EditText) linearLayout.findViewById(R$id.et_user_delay);
        editText12.addTextChangedListener(new C13539s(this, editText12));
        checkBox8.setOnCheckedChangeListener(new C13541t(this, editText12));
        CheckBox checkBox9 = (CheckBox) linearLayout.findViewById(R$id.cb_user_my_tag);
        LinearLayout linearLayout6 = (LinearLayout) linearLayout.findViewById(R$id.ll_user_my_tag);
        EditText editText13 = (EditText) linearLayout.findViewById(R$id.et_user_my_tag);
        CheckBox checkBox10 = (CheckBox) linearLayout.findViewById(R$id.cb_user_my_tag_expired);
        checkBox10.setOnCheckedChangeListener(new C13544u(this, b2, editText13));
        checkBox9.setOnCheckedChangeListener(new C13553w(this, linearLayout6, b2, editText13, checkBox10));
        CheckBox checkBox11 = (CheckBox) linearLayout.findViewById(R$id.cb_user_my_spam);
        LinearLayout linearLayout7 = (LinearLayout) linearLayout.findViewById(R$id.ll_user_my_spam);
        CheckBox checkBox12 = (CheckBox) linearLayout.findViewById(R$id.cb_user_my_spam_expired);
        checkBox12.setOnCheckedChangeListener(new C13557x(this, b2));
        RadioGroup radioGroup5 = (RadioGroup) linearLayout.findViewById(R$id.rg_user_my_spam);
        C13561y yVar = new C13561y(this, b2, checkBox12);
        for (String str2 : new String[]{"TELMARKETING", "FRAUD", "HARASSMENT", "OTHER", "CALLCENTER"}) {
            RadioButton radioButton4 = new RadioButton(this.f30317a);
            radioButton4.setText(str2);
            radioButton4.setOnCheckedChangeListener(yVar);
            radioGroup5.addView(radioButton4);
        }
        checkBox11.setOnCheckedChangeListener(new C13563z(this, linearLayout7, radioGroup5, b2));
        ((CheckBox) linearLayout.findViewById(R$id.cb_user_notes)).setOnCheckedChangeListener(new C13481a0(this, (LinearLayout) linearLayout.findViewById(R$id.ll_user_notes), b2, (EditText) linearLayout.findViewById(R$id.et_user_note)));
        NumberInfo b3 = C13598x.m3860g().m3865b(C11049g.class);
        CheckBox checkBox13 = (CheckBox) linearLayout.findViewById(R$id.cb_minor_delay);
        EditText editText14 = (EditText) linearLayout.findViewById(R$id.et_minor_delay);
        editText14.addTextChangedListener(new C13486b0(this, editText14));
        checkBox13.setOnCheckedChangeListener(new C13489c0(this, editText14));
        ((CheckBox) linearLayout.findViewById(R$id.cb_minor_favored)).setOnCheckedChangeListener(new C13492d0(this, b3));
        ((CheckBox) linearLayout.findViewById(R$id.cb_minor_telecom)).setOnCheckedChangeListener(new C13496e0(this, b3));
        NumberInfo b4 = C13598x.m3860g().m3865b(C11068k.class);
        b4.m28364a(NumberInfo.InfoSource.OFFLINE_DB);
        CheckBox checkBox14 = (CheckBox) linearLayout.findViewById(R$id.cb_offline_delay);
        EditText editText15 = (EditText) linearLayout.findViewById(R$id.et_offline_delay);
        editText15.addTextChangedListener(new C13499f0(this, editText15));
        checkBox14.setOnCheckedChangeListener(new C13506h0(this, editText15));
        CheckBox checkBox15 = (CheckBox) linearLayout.findViewById(R$id.cb_offline_name);
        LinearLayout linearLayout8 = (LinearLayout) linearLayout.findViewById(R$id.ll_offline_name);
        RadioGroup radioGroup6 = (RadioGroup) linearLayout.findViewById(R$id.rg_offline_name_type);
        EditText editText16 = (EditText) linearLayout.findViewById(R$id.et_offline_name);
        radioGroup6.setOnCheckedChangeListener(new C13509i0(this, linearLayout, editText16, b4));
        checkBox15.setOnCheckedChangeListener(new C13512j0(this, linearLayout8, radioGroup6, b4, editText16));
        CheckBox checkBox16 = (CheckBox) linearLayout.findViewById(R$id.cb_offline_spam);
        LinearLayout linearLayout9 = (LinearLayout) linearLayout.findViewById(R$id.ll_offline_spam);
        RadioGroup radioGroup7 = (RadioGroup) linearLayout.findViewById(R$id.rg_offline_spam);
        EditText editText17 = (EditText) linearLayout.findViewById(R$id.et_offline_spam_level);
        editText17.addTextChangedListener(new C13516k0(this, editText17, b4));
        C13519l0 l0Var = new C13519l0(this, b4, editText17);
        for (String str3 : strArr) {
            RadioButton radioButton5 = new RadioButton(this.f30317a);
            radioButton5.setText(str3);
            radioButton5.setOnCheckedChangeListener(l0Var);
            radioGroup7.addView(radioButton5);
        }
        checkBox16.setOnCheckedChangeListener(new C13522m0(this, linearLayout9, radioGroup7, b4));
    }

    /* renamed from: a */
    public final void m3962a(boolean z) {
        this.f30313K = new C12492c();
        this.f30313K.m6001a(CallUtils.m26546d());
        this.f30313K.m5998b(C13891a.m3168a());
        this.f30313K.m5995c(C13892b.m3139a());
        this.f30314L = new C12617h0(this.f30317a, new C13500f1());
        this.f30314L.m5738b(false);
        this.f30314L.m5735c(true);
        this.f30313K.m6003a(this.f30314L);
        this.f30315N = new C12520b(this.f30313K, this.f30314L);
        if (m3971a(this.f30315N, z) != EnumC12488a.BLOCKED) {
            Intent intent = new Intent(this.f30317a, WCInCallActivity.class);
            intent.putExtra(WCInCallActivity.f12165t, true);
            intent.putExtra(WCInCallActivity.f12166u, z ? 4 : 2);
            intent.setFlags(268435456);
            this.f30317a.startActivity(intent);
            return;
        }
        CallStats.m28541a(false);
    }

    /* renamed from: b */
    public final void m3961b() {
        this.f30312J = C14037j3.m2731a().mo2703a((Action1) new C13503g1());
    }

    /* renamed from: c */
    public final void m3956c() {
        boolean z;
        if (!this.f30323g.isSelected()) {
            z = true;
            if (this.f30325i.isSelected()) {
                int i = this.f30321e;
                z = true;
                if (i != 2) {
                    if (i == 1) {
                        z = true;
                    }
                }
            }
            CallStats.m28541a(z);
        }
        z = false;
        CallStats.m28541a(z);
    }

    /* renamed from: d */
    public final void m3953d() {
        this.f30340x.setOnClickListener(new View$OnClickListenerC13525n0());
        this.f30331o.setOnClickListener(new View$OnClickListenerC13528o0(this));
        this.f30333q.setOnClickListener(new View$OnClickListenerC13523m1(new View$OnClickListenerC13531p0()));
        View$OnClickListenerC13523m1 m1Var = new View$OnClickListenerC13523m1(new View$OnClickListenerC13534q0());
        this.f30334r.setOnClickListener(m1Var);
        this.f30335s.setOnClickListener(m1Var);
        this.f30336t.setOnClickListener(new View$OnClickListenerC13540s0());
        this.f30337u.setOnClickListener(new View$OnClickListenerC13542t0());
        this.f30339w.setOnClickListener(new View$OnClickListenerC13545u0());
        this.f30338v.setOnClickListener(new View$OnClickListenerC13548v0());
        this.f30323g.setOnClickListener(new View$OnClickListenerC13555w0());
        this.f30325i.setOnClickListener(new View$OnClickListenerC13558x0());
        this.f30324h.setOnClickListener(new View$OnClickListenerC13562y0());
        this.f30341y.setOnClickListener(new View$OnClickListenerC13564z0());
        this.f30303A.setOnClickListener(new View$OnClickListenerC13483a1());
        this.f30342z.setOnClickListener(new View$OnClickListenerC13487b1());
        this.f30316O.addTextChangedListener(new C13497e1());
    }

    /* renamed from: e */
    public final void m3951e() {
        int a = C14217x3.m2201a(45.0f);
        this.f30304B = new LinearLayout.LayoutParams(0, -1);
        this.f30304B.weight = 1.0f;
        this.f30305C = new LinearLayout.LayoutParams(-1, -2);
        this.f30306D = new LinearLayout.LayoutParams(0, -2);
        this.f30306D.weight = 1.0f;
        this.f30307E = new LinearLayout.LayoutParams(-2, -2);
        this.f30308F = new LinearLayout.LayoutParams(-2, -2);
        this.f30308F.weight = 1.0f;
        this.f30309G = new LinearLayout.LayoutParams(-1, 0);
        this.f30309G.weight = 1.0f;
        this.f30310H = new LinearLayout.LayoutParams(1, C14217x3.m2201a(40.0f));
        this.f30310H.weight = 1.0f;
        this.f30331o.setBackgroundColor(-1);
        this.f30331o.setOrientation(1);
        this.f30331o.setFocusableInTouchMode(true);
        this.f30331o.setFocusable(true);
        this.f30323g.setText("Real number");
        this.f30324h.setText("Customized");
        this.f30325i.setText("Others");
        this.f30323g.setLines(2);
        this.f30324h.setLines(2);
        this.f30325i.setLines(2);
        this.f30323g.setTextSize(11.0f);
        this.f30324h.setTextSize(11.0f);
        this.f30325i.setTextSize(11.0f);
        this.f30323g.setGravity(17);
        this.f30324h.setGravity(17);
        this.f30325i.setGravity(17);
        this.f30323g.setBackgroundResource(R$drawable.debug_indicator);
        this.f30324h.setBackgroundResource(R$drawable.debug_indicator);
        this.f30325i.setBackgroundResource(R$drawable.debug_indicator);
        this.f30323g.setPadding(0, 0, 0, 0);
        this.f30324h.setPadding(0, 0, 0, 0);
        this.f30325i.setPadding(0, 0, 0, 0);
        this.f30333q.setText("☏ Outgoing");
        this.f30333q.setBackgroundResource(R$drawable.call_normal_bg);
        this.f30333q.setMinHeight(a);
        Button button = this.f30333q;
        button.setPadding(0, button.getPaddingTop(), 0, this.f30333q.getPaddingBottom());
        this.f30334r.setText("☎ Incoming");
        this.f30334r.setBackgroundResource(R$drawable.call_normal_bg);
        this.f30334r.setMinHeight(a);
        Button button2 = this.f30334r;
        button2.setPadding(0, button2.getPaddingTop(), 0, this.f30334r.getPaddingBottom());
        this.f30334r.setMinHeight(a);
        Button button3 = this.f30334r;
        button3.setPadding(0, button3.getPaddingTop(), 0, this.f30334r.getPaddingBottom());
        this.f30335s.setText("Incoming (call waiting)");
        this.f30335s.setMinHeight(a);
        this.f30335s.setBackgroundResource(R$drawable.call_normal_bg);
        this.f30303A.setText("others");
        this.f30303A.setMinHeight(a);
        this.f30303A.setBackgroundResource(R$drawable.call_normal_bg);
        this.f30338v.setText("Sms");
        this.f30338v.setMinHeight(a);
        this.f30338v.setBackgroundResource(R$drawable.call_normal_bg);
        this.f30339w.setText("NDP");
        this.f30339w.setMinHeight(a);
        this.f30339w.setBackgroundResource(R$drawable.call_normal_bg);
        this.f30342z.setText("BlockList");
        this.f30342z.setMinHeight(a);
        this.f30342z.setBackgroundResource(R$drawable.call_normal_bg);
        this.f30341y.setText("⏳ 0");
        this.f30341y.setMinHeight(a);
        this.f30341y.setBackgroundResource(R$drawable.call_normal_bg);
        this.f30341y.setTextColor(-7829368);
        this.f30336t.setText("Pick up");
        this.f30336t.setBackgroundColor(Color.parseColor("#00aa00"));
        this.f30336t.setTextColor(-1);
        this.f30337u.setText("Hang up");
        this.f30337u.setBackgroundColor(Color.parseColor("#aa0000"));
        this.f30337u.setTextColor(-1);
        this.f30316O.setText(this.f30318b);
        this.f30340x.setText(CallAction.CONTACT);
        this.f30340x.setMinHeight(a);
        this.f30340x.setBackgroundResource(R$drawable.call_normal_bg);
        this.f30326j.addView(this.f30327k, this.f30305C);
        this.f30326j.addView(this.f30329m, this.f30305C);
        LinearLayout linearLayout = new LinearLayout(this.f30317a);
        this.f30318b = !TextUtils.isEmpty(C14137r4.m2374d()) ? C14137r4.m2374d() : "+886266414688";
        this.f30319c = "+886223681234\nwww.naver.com (Naver safe)\nhttp://vo.to/2Y6 (Naver unsafe)\nhttp://www.goo.gl/wLyRyQ (Naver warning)";
        this.f30327k.addView(this.f30316O, this.f30306D);
        this.f30327k.addView(this.f30340x, this.f30307E);
        this.f30329m.addView(this.f30303A, this.f30308F);
        this.f30329m.addView(this.f30342z, this.f30308F);
        this.f30329m.addView(this.f30339w, this.f30308F);
        this.f30329m.addView(this.f30338v, this.f30308F);
        this.f30328l.addView(this.f30333q, this.f30304B);
        this.f30328l.addView(this.f30334r, this.f30304B);
        this.f30328l.addView(this.f30341y, this.f30307E);
        this.f30330n.addView(this.f30336t, this.f30304B);
        this.f30330n.addView(this.f30337u, this.f30304B);
        this.f30330n.addView(this.f30335s, this.f30307E);
        linearLayout.setOrientation(0);
        linearLayout.setBaselineAligned(false);
        linearLayout.addView(this.f30324h, this.f30310H);
        linearLayout.addView(this.f30323g, this.f30310H);
        linearLayout.addView(this.f30325i, this.f30310H);
        this.f30331o.addView(linearLayout);
        this.f30331o.addView(this.f30332p, this.f30309G);
        this.f30331o.addView(this.f30326j);
        this.f30331o.addView(this.f30328l);
        this.f30332p.setBackgroundColor(Color.parseColor("#F0F7FA"));
        this.f30333q.setVisibility(0);
        this.f30334r.setVisibility(0);
        this.f30335s.setVisibility(8);
        this.f30336t.setVisibility(8);
        this.f30337u.setVisibility(8);
        this.f30316O.setVisibility(0);
        this.f30316O.setText(this.f30318b);
        this.f30324h.performClick();
    }

    /* renamed from: f */
    public void m3949f() {
        Cursor query = this.f30317a.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, null, null, null);
        if (query != null) {
            int columnIndex = query.getColumnIndex("data1");
            C13507h1 h1Var = new C13507h1(this, this.f30317a, query, query.getColumnIndex(CacheIndexRealmObject.DISPLAY_NAME), columnIndex);
            Dialog dialog = new Dialog(this.f30317a);
            ListView listView = new ListView(this.f30317a);
            listView.setAdapter((ListAdapter) h1Var);
            listView.setPadding(C14217x3.m2201a(3.0f), C14217x3.m2201a(15.0f), C14217x3.m2201a(3.0f), C14217x3.m2201a(5.0f));
            listView.setOnItemClickListener(new C13510i1(query, columnIndex, dialog));
            dialog.requestWindowFeature(1);
            dialog.setContentView(listView);
            dialog.show();
        }
    }

    /* renamed from: g */
    public final void m3947g() {
        this.f30315N.m5951b();
    }

    /* renamed from: h */
    public final void m3945h() {
        CallStats.m28534h().m28539c().m28519a((CallStats.Call.Remote) null);
        this.f30315N.m5955a();
        C14037j3.m2731a().mo2704a(new C12516s());
    }

    /* renamed from: i */
    public final void m3943i() {
        Subscription subscription = this.f30312J;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f30312J.unsubscribe();
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m3961b();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m3976a();
        m3951e();
        m3953d();
        setContentView(this.f30331o);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m3943i();
        this.f30317a.finish();
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStop();
        this.f30324h.performClick();
    }
}
