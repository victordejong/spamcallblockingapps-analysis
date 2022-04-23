package com.adbert.p009a;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanResult;
import android.os.Build;
import androidx.annotation.RequiresApi;
import com.adbert.p009a.p011b.C1376a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
@SuppressLint({"MissingPermission"})
/* renamed from: com.adbert.a.b */
/* loaded from: classes-dex2jar.jar:com/adbert/a/b.class */
public class C1373b {

    /* renamed from: a */
    public BluetoothAdapter f386a;

    /* renamed from: d */
    public List<String> f389d;

    /* renamed from: e */
    public Object f390e;

    /* renamed from: c */
    public Map<String, C1376a> f388c = new HashMap();

    /* renamed from: f */
    public boolean f391f = false;

    /* renamed from: b */
    public BluetoothAdapter.LeScanCallback f387b = new BluetoothAdapter.LeScanCallback() { // from class: com.adbert.a.b.1
        @Override // android.bluetooth.BluetoothAdapter.LeScanCallback
        public void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
            C1373b.this.m37210a(bArr);
        }
    };

    public C1373b(List<String> list) {
        this.f389d = new ArrayList();
        this.f389d = list;
    }

    /* renamed from: a */
    private String m37213a(int i) {
        return new String(new char[]{Character.forDigit((i >> 4) & 15, 16), Character.forDigit(i & 15, 16)}).toUpperCase();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m37210a(byte[] bArr) {
        C1376a aVar;
        String valueOf = String.valueOf(((bArr[25] & 255) * 256) + (bArr[26] & 255));
        String valueOf2 = String.valueOf(((bArr[27] & 255) * 256) + (bArr[28] & 255));
        String lowerCase = (m37213a(bArr[9] & 255) + m37213a(bArr[10] & 255) + m37213a(bArr[11] & 255) + m37213a(bArr[12] & 255) + "-" + m37213a(bArr[13] & 255) + m37213a(bArr[14] & 255) + "-" + m37213a(bArr[15] & 255) + m37213a(bArr[16] & 255) + "-" + m37213a(bArr[17] & 255) + m37213a(bArr[18] & 255) + "-" + m37213a(bArr[19] & 255) + m37213a(bArr[20] & 255) + m37213a(bArr[21] & 255) + m37213a(bArr[22] & 255) + m37213a(bArr[23] & 255) + m37213a(bArr[24] & 255)).toLowerCase();
        if (m37208b(lowerCase)) {
            String str = lowerCase + valueOf + valueOf2;
            if (this.f388c.get(str) != null) {
                aVar = this.f388c.get(str);
                aVar.m37206a();
            } else {
                aVar = new C1376a();
                aVar.m37205a(lowerCase);
                aVar.m37203b(valueOf);
                aVar.m37202c(valueOf2);
            }
            this.f388c.put(str, aVar);
        }
    }

    /* renamed from: b */
    private boolean m37208b(String str) {
        for (String str2 : this.f389d) {
            if (str2.toLowerCase().equals(str)) {
                return true;
            }
        }
        return false;
    }

    @RequiresApi(api = 21)
    /* renamed from: c */
    private ScanCallback m37207c() {
        return new ScanCallback() { // from class: com.adbert.a.b.2
            @Override // android.bluetooth.le.ScanCallback
            public void onBatchScanResults(List<ScanResult> list) {
                super.onBatchScanResults(list);
                C1402g.m37134b("BeaconScanner onBatchScanResults");
            }

            @Override // android.bluetooth.le.ScanCallback
            public void onScanFailed(int i) {
                super.onScanFailed(i);
                C1402g.m37134b("BeaconScanner onScanFailed " + i);
            }

            @Override // android.bluetooth.le.ScanCallback
            public void onScanResult(int i, ScanResult scanResult) {
                super.onScanResult(i, scanResult);
                if (!scanResult.getDevice().fetchUuidsWithSdp()) {
                    C1402g.m37134b("BeaconScanner onNoResult");
                }
                C1373b.this.m37210a(scanResult.getScanRecord().getBytes());
            }
        };
    }

    /* renamed from: a */
    public String m37211a(String str) {
        JSONArray jSONArray = new JSONArray();
        for (Map.Entry<String, C1376a> entry : this.f388c.entrySet()) {
            try {
                jSONArray.put(entry.getValue().m37201d(str));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return jSONArray.toString();
    }

    /* renamed from: a */
    public void m37214a() {
        this.f386a = BluetoothAdapter.getDefaultAdapter();
        BluetoothAdapter bluetoothAdapter = this.f386a;
        if (bluetoothAdapter == null) {
            C1402g.m37134b("BeaconScanner bluetoothAdapter == null");
        } else if (bluetoothAdapter.isEnabled()) {
            this.f391f = true;
            if (Build.VERSION.SDK_INT >= 21) {
                this.f390e = m37207c();
                this.f386a.getBluetoothLeScanner().startScan((ScanCallback) this.f390e);
                return;
            }
            this.f386a.startLeScan(this.f387b);
        } else {
            C1402g.m37134b("BeaconScanner onNotEnable");
        }
    }

    /* renamed from: b */
    public void m37209b() {
        if (this.f391f) {
            BluetoothAdapter bluetoothAdapter = this.f386a;
            if (bluetoothAdapter != null && bluetoothAdapter.isEnabled()) {
                if (Build.VERSION.SDK_INT >= 21) {
                    this.f386a.getBluetoothLeScanner().stopScan((ScanCallback) this.f390e);
                } else {
                    this.f386a.stopLeScan(this.f387b);
                }
            }
            this.f391f = false;
        }
    }
}
