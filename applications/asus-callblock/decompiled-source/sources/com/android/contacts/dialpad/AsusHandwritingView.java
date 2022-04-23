package com.android.contacts.dialpad;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.activities.AsusDialerSettingActivity;
import com.android.contacts.dialpad.AsusHandwritingCandidate;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.ime.NativeWriteChinese;
import com.asus.ime.e;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.utility.SystemPropertiesReflection;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/AsusHandwritingView.class */
public class AsusHandwritingView extends View implements AsusHandwritingCandidate.a {
    private static final String[] K = {"VO_x86", "VO_arm", "T9_x86", "T9_arm"};
    static int e = 0;
    private int A;
    private int B;
    private int C;
    private Bitmap E;
    private Canvas F;
    private String J;

    /* renamed from: a  reason: collision with root package name */
    protected a f835a;

    /* renamed from: b  reason: collision with root package name */
    protected c f836b;
    protected b c;
    private Context g;
    private ArrayList<ArrayList<Point>> j;
    private ArrayList<Point> k;
    private SharedPreferences t;
    private List<Point> w;
    private int y;
    private int z;
    private boolean h = false;
    private String i = BuildConfig.FLAVOR;
    private final String l = "com.asus.ime.initHandWriteLib";
    private final String m = "com.asus.ime.getSupportList";
    private final String n = "com.asus.ime.performHandWriteRecognition";
    private final String o = "com.asus.ime.destroyHandWrite";
    private final String p = "com.asus.ime.initHandWriteLib.ack";
    private final String q = "com.asus.ime.getSupportList.ack";
    private final String r = "com.asus.ime.performHandWriteRecognition.ack";
    private final String s = "com.asus.ime.destroyHandWrite.ack";
    private Paint u = null;
    private Paint v = null;
    private Path x = null;
    private boolean D = false;
    private AsusHandwritingCandidateContainer G = null;
    private AsusHandwritingCandidate H = null;
    private Object I = new Object();
    com.asus.ime.c d = null;
    Handler f = new Handler() { // from class: com.android.contacts.dialpad.AsusHandwritingView.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    AsusHandwritingView.a(AsusHandwritingView.this);
                    return;
                default:
                    super.handleMessage(message);
                    return;
            }
        }
    };
    private Handler L = new Handler() { // from class: com.android.contacts.dialpad.AsusHandwritingView.2
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    if (AsusHandwritingView.this.G != null) {
                        AsusHandwritingView.this.G.setVisibility(0);
                        AsusHandwritingView.this.f836b.b(true);
                        AsusHandwritingView.this.H.setSuggestions((List) message.obj, false, 0);
                    }
                    if (AsusHandwritingView.this.f835a != null) {
                        AsusHandwritingView.this.f835a.a(AsusHandwritingView.this.J, "Handwrite Search");
                        return;
                    }
                    return;
                default:
                    super.handleMessage(message);
                    return;
            }
        }
    };
    private BroadcastReceiver M = new BroadcastReceiver() { // from class: com.android.contacts.dialpad.AsusHandwritingView.3
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (AsusHandwritingView.this.isShown()) {
                if (intent.getAction().equals("com.asus.ime.initHandWriteLib.ack")) {
                    Log.d("AsusHandwritingView", "mReceiver : com.asus.ime.initHandWriteLib.ack");
                } else if (intent.getAction().equals("com.asus.ime.getSupportList.ack")) {
                    Log.d("AsusHandwritingView", "mReceiver : com.asus.ime.getSupportList.ack");
                } else if (intent.getAction().equals("com.asus.ime.performHandWriteRecognition.ack")) {
                    Log.d("AsusHandwritingView", "mReceiver : com.asus.ime.performHandWriteRecognition.ack");
                    ArrayList arrayList = (ArrayList) intent.getSerializableExtra("CandidateList");
                    StringBuilder sb = new StringBuilder();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        sb.append(((CharSequence) it.next()).toString() + ", ");
                    }
                    Log.d("AsusHandwritingView", "list = " + PhoneCapabilityTester.privacyLogCheck(sb.toString()));
                    AsusHandwritingView.this.J = intent.getStringExtra("LeadingString");
                    Log.d("AsusHandwritingView", "mResult = " + PhoneCapabilityTester.privacyLogCheck(AsusHandwritingView.this.J));
                    if (AsusHandwritingView.this.J == null || AsusHandwritingView.this.J.equals(BuildConfig.FLAVOR)) {
                        if (arrayList.size() > 0) {
                            AsusHandwritingView.this.J = ((String) arrayList.get(0)).toString();
                        } else {
                            AsusHandwritingView.this.J = " ";
                        }
                    }
                    Message message = new Message();
                    message.what = 1;
                    message.obj = arrayList;
                    AsusHandwritingView.this.L.sendMessage(message);
                } else if (intent.getAction().equals("com.asus.ime.destroyHandWrite.ack")) {
                    Log.d("AsusHandwritingView", "mReceiver : com.asus.ime.destroyHandWrite.ack");
                }
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/AsusHandwritingView$a.class */
    public interface a {
        void a(CharSequence charSequence);

        void a(CharSequence charSequence, String str);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/AsusHandwritingView$b.class */
    public interface b {
        void a(boolean z);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/AsusHandwritingView$c.class */
    public interface c {
        void b(boolean z);
    }

    public AsusHandwritingView(Context context) {
        super(context);
    }

    public AsusHandwritingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AsusHandwritingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void a(int i, int i2) {
        int abs = Math.abs(i - this.y);
        int abs2 = Math.abs(i2 - this.z);
        if (abs >= 2 || abs2 >= 2) {
            this.w.add(new Point(i, i2));
            this.k.add(new Point(i, i2));
            int i3 = (this.y + i) / 2;
            int i4 = (this.z + i2) / 2;
            this.x.quadTo(this.y, this.z, i3, i4);
            a(this.A, this.B, i3, i4);
            this.y = i;
            this.z = i2;
            this.A = i3;
            this.B = i4;
        }
    }

    private void a(int i, int i2, int i3, int i4) {
        if (i3 >= i) {
            i = i3;
            i3 = i;
        }
        if (i4 >= i2) {
            i2 = i4;
            i4 = i2;
        }
        invalidate(i3 - this.C, i4 - this.C, i + this.C, i2 + this.C);
    }

    private static void a(AssetManager assetManager, File file, File file2) {
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        InputStream open = assetManager.open(file.getPath());
        file2.createNewFile();
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = open.read(bArr);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    return;
                }
            }
        } finally {
            open.close();
            fileOutputStream.close();
        }
    }

    private void a(MotionEvent motionEvent) {
        int historySize = motionEvent.getHistorySize();
        for (int i = 0; i < historySize; i++) {
            a((int) motionEvent.getHistoricalX(i), (int) motionEvent.getHistoricalY(i));
        }
        a((int) motionEvent.getX(), (int) motionEvent.getY());
        synchronized (this.I) {
            if (this.D) {
                this.F.drawPath(this.x, this.u);
                this.x.reset();
                this.x.moveTo(this.A, this.B);
            }
        }
    }

    static /* synthetic */ void a(AsusHandwritingView asusHandwritingView) {
        asusHandwritingView.x.reset();
        asusHandwritingView.x.moveTo(asusHandwritingView.y, asusHandwritingView.z);
        asusHandwritingView.w.clear();
        asusHandwritingView.k.clear();
        synchronized (asusHandwritingView.I) {
            if (asusHandwritingView.D) {
                if (asusHandwritingView.E.getConfig() != Bitmap.Config.ARGB_8888 || asusHandwritingView.E.hasAlpha()) {
                    asusHandwritingView.E.eraseColor(0);
                } else {
                    asusHandwritingView.E.eraseColor(-16777216);
                }
            }
        }
        asusHandwritingView.invalidate();
        Log.d("AsusHandwritingView", "[performHandWriteRecognition]");
        if (asusHandwritingView.h) {
            Intent intent = new Intent("com.asus.ime.performHandWriteRecognition");
            if (asusHandwritingView.i.equals(BuildConfig.FLAVOR)) {
                asusHandwritingView.i = "zh_TW";
            }
            intent.putExtra("locale", asusHandwritingView.i);
            intent.putExtra("arcs", asusHandwritingView.j);
            asusHandwritingView.g.sendBroadcast(intent);
            asusHandwritingView.j.clear();
        } else if (e == 1) {
            asusHandwritingView.f();
        } else if (e == 0) {
            Log.w("AsusHandwritingView", "Do not support VO now");
        }
        if (asusHandwritingView.c != null) {
            asusHandwritingView.c.a(true);
        }
    }

    private static void b(Context context) {
        try {
            AssetManager assets = context.getAssets();
            File dir = context.getDir("Data", 0);
            String[] list = assets.list("conf");
            File file = new File(dir.getAbsolutePath() + "/conf");
            file.mkdir();
            for (String str : list) {
                File file2 = new File(file.getAbsolutePath(), str);
                if (!file2.exists()) {
                    a(assets, new File("conf/" + str), file2);
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    private void f() {
        if (this.d != null) {
            com.asus.ime.c cVar = this.d;
            LinkedList linkedList = new LinkedList();
            if (NativeWriteChinese.Write_Chinese_recognize(cVar.f2901a, (char) 0, cVar.c, cVar.d) == 0) {
                int a2 = com.asus.ime.c.a(cVar.c);
                for (int i = 0; i < a2; i++) {
                    linkedList.add(new String(cVar.c, i, 1));
                }
            }
            StringBuilder sb = new StringBuilder();
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                sb.append(((CharSequence) it.next()).toString() + ", ");
            }
            Log.d("AsusHandwritingView", "list = " + PhoneCapabilityTester.privacyLogCheck(sb.toString()));
            NativeWriteChinese.Write_Chinese_endArc(this.d.f2901a);
            Message message = new Message();
            message.what = 1;
            message.obj = linkedList;
            this.L.sendMessage(message);
            if (linkedList.size() > 0) {
                this.J = ((CharSequence) linkedList.get(0)).toString();
            }
        }
    }

    public final void a() {
        synchronized (this.I) {
            this.F = null;
            if (this.E != null && !this.E.isRecycled()) {
                this.E.recycle();
                this.E = null;
            }
            this.D = false;
        }
    }

    public final void a(Context context) {
        String str;
        if (e != 1) {
            return;
        }
        if (this.d != null) {
            if (this.t.getBoolean("pref_use_defalut", true)) {
                Locale locale = context.getResources().getConfiguration().locale;
                str = Locale.getDefault().toString();
            } else {
                str = this.t.getString(AsusDialerSettingActivity.KEY_DIALPAD_LIST, "0").equals("3") ? "zh_TW" : "zh_CN";
            }
            if (str.equals("zh_TW")) {
                this.d.a(new e(), 224);
            } else {
                this.d.a(new e(), 225);
            }
        } else {
            Log.d("AsusHandwritingView", "[onResume] mWriteChinese is null!");
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x02e1 -> B:21:0x016d). Please submit an issue!!! */
    public final void a(Context context, boolean z, boolean z2, boolean z3) {
        int i;
        String str;
        boolean z4 = true;
        boolean z5 = true;
        boolean z6 = true;
        this.g = context;
        String a2 = com.asus.contacts.a.a("ro.config.hwrlib");
        if (com.asus.contacts.a.a(SystemPropertiesReflection.Key.BUILD_ASUS_SKU, BuildConfig.FLAVOR).toLowerCase().startsWith("jp")) {
            i = 4;
        } else {
            if (a2 != null && PhoneCapabilityTester.IsAsusDevice()) {
                Log.e("AsusHandwritingView", "ro.config.hwrlib=" + a2);
                for (int i2 = 0; i2 < K.length; i2++) {
                    i = i2;
                    if (a2.equals(K[i2])) {
                        break;
                    }
                }
            } else {
                Log.e("AsusHandwritingView", "ro.config.hwrlib is null!");
            }
            i = -1;
        }
        switch (i) {
            case 0:
            case 1:
                e = 0;
                Log.d("AsusHandwritingView", "VO_MODE");
                break;
            case 2:
            case 3:
                e = 1;
                Log.d("AsusHandwritingView", "T9_MODE");
                break;
            case 4:
                e = 2;
                break;
            default:
                Log.e("AsusHandwritingView", "No hand write system property matched!");
                break;
        }
        this.w = new LinkedList();
        this.j = new ArrayList<>();
        this.k = new ArrayList<>();
        this.h = (e == 1) & z3;
        this.x = new Path();
        context.getResources().getDisplayMetrics();
        this.t = PreferenceManager.getDefaultSharedPreferences(context);
        int i3 = z2 ? 12 : 10;
        int i4 = z ? -16724737 : -16777216;
        this.u = new Paint();
        this.u.setStrokeWidth(i3);
        this.u.setAntiAlias(true);
        this.u.setStyle(Paint.Style.STROKE);
        this.u.setStrokeJoin(Paint.Join.ROUND);
        this.u.setStrokeCap(Paint.Cap.ROUND);
        this.u.setColor(i4);
        this.v = new Paint();
        this.v.setStrokeWidth(3.0f);
        this.v.setColor(1073741824);
        this.C = i3 * 2;
        Log.d("AsusHandwritingView", "[init] ");
        if (this.h) {
            Context context2 = this.g;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.asus.ime.initHandWriteLib.ack");
            intentFilter.addAction("com.asus.ime.getSupportList.ack");
            intentFilter.addAction("com.asus.ime.performHandWriteRecognition.ack");
            intentFilter.addAction("com.asus.ime.destroyHandWrite.ack");
            try {
                context2.registerReceiver(this.M, intentFilter);
            } catch (Exception e2) {
                Log.d("AsusHandwritingView", "Fail to register Handwrite ack, Exception : " + e2.toString());
            }
            this.g.sendBroadcast(new Intent("com.asus.ime.initHandWriteLib"));
            if (e == 1) {
                if (this.t.getBoolean("pref_use_defalut", true)) {
                    Locale locale = context.getResources().getConfiguration().locale;
                    this.i = Locale.getDefault().toString();
                    if (!"zh_TW".equals(this.i) && (PhoneCapabilityTester.isCUCCSku() || PhoneCapabilityTester.isCMCCSku() || PhoneCapabilityTester.isCNSku())) {
                        this.i = "zh_CN";
                    }
                } else if (this.t.getString(AsusDialerSettingActivity.KEY_DIALPAD_LIST, "0").equals("3")) {
                    this.i = "zh_TW";
                } else {
                    this.i = "zh_CN";
                }
            } else if (this.t.getBoolean("pref_use_defalut", true)) {
                Locale locale2 = this.g.getResources().getConfiguration().locale;
                String locale3 = Locale.getDefault().toString();
                String a3 = com.asus.contacts.a.a(SystemPropertiesReflection.Key.BUILD_ASUS_SKU);
                String string = this.t.getString("country_code", BuildConfig.FLAVOR);
                String str2 = locale3;
                if (a3.equals("WW")) {
                    String str3 = locale3;
                    if (locale3.equals("zh_TW")) {
                        str3 = locale3;
                        if (string.toUpperCase().equals("HK")) {
                            str3 = "zh_TW";
                        }
                    }
                    str2 = str3;
                    if (str3.equals("en_SG")) {
                        str2 = str3;
                        if (string.toUpperCase().equals("SG")) {
                            str2 = "zh_TW";
                        }
                    }
                }
                this.i = str2.replace("_", "-");
            } else {
                this.i = com.android.contacts.dialpad.b.c[Integer.valueOf(this.t.getString(AsusDialerSettingActivity.KEY_HANDWRITE_LIST, "7")).intValue()].replace("-", "_");
            }
        } else if (e == 1) {
            if (this.t.getBoolean("pref_use_defalut", true)) {
                Locale locale4 = context.getResources().getConfiguration().locale;
                str = Locale.getDefault().toString();
            } else {
                str = this.t.getString(AsusDialerSettingActivity.KEY_DIALPAD_LIST, "0").equals("3") ? "zh_TW" : "zh_CN";
            }
            b(context);
            this.d = new com.asus.ime.c("/system/usr/xt9/config/phone.databases.conf");
            com.asus.ime.c cVar = this.d;
            if (cVar.f2902b != null) {
                cVar.f2901a = NativeWriteChinese.Write_Chinese_create(cVar.f2902b, com.asus.ime.b.a());
                int i5 = cVar.f2901a;
            }
            if (str.equals("zh_TW")) {
                this.d.a(new e(), 224);
            } else {
                this.d.a(new e(), 225);
            }
        } else if (e == 0) {
            b(context);
            Log.w("AsusHandwritingView", "Do not support VO now");
        }
        synchronized (this.I) {
            if (!this.D) {
                a();
                try {
                    DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
                    this.E = Bitmap.createBitmap(displayMetrics.widthPixels, displayMetrics.heightPixels, Bitmap.Config.ARGB_8888);
                    if (this.E != null) {
                        this.E.setDensity(0);
                        this.F = new Canvas(this.E);
                    }
                    if (this.E == null || this.F == null) {
                        a();
                    }
                    if (this.E == null) {
                        z6 = false;
                    }
                    this.D = z6;
                } catch (Exception e3) {
                    if (this.E == null || this.F == null) {
                        a();
                    }
                    if (this.E == null) {
                        z4 = false;
                    }
                    this.D = z4;
                } catch (Throwable th) {
                    if (this.E == null || this.F == null) {
                        a();
                    }
                    if (this.E == null) {
                        z5 = false;
                    }
                    this.D = z5;
                    throw th;
                }
            }
        }
    }

    @Override // com.android.contacts.dialpad.AsusHandwritingCandidate.a
    public final void a(CharSequence charSequence) {
        if (this.G != null) {
            this.H.setSuggestions(null, false, 0);
            this.G.setVisibility(8);
            this.f836b.b(false);
            this.f835a.a(charSequence);
        }
        Log.d("voim.sample", "word = " + PhoneCapabilityTester.privacyLogCheck(charSequence.toString()));
    }

    public final AsusHandwritingCandidateContainer b() {
        if (this.G == null) {
            this.G = (AsusHandwritingCandidateContainer) ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(2131427383, (ViewGroup) null);
            AsusHandwritingCandidateContainer asusHandwritingCandidateContainer = this.G;
            if (asusHandwritingCandidateContainer.c == null) {
                asusHandwritingCandidateContainer.c = (AsusHandwritingCandidate) asusHandwritingCandidateContainer.findViewById(2131296523);
                asusHandwritingCandidateContainer.f834b = asusHandwritingCandidateContainer.findViewById(2131296521);
                asusHandwritingCandidateContainer.f833a = asusHandwritingCandidateContainer.findViewById(2131296520);
                if (asusHandwritingCandidateContainer.f833a != null) {
                    asusHandwritingCandidateContainer.f833a.setOnTouchListener(asusHandwritingCandidateContainer);
                }
            }
            this.G.setVisibility(8);
            this.H = (AsusHandwritingCandidate) this.G.findViewById(2131296523);
            this.H.setOnWordSelectActionListener(this);
        }
        return this.G;
    }

    public final void c() {
        Log.d("AsusHandwritingView", "[clearListener] ");
        this.f835a = null;
        this.f836b = null;
        this.c = null;
        if (this.H != null) {
            this.H.b();
        }
        d();
    }

    public final void d() {
        if (this.h) {
            this.g.sendBroadcast(new Intent("com.asus.ime.destroyHandWrite"));
            try {
                this.g.unregisterReceiver(this.M);
            } catch (Exception e2) {
                Log.d("AsusHandwritingView", "Fail to unRegister Handwrite ack, Exception : " + e2.toString());
            }
        } else if (this.d != null) {
            NativeWriteChinese.Write_Chinese_destroy(this.d.f2901a);
            this.d = null;
        }
    }

    public final void e() {
        if (e != 1) {
            return;
        }
        if (this.d != null) {
            NativeWriteChinese.Write_Chinese_finish(this.d.f2901a);
        } else {
            Log.d("AsusHandwritingView", "[onPause] mWriteChinese is null!");
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        synchronized (this.I) {
            if (this.D && this.E != null) {
                canvas.drawBitmap(this.E, 0.0f, 0.0f, (Paint) null);
            }
        }
        synchronized (this.I) {
            if (!(this.D || this.x == null || this.u == null)) {
                canvas.drawPath(this.x, this.u);
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        switch (motionEvent.getAction()) {
            case 0:
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                this.w.add(new Point(x, y));
                this.k.add(new Point(x, y));
                this.x.moveTo(x, y);
                a(x, y, x, y);
                this.y = x;
                this.z = y;
                this.A = x;
                this.B = y;
                this.f.removeMessages(1);
                if (this.c != null) {
                    this.c.a(false);
                }
                z = true;
                break;
            case 1:
                int x2 = (int) motionEvent.getX();
                int y2 = (int) motionEvent.getY();
                this.j.add((ArrayList) this.k.clone());
                this.k.clear();
                Log.d("AsusHandwritingView", "[doTouchUp][addHandWriterc] ");
                if (!this.h) {
                    if (e == 1) {
                        if (this.d != null) {
                            NativeWriteChinese.Write_Chinese_beginArc(this.d.f2901a);
                            com.asus.ime.c cVar = this.d;
                            NativeWriteChinese.Write_Chinese_addArc(cVar.f2901a, this.w);
                        }
                    } else if (e == 0) {
                        Log.w("AsusHandwritingView", "Do not support VO now");
                    }
                }
                this.f.sendEmptyMessageDelayed(1, 500L);
                this.w.clear();
                a(this.A, this.B, x2, y2);
                z = true;
                break;
            case 2:
                a(motionEvent);
                z = true;
                break;
        }
        return z;
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 8) {
            if (this.H != null) {
                this.H.setSuggestions(null, false, 0);
            }
            if (this.G != null) {
                this.G.setVisibility(8);
            }
            if (this.f836b != null) {
                this.f836b.b(false);
            }
        }
    }

    public void setOnAdditionalButtonsShowingListener(b bVar) {
        this.c = bVar;
    }

    public void setOnCondidateShowingListener(c cVar) {
        this.f836b = cVar;
    }

    public void setOnWordSelectListener(a aVar) {
        this.f835a = aVar;
    }
}
