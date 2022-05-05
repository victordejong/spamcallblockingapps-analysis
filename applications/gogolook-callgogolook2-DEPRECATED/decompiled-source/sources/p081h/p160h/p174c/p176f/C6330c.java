package p081h.p160h.p174c.p176f;

import android.content.Context;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.gogolook.developmode.p050ui.FreeLayout;
import com.gogolook.developtool.R$drawable;
/* renamed from: h.h.c.f.c */
/* loaded from: classes2-dex2jar.jar:h/h/c/f/c.class */
public class C6330c extends FreeLayout {

    /* renamed from: A */
    public AutoCompleteTextView f15698A;

    /* renamed from: B */
    public CheckBox f15699B;

    /* renamed from: C */
    public CheckBox f15700C;

    /* renamed from: D */
    public FreeLayout f15701D;

    /* renamed from: E */
    public TextView f15702E;

    /* renamed from: i */
    public RelativeLayout f15703i;

    /* renamed from: j */
    public TextView f15704j;

    /* renamed from: k */
    public TextView f15705k;

    /* renamed from: l */
    public FreeLayout f15706l;

    /* renamed from: m */
    public Button f15707m;

    /* renamed from: n */
    public Button f15708n;

    /* renamed from: o */
    public LinearLayout f15709o;

    /* renamed from: p */
    public FreeLayout f15710p;

    /* renamed from: q */
    public TextView f15711q;

    /* renamed from: r */
    public FreeLayout f15712r;

    /* renamed from: s */
    public TextView f15713s;

    /* renamed from: t */
    public FreeLayout f15714t;

    /* renamed from: u */
    public EditText f15715u;

    /* renamed from: v */
    public FreeLayout f15716v;

    /* renamed from: w */
    public EditText f15717w;

    /* renamed from: x */
    public FreeLayout f15718x;

    /* renamed from: y */
    public EditText f15719y;

    /* renamed from: z */
    public FreeLayout f15720z;

