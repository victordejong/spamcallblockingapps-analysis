package com.asus.contacts.floatingwindow;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.contacts.activities.BlockAndTagNumberActivity;
import com.android.contacts.asuscallerid.c;
import com.android.contacts.util.TelecomUtil;
import com.asus.blocklist.BlockListService;
import com.asus.updatesdk.R;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/floatingwindow/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    static final String f2611a = a.class.getSimpleName();
    private float A;
    private float B;
    private float C;

    /* renamed from: b  reason: collision with root package name */
    Context f2612b;
    WindowManager c;
    View e;
    public float g;
    public float h;
    String i;
    private LayoutInflater j;
    private TextView k;
    private TextView l;
    private TextView m;
    private ImageView n;
    private TextView o;
    private ImageView p;
    private ImageView q;
    private Bundle r;
    private TextView s;
    private View t;
    private TextView u;
    private View v;
    private View w;
    private View x;
    private View y;
    private float z;
    boolean f = false;
    private boolean D = false;
    private View.OnTouchListener E = new View.OnTouchListener() { // from class: com.asus.contacts.floatingwindow.a.1

        /* renamed from: b  reason: collision with root package name */
        private int f2614b;
        private int c;
        private float d;
        private float e;

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            boolean z;
            if (view.getId() != 2131297362) {
                z = true;
                switch (motionEvent.getAction()) {
                    case 0:
                        this.f2614b = a.this.d.x;
                        this.c = a.this.d.y;
                        this.d = motionEvent.getRawX();
                        this.e = motionEvent.getRawY();
                        z = true;
                        break;
                    case 1:
                        break;
                    case 2:
                        a.this.f = true;
                        a.this.d.x = this.f2614b + ((int) (motionEvent.getRawX() - this.d));
                        a.this.d.y = this.c + ((int) (motionEvent.getRawY() - this.e));
                        a.this.c.updateViewLayout(a.this.e, a.this.d);
                        z = true;
                        break;
                    default:
                        z = false;
                        break;
                }
            } else {
                switch (motionEvent.getAction()) {
                    case 0:
                        a.this.z = (int) motionEvent.getY();
                        a.this.A = (int) motionEvent.getX();
                        z = true;
                        break;
                    case 1:
                        a.this.B = Math.abs(((int) motionEvent.getY()) - a.this.z);
                        a.this.C = Math.abs(((int) motionEvent.getX()) - a.this.A);
                        boolean z2 = a.this.A > motionEvent.getX();
                        boolean z3 = false;
                        if (a.this.B < a.this.h) {
                            z3 = false;
                            if (a.this.C > a.this.g) {
                                z3 = false;
                                if (z2) {
                                    z3 = true;
                                }
                            }
                        }
                        Log.d(a.f2611a, "isRightToLeft:" + z2 + ", isValid:" + z3 + ", mEndY:" + a.this.B + ", mEndX:" + a.this.C);
                        z = true;
                        if (z3) {
                            Log.d(a.f2611a, "isValid");
                            if (PhoneNumberUtils.isUriNumber(a.this.i)) {
                                TelecomUtil.endCallByTelecom(a.this.f2612b);
                            } else {
                                TelecomUtil.endCallByTelephony(a.this.f2612b);
                            }
                            Intent intent = new Intent(a.this.f2612b, BlockListService.class);
                            intent.setAction("android.intent.action.ASUS_ADD_NUMBER_TO_BLOCK_LIST_SERVICE");
                            intent.putExtra("number", a.this.i);
                            intent.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_IS_SWIPE_TO_BLOCK, true);
                            a.this.f2612b.startService(intent);
                            z = true;
                            break;
                        }
                        break;
                    case 2:
                        a.this.D = true;
                    default:
                        z = false;
                        break;
                }
            }
            return z;
        }
    };
    WindowManager.LayoutParams d = new WindowManager.LayoutParams(2010, 8, -3);

    public a(Context context, WindowManager windowManager, Bundle bundle) {
        int i;
        this.g = 0.0f;
        this.h = 0.0f;
        this.f2612b = context;
        this.c = windowManager;
        this.j = LayoutInflater.from(context);
        this.e = this.j.inflate(2131427375, (ViewGroup) null);
        this.r = bundle;
        this.d.height = -2;
        this.d.width = this.f2612b.getResources().getDimensionPixelSize(2131100184);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f2612b);
        int i2 = defaultSharedPreferences.getInt("floating_window_position_x", 9999);
        int i3 = defaultSharedPreferences.getInt("floating_window_position_y", 9999);
        Log.d(f2611a, "initX:" + i2 + ", inity:" + i3);
        if (i2 == 9999 || i3 == 9999) {
            this.d.gravity = 51;
            Point point = new Point();
            this.c.getDefaultDisplay().getSize(point);
            int i4 = point.x;
            int dimensionPixelSize = (i4 - this.f2612b.getResources().getDimensionPixelSize(2131100184)) / 2;
            this.d.x = dimensionPixelSize > 0 ? dimensionPixelSize : 0;
            this.d.y = this.f2612b.getResources().getDimensionPixelSize(2131100171);
            Log.d(f2611a, "width:" + i4 + " initX:" + dimensionPixelSize);
            Log.d(f2611a, "mParams.x:" + this.d.x + " mParams.y:" + this.d.y);
        } else {
            this.d.gravity = 51;
            this.d.x = i2;
            this.d.y = i3;
            Log.d(f2611a, "get mParams.x:" + this.d.x + ", mParams.y:" + this.d.y);
        }
        View view = this.e;
        Log.d(f2611a, ">>> init floating views");
        this.f2612b.getResources();
        this.i = this.r.getString("ASUS_CALLER_QUERY_NUMBER");
        String string = this.r.getString("ASUS_CALLER_TAG_NAME");
        String string2 = this.r.getString("ASUS_CALLER_TAG_TAG_COUNT_TEXT");
        int i5 = this.r.getInt("ASUS_CALLER_TAG_STATUS", -1);
        int i6 = this.r.getInt("ASUS_CALLER_TAG_COUNT_COLOR", -1);
        String string3 = this.r.getString("ASUS_CALLER_TAG_BLOCK_COUNT_TEXT");
        int i7 = this.r.getInt("ASUS_CALLER_TAG_BLOCK_COUNT_COLOR", -1);
        this.k = (TextView) view.findViewById(R.id.title);
        this.n = (ImageView) view.findViewById(2131296541);
        this.l = (TextView) view.findViewById(R.id.time);
        this.m = (TextView) view.findViewById(2131297128);
        this.o = (TextView) view.findViewById(2131297373);
        this.p = (ImageView) view.findViewById(2131297381);
        this.q = (ImageView) view.findViewById(2131296490);
        this.s = (TextView) view.findViewById(2131297468);
        this.t = view.findViewById(2131296387);
        this.u = (TextView) view.findViewById(2131296385);
        this.v = view.findViewById(2131296947);
        this.w = view.findViewById(2131296386);
        this.x = view.findViewById(2131297362);
        this.y = view.findViewById(2131297016);
        this.y.setOnTouchListener(this.E);
        if (c.e == 1) {
            this.x.setOnTouchListener(this.E);
        } else {
            this.x.setVisibility(8);
            this.w.setVisibility(0);
        }
        if (this.p != null) {
            switch (i5) {
                case 0:
                    this.p.setBackgroundResource(2131165425);
                    break;
                case 1:
                    this.p.setBackgroundResource(2131165426);
                    break;
                case 2:
                case 3:
                default:
                    this.p.setBackgroundResource(2131165427);
                    break;
                case 4:
                case 6:
                    this.p.setBackgroundResource(2131165231);
                    break;
                case 5:
                    this.p.setBackgroundResource(2131165427);
                    break;
            }
        }
        if (this.k != null) {
            if (!TextUtils.isEmpty(string)) {
                this.k.setText(string);
                this.k.postDelayed(new Runnable() { // from class: com.asus.contacts.floatingwindow.a.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        a.this.k.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                        a.this.k.setFocusable(true);
                        a.this.k.setFocusableInTouchMode(true);
                        a.this.k.setSelected(true);
                    }
                }, 1500L);
            } else {
                this.k.setText(this.i);
            }
        }
        if (this.m != null) {
            if (TextUtils.isEmpty(string)) {
                this.m.setText(2131756348);
            } else {
                this.m.setText(this.i);
            }
        }
        Log.d(f2611a, "mTagCountTextView==null?" + (this.o == null));
        if (!TextUtils.isEmpty(string2)) {
            if (this.o != null) {
                switch (i6) {
                    case -5251751:
                        i = 2131165776;
                        break;
                    case -1299649:
                        i = 2131165777;
                        break;
                    case -30208:
                        i = 2131165778;
                        break;
                    default:
                        i = 0;
                        break;
                }
                Log.d(f2611a, "tagCount:" + string2 + ", countColor:" + i6);
                this.o.setVisibility(0);
                this.o.setText(string2);
                this.o.setBackgroundResource(i);
            }
            if (this.s != null) {
                this.s.setVisibility(0);
            }
        }
        if (this.n != null) {
            this.n.setOnClickListener(new View.OnClickListener() { // from class: com.asus.contacts.floatingwindow.a.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    try {
                        a.this.f2612b.stopService(new Intent(a.this.f2612b, FloatingWindowService.class));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
        }
        Log.d(f2611a, "blockTag:" + string3 + ", blockCountColor:" + i7);
        if (!(this.t == null || this.v == null)) {
            if (!TextUtils.isEmpty(string3)) {
                this.t.setVisibility(0);
                this.u.setText(string3);
                this.u.setTextColor(i7);
            } else {
                this.v.setVisibility(0);
                this.t.setVisibility(8);
            }
        }
        Log.d(f2611a, "<<< init floating views");
        this.g = this.d.width * 0.3f;
        this.h = context.getResources().getDimensionPixelOffset(2131100393);
        Log.d(f2611a, "mThresholdX:" + this.g + ", mThresholdY:" + this.h);
    }
}
