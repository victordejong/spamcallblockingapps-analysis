package com.android.contacts.dialpad;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Fragment;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.media.ToneGenerator;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.os.Vibrator;
import android.preference.PreferenceManager;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.Selection;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.activities.AsusDialerSettingActivity;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.activities.SpeedDialEditor;
import com.android.contacts.dialpad.AsusHandwritingView;
import com.android.contacts.dialpad.e;
import com.android.contacts.ezmode.h;
import com.android.contacts.util.AsusAirViewUtils;
import com.android.contacts.util.AsusRedPointNotificationHelper;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.android.vcard.VCardConfig;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.utility.SystemPropertiesReflection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/TwelveKeyDialerFragment.class */
public class TwelveKeyDialerFragment extends Fragment implements TextWatcher, View.OnClickListener, View.OnKeyListener, View.OnLongClickListener, AsusHandwritingView.a, AsusHandwritingView.b, AsusHandwritingView.c {
    private static int z = 0;
    private SharedPreferences A;
    private SharedPreferences B;
    private ResultListFragment C;
    private View D;
    private LinearLayout E;
    private FrameLayout F;
    private View G;
    private FrameLayout H;
    private View I;
    private View J;
    private View K;
    private View L;
    private View M;
    private View N;
    private View O;
    private FrameLayout P;
    private AsusHandwritingCandidateContainer Q;
    private AsusHandwritingCandidateContainer R;
    private ImageButton Y;
    private View Z;

    /* renamed from: a  reason: collision with root package name */
    public View f977a;
    private LinearLayout ag;
    private boolean aj;
    private d al;
    private ContentObserver ap;
    private LinearLayout aq;
    private int ar;
    private int as;
    private int at;
    private int ay;

