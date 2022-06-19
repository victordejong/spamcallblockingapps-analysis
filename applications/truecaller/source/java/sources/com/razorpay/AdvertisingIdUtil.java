package com.razorpay;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.razorpay.AdvertisingIdUtil;
/* loaded from: classes3-dex2jar.jar:com/razorpay/AdvertisingIdUtil.class */
public class AdvertisingIdUtil {

    /* loaded from: classes3-dex2jar.jar:com/razorpay/AdvertisingIdUtil$AdvertisingIdCallback.class */
    public interface AdvertisingIdCallback {
        void onResult(String str);
    }

    public static void getId(Context context, AdvertisingIdCallback advertisingIdCallback) {
        new AsyncTask<Void, Void, String>(context, advertisingIdCallback) { // from class: com.razorpay.a_$P$

            /* renamed from: a */
            private AdvertisingIdUtil.AdvertisingIdCallback f9436a;

            /* renamed from: b */
            private Context f9437b;

            {
                this.f9437b = context;
                this.f9436a = advertisingIdCallback;
            }

            /* JADX WARN: Finally extract failed */
            /* JADX WARN: Type inference failed for: r0v15, types: [com.razorpay.R$$r_] */
            /* renamed from: a */
            private String m36088a() {
                String message;
                G__G_ g__g_ = new G__G_((byte) 0);
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                try {
                    if (!this.f9437b.bindService(intent, g__g_, 1)) {
                        return "permission disabled";
                    }
                    try {
                        message = new IInterface(g__g_.m36098a()) { // from class: com.razorpay.R$$r_

                            /* renamed from: a */
                            private IBinder f9422a;

                            {
                                this.f9422a = r4;
                            }

                            /* renamed from: a */
                            public final String m36089a() {
                                Parcel obtain = Parcel.obtain();
                                Parcel obtain2 = Parcel.obtain();
                                try {
                                    obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                                    this.f9422a.transact(1, obtain, obtain2, 0);
                                    obtain2.readException();
                                    return obtain2.readString();
                                } finally {
                                    obtain2.recycle();
                                    obtain.recycle();
                                }
                            }

                            @Override // android.os.IInterface
                            public final IBinder asBinder() {
                                return this.f9422a;
                            }
                        }.m36089a();
                    } catch (Exception e) {
                        message = e.getMessage();
                    }
                    this.f9437b.unbindService(g__g_);
                    return message;
                } catch (Throwable th) {
                    this.f9437b.unbindService(g__g_);
                    throw th;
                }
            }

            @Override // android.os.AsyncTask
            public final /* synthetic */ String doInBackground(Void[] voidArr) {
                return m36088a();
            }

            @Override // android.os.AsyncTask
            public final /* synthetic */ void onPostExecute(String str) {
                String str2 = str;
                super.onPostExecute(str2);
                this.f9436a.onResult(str2);
            }
        }.execute(new Void[0]);
    }
}
