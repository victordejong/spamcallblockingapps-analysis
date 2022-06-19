package p193e.p194a.p1129p5.p1131r0;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadset;
import android.bluetooth.BluetoothManager;
import android.bluetooth.BluetoothProfile;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.telecom.CallAudioState;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import q3.a.i0;
import q3.a.x2.i1;
import q3.a.x2.u0;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.p5.r0.b */
/* loaded from: classes15-dex2jar.jar:e/a/p5/r0/b.class */
public final class C19264b extends BroadcastReceiver implements BluetoothProfile.ServiceListener {

    /* renamed from: a */
    public BluetoothProfile f53647a;

    /* renamed from: b */
    public boolean f53648b;

    /* renamed from: c */
    public boolean f53649c;

    /* renamed from: d */
    public a<s> f53650d;

    /* renamed from: e */
    public i1<CallAudioState> f53651e;

    /* renamed from: f */
    public final Context f53652f;

    /* renamed from: g */
    public final int f53653g;

    /* renamed from: h */
    public final AbstractC19219a0 f53654h;

    /* renamed from: e.a.p5.r0.b$a */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/r0/b$a.class */
    public static final class C19265a<T> implements Comparator<T> {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            BluetoothDevice bluetoothDevice = (BluetoothDevice) t;
            l.d(bluetoothDevice, "it");
            String address = bluetoothDevice.getAddress();
            BluetoothDevice bluetoothDevice2 = (BluetoothDevice) t2;
            l.d(bluetoothDevice2, "it");
            return C25225a.m4000K(address, bluetoothDevice2.getAddress());
        }
    }

    @e(c = "com.truecaller.utils.bluetooth.BluetoothHeadsetMonitor$startListening$1", f = "BluetoothHeadsetMonitor.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.p5.r0.b$b */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/r0/b$b.class */
    public static final class C19266b extends i implements p<CallAudioState, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f53655e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19266b(d dVar) {
            super(2, dVar);
            C19264b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m13716i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C19266b c19266b = new C19266b(dVar);
            c19266b.f53655e = obj;
            return c19266b;
        }

        /* renamed from: k */
        public final Object m13715k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C19264b c19264b = C19264b.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            String str = "System call audio state has changed: " + ((CallAudioState) obj);
            a<s> aVar = c19264b.f53650d;
            if (aVar != null) {
                s sVar2 = (s) aVar.invoke();
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m13714s(Object obj) {
            C25225a.m3932a3(obj);
            String str = "System call audio state has changed: " + ((CallAudioState) this.f53655e);
            a<s> aVar = C19264b.this.f53650d;
            if (aVar != null) {
                s sVar = (s) aVar.invoke();
            }
            return s.a;
        }
    }

    public C19264b(Context context, int i, AbstractC19219a0 abstractC19219a0) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19219a0, "permissionUtil");
        this.f53652f = context;
        this.f53653g = i;
        this.f53654h = abstractC19219a0;
    }

    /* renamed from: a */
    public final boolean m13725a() {
        return m13722d() ? this.f53654h.mo13825h("android.permission.BLUETOOTH_CONNECT") : true;
    }

    /* renamed from: b */
    public final C19270d m13724b() {
        Object obj;
        List<BluetoothDevice> list = s1.u.s.a;
        synchronized (this) {
            C19270d m13723c = m13723c();
            if (m13723c != null) {
                return m13723c;
            }
            if (!m13725a()) {
                return new C19270d(null, list);
            }
            BluetoothProfile bluetoothProfile = this.f53647a;
            BluetoothProfile bluetoothProfile2 = bluetoothProfile;
            if (!(bluetoothProfile instanceof BluetoothHeadset)) {
                bluetoothProfile2 = null;
            }
            BluetoothHeadset bluetoothHeadset = (BluetoothHeadset) bluetoothProfile2;
            if (bluetoothHeadset == null) {
                return new C19270d(null, list);
            }
            try {
                List<BluetoothDevice> connectedDevices = bluetoothHeadset.getConnectedDevices();
                List<BluetoothDevice> list2 = list;
                if (connectedDevices != null) {
                    list2 = connectedDevices;
                }
                ArrayList arrayList = new ArrayList(C25225a.m4004J(list2, 10));
                for (BluetoothDevice bluetoothDevice : list2) {
                    l.d(bluetoothDevice, AnalyticsConstants.DEVICE);
                    String m13720f = m13720f(bluetoothDevice, this.f53652f, "");
                    String address = bluetoothDevice.getAddress();
                    l.d(address, "device.address");
                    arrayList.add(new C19263a(m13720f, address));
                }
                Iterator<T> it = list2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it.next();
                    if (bluetoothHeadset.isAudioConnected((BluetoothDevice) obj)) {
                        break;
                    }
                }
                BluetoothDevice bluetoothDevice2 = (BluetoothDevice) obj;
                C19263a c19263a = null;
                if (bluetoothDevice2 != null) {
                    String m13720f2 = m13720f(bluetoothDevice2, this.f53652f, "");
                    String address2 = bluetoothDevice2.getAddress();
                    l.d(address2, "device.address");
                    c19263a = new C19263a(m13720f2, address2);
                }
                return new C19270d(c19263a, arrayList);
            } catch (NullPointerException e) {
                return new C19270d(null, list);
            }
        }
    }

    /* renamed from: c */
    public final C19270d m13723c() {
        i1<CallAudioState> i1Var;
        C19270d c19270d;
        Object obj;
        String str;
        if (m13722d() && (i1Var = this.f53651e) != null) {
            CallAudioState callAudioState = (CallAudioState) i1Var.getValue();
            if (callAudioState != null) {
                Collection<BluetoothDevice> supportedBluetoothDevices = callAudioState.getSupportedBluetoothDevices();
                int i = 0;
                boolean z = true;
                if (supportedBluetoothDevices.size() <= 1) {
                    z = false;
                }
                l.d(supportedBluetoothDevices, "devices");
                List F0 = s1.u.i.F0(supportedBluetoothDevices, new C19265a());
                ArrayList arrayList = new ArrayList(C25225a.m4004J(F0, 10));
                for (Object obj2 : F0) {
                    int i2 = i + 1;
                    if (i < 0) {
                        s1.u.i.N0();
                        throw null;
                    }
                    BluetoothDevice bluetoothDevice = (BluetoothDevice) obj2;
                    if (z) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(' ');
                        sb.append(i2);
                        str = sb.toString();
                    } else {
                        str = "";
                    }
                    l.d(bluetoothDevice, AnalyticsConstants.DEVICE);
                    String m13720f = m13720f(bluetoothDevice, this.f53652f, str);
                    String address = bluetoothDevice.getAddress();
                    l.d(address, "device.address");
                    arrayList.add(new C19263a(m13720f, address));
                    i = i2;
                }
                BluetoothDevice activeBluetoothDevice = callAudioState.getActiveBluetoothDevice();
                C19263a c19263a = null;
                if (activeBluetoothDevice != null) {
                    Iterator it = arrayList.iterator();
                    do {
                        obj = null;
                        if (!it.hasNext()) {
                            break;
                        }
                        obj = it.next();
                    } while (!l.a(((C19263a) obj).f53646b, activeBluetoothDevice.getAddress()));
                    c19263a = (C19263a) obj;
                }
                c19270d = new C19270d(c19263a, arrayList);
            } else {
                c19270d = new C19270d(null, s1.u.s.a);
            }
            return c19270d;
        }
        return null;
    }

    /* renamed from: d */
    public final boolean m13722d() {
        return Build.VERSION.SDK_INT >= 31;
    }

    /* renamed from: e */
    public final void m13721e() {
        a<s> aVar = this.f53650d;
        if (aVar != null) {
            s sVar = (s) aVar.invoke();
        }
    }

    /* renamed from: f */
    public final String m13720f(BluetoothDevice bluetoothDevice, Context context, String str) {
        String str2;
        if (!m13725a()) {
            return context.getString(this.f53653g) + str;
        }
        try {
            Object invoke = bluetoothDevice.getClass().getMethod("getAlias", new Class[0]).invoke(bluetoothDevice, new Object[0]);
            String str3 = invoke;
            if (!(invoke instanceof String)) {
                str3 = null;
            }
            str2 = str3;
        } catch (Exception e) {
            str2 = null;
        }
        if (str2 == null || !(!r.p(str2))) {
            str2 = null;
        }
        if (str2 != null) {
            return str2;
        }
        String name = bluetoothDevice.getName();
        String str4 = null;
        if (name != null) {
            str4 = null;
            if (!r.p(name)) {
                str4 = name;
            }
        }
        if (str4 == null) {
            str4 = context.getString(this.f53653g) + str;
        }
        return str4;
    }

    /* renamed from: g */
    public final void m13719g() {
        synchronized (this) {
            if (!m13725a()) {
                return;
            }
            Context context = this.f53652f;
            l.e(context, "$this$bluetoothManager");
            Object systemService = context.getSystemService(AnalyticsConstants.BLUETOOTH);
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.bluetooth.BluetoothManager");
            BluetoothAdapter adapter = ((BluetoothManager) systemService).getAdapter();
            if (adapter != null) {
                adapter.getProfileProxy(this.f53652f, this, 1);
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED");
            intentFilter.addAction("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED");
            this.f53652f.registerReceiver(this, intentFilter);
            this.f53649c = true;
        }
    }

    /* renamed from: h */
    public final void m13718h(i0 i0Var, i1<CallAudioState> i1Var) {
        synchronized (this) {
            l.e(i0Var, "scope");
            l.e(i1Var, "systemAudioState");
            if (!m13722d()) {
                m13719g();
                return;
            }
            this.f53651e = i1Var;
            s1.a.a.a.v0.f.d.x2(new u0(i1Var, new C19266b(null)), i0Var);
        }
    }

    /* renamed from: i */
    public final void m13717i() {
        synchronized (this) {
            this.f53648b = true;
            BluetoothProfile bluetoothProfile = this.f53647a;
            if (bluetoothProfile != null) {
                Context context = this.f53652f;
                l.e(context, "$this$bluetoothManager");
                Object systemService = context.getSystemService(AnalyticsConstants.BLUETOOTH);
                Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.bluetooth.BluetoothManager");
                BluetoothAdapter adapter = ((BluetoothManager) systemService).getAdapter();
                if (adapter != null) {
                    adapter.closeProfileProxy(1, bluetoothProfile);
                }
            }
            if (this.f53649c) {
                this.f53652f.unregisterReceiver(this);
                this.f53649c = false;
            }
            this.f53651e = null;
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        m13721e();
    }

    @Override // android.bluetooth.BluetoothProfile.ServiceListener
    public void onServiceConnected(int i, BluetoothProfile bluetoothProfile) {
        this.f53647a = bluetoothProfile;
        m13721e();
        if (this.f53648b) {
            m13717i();
        }
    }

    @Override // android.bluetooth.BluetoothProfile.ServiceListener
    public void onServiceDisconnected(int i) {
        m13721e();
    }
}