    /* renamed from: b  reason: collision with root package name */
    LinearLayout f978b;
    TextView c;
    boolean d;
    FrameLayout e;
    AsusHandwritingView f;
    AsusHandwritingView g;
    protected ImageButton h;
    protected ImageButton i;
    protected ImageButton j;
    protected ImageButton k;
    EditText l;
    AdditionalButtonFragment n;
    public boolean q;
    private boolean w;
    private boolean s = true;
    private final int t = 100;
    private boolean u = false;
    private boolean v = false;
    private boolean x = false;
    private long y = 0;
    private LinkedList<b> S = new LinkedList<>();
    c m = null;
    private String T = null;
    private ToneGenerator U = null;
    private Object V = new Object();
    private Vibrator W = null;
    private AudioManager X = null;
    boolean o = false;
    private int aa = 0;
    private int ab = 0;
    private int ac = 0;
    private int ad = 0;
    private int ae = 0;
    private int af = 0;
    private boolean ah = false;
    private boolean ai = false;
    private int ak = 0;
    public float p = 0.0f;
    private int[] am = {2131297134, 2131297423, 2131297397, 2131296872, 2131296862, 2131297305, 2131297279, 2131296783, 2131297114, 2131297345, 2131297555};
    private int[] an = {2131297178};
    private int[] ao = {2131296647};
    private boolean au = false;
    private View av = null;
    private CountDownTimer aw = new CountDownTimer() { // from class: com.android.contacts.dialpad.TwelveKeyDialerFragment.1
        @Override // android.os.CountDownTimer
        public final void onFinish() {
            if (TwelveKeyDialerFragment.this.av != null) {
                TwelveKeyDialerFragment.this.av.performLongClick();
            }
            TwelveKeyDialerFragment.this.au = true;
        }

        @Override // android.os.CountDownTimer
        public final void onTick(long j) {
        }
    };
    private int ax = 0;
    private boolean az = false;
    private Handler aA = new Handler() { // from class: com.android.contacts.dialpad.TwelveKeyDialerFragment.13
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    TwelveKeyDialerFragment.this.a(67);
                    if (!TwelveKeyDialerFragment.this.x) {
                        sendEmptyMessageDelayed(1, 100L);
                        break;
                    }
                    break;
            }
            super.handleMessage(message);
        }
    };
    View.OnClickListener r = new View.OnClickListener() { // from class: com.android.contacts.dialpad.TwelveKeyDialerFragment.18
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            TwelveKeyDialerFragment.this.C = (ResultListFragment) TwelveKeyDialerFragment.this.getFragmentManager().findFragmentById(2131297236);
            TwelveKeyDialerFragment.this.f.b().setVisibility(8);
            TwelveKeyDialerFragment.this.g.b().setVisibility(8);
            TwelveKeyDialerFragment.this.b(false);
            if (TwelveKeyDialerFragment.this.L == null || TwelveKeyDialerFragment.this.K == null) {
                TwelveKeyDialerFragment.this.e();
            }
            if (TwelveKeyDialerFragment.this.e.getVisibility() == 0) {
                if (TwelveKeyDialerFragment.this.l.getText().length() != 0) {
                    String obj = TwelveKeyDialerFragment.this.l.getText().toString();
                    TwelveKeyDialerFragment.this.l.getText().clear();
                    TwelveKeyDialerFragment.this.L.setVisibility(0);
                    TwelveKeyDialerFragment.this.K.setVisibility(8);
                    TwelveKeyDialerFragment.this.P.setVisibility(0);
                    TwelveKeyDialerFragment.this.e.setVisibility(8);
                    TwelveKeyDialerFragment.this.l.append(obj);
                    TwelveKeyDialerFragment.this.C.d(1);
                } else {
                    TwelveKeyDialerFragment.this.L.setVisibility(0);
                    TwelveKeyDialerFragment.this.K.setVisibility(8);
                    TwelveKeyDialerFragment.this.P.setVisibility(0);
                    TwelveKeyDialerFragment.this.e.setVisibility(8);
                    TwelveKeyDialerFragment.this.C.d(1);
                }
                TwelveKeyDialerFragment.this.o = true;
                if (TwelveKeyDialerFragment.this.n != null && TwelveKeyDialerFragment.this.n.n != null && TwelveKeyDialerFragment.this.n.n.m != null) {
                    TwelveKeyDialerFragment.this.n.n.m.setVisibility(8);
                    return;
                }
                return;
            }
            TwelveKeyDialerFragment.this.K.setVisibility(0);
            TwelveKeyDialerFragment.this.L.setVisibility(8);
            TwelveKeyDialerFragment.this.e.setVisibility(0);
            TwelveKeyDialerFragment.this.P.setVisibility(8);
            TwelveKeyDialerFragment.this.C.d(2);
            TwelveKeyDialerFragment.this.o = false;
            if (TwelveKeyDialerFragment.this.n != null && TwelveKeyDialerFragment.this.n.n != null && TwelveKeyDialerFragment.this.n.n.m != null) {
                TwelveKeyDialerFragment.this.n.n.m.setVisibility(0);
            }
        }
    };
    private View.OnTouchListener aB = new View.OnTouchListener() { // from class: com.android.contacts.dialpad.TwelveKeyDialerFragment.9
        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                TwelveKeyDialerFragment.this.ac = (int) motionEvent.getX();
                TwelveKeyDialerFragment.this.au = false;
                TwelveKeyDialerFragment.this.aw.start();
                TwelveKeyDialerFragment.this.av = view;
                view.setPressed(true);
                return true;
            } else if (1 == motionEvent.getAction()) {
                TwelveKeyDialerFragment.this.aw.cancel();
                view.setPressed(false);
                if (TwelveKeyDialerFragment.this.au) {
                    return true;
                }
                view.performClick();
                return true;
            } else if (3 != motionEvent.getAction()) {
                return true;
            } else {
                TwelveKeyDialerFragment.this.ad = Math.abs(((int) motionEvent.getX()) - TwelveKeyDialerFragment.this.ac);
                TwelveKeyDialerFragment.this.aw.cancel();
                view.setPressed(false);
                if (TwelveKeyDialerFragment.this.au || TwelveKeyDialerFragment.this.ad >= TwelveKeyDialerFragment.this.ay) {
                    return true;
                }
                view.performClick();
                return true;
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/TwelveKeyDialerFragment$a.class */
    public final class a extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        LayoutInflater f999a;

        /* renamed from: b  reason: collision with root package name */
        int[] f1000b = {2131165292, 2131165293};
        String[] c = {"SIM 1", "SIM 2"};
        String[] d;

        public a(Context context) {
            this.d = new String[]{com.android.contacts.simcardmanage.b.f(TwelveKeyDialerFragment.this.getActivity(), 1), com.android.contacts.simcardmanage.b.f(TwelveKeyDialerFragment.this.getActivity(), 2)};
            this.f999a = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return this.f1000b.length;
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
            View inflate = this.f999a.inflate(2131427331, (ViewGroup) null);
            ImageView imageView = (ImageView) inflate.findViewById(16908294);
            TextView textView = (TextView) inflate.findViewById(16908308);
            imageView.setImageResource(this.f1000b[i]);
            textView.setText(this.c[i]);
            ((TextView) inflate.findViewById(16908309)).setText(this.d[i]);
            return inflate;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/TwelveKeyDialerFragment$b.class */
    public interface b {
        void a(Editable editable, boolean z);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/TwelveKeyDialerFragment$c.class */
    public interface c {
        void a(View view);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/TwelveKeyDialerFragment$d.class */
    public final class d extends com.android.contacts.dialpad.a {
        private Context c;

        public d(Context context) {
            super(context.getContentResolver());
            this.c = null;
            this.c = context;
        }

        @Override // com.android.contacts.dialpad.a
        protected final void a(int i, Cursor cursor) {
            if (cursor != null && cursor.getCount() != 0) {
                TwelveKeyDialerFragment.this.startActivityForResult(TwelveKeyDialerFragment.this.d(String.valueOf(TwelveKeyDialerFragment.this.ak)), 1);
            } else if (this.c != null) {
                new AlertDialog.Builder(this.c).setTitle(2131756196).setMessage(2131756194).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.TwelveKeyDialerFragment.d.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        Intent intent = new Intent("android.intent.action.PICK", ContactsContract.Contacts.CONTENT_URI);
                        intent.setData(ContactsContract.Contacts.CONTENT_URI);
                        intent.setType("vnd.android.cursor.dir/phone_v2");
                        intent.putExtra(SpeedDialEditor.EXTRA_FROM_SPEED_DIAL, false);
                        TwelveKeyDialerFragment.this.startActivityForResult(intent, 2);
                        dialogInterface.dismiss();
                    }
                }).setNegativeButton(17039369, new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.TwelveKeyDialerFragment.d.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        dialogInterface.dismiss();
                    }
                }).show();
            }
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
        }
    }

    public static String a(Context context, String str) {
        String a2 = com.asus.contacts.a.a(SystemPropertiesReflection.Key.BUILD_ASUS_SKU);
        String string = PreferenceManager.getDefaultSharedPreferences(context).getString("country_code", BuildConfig.FLAVOR);
        Log.d("TwelveKeyDialerFragment", "SKU=" + a2 + ", countryCode=" + string + ", locale=" + str);
        String str2 = str;
        if (str.equals("zh_TW")) {
            str2 = str;
            if (string.toUpperCase().equals("HK")) {
                str2 = "zh_CN";
                Log.d("TwelveKeyDialerFragment", "Set smart search default language to zh_CN");
            }
        }
        String str3 = str2;
        if (str2.equals("en_SG")) {
            str3 = str2;
            if (string.toUpperCase().equals("SG")) {
                str3 = "zh_CN";
                Log.d("TwelveKeyDialerFragment", "Set smart search default language to zh_CN");
            }
        }
        String str4 = str3;
        if (str3.equals("zh_HK")) {
            str4 = "zh_CN";
            Log.d("TwelveKeyDialerFragment", "Set smart search default language to zh_CN");
        }
        return str4;
    }

    public static String a(String str) {
        return str.equals("ru_RU") ? new String("1") : str.equals("zh_CN") ? new String("2") : str.equals("zh_TW") ? new String("3") : new String("0");
    }

    private void a(Context context, int i, String str, String str2, String str3) {
        String str4 = str;
        if (str == null) {
            str4 = BuildConfig.FLAVOR;
        }
        String str5 = str2;
        if (str2 == null) {
            str5 = BuildConfig.FLAVOR;
        }
        String str6 = str3;
        if (str3 == null) {
            str6 = BuildConfig.FLAVOR;
        }
        this.B = context.getSharedPreferences(SpeedDialEditor.PREF_SPEED_DIAL_TABLE, 0);
        SharedPreferences.Editor edit = this.B.edit();
        edit.putString(Integer.toString(i) + "_displayname", str4);
        edit.putString(Integer.toString(i) + "_contactid", str5);
        edit.putString(Integer.toString(i) + "_phonenumber", str6);
        edit.commit();
    }

    private void a(View view) {
        if (view == null) {
            Log.w("TwelveKeyDialerFragment", "fragmentView is null");
            return;
        }
        final int i = this.d ? 240 : 120;
        for (int i2 : this.am) {
            View findViewById = view.findViewById(i2);
            findViewById.setOnClickListener(this);
            findViewById.setOnLongClickListener(this);
            final Drawable background = findViewById.getBackground();
            findViewById.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.contacts.dialpad.TwelveKeyDialerFragment.7
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    boolean z2 = false;
                    if (motionEvent.getAction() == 0) {
                        TwelveKeyDialerFragment.this.ae = (int) motionEvent.getY();
                        TwelveKeyDialerFragment.this.ac = (int) motionEvent.getX();
                        TwelveKeyDialerFragment.this.au = false;
                        TwelveKeyDialerFragment.this.aw.start();
                        TwelveKeyDialerFragment.this.av = view2;
                        if (!TwelveKeyDialerFragment.this.d) {
                            TwelveKeyDialerFragment.this.A.getInt("keypad_mode", 0);
                        }
                        view2.setBackgroundDrawable(TwelveKeyDialerFragment.this.getResources().getDrawable(2131165248));
                        view2.setPressed(true);
                        return true;
                    } else if (1 == motionEvent.getAction()) {
                        TwelveKeyDialerFragment.this.af = Math.abs(((int) motionEvent.getY()) - TwelveKeyDialerFragment.this.ae);
                        TwelveKeyDialerFragment.this.ad = Math.abs(((int) motionEvent.getX()) - TwelveKeyDialerFragment.this.ac);
                        TwelveKeyDialerFragment.this.aw.cancel();
                        view2.setBackgroundDrawable(background);
                        view2.setPressed(false);
                        boolean z3 = com.asus.contacts.b.a.b(TwelveKeyDialerFragment.this.getActivity()) && TwelveKeyDialerFragment.this.n != null && TwelveKeyDialerFragment.this.af > 120 && ((float) TwelveKeyDialerFragment.this.ad) < TwelveKeyDialerFragment.this.p;
                        if (motionEvent.getY() > TwelveKeyDialerFragment.this.ae) {
                            z2 = true;
                        }
                        if (TwelveKeyDialerFragment.this.getActivity() != null && z3 && z2 && !TwelveKeyDialerFragment.this.az) {
                            TwelveKeyDialerFragment.this.n.m();
                        } else if (!TwelveKeyDialerFragment.this.au) {
                            view2.performClick();
                        }
                        TwelveKeyDialerFragment.this.av = null;
                        return true;
                    } else if (3 != motionEvent.getAction()) {
                        return true;
                    } else {
                        TwelveKeyDialerFragment.this.af = Math.abs(((int) motionEvent.getY()) - TwelveKeyDialerFragment.this.ae);
                        TwelveKeyDialerFragment.this.ad = Math.abs(((int) motionEvent.getX()) - TwelveKeyDialerFragment.this.ac);
                        TwelveKeyDialerFragment.this.aw.cancel();
                        view2.setBackgroundDrawable(background);
                        view2.setPressed(false);
                        boolean z4 = false;
                        if (com.asus.contacts.b.a.b(TwelveKeyDialerFragment.this.getActivity())) {
                            z4 = false;
                            if (TwelveKeyDialerFragment.this.n != null) {
                                z4 = false;
                                if (TwelveKeyDialerFragment.this.af > 120) {
                                    z4 = false;
                                    if (TwelveKeyDialerFragment.this.ad < 50) {
                                        z4 = true;
                                    }
                                }
                            }
                        }
                        if (TwelveKeyDialerFragment.this.getActivity() != null && z4 && !TwelveKeyDialerFragment.this.az) {
                            TwelveKeyDialerFragment.this.n.m();
                            return true;
                        } else if (TwelveKeyDialerFragment.this.au || TwelveKeyDialerFragment.this.ad >= i) {
                            return true;
                        } else {
                            view2.performClick();
                            return true;
                        }
                    }
                }
            });
        }
        for (int i3 : this.an) {
            View findViewById2 = view.findViewById(i3);
            findViewById2.setOnClickListener(this);
            findViewById2.setOnLongClickListener(this);
            final Drawable background2 = findViewById2.getBackground();
            findViewById2.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.contacts.dialpad.TwelveKeyDialerFragment.8
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0) {
                        TwelveKeyDialerFragment.this.ac = (int) motionEvent.getX();
                        TwelveKeyDialerFragment.this.au = false;
                        TwelveKeyDialerFragment.this.aw.start();
                        TwelveKeyDialerFragment.this.av = view2;
                        if (TwelveKeyDialerFragment.this.d || TwelveKeyDialerFragment.this.A.getInt("keypad_mode", 0) != 1) {
                            view2.setBackgroundDrawable(TwelveKeyDialerFragment.this.getResources().getDrawable(2131165248));
                            return true;
                        }
                        view2.setBackgroundDrawable(TwelveKeyDialerFragment.this.getResources().getDrawable(2131165248));
                        return true;
                    } else if (1 == motionEvent.getAction()) {
                        TwelveKeyDialerFragment.this.aw.cancel();
                        view2.setBackgroundDrawable(background2);
                        if (TwelveKeyDialerFragment.this.au) {
                            return true;
                        }
                        view2.performClick();
                        return true;
                    } else if (3 != motionEvent.getAction()) {
                        return true;
                    } else {
                        TwelveKeyDialerFragment.this.ad = Math.abs(((int) motionEvent.getX()) - TwelveKeyDialerFragment.this.ac);
                        TwelveKeyDialerFragment.this.aw.cancel();
                        view2.setBackgroundDrawable(background2);
                        if (TwelveKeyDialerFragment.this.au || TwelveKeyDialerFragment.this.ad >= i) {
                            return true;
                        }
                        view2.performClick();
                        return true;
                    }
                }
            });
        }
    }

    private static void a(View view, int i) {
        View findViewById;
        if (view != null && (findViewById = view.findViewById(i)) != null) {
            findViewById.setBackgroundResource(2131034340);
        }
    }

    private void a(String str, boolean z2) {
        Log.d("TwelveKeyDialerFragment", "syncToken mode=" + str);
        Intent intent = new Intent(getActivity(), SmartDialFirstSyncService.class);
        intent.setAction("android.intent.action.ASUS_SMARTDIAL_FIRST_SYNC");
        intent.putExtra("source", "SMARTDIAL_SETTING");
        intent.putExtra("mode", str);
        intent.putExtra("toast", z2);
        getActivity().stopService(intent);
        getActivity().startService(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r5) {
        /*
            r0 = 0
            r6 = r0
            r0 = r5
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: Exception -> 0x0036
            java.lang.String r1 = "com.asus.ime"
            r2 = 0
            android.content.pm.PackageInfo r0 = r0.getPackageInfo(r1, r2)     // Catch: Exception -> 0x0036
            int r0 = r0.versionCode     // Catch: Exception -> 0x0036
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: Exception -> 0x0036, Exception -> 0x0057
            r5 = r0
            r0 = r5
            java.lang.String r1 = "ime version code = "
            r0.<init>(r1)     // Catch: Exception -> 0x0057
            java.lang.String r0 = "TwelveKeyDialerFragment"
            r1 = r5
            r2 = r7
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: Exception -> 0x0057
            java.lang.String r1 = r1.toString()     // Catch: Exception -> 0x0057
            int r0 = android.util.Log.d(r0, r1)     // Catch: Exception -> 0x0057
        L_0x002b:
            r0 = r7
            r1 = 601200805(0x23d598a5, float:2.3158154E-17)
            if (r0 < r1) goto L_0x0034
            r0 = 1
            r6 = r0
        L_0x0034:
            r0 = r6
            return r0
        L_0x0036:
            r5 = move-exception
            r0 = 0
            r7 = r0
        L_0x0039:
            java.lang.String r0 = "TwelveKeyDialerFragment"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = r1
            java.lang.String r3 = "Fail to get app version code, Exception: "
            r2.<init>(r3)
            r2 = r5
            java.lang.String r2 = r2.toString()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.d(r0, r1)
            goto L_0x002b
        L_0x0057:
            r5 = move-exception
            goto L_0x0039
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.dialpad.TwelveKeyDialerFragment.a(android.content.Context):boolean");
    }

    private void b(View view) {
        if (view != null) {
            if (view.getBackground() != null) {
                view.getBackground().setCallback(null);
            }
            if ((view instanceof ImageButton) && ((ImageButton) view).getDrawable() != null) {
                ((ImageButton) view).getDrawable().setCallback(null);
            }
            if (view instanceof ViewGroup) {
                for (int i = 0; i < ((ViewGroup) view).getChildCount(); i++) {
                    b(((ViewGroup) view).getChildAt(i));
                }
                ((ViewGroup) view).removeAllViews();
            }
        }
    }

    private static int c(int i) {
        Color.colorToHSV(i, r0);
        float[] fArr = {0.0f, 0.0f, fArr[2] + 0.1f};
        if (fArr[2] > 1.0f) {
            fArr[2] = 1.0f;
        }
        Log.d("TwelveKeyDialerFragment", "H:" + fArr[0] + " S:" + fArr[1] + " V:" + fArr[2]);
        return Color.HSVToColor(fArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Intent d(String str) {
        Intent intent = new Intent("com.android.contacts.action.EDIT_SPEED_DIAL");
        intent.putExtra(SpeedDialEditor.EXTRA_LONG_PRESS_DIALER, true);
        intent.putExtra(SpeedDialEditor.EXTRA_LONG_PRESS_NUMBER, str);
        intent.putExtra("hide_number", com.android.contacts.dialpad.b.e);
        intent.putExtra("com.android.phone.FromAsusDialer", true);
        if (com.android.contacts.simcardmanage.b.e(getActivity(), 1)) {
            intent.putExtra("extra_asus_dial_use_dualsim", 0);
        } else if (com.android.contacts.simcardmanage.b.e(getActivity(), 2)) {
            intent.putExtra("extra_asus_dial_use_dualsim", 1);
        }
        com.android.contacts.dialpad.b.e = false;
        return intent;
    }

    private void e(String str) {
        int selectionStart = this.l.getSelectionStart();
        int selectionEnd = this.l.getSelectionEnd();
        int min = Math.min(selectionStart, selectionEnd);
        int max = Math.max(selectionStart, selectionEnd);
        Editable text = this.l.getText();
        if (min == -1) {
            int length = this.l.length();
            text.replace(length, length, str);
        } else if (min == max) {
            text.replace(min, min, str);
        } else {
            text.replace(min, max, str);
            this.l.setSelection(min + 1);
        }
    }

    private void h(boolean z2) {
        Intent callIntent;
        Activity activity = getActivity();
        if (!com.android.contacts.simcardmanage.b.a(getActivity()) || !z2) {
            callIntent = CallUtil.getCallIntent(Uri.fromParts("voicemail", BuildConfig.FLAVOR, null));
        } else {
            callIntent = CallUtil.getCallIntent(Uri.fromParts("voicemail", BuildConfig.FLAVOR, null), com.android.contacts.simcardmanage.b.h(getActivity(), (int) this.y));
        }
        callIntent.putExtra("phone_subscription", this.y);
        callIntent.putExtra("com.pekall.phone.extra.DSDS_CALL_POLICY", this.y);
        Log.d("TwelveKeyDialerFragment", "suitableSubscription = " + this.y);
        callIntent.setFlags(VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
        callIntent.putExtra("hide_number", com.android.contacts.dialpad.b.e);
        com.android.contacts.dialpad.b.e = false;
        ImplicitIntentsUtil.startActivityOutsideApp(activity, callIntent);
        this.l.getText().clear();
    }

    private boolean i(boolean z2) {
        boolean z3;
        Object c2 = !z2 ? com.android.contacts.simcardmanage.b.c(getActivity()) : com.android.contacts.simcardmanage.b.a((int) (this.y + 1));
        try {
            String a2 = com.android.contacts.simcardmanage.b.a(getActivity(), c2);
            Log.d("TwelveKeyDialerFragment", "mSubscription = " + c2);
            Log.d("TwelveKeyDialerFragment", "VoiceMailNumber = " + a2);
            z3 = false;
            if (!TextUtils.isEmpty(a2)) {
                z3 = true;
            }
        } catch (SecurityException e) {
            Log.w("TwelveKeyDialerFragment", "SecurityException is thrown. Maybe privilege isn't sufficient.");
            z3 = false;
        }
        return z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(boolean z2) {
        boolean z3 = false;
        if (i(z2)) {
            Log.d("TwelveKeyDialerFragment", "Voicemail Available");
            h(z2);
        } else if (getActivity() != null) {
            Log.d("TwelveKeyDialerFragment", "Voicemail Not Available");
            if (!PhoneCapabilityTester.isInOwnerMode(getActivity())) {
                Log.d("TwelveKeyDialerFragment", "Disable voicemail setup notification");
                return;
            }
            if (Settings.System.getInt(getActivity().getContentResolver(), "airplane_mode_on", 0) != 0) {
                z3 = true;
            }
            if (z3) {
                e.d.b(2131755575).show(getFragmentManager(), "voicemail_request_during_airplane_mode");
            } else if (!PhoneCapabilityTester.isPhone(getActivity()) || !PhoneCapabilityTester.isInOwnerMode(getActivity())) {
                e.d.b(2131756466).show(getFragmentManager(), "voicemail_not_ready");
            } else {
                new AlertDialog.Builder(getActivity()).setMessage(2131756464).setPositiveButton(2131756467, new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.TwelveKeyDialerFragment.15
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        ImplicitIntentsUtil.startActivityOutsideApp(TwelveKeyDialerFragment.this.getActivity(), MainDialtactsActivity.getCallSettingsIntent(), false);
                        dialogInterface.dismiss();
                    }
                }).setNegativeButton(2131756465, new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.TwelveKeyDialerFragment.14
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                    }
                }).show();
            }
        }
    }

    private boolean n() {
        return this.l.length() == 0;
    }

    private void o() {
        LayoutInflater.from(getActivity());
        getResources();
        if (this.C == null) {
            this.C = (ResultListFragment) getFragmentManager().findFragmentById(2131297236);
        }
        if (this.az) {
            boolean z2 = getResources().getConfiguration().orientation == 1;
            if (!this.d && z2 && this.az) {
                LayoutInflater.from(getActivity());
                View findViewById = this.f977a.findViewById(2131296747);
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) findViewById.getLayoutParams();
                layoutParams.height = getResources().getDimensionPixelOffset(2131100118);
                findViewById.setLayoutParams(layoutParams);
                findViewById.setPadding(getResources().getDimensionPixelOffset(2131100119), 0, 0, 0);
                findViewById.setBackgroundResource(2131034116);
                this.f977a.findViewById(2131297144).setVisibility(8);
                View findViewById2 = this.f977a.findViewById(2131296648);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) findViewById2.getLayoutParams();
                layoutParams2.width = getResources().getDimensionPixelOffset(2131100120);
                findViewById2.setLayoutParams(layoutParams2);
                ImageButton imageButton = (ImageButton) this.f977a.findViewById(2131296647);
                FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) imageButton.getLayoutParams();
                layoutParams3.rightMargin = getResources().getDimensionPixelOffset(2131100122);
                layoutParams3.leftMargin = getResources().getDimensionPixelOffset(2131100121);
                imageButton.setLayoutParams(layoutParams3);
                this.D = (ViewStub) this.f977a.findViewById(2131296748);
                this.D.setVisibility(8);
                this.D.setOnClickListener(this);
                this.c = (TextView) this.f977a.findViewById(2131296746);
                if (this.c != null) {
                    this.c.setTextColor(getResources().getColor(2131034365));
                }
                this.I = ((ViewStub) this.f977a.findViewById(2131296729)).inflate();
                this.O = this.f977a.findViewById(2131296733);
                if (this.f977a.findViewById(2131297134) != null) {
                    a(this.O);
                }
                if (!(this.C == null || this.C.o == null)) {
                    this.C.o.setVisibility(8);
                }
            }
            if (this.I != null) {
                this.I.setVisibility(0);
            }
            if (this.E != null) {
                this.E.setVisibility(8);
                this.F.setVisibility(8);
            }
            if (this.G != null) {
                this.G.setVisibility(8);
                this.H.setVisibility(8);
            }
            if (this.J != null) {
                this.J.setVisibility(8);
            }
        } else {
            if (this.A.getInt("keypad_mode", 0) != 1 || this.d) {
                f();
                this.E.setVisibility(0);
                this.F.setVisibility(0);
                if (this.J != null) {
                    this.J.setVisibility(0);
                }
            } else {
                g();
                if (this.G != null) {
                    this.G.setVisibility(0);
                    this.H.setVisibility(0);
                    this.D.setVisibility(0);
                }
                if (this.J != null) {
                    this.J.setVisibility(0);
                }
            }
            l();
        }
        this.l = (EditText) this.f977a.findViewById(2131296746);
        this.l.setKeyListener(k.f1078a);
        this.l.setOnClickListener(this);
        this.l.setOnKeyListener(this);
        this.l.setOnLongClickListener(this);
        this.l.addTextChangedListener(this);
        this.Y = (ImageButton) this.f977a.findViewById(2131296647);
        this.Z = this.f977a.findViewById(2131296648);
        this.Z.setOnClickListener(this);
        this.Z.setOnLongClickListener(this);
        this.Z.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.contacts.dialpad.TwelveKeyDialerFragment.3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                TwelveKeyDialerFragment.this.x = true;
                TwelveKeyDialerFragment.this.aA.removeMessages(1);
                return false;
            }
        });
        ImageButton imageButton2 = (ImageButton) this.f977a.findViewById(2131297143);
        ImageView imageView = (ImageView) this.f977a.findViewById(2131296370);
        if (imageButton2 != null) {
            if (ViewConfiguration.get(getActivity()).hasPermanentMenuKey()) {
                imageButton2.setVisibility(0);
                imageButton2.setOnClickListener(this);
                if (imageView != null && AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(getActivity(), 3)) {
                    imageView.setVisibility(0);
                }
            } else {
                imageButton2.setOnClickListener(this);
                if (imageView != null && AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(getActivity(), 3)) {
                    imageView.setVisibility(0);
                }
            }
            AsusAirViewUtils.setActionbarHoverHint(imageButton2, getResources().getString(2131755228), new com.android.contacts.airview.a(getActivity()));
        }
        if (com.android.contacts.skin.a.b()) {
            com.android.contacts.skin.a.a(imageButton2, this.as);
            com.android.contacts.skin.a.a(this.Y, this.as);
            if (this.l != null) {
                this.l.setTextColor(this.ar);
            }
        } else if (com.android.contacts.skin.a.c()) {
            com.android.contacts.skin.a.a(imageButton2, this.as);
            com.android.contacts.skin.a.a(this.Y, this.as);
            if (this.l != null) {
                this.l.setTextColor(this.ar);
            }
        }
        if (this.l != null) {
            Log.d("TwelveKeyDialerFragment", "[setupTwelveDialerView] mDigits default color = " + this.l.getTextColors().getDefaultColor() + ", spec default color = " + getResources().getColor(2131034139));
        }
    }

    public final void a() {
        this.s = false;
        this.l.getText().clear();
        this.T = null;
    }

    public final void a(int i) {
        if (this.n != null) {
            this.n.r.vibrate();
        }
        this.l.onKeyDown(i, new KeyEvent(0, i));
        int length = this.l.length();
        if (length == this.l.getSelectionStart() && length == this.l.getSelectionEnd()) {
            this.l.setCursorVisible(false);
        }
    }

    public final void a(int i, Animator.AnimatorListener animatorListener) {
        ObjectAnimator ofFloat;
        FrameLayout frameLayout = this.n.n.n;
        int height = frameLayout.getHeight();
        int i2 = height;
        if (height == 0) {
            i2 = getResources().getDimensionPixelSize(2131100074) + getResources().getDimensionPixelSize(2131100337) + getResources().getDimensionPixelSize(2131100072);
        }
        switch (i) {
            case 1:
                ofFloat = ObjectAnimator.ofFloat(frameLayout, "translationY", 0.0f, i2 * 1.0f);
                break;
            case 2:
                ofFloat = ObjectAnimator.ofFloat(frameLayout, "translationY", i2 * 1.0f, 0.0f);
                break;
            default:
                Log.e("TwelveKeyDialerFragment", "error in dialPadAnimation, mode = " + i);
                return;
        }
        if (ofFloat != null) {
            ofFloat.addListener(animatorListener);
            ofFloat.setDuration(com.asus.contacts.b.a.c());
            ofFloat.start();
        }
    }

    public final void a(int i, Animation.AnimationListener animationListener) {
        float f;
        float f2;
        if (this.C == null) {
            this.C = (ResultListFragment) getFragmentManager().findFragmentById(2131297236);
        }
        if (this.C != null) {
            Resources resources = getActivity().getResources();
            if (i == 1) {
                f2 = -resources.getDimensionPixelSize(2131099751);
                this.C.c(true);
                f = 0.0f;
            } else if (i == 2) {
                f = -resources.getDimensionPixelSize(2131099751);
                f2 = 0.0f;
            } else {
                return;
            }
            long c2 = com.asus.contacts.b.a.c();
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, f2, f);
            translateAnimation.setDuration(c2);
            translateAnimation.setFillEnabled(true);
            if (i == 2) {
                translateAnimation.setAnimationListener(animationListener);
            }
            this.C.getView().startAnimation(translateAnimation);
            return;
        }
        Log.e("TwelveKeyDialerFragment", "mResultListFragment is null...");
    }

    public final void a(b bVar) {
        if (bVar != null) {
            this.S.add(bVar);
        }
    }

    @Override // com.android.contacts.dialpad.AsusHandwritingView.a
    public final void a(CharSequence charSequence) {
        if (this.l == null) {
            return;
        }
        if (this.l.getSelectionStart() < 0) {
            int length = this.l.getText().length();
            if (length > 0) {
                this.l.getText().replace(length - 1, length, charSequence);
                return;
            }
            return;
        }
        Editable text = this.l.getText();
        if (this.l.getSelectionStart() != 0) {
            try {
                text.replace(this.l.getSelectionStart() - 1, this.l.getSelectionStart(), charSequence);
            } catch (Exception e) {
                Log.d("TwelveKeyDialerFragment", "Fail to replace word, Exception : " + e.toString());
            }
        } else {
            try {
                text.insert(this.l.getSelectionStart(), charSequence);
            } catch (Exception e2) {
                Log.d("TwelveKeyDialerFragment", "Fail to insert text, Exception : " + e2.toString());
            }
        }
    }

    @Override // com.android.contacts.dialpad.AsusHandwritingView.a
    public final void a(CharSequence charSequence, String str) {
        if (this.C == null) {
            this.C = (ResultListFragment) getFragmentManager().findFragmentById(2131297236);
        }
        this.C.d = str;
        if (this.l == null) {
            return;
        }
        if (this.l.getSelectionStart() < 0) {
            this.l.append(charSequence);
            return;
        }
        Editable text = this.l.getText();
        if (text != null) {
            try {
                text.insert(this.l.getSelectionStart(), charSequence);
            } catch (Exception e) {
                Log.d("TwelveKeyDialerFragment", "[getWord] fail, Exception : " + e.toString());
            }
        } else {
            Log.d("TwelveKeyDialerFragment", "[getWord] mDigits.getText is null !");
        }
    }

    @Override // com.android.contacts.dialpad.AsusHandwritingView.b
    public final void a(boolean z2) {
        if (this.n != null) {
            int i = this.aa;
            int height = this.n.s.getHeight();
            if (z2) {
                if (this.ag != null) {
                    View findViewById = this.f977a.findViewById(2131297421);
                    findViewById.getLayoutParams().height = this.f977a.findViewById(2131296747).getHeight() + i;
                    findViewById.requestLayout();
                }
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, i);
                this.K.setLayoutParams(layoutParams);
                this.e.setLayoutParams(layoutParams);
                this.n.c(z2);
                return;
            }
            if (this.ag != null) {
                View findViewById2 = this.f977a.findViewById(2131297421);
                findViewById2.getLayoutParams().height = this.f977a.findViewById(2131296747).getHeight() + i + height;
                findViewById2.requestLayout();
            }
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, i + height);
            this.K.setLayoutParams(layoutParams2);
            this.e.setLayoutParams(layoutParams2);
            this.n.c(z2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x0378, code lost:
        if (r19.equals(r20) == false) goto L_0x037b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ec, code lost:
        if (r19.equals(r20) == false) goto L_0x00ef;
     */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0413  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x027b  */
    @Override // android.text.TextWatcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void afterTextChanged(android.text.Editable r11) {
        /*
            Method dump skipped, instructions count: 1588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.dialpad.TwelveKeyDialerFragment.afterTextChanged(android.text.Editable):void");
    }

    public final void b() {
        this.l.getText().clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(int i) {
        if (this.v) {
            int ringerMode = ((AudioManager) getActivity().getSystemService("audio")).getRingerMode();
            Log.d("TwelveKeyDialerFragment", "[DTMF] ringerMode = " + ringerMode);
            if (ringerMode != 0 && ringerMode != 1 && this.U != null) {
                synchronized (this.V) {
                    if (this.U != null) {
                        this.U.startTone(i, 150);
                        Log.d("TwelveKeyDialerFragment", "[DTMF] ToneGenerator startTone");
                    }
                }
            }
        }
    }

    public final void b(String str) {
        if (str != null) {
            if (str.length() > 100) {
                Toast.makeText(getActivity(), 2131756147, 0).show();
                return;
            }
            this.l.getText().clear();
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                if (Character.isDigit(charAt)) {
                    int numericValue = Character.getNumericValue(str.charAt(i)) + 7;
                    this.l.onKeyDown(numericValue, new KeyEvent(0, numericValue));
                }
                if (charAt == '*') {
                    this.l.onKeyDown(17, new KeyEvent(0, 17));
                }
                if (charAt == ',') {
                    this.l.onKeyDown(55, new KeyEvent(0, 55));
                }
                if (charAt == '#') {
                    this.l.onKeyDown(18, new KeyEvent(0, 18));
                }
                if (charAt == '+') {
                    this.l.onKeyDown(157, new KeyEvent(0, 157));
                }
                if (charAt == ';') {
                    this.l.onKeyDown(74, new KeyEvent(0, 74));
                }
            }
        }
    }

    @Override // com.android.contacts.dialpad.AsusHandwritingView.c
    public final void b(boolean z2) {
        if (!this.d) {
            if (z2) {
                this.i.setVisibility(0);
                this.h.setVisibility(0);
                this.j.setVisibility(8);
                this.k.setVisibility(8);
                if (this.C == null) {
                    return;
                }
                if (this.P.isShown()) {
                    this.C.d(0);
                } else {
                    this.C.d(2);
                }
            } else {
                this.i.setVisibility(8);
                this.h.setVisibility(8);
                this.j.setVisibility(0);
                this.k.setVisibility(0);
                if (this.C == null) {
                    return;
                }
                if (this.P.isShown()) {
                    this.C.d(1);
                } else {
                    this.C.d(2);
                }
            }
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.w = TextUtils.isEmpty(charSequence);
    }

    public final Editable c() {
        return this.l != null ? this.l.getText() : null;
    }

    public final void c(String str) {
        Editable text = this.l.getText();
        String str2 = BuildConfig.FLAVOR;
        int i = 0;
        for (int i2 = 0; i2 < text.length() && text.charAt(i2) == '+'; i2++) {
            i++;
            str2 = str2 + "00";
        }
        if (i > 0) {
            text.replace(0, i, str2);
        }
        String obj = text.toString();
        if ((obj.length() < str.length() || str.equals(obj.subSequence(0, str.length()))) ? obj.length() < str.length() : true) {
            text.insert(0, str);
        }
    }

    public final void c(boolean z2) {
        if (this.L == null || this.K == null) {
            e();
        }
        if (!z2) {
            if (this.G != null) {
                this.G.setVisibility(8);
                this.H.setVisibility(8);
            }
            if (this.E != null) {
                this.E.setVisibility(8);
                this.F.setVisibility(8);
            }
            if (!(this.K == null || this.L == null)) {
                this.K.setVisibility(0);
                this.L.setVisibility(8);
            }
            if (this.e != null) {
                this.e.setVisibility(0);
            }
            if (!this.d && this.P != null) {
                this.P.setVisibility(8);
            }
            if (this.J != null) {
                this.J.setVisibility(0);
                return;
            }
            return;
        }
        if (this.A.getInt("keypad_mode", 0) == 0) {
            if (this.E != null) {
                this.E.setVisibility(0);
                this.F.setVisibility(0);
            }
            if (this.G != null) {
                this.G.setVisibility(8);
            }
            if (this.J != null) {
                this.J.setVisibility(0);
            }
        } else if (!this.d) {
            if (this.E != null) {
                this.E.setVisibility(8);
            }
            if (this.G != null) {
                this.G.setVisibility(0);
                this.H.setVisibility(0);
            }
            if (this.J != null) {
                this.J.setVisibility(0);
            }
        } else {
            if (this.E != null) {
                this.E.setVisibility(0);
                this.F.setVisibility(0);
            }
            if (this.G != null) {
                this.G.setVisibility(8);
            }
            if (this.J != null) {
                this.J.setVisibility(0);
            }
        }
        if (!(this.K == null || this.L == null)) {
            this.K.setVisibility(8);
            this.L.setVisibility(8);
        }
        if (this.e != null) {
            this.e.setVisibility(8);
        }
        if (!this.d && this.P != null) {
            this.P.setVisibility(8);
        }
        if (this.n != null && this.n.n != null && this.n.n.m != null) {
            this.n.n.m.setVisibility(0);
        }
    }

    public final String d() {
        return this.l.getText().toString();
    }

    public final void d(boolean z2) {
        if (this.C != null) {
            if (!z2 || !this.o) {
                this.C.d(2);
            } else {
                this.C.d(1);
            }
        }
    }

    public final void e() {
        this.K = ((ViewStub) this.f977a.findViewById(2131296736)).inflate();
        this.L = ((ViewStub) this.f977a.findViewById(2131296737)).inflate();
        this.e = (FrameLayout) this.f977a.findViewById(2131296735);
        this.P = (FrameLayout) this.f977a.findViewById(2131296738);
        if (!this.d) {
            int integer = getActivity().getResources().getInteger(2131361798);
            this.P = (FrameLayout) this.f977a.findViewById(2131296738);
            this.i = new ImageButton(getActivity());
            this.i.setBackgroundResource(2131165766);
            this.i.setOnClickListener(this.r);
            if (this.i.getParent() == null) {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 53);
                layoutParams.setMargins(0, integer, 12, 0);
                this.P.addView(this.i, 1, layoutParams);
            }
            this.i.setVisibility(8);
            this.k = new ImageButton(getActivity());
            this.k.setBackgroundResource(2131165766);
            this.k.setOnClickListener(this.r);
            if (this.k.getParent() == null) {
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2, 53);
                layoutParams2.setMargins(0, 12, 12, 0);
                this.P.addView(this.k, 1, layoutParams2);
            }
            this.h = new ImageButton(getActivity());
            this.h.setBackgroundResource(2131165767);
            this.h.setOnClickListener(this.r);
            if (this.h.getParent() == null) {
                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2, 53);
                layoutParams3.setMargins(0, integer, 12, 0);
                this.e.addView(this.h, 1, layoutParams3);
            }
            this.h.setVisibility(8);
            this.j = new ImageButton(getActivity());
            this.j.setBackgroundResource(2131165767);
            this.j.setOnClickListener(this.r);
            if (this.j.getParent() == null) {
                FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2, 53);
                layoutParams4.setMargins(0, 12, 12, 0);
                this.e.addView(this.j, 1, layoutParams4);
            }
        }
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, -2, 53);
        this.f = (AsusHandwritingView) this.e.findViewById(2131296361);
        this.f.setOnWordSelectListener(this);
        this.f.setOnCondidateShowingListener(this);
        this.f.setOnAdditionalButtonsShowingListener(this);
        this.Q = this.f.b();
        this.e.addView(this.Q, 1, layoutParams5);
        if (!this.d) {
            this.g = (AsusHandwritingView) this.P.findViewById(2131296362);
            this.g.setOnWordSelectListener(this);
            this.g.setOnCondidateShowingListener(this);
            this.g.setOnAdditionalButtonsShowingListener(this);
            this.R = this.g.b();
            this.P.addView(this.R, 1, layoutParams5);
        }
    }

    public final void e(boolean z2) {
        if (z2) {
            this.l.requestFocus();
        }
    }

    public final void f() {
        View findViewById;
        if (this.E == null) {
            this.E = (LinearLayout) this.f977a.findViewById(2131296727);
            this.F = (FrameLayout) this.f977a.findViewById(2131296730);
            if (this.E.getChildCount() > 0) {
                b(this.E);
            }
            Locale locale = getResources().getConfiguration().locale;
            String a2 = a(getActivity(), Locale.getDefault().toString());
            View b2 = h.b(getActivity());
            h.b();
            this.E.addView(b2);
            this.M = b2;
            if (this.A.getBoolean("pref_use_defalut", true)) {
                Log.d("TwelveKeyDialerFragment", a2);
                if (a2.equals("zh_TW") || a2.equals("zh_TW_#Hant")) {
                    if (!this.ai || !this.ah) {
                        this.ax = 1;
                    }
                } else if (a2.equals("ru_RU")) {
                    if (!this.ai || !this.ah) {
                        this.ax = 2;
                    }
                } else if (!this.ai || !this.ah) {
                    this.ax = 0;
                }
                String a3 = a(a2);
                if (!this.A.getString("pref_last_mode", a2).equals(a3)) {
                    a(a3, false);
                    this.A.edit().putString("pref_last_mode", a3).apply();
                }
            } else {
                String string = this.A.getString(AsusDialerSettingActivity.KEY_DIALPAD_LIST, "0");
                if (string.equals("1")) {
                    if (!this.ai || !this.ah) {
                        this.ax = 2;
                    }
                } else if (string.equals("3")) {
                    if (!this.ai || !this.ah) {
                        this.ax = 1;
                    }
                } else if (!this.ai || !this.ah) {
                    this.ax = 0;
                }
                if (!this.A.getString("pref_last_mode", a2).equals(string)) {
                    a(string, true);
                    this.A.edit().putString("pref_last_mode", string).apply();
                }
            }
            if (this.f977a.findViewById(2131297134) != null) {
                this.J = this.f977a.findViewById(2131296745);
                m();
                if (com.android.contacts.skin.a.b()) {
                    a(this.f977a, 2131296732);
                    a(this.f977a, 2131296745);
                } else if (!(!com.android.contacts.skin.a.c() || this.f977a == null || (findViewById = this.f977a.findViewById(2131296732)) == null)) {
                    findViewById.setBackgroundColor(com.android.contacts.skin.a.a(com.android.contacts.skin.a.a(2), 0.15f));
                }
                a(this.M);
            }
        }
    }

    public final void f(boolean z2) {
        ImageButton imageButton = (ImageButton) this.f977a.findViewById(2131297143);
        if (z2) {
            if (this.D != null) {
                this.D.setVisibility(0);
            }
        } else if (this.D != null) {
            this.D.setVisibility(8);
        }
        AsusAirViewUtils.setActionbarHoverHint(imageButton, getResources().getString(2131755228), new com.android.contacts.airview.a(getActivity()));
    }

    public final void g() {
        boolean z2 = true;
        if (getResources().getConfiguration().orientation != 1) {
            z2 = false;
        }
        if (!this.d && z2 && this.G == null) {
            ViewStub viewStub = (ViewStub) this.f977a.findViewById(2131296748);
            if (viewStub != null) {
                this.D = viewStub.inflate();
            }
            if (this.D != null) {
                this.D.setOnClickListener(this);
            }
            this.f978b = (LinearLayout) this.f977a.findViewById(2131296307);
            if (this.f978b != null) {
                this.f978b.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.TwelveKeyDialerFragment.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        if (TwelveKeyDialerFragment.this.l.getText() != null) {
                            com.android.contacts.a.a(TwelveKeyDialerFragment.this.l.getText().toString()).show(TwelveKeyDialerFragment.this.getFragmentManager(), "dialog");
                        }
                    }
                });
            }
            this.J = this.f977a.findViewById(2131296745);
            this.c = (TextView) this.f977a.findViewById(2131296749);
            ViewStub viewStub2 = (ViewStub) this.f977a.findViewById(2131296728);
            if (viewStub2 != null) {
                this.G = viewStub2.inflate();
            }
            this.H = (FrameLayout) this.f977a.findViewById(2131296730);
            this.N = this.f977a.findViewById(2131296740);
            if (this.f977a.findViewById(2131297134) != null) {
                m();
                if (com.android.contacts.skin.a.b()) {
                    this.aq = (LinearLayout) this.f977a.findViewById(2131296308);
                    a(this.G, 2131296732);
                    a(this.f977a, 2131296745);
                    if (this.c != null) {
                        this.c.setTextColor(this.ar);
                    }
                    if (this.D != null) {
                        this.D.setBackgroundColor(this.at);
                    }
                    if (this.aq != null) {
                        this.aq.setBackgroundColor(this.at);
                    }
                } else if (com.android.contacts.skin.a.c()) {
                    this.aq = (LinearLayout) this.f977a.findViewById(2131296308);
                    ImageView imageView = (ImageView) this.f977a.findViewById(2131296306);
                    TextView textView = (TextView) this.f977a.findViewById(2131296309);
                    View findViewById = this.f977a.findViewById(2131296732);
                    if (this.c != null) {
                        this.c.setTextColor(this.ar);
                    }
                    if (this.D != null) {
                        this.D.setBackgroundColor(this.at);
                    }
                    if (this.aq != null) {
                        this.aq.setBackgroundColor(this.at);
                    }
                    if (this.f978b != null) {
                        this.f978b.setBackgroundColor(com.android.contacts.skin.a.a(0));
                    }
                    if (imageView != null) {
                        com.android.contacts.skin.a.a(imageView, com.android.contacts.skin.a.a(3));
                    }
                    if (textView != null) {
                        textView.setTextColor(com.android.contacts.skin.a.a(3));
                    }
                    if (findViewById != null) {
                        findViewById.setBackgroundColor(com.android.contacts.skin.a.a(com.android.contacts.skin.a.a(2), 0.15f));
                    }
                }
                a(this.N);
                if (this.C != null && this.C.o != null) {
                    this.C.o.setVisibility(8);
                }
            }
        }
    }

    public final void g(boolean z2) {
        this.ah = z2;
        if (this.l != null) {
            this.l.getText().clear();
        }
        o();
    }

    public final void h() {
        new Thread() { // from class: com.android.contacts.dialpad.TwelveKeyDialerFragment.6
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                synchronized (TwelveKeyDialerFragment.this.V) {
                    if (TwelveKeyDialerFragment.this.U == null) {
                        try {
                            TwelveKeyDialerFragment.this.U = new ToneGenerator(8, 80);
                            Log.d("TwelveKeyDialerFragment", "[DTMF] new ToneGenerator Object");
                            TwelveKeyDialerFragment.this.getActivity().setVolumeControlStream(2);
                        } catch (RuntimeException e) {
                            Log.w("TwelveKeyDialerFragment", "Exception caught while creating local tone generator: " + e);
                            TwelveKeyDialerFragment.this.U = null;
                        }
                    }
                }
            }
        }.start();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0019, code lost:
        if (r0.d != null) goto L_0x001c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean i() {
        /*
            r3 = this;
            r0 = 1
            r4 = r0
            r0 = r3
            com.android.contacts.dialpad.AsusHandwritingView r0 = r0.f
            if (r0 == 0) goto L_0x0033
            r0 = r3
            com.android.contacts.dialpad.AsusHandwritingView r0 = r0.f
            r5 = r0
            int r0 = com.android.contacts.dialpad.AsusHandwritingView.e
            r1 = 1
            if (r0 != r1) goto L_0x001e
            r0 = r5
            com.asus.ime.c r0 = r0.d
            if (r0 == 0) goto L_0x002e
        L_0x001c:
            r0 = r4
            return r0
        L_0x001e:
            int r0 = com.android.contacts.dialpad.AsusHandwritingView.e
            if (r0 != 0) goto L_0x002e
            java.lang.String r0 = "AsusHandwritingView"
            java.lang.String r1 = "Do not support VO now"
            int r0 = android.util.Log.w(r0, r1)
        L_0x002e:
            r0 = 0
            r4 = r0
            goto L_0x001c
        L_0x0033:
            r0 = 0
            r4 = r0
            goto L_0x001c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.dialpad.TwelveKeyDialerFragment.i():boolean");
    }

    public final void j() {
        if (this.E != null) {
            this.aa = this.E.getHeight();
            this.ab = this.E.getWidth();
        }
        if (this.Q != null) {
            this.Q.setHandwriteHeightAndWidth(this.aa, this.ab);
        }
        if (this.R != null) {
            this.R.setHandwriteHeightAndWidth(this.aa, this.ab);
        }
    }

    public final void k() {
        if (this.Q != null) {
            this.Q.a();
        }
        if (this.R != null) {
            this.R.a();
        }
    }

    public final void l() {
        if (this.f977a == null) {
            Log.d("TwelveKeyDialerFragment", "setDigitsColor mDialerView == null");
            return;
        }
        View findViewById = this.f977a.findViewById(2131296747);
        View findViewById2 = this.f977a.findViewById(2131296746);
        int color = com.android.contacts.skin.a.b() ? getResources().getColor(2131034132) : com.android.contacts.skin.a.c() ? c(com.android.contacts.skin.a.a(3)) : getResources().getColor(2131034131);
        findViewById.setBackgroundColor(color);
        findViewById2.setBackgroundColor(color);
    }

    public final void m() {
        ImageView imageView = (ImageView) this.f977a.findViewById(2131296731);
        if (imageView != null) {
            DialPadBlurredLayout dialPadBlurredLayout = null;
            if (this.n != null) {
                dialPadBlurredLayout = null;
                if (this.n.n != null) {
                    dialPadBlurredLayout = this.n.n.m;
                }
            }
            if (com.android.contacts.skin.a.b()) {
                this.at = getResources().getColor(2131034132);
                if (dialPadBlurredLayout != null) {
                    dialPadBlurredLayout.setVisibility(8);
                }
            } else if (com.android.contacts.skin.a.c()) {
                this.at = c(com.android.contacts.skin.a.a(3));
                if (dialPadBlurredLayout != null) {
                    dialPadBlurredLayout.setVisibility(8);
                }
            } else {
                this.at = getResources().getColor(2131034131);
                if (dialPadBlurredLayout != null) {
                    dialPadBlurredLayout.setVisibility(8);
                }
            }
            imageView.setBackgroundColor(this.at);
            com.asus.contacts.customize.a.a(getActivity(), imageView, "customized_background_dialpad", "customized_background_dialpad_uri");
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.u = false;
        if (this.T != null) {
            b(this.T);
            Selection.setSelection(this.l.getEditableText(), this.l.getText().length());
            this.T = null;
        }
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        String str;
        String str2;
        if (i == 1) {
            if (i2 == -1 && !intent.getBooleanExtra(SpeedDialEditor.EXTRA_SPEED_DIAL_NO_NUMBER, false)) {
                new AlertDialog.Builder(getActivity()).setTitle(2131756196).setMessage(2131756194).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.TwelveKeyDialerFragment.17
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        Intent intent2 = new Intent("android.intent.action.PICK", ContactsContract.Contacts.CONTENT_URI);
                        intent2.setData(ContactsContract.Contacts.CONTENT_URI);
                        intent2.setType("vnd.android.cursor.dir/phone_v2");
                        intent2.putExtra(SpeedDialEditor.EXTRA_FROM_SPEED_DIAL, false);
                        TwelveKeyDialerFragment.this.startActivityForResult(intent2, 2);
                        dialogInterface.dismiss();
                    }
                }).setNegativeButton(17039369, new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.TwelveKeyDialerFragment.16
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        dialogInterface.dismiss();
                    }
                }).show();
            }
        } else if (i == 2 && i2 == -1) {
            Cursor query = getActivity().getContentResolver().query(intent.getData(), null, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        query.getColumnNames();
                        long j = query.getLong(query.getColumnIndex(ContactDetailCallogActivity.EXTRA_CONTACT_ID));
                        long j2 = query.getLong(query.getColumnIndex("_id"));
                        if (query.getInt(query.getColumnIndex("has_phone_number")) == 1) {
                            String string = query.getString(query.getColumnIndex("display_name"));
                            String string2 = query.getString(query.getColumnIndex(CoverUtils.CoverData.COVER_URI));
                            int i3 = query.getInt(query.getColumnIndex(CoverUtils.CoverData.COVER_TYPE));
                            if (i3 == 1) {
                                str = "H: ";
                                str2 = "1";
                            } else if (i3 == 2) {
                                str = "M: ";
                                str2 = "2";
                            } else if (i3 == 3) {
                                str = "W: ";
                                str2 = "3";
                            } else {
                                str = "O: ";
                                str2 = "4";
                            }
                            this.B = getActivity().getSharedPreferences(SpeedDialEditor.PREF_SPEED_DIAL_TABLE, 0);
                            boolean z2 = this.B.getBoolean(SpeedDialEditor.PREF_SPEED_DIAL_TRANSFERED, false);
                            if (!PhoneCapabilityTester.IsAsusDevice() || Boolean.valueOf(z2).booleanValue()) {
                                a(getActivity(), z + 1, string, String.valueOf(j), string2);
                            } else {
                                int i4 = z;
                                String valueOf = String.valueOf(j);
                                try {
                                    Uri withAppendedId = ContentUris.withAppendedId(SpeedDialList.CONTENT_URI, i4 + 1);
                                    ContentValues contentValues = new ContentValues();
                                    contentValues.put("displayname", string);
                                    contentValues.put("contactid", String.valueOf(valueOf));
                                    contentValues.put(SpeedDialList.Columns.PHONENUMBER, string2);
                                    contentValues.put(SpeedDialList.Columns.PHONETYPE, str);
                                    contentValues.put(SpeedDialList.Columns.PHONETYPENUMBER, str2);
                                    contentValues.put(SpeedDialList.Columns.DATAID, String.valueOf(j2));
                                    if (getActivity().getContentResolver().update(withAppendedId, contentValues, null, null) <= 0 && !this.B.getBoolean(SpeedDialEditor.PREF_SPEED_DIAL_TRANSFERED, false)) {
                                        SharedPreferences.Editor edit = getActivity().getSharedPreferences(SpeedDialEditor.PREF_SPEED_DIAL_TABLE, 0).edit();
                                        edit.putBoolean(SpeedDialEditor.PREF_SPEED_DIAL_TRANSFERED, true);
                                        edit.commit();
                                        a(getActivity(), i4 + 1, string, valueOf, string2);
                                    }
                                } catch (IllegalArgumentException e) {
                                    Log.d("TwelveKeyDialerFragment", e.toString());
                                    SharedPreferences.Editor edit2 = getActivity().getSharedPreferences(SpeedDialEditor.PREF_SPEED_DIAL_TABLE, 0).edit();
                                    edit2.putBoolean(SpeedDialEditor.PREF_SPEED_DIAL_TRANSFERED, true);
                                    edit2.commit();
                                    a(getActivity(), i4 + 1, string, valueOf, string2);
                                }
                            }
                        }
                        if (query != null) {
                            query.close();
                            return;
                        }
                        return;
                    }
                } catch (Throwable th) {
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.n == null || this.n.x) {
            if (!this.az) {
                this.C = (ResultListFragment) getFragmentManager().findFragmentById(2131297236);
                this.C.g();
            }
            this.l.getText();
            int id = view.getId();
            if (id == 2131296647 || id == 2131296648) {
                if (this.n != null) {
                    this.n.r.vibrate();
                }
                a(67);
                if (this.f != null) {
                    this.f.b().setVisibility(8);
                }
                if (!this.d && this.g != null) {
                    this.g.b().setVisibility(8);
                    b(false);
                }
            } else if (id != 2131297143) {
                if (this.C != null) {
                    this.C.d = "Smart Search";
                }
                switch (id) {
                    case 2131296746:
                        if (!n()) {
                            this.l.setCursorVisible(true);
                        }
                        k();
                        return;
                    case 2131296748:
                    default:
                        return;
                    case 2131296783:
                        b(8);
                        a(15);
                        return;
                    case 2131296862:
                        b(5);
                        a(12);
                        return;
                    case 2131296872:
                        b(4);
                        a(11);
                        return;
                    case 2131297114:
                        b(9);
                        a(16);
                        return;
                    case 2131297134:
                        b(1);
                        a(8);
                        return;
                    case 2131297178:
                        b(11);
                        a(18);
                        return;
                    case 2131297279:
                        b(7);
                        a(14);
                        return;
                    case 2131297305:
                        b(6);
                        a(13);
                        return;
                    case 2131297345:
                        b(10);
                        a(17);
                        return;
                    case 2131297397:
                        b(3);
                        a(10);
                        return;
                    case 2131297423:
                        b(2);
                        a(9);
                        return;
                    case 2131297555:
                        b(0);
                        a(7);
                        return;
                }
            } else if (this.m != null) {
                this.m.a(view);
                AsusRedPointNotificationHelper.getInstance().disableRedPoint(getActivity(), 3);
                ImageView imageView = (ImageView) this.f977a.findViewById(2131296370);
                if (imageView != null) {
                    imageView.setVisibility(8);
                }
            }
        }
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        Log.d("TwelveKeyDialerFragment", "onCreate()");
        super.onCreate(bundle);
        if (bundle != null) {
            this.q = bundle.getBoolean("pref_digits_filled_by_intent");
        }
        this.d = PhoneCapabilityTester.isUsingTwoPanes(getActivity());
        this.ap = new ContentObserver(new Handler()) { // from class: com.android.contacts.dialpad.TwelveKeyDialerFragment.2
            @Override // android.database.ContentObserver
            public final void onChange(boolean z2) {
                boolean z3 = true;
                TwelveKeyDialerFragment twelveKeyDialerFragment = TwelveKeyDialerFragment.this;
                if (Settings.System.getInt(TwelveKeyDialerFragment.this.getActivity().getContentResolver(), "dtmf_tone", 1) != 1) {
                    z3 = false;
                }
                twelveKeyDialerFragment.v = z3;
                Log.d("TwelveKeyDialerFragment", "[onChange] mDTMFToneEnabled = " + TwelveKeyDialerFragment.this.v);
            }
        };
        this.az = h.a(getActivity());
        this.A = PreferenceManager.getDefaultSharedPreferences(getActivity());
        String simCountryIso = ((TelephonyManager) getActivity().getSystemService("phone")).getSimCountryIso();
        if (!simCountryIso.equals(BuildConfig.FLAVOR)) {
            this.A.edit().putString("country_code", simCountryIso).apply();
        }
        this.B = getActivity().getSharedPreferences(SpeedDialEditor.PREF_SPEED_DIAL_TABLE, 0);
        boolean z2 = this.B.getBoolean(SpeedDialEditor.PREF_SPEED_DIAL_TRANSFERED, false);
        if (PhoneCapabilityTester.IsAsusDevice() && !Boolean.valueOf(z2).booleanValue() && this.al == null) {
            this.al = new d(getActivity());
        }
        if (com.android.contacts.skin.a.b()) {
            this.ar = getResources().getColor(2131034138);
            this.as = getResources().getColor(2131034136);
        } else if (com.android.contacts.skin.a.c()) {
            this.ar = com.android.contacts.skin.a.a(2);
            this.as = com.android.contacts.skin.a.a(0);
        }
        this.aj = getResources().getBoolean(2130968599);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.f977a == null) {
            this.f977a = h.d(getActivity());
            h.a();
            this.ag = (LinearLayout) this.f977a.findViewById(2131297422);
            this.ah = false;
            this.ai = false;
            o();
        }
        this.p = getResources().getDisplayMetrics().widthPixels * 0.25f;
        l();
        return this.f977a;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (this.al != null) {
            this.al.a();
            this.al = null;
        }
        this.al = null;
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (this.f != null) {
            this.f.a();
            this.f.c();
            b(this.f);
            b(this.Q);
            this.f = null;
            this.Q = null;
        }
        if (this.g != null) {
            this.g.a();
            this.g.c();
            b(this.g);
            b(this.R);
            this.g = null;
            this.R = null;
        }
        if (this.I != null && ((ViewGroup) this.I).getChildCount() > 0) {
            b(this.I);
        }
        b(this.f977a);
        b(this.e);
        b(this.P);
        b(this.E);
        b(this.G);
        b(this.i);
        b(this.k);
        b(this.h);
        b(this.j);
        this.f977a = null;
        this.E = null;
        this.F = null;
        this.M = null;
        this.G = null;
        this.H = null;
        this.N = null;
        this.e = null;
        this.P = null;
        this.i = null;
        this.k = null;
        this.h = null;
        this.j = null;
        this.I = null;
        h.a();
        h.b();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        boolean z2;
        switch (view.getId()) {
            case 2131296746:
                if (!(i == 5) && !(i == 66)) {
                    if (i == 8 && SystemClock.uptimeMillis() - keyEvent.getDownTime() >= ViewConfiguration.getLongPressTimeout()) {
                        Log.d("TwelveKeyDialerFragment", "call to Voicemail number");
                        h(false);
                        z2 = true;
                        break;
                    }
                } else {
                    z2 = true;
                    if (this.n != null) {
                        this.n.a(false, -1, false);
                        z2 = true;
                        break;
                    }
                }
                break;
            default:
                z2 = false;
                break;
        }
        return z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x009a  */
    @Override // android.view.View.OnLongClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onLongClick(android.view.View r8) {
        /*
            Method dump skipped, instructions count: 729
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.dialpad.TwelveKeyDialerFragment.onLongClick(android.view.View):boolean");
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        new Thread() { // from class: com.android.contacts.dialpad.TwelveKeyDialerFragment.5
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                synchronized (TwelveKeyDialerFragment.this.V) {
                    if (TwelveKeyDialerFragment.this.U != null) {
                        Log.d("TwelveKeyDialerFragment", "[DTMF] Release ToneGenerator");
                        TwelveKeyDialerFragment.this.U.release();
                        TwelveKeyDialerFragment.this.U = null;
                    }
                }
            }
        }.start();
        if (this.f != null) {
            this.f.e();
        }
        if (this.g != null) {
            this.g.e();
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        boolean z2;
        super.onResume();
        if (this.az) {
            if (this.E != null) {
                this.E.setVisibility(8);
                this.F.setVisibility(8);
            }
            if (this.G != null) {
                this.G.setVisibility(8);
                this.H.setVisibility(8);
            }
            if (this.I != null) {
                this.I.setVisibility(0);
            }
            if (this.J != null) {
                this.J.setVisibility(8);
            }
        } else if (this.A.getInt("keypad_mode", 0) != 1 || this.d) {
            if (this.E != null) {
                this.E.setVisibility(0);
                this.F.setVisibility(0);
            }
            if (this.G != null) {
                this.G.setVisibility(8);
                this.D.setVisibility(8);
            }
            if (this.J != null) {
                this.J.setVisibility(0);
            }
        } else {
            if (this.E != null) {
                this.E.setVisibility(8);
            }
            if (this.G != null) {
                this.G.setVisibility(0);
                this.H.setVisibility(0);
                this.D.setVisibility(0);
            }
            if (this.J != null) {
                this.J.setVisibility(0);
            }
        }
        if (this.K != null) {
            this.K.setVisibility(8);
        }
        if (this.L != null) {
            this.L.setVisibility(8);
        }
        this.v = Settings.System.getInt(getActivity().getContentResolver(), "dtmf_tone", 1) == 1;
        this.s = true;
        if (this.l != null) {
            Editable text = this.l.getText();
            if (text == null) {
                z2 = true;
            } else {
                int i = 0;
                for (int i2 = 0; i2 < text.length(); i2++) {
                    char charAt = text.charAt(i2);
                    i = i;
                    if (!Character.isDigit(charAt)) {
                        i = i;
                        if (charAt != '#') {
                            i = i;
                            if (charAt != '*') {
                                i = i;
                                if (charAt != ',') {
                                    i = i;
                                    if (charAt != '+') {
                                        i = i;
                                        if (charAt != ' ') {
                                            i = i;
                                            if (charAt != '(') {
                                                i = i;
                                                if (charAt != ')') {
                                                    i = i;
                                                    if (charAt != '-') {
                                                        i = i;
                                                        if (charAt != '/') {
                                                            i = i;
                                                            if (charAt != ';') {
                                                                i++;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                z2 = true;
                if (i <= 0) {
                    z2 = false;
                }
            }
        } else {
            z2 = false;
        }
        if (z2 && this.l != null) {
            this.l.getText().clear();
        }
        Iterator<b> it = this.S.iterator();
        while (it.hasNext()) {
            b next = it.next();
            if (!(next == null || this.l == null)) {
                next.a(this.l.getText(), this.s);
            }
        }
        if (this.f != null) {
            this.f.a(getActivity());
        }
        if (this.g != null) {
            this.g.a(getActivity());
        }
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("pref_digits_filled_by_intent", this.q);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        if (getActivity() != null) {
            getActivity().getContentResolver().registerContentObserver(Settings.System.getUriFor("dtmf_tone"), true, this.ap);
        }
        if (this.u) {
            this.l.getText().clear();
            this.u = false;
        }
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        if (this.W != null) {
            this.W.cancel();
        }
        h.a();
        h.b();
        if (getActivity() != null) {
            getActivity().getContentResolver().unregisterContentObserver(this.ap);
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        Activity activity;
        if (!(this.w == TextUtils.isEmpty(charSequence) || (activity = getActivity()) == null)) {
            activity.invalidateOptionsMenu();
        }
        if (this.aj && this.A.getInt("keypad_mode", 0) == 0 && this.n != null && this.n.n != null) {
            this.n.n.e(TextUtils.isEmpty(charSequence));
        }
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        if (!PhoneCapabilityTester.isHighendDevice(getActivity(), 1L) && !PhoneCapabilityTester.isDialtactInForeground(getActivity())) {
            Log.d("TwelveKeyDialerFragment", "onTrimMemory(), level = " + i + " Release handwrite resource");
            if (this.f != null) {
                this.f.d();
                this.f.a();
            }
            if (this.g != null) {
                this.g.d();
                this.g.a();
            }
        }
    }
}
