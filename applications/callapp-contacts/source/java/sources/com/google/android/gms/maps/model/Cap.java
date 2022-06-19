package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/Cap.class */
public class Cap extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Cap> CREATOR = new zzb();
    private static final String TAG = "Cap";
    private final BitmapDescriptor bitmapDescriptor;
    private final int type;
    private final Float zzcn;

    public Cap(int i) {
        this(i, (BitmapDescriptor) null, (Float) null);
    }

    public Cap(int i, IBinder iBinder, Float f) {
        this(i, iBinder == null ? null : new BitmapDescriptor(AbstractC12126b.AbstractBinderC12127a.m18981a(iBinder)), f);
    }

    private Cap(int i, BitmapDescriptor bitmapDescriptor, Float f) {
        C12045o.m19153b(i != 3 || (bitmapDescriptor != null && (f != null && (f.floatValue() > BitmapDescriptorFactory.HUE_RED ? 1 : (f.floatValue() == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) > 0)), String.format("Invalid Cap: type=%s bitmapDescriptor=%s bitmapRefWidth=%s", Integer.valueOf(i), bitmapDescriptor, f));
        this.type = i;
        this.bitmapDescriptor = bitmapDescriptor;
        this.zzcn = f;
    }

    public Cap(BitmapDescriptor bitmapDescriptor, float f) {
        this(3, bitmapDescriptor, Float.valueOf(f));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cap)) {
            return false;
        }
        Cap cap = (Cap) obj;
        return this.type == cap.type && C12041m.m19168a(this.bitmapDescriptor, cap.bitmapDescriptor) && C12041m.m19168a(this.zzcn, cap.zzcn);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.type), this.bitmapDescriptor, this.zzcn});
    }

    public String toString() {
        int i = this.type;
        StringBuilder sb = new StringBuilder(23);
        sb.append("[Cap: type=");
        sb.append(i);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 2, this.type);
        BitmapDescriptor bitmapDescriptor = this.bitmapDescriptor;
        C12050a.m19109a(parcel, 3, bitmapDescriptor == null ? null : bitmapDescriptor.zzb().asBinder());
        C12050a.m19106a(parcel, 4, this.zzcn);
        C12050a.m19095b(parcel, m19116a);
    }

    public final Cap zzh() {
        int i = this.type;
        if (i != 0) {
            if (i == 1) {
                return new SquareCap();
            }
            if (i == 2) {
                return new RoundCap();
            }
            if (i == 3) {
                return new CustomCap(this.bitmapDescriptor, this.zzcn.floatValue());
            }
            String str = TAG;
            StringBuilder sb = new StringBuilder(29);
            sb.append("Unknown Cap type: ");
            sb.append(i);
            Log.w(str, sb.toString());
            return this;
        }
        return new ButtCap();
    }
}