    public C6330c(Context context) {
        super(context);
        m32233a(640, 960, 4096);
        setBackgroundColor(-1);
        this.f15703i = (RelativeLayout) m32228a(new RelativeLayout(context), -1, -2, new int[]{10});
        this.f15703i.setPadding(15, 5, 15, 5);
        this.f15703i.setBackgroundColor(-13553359);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        ((RelativeLayout.LayoutParams) linearLayout.getLayoutParams()).addRule(15);
        linearLayout.setOrientation(1);
        this.f15703i.addView(linearLayout);
        this.f15704j = new TextView(context);
        this.f15704j.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.f15704j.setTextColor(-1);
        this.f15704j.setTextSize(18.0f);
        this.f15704j.setGravity(16);
        linearLayout.addView(this.f15704j);
        this.f15705k = new TextView(context);
        this.f15705k.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.f15705k.setTextColor(-7829368);
        this.f15705k.setTextSize(14.0f);
        this.f15705k.setGravity(16);
        this.f15705k.setVisibility(8);
        linearLayout.addView(this.f15705k);
        this.f15706l = (FreeLayout) m32228a(new FreeLayout(context), -1, -2, new int[]{14, 12});
        this.f15706l.m32233a(640, 960, 4096);
        this.f15707m = (Button) this.f15706l.m32232a(new Button(context), 320, -2);
        this.f15707m.setTextSize(16.0f);
        this.f15707m.setGravity(17);
        this.f15707m.setTextColor(-7958347);
        this.f15707m.setText("Cancel");
        this.f15707m.setBackgroundColor(-13024408);
        m32221b(this.f15707m, 0, 25, 0, 25);
        this.f15708n = (Button) this.f15706l.m32230a(new Button(context), 320, -2, this.f15707m, new int[]{1});
        this.f15708n.setTextSize(16.0f);
        this.f15708n.setGravity(17);
        this.f15708n.setTextColor(-1);
        this.f15708n.setText("Feedback");
        this.f15708n.setBackgroundColor(-13024408);
        m32221b(this.f15708n, 0, 25, 0, 25);
        this.f15706l.m32227a(new Button(context), 1, -2, new int[]{14}, this.f15708n, new int[]{8, 6}).setBackgroundColor(-11251325);
        FreeLayout freeLayout = (FreeLayout) m32226a(new FreeLayout(context), -1, -1, new int[]{14}, this.f15703i, new int[]{3}, this.f15706l, new int[]{2});
        freeLayout.m32233a(640, 960, 4096);
        FreeLayout b = freeLayout.m32220b(new FreeLayout(context), -1, -1);
        b.m32233a(640, 960, 4096);
        this.f15709o = (LinearLayout) b.m32232a(new LinearLayout(context), -1, -1);
        this.f15709o.setOrientation(1);
        this.f15709o.setPadding(0, 0, 0, 25);
        TextView textView = (TextView) m32225a(this.f15709o, new TextView(context), -1, -2);
        textView.setBackgroundColor(-12500671);
        textView.setText("Basic Parameters");
        textView.setTextSize(16.0f);
        textView.setTextColor(-1);
        m32221b(textView, 40, 5, 40, 5);
        this.f15710p = (FreeLayout) m32225a(this.f15709o, new FreeLayout(context), -1, -2);
        this.f15710p.setBackgroundColor(-1);
        this.f15710p.m32233a(640, 960, 4096);
        m32221b(this.f15710p, 40, 40, 40, 10);
        TextView textView2 = (TextView) this.f15710p.m32232a(new TextView(context), -2, -2);
        textView2.setTextSize(16.0f);
        textView2.setText("Priority");
        textView2.setTextColor(-5394509);
        FreeLayout freeLayout2 = (FreeLayout) this.f15710p.m32230a(new FreeLayout(context), 540, -2, textView2, new int[]{3});
        freeLayout2.m32233a(640, 960, 4096);
        freeLayout2.setBackgroundResource(R$drawable.rect_select);
        m32231a(freeLayout2, 10, 10, 10, 0);
        this.f15711q = (TextView) freeLayout2.m32232a(new TextView(context), -1, -2);
        this.f15711q.setTextSize(16.0f);
        this.f15711q.setTextColor(-8289918);
        this.f15711q.setGravity(16);
        m32221b(this.f15711q, 10, 9, 13, 9);
        ImageView imageView = (ImageView) freeLayout2.m32228a(new ImageView(context), 10, 10, new int[]{15, 11});
        imageView.setBackgroundResource(R$drawable.report_arrow);
        m32231a(imageView, 0, 0, 25, 0);
        this.f15712r = (FreeLayout) m32225a(this.f15709o, new FreeLayout(context), -1, -2);
        this.f15712r.setBackgroundColor(-1);
        this.f15712r.m32233a(640, 960, 4096);
        m32221b(this.f15712r, 40, 40, 40, 10);
        TextView textView3 = (TextView) this.f15712r.m32232a(new TextView(context), -2, -2);
        textView3.setTextSize(16.0f);
        textView3.setText("Issue Type");
        textView3.setTextColor(-5394509);
        FreeLayout freeLayout3 = (FreeLayout) this.f15712r.m32230a(new FreeLayout(context), 540, -2, textView3, new int[]{3});
        freeLayout3.m32233a(640, 960, 4096);
        freeLayout3.setBackgroundResource(R$drawable.rect_select);
        m32231a(freeLayout3, 10, 10, 10, 0);
        this.f15713s = (TextView) freeLayout3.m32232a(new TextView(context), -1, -2);
        this.f15713s.setTextSize(16.0f);
        this.f15713s.setTextColor(-8289918);
        this.f15713s.setGravity(16);
        m32221b(this.f15713s, 10, 9, 13, 9);
        ImageView imageView2 = (ImageView) freeLayout3.m32228a(new ImageView(context), 10, 10, new int[]{15, 11});
        imageView2.setBackgroundResource(R$drawable.report_arrow);
        m32231a(imageView2, 0, 0, 25, 0);
        this.f15714t = (FreeLayout) m32225a(this.f15709o, new FreeLayout(context), -1, -2);
        this.f15714t.setBackgroundColor(-1);
        this.f15714t.m32233a(640, 960, 4096);
        m32221b(this.f15714t, 40, 40, 40, 10);
        TextView textView4 = (TextView) this.f15714t.m32232a(new TextView(context), -2, -2);
        textView4.setTextSize(16.0f);
        textView4.setText("Summary");
        textView4.setTextColor(-5394509);
        FreeLayout freeLayout4 = (FreeLayout) this.f15714t.m32230a(new FreeLayout(context), -1, -2, textView4, new int[]{3});
        freeLayout4.m32233a(640, 960, 4096);
        m32231a(freeLayout4, 10, 0, 10, 0);
        this.f15715u = (EditText) freeLayout4.m32232a(new EditText(context), -1, -2);
        this.f15715u.setTextSize(16.0f);
        this.f15715u.setTextColor(-8289918);
        this.f15715u.setHint("(Necessary)");
        this.f15715u.setHintTextColor(-3355444);
        this.f15715u.setGravity(16);
        this.f15715u.setSingleLine(false);
        this.f15715u.setBackgroundResource(R$drawable.input);
        m32221b(this.f15715u, 10, 5, 10, 5);
        this.f15716v = (FreeLayout) m32225a(this.f15709o, new FreeLayout(context), -1, -2);
        this.f15716v.setBackgroundColor(-1);
        this.f15716v.m32233a(640, 960, 4096);
        m32221b(this.f15716v, 40, 40, 40, 10);
        TextView textView5 = (TextView) this.f15716v.m32232a(new TextView(context), -2, -2);
        textView5.setTextSize(16.0f);
        textView5.setText("Description");
        textView5.setTextColor(-5394509);
        FreeLayout freeLayout5 = (FreeLayout) this.f15716v.m32230a(new FreeLayout(context), -1, -2, textView5, new int[]{3});
        freeLayout5.m32233a(640, 960, 4096);
        m32231a(freeLayout5, 10, 0, 10, 0);
        this.f15717w = (EditText) freeLayout5.m32232a(new EditText(context), -1, -2);
        this.f15717w.setTextSize(16.0f);
        this.f15717w.setTextColor(-8289918);
        this.f15717w.setHint("(Necessary)");
        this.f15717w.setHintTextColor(-3355444);
        this.f15717w.setGravity(16);
        this.f15717w.setSingleLine(false);
        this.f15717w.setBackgroundResource(R$drawable.input);
        m32221b(this.f15717w, 10, 5, 10, 5);
        this.f15718x = (FreeLayout) m32225a(this.f15709o, new FreeLayout(context), -1, -2);
        this.f15718x.setBackgroundColor(-1);
        this.f15718x.m32233a(640, 960, 4096);
        m32221b(this.f15718x, 40, 40, 40, 10);
        TextView textView6 = (TextView) this.f15718x.m32232a(new TextView(context), -2, -2);
        textView6.setTextSize(16.0f);
        textView6.setText("Label");
        textView6.setTextColor(-5394509);
        FreeLayout freeLayout6 = (FreeLayout) this.f15718x.m32230a(new FreeLayout(context), -1, -2, textView6, new int[]{3});
        freeLayout6.m32233a(640, 960, 4096);
        m32231a(freeLayout6, 10, 0, 10, 0);
        this.f15719y = (EditText) freeLayout6.m32232a(new EditText(context), -1, -2);
        this.f15719y.setTextSize(16.0f);
        this.f15719y.setTextColor(-8289918);
        this.f15719y.setHint("(Use backspace to separate labels)");
        this.f15719y.setHintTextColor(-3355444);
        this.f15719y.setGravity(16);
        this.f15719y.setSingleLine(true);
        this.f15719y.setBackgroundResource(R$drawable.input);
        m32221b(this.f15719y, 10, 5, 10, 5);
        this.f15720z = (FreeLayout) m32225a(this.f15709o, new FreeLayout(context), -1, -2);
        this.f15720z.setBackgroundColor(-1);
        this.f15720z.m32233a(640, 960, 4096);
        m32221b(this.f15720z, 40, 40, 40, 10);
        TextView textView7 = (TextView) this.f15720z.m32232a(new TextView(context), -2, -2);
        textView7.setTextSize(16.0f);
        textView7.setText("Assignee");
        textView7.setTextColor(-5394509);
        FreeLayout freeLayout7 = (FreeLayout) this.f15720z.m32230a(new FreeLayout(context), -1, -2, textView7, new int[]{3});
        freeLayout7.m32233a(640, 960, 4096);
        m32231a(freeLayout7, 10, 0, 10, 0);
        this.f15698A = (AutoCompleteTextView) freeLayout7.m32232a(new AutoCompleteTextView(context), -1, -2);
        this.f15698A.setTextSize(16.0f);
        this.f15698A.setTextColor(-8289918);
        this.f15698A.setGravity(16);
        this.f15698A.setSingleLine(true);
        this.f15698A.setBackgroundResource(R$drawable.input);
        m32221b(this.f15698A, 10, 5, 10, 5);
        TextView textView8 = (TextView) m32225a(this.f15709o, new TextView(context), -1, -2);
        textView8.setBackgroundColor(-12500671);
        textView8.setText("Attachments");
        textView8.setTextSize(16.0f);
        textView8.setTextColor(-1);
        m32221b(textView8, 40, 10, 40, 10);
        this.f15699B = (CheckBox) m32225a(this.f15709o, new CheckBox(context), -1, -2);
        this.f15699B.setText("Add Screenshot?");
        this.f15699B.setTextSize(16.0f);
        this.f15699B.setTextColor(-8289918);
        m32221b(this.f15699B, 40, 20, 40, 20);
        this.f15700C = (CheckBox) m32225a(this.f15709o, new CheckBox(context), -1, -2);
        this.f15700C.setText("Add Logcat?");
        this.f15700C.setTextSize(16.0f);
        this.f15700C.setTextColor(-8289918);
        m32221b(this.f15700C, 40, 20, 40, 20);
        TextView textView9 = (TextView) m32225a(this.f15709o, new TextView(context), -1, -2);
        textView9.setBackgroundColor(-12500671);
        textView9.setText("Account & Password");
        textView9.setTextSize(16.0f);
        textView9.setTextColor(-1);
        m32221b(textView9, 40, 10, 40, 10);
        this.f15701D = (FreeLayout) m32225a(this.f15709o, new FreeLayout(context), -1, -2);
        this.f15701D.setBackgroundColor(-1);
        this.f15701D.m32233a(640, 960, 4096);
        m32221b(this.f15701D, 40, 40, 40, 10);
        TextView textView10 = (TextView) this.f15701D.m32232a(new TextView(context), -2, -2);
        textView10.setTextSize(16.0f);
        textView10.setText("Account");
        textView10.setTextColor(-5394509);
        FreeLayout freeLayout8 = (FreeLayout) this.f15701D.m32230a(new FreeLayout(context), -1, -2, textView6, new int[]{3});
        freeLayout8.m32233a(640, 960, 4096);
        m32231a(freeLayout8, 10, 0, 10, 0);
        this.f15702E = (TextView) freeLayout8.m32232a(new TextView(context), -1, -2);
        this.f15702E.setTextSize(16.0f);
        this.f15702E.setTextColor(-8289918);
        this.f15702E.setGravity(16);
        this.f15702E.setSingleLine(true);
        this.f15702E.setBackgroundResource(R$drawable.input);
        m32221b(this.f15702E, 10, 5, 10, 5);
        setFocusable(true);
        setFocusableInTouchMode(true);
    }
}
