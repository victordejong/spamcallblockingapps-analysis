package com.truecaller.scanner;

import android.os.Handler;
import android.util.SparseArray;
import com.google.android.gms.vision.Detector;
import com.google.android.gms.vision.text.Text;
import com.google.android.gms.vision.text.TextBlock;
import com.truecaller.scanner.NumberDetectorProcessor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p193e.p194a.p1273u4.AbstractC20631o;
import p193e.p194a.p1273u4.C20639r;
/* loaded from: classes12-dex2jar.jar:com/truecaller/scanner/NumberDetectorProcessor.class */
public class NumberDetectorProcessor implements Detector.Processor<TextBlock> {

    /* renamed from: a */
    public final AbstractC4405a f14479a;

    /* renamed from: b */
    public final ScanType f14480b;

    /* renamed from: c */
    public final Handler f14481c = new Handler();

    /* renamed from: d */
    public boolean f14482d = false;

    /* renamed from: e */
    public Runnable f14483e = new Runnable() { // from class: e.a.u4.b
        @Override // java.lang.Runnable
        public final void run() {
            NumberDetectorProcessor.this.f14482d = false;
        }
    };

    /* loaded from: classes12-dex2jar.jar:com/truecaller/scanner/NumberDetectorProcessor$ScanType.class */
    public enum ScanType {
        SCAN_PHONE,
        SCAN_VPA,
        SCAN_PAY
    }

    /* renamed from: com.truecaller.scanner.NumberDetectorProcessor$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/scanner/NumberDetectorProcessor$a.class */
    public interface AbstractC4405a {
    }

    public NumberDetectorProcessor(AbstractC4405a abstractC4405a, ScanType scanType) {
        this.f14479a = abstractC4405a;
        this.f14480b = scanType;
    }

    @Override // com.google.android.gms.vision.Detector.Processor
    /* renamed from: a */
    public void mo34787a(Detector.Detections<TextBlock> detections) {
        ArrayList arrayList;
        if (this.f14482d) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        SparseArray<TextBlock> sparseArray = detections.f6525a;
        if (sparseArray == null) {
            return;
        }
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            C20639r c20639r = new C20639r(sparseArray.valueAt(i));
            ScanType scanType = this.f14480b;
            List<? extends Text> list = c20639r.f58160a;
            if (list == null || list.size() == 0) {
                arrayList = null;
            } else {
                ArrayList arrayList3 = new ArrayList();
                Iterator<? extends Text> it = c20639r.f58160a.iterator();
                while (true) {
                    arrayList = arrayList3;
                    if (!it.hasNext()) {
                        break;
                    }
                    Text next = it.next();
                    if (next != null) {
                        int ordinal = scanType.ordinal();
                        if (ordinal == 0) {
                            arrayList3.addAll(c20639r.m10903a(next.getValue()));
                        } else if (ordinal == 1) {
                            arrayList3.addAll(c20639r.m10902b(next.getValue()));
                        } else if (ordinal == 2) {
                            arrayList3.addAll(c20639r.m10903a(next.getValue()));
                            arrayList3.addAll(c20639r.m10902b(next.getValue()));
                        }
                    }
                }
            }
            if (arrayList != null) {
                arrayList2.addAll(arrayList);
            }
        }
        if (arrayList2.size() <= 0) {
            return;
        }
        this.f14482d = true;
        this.f14481c.postDelayed(this.f14483e, 800L);
        AbstractC20631o.AbstractC20632a abstractC20632a = ((ScannerManagerImpl) this.f14479a).f14492c;
        if (abstractC20632a == null) {
            return;
        }
        ((NumberScannerActivity) abstractC20632a).f14489e.mo10921Hj(arrayList2);
    }

    @Override // com.google.android.gms.vision.Detector.Processor
    public void release() {
        this.f14481c.removeCallbacks(this.f14483e);
    }
}
