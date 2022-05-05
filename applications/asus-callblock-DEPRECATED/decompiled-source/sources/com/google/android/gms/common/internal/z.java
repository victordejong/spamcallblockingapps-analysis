package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import com.google.android.gms.common.internal.y;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/z.class */
public interface z extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/z$a.class */
    public static abstract class a extends Binder implements z {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.android.gms.common.internal.z$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/z$a$a.class */
        public static final class C0119a implements z {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f4043a;

            C0119a(IBinder iBinder) {
                this.f4043a = iBinder;
            }

            @Override // com.google.android.gms.common.internal.z
            public final void a() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    this.f4043a.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void a(y yVar, int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    this.f4043a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void a(y yVar, int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f4043a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void a(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void a(y yVar, int i, String str, IBinder iBinder, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iBinder);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void a(y yVar, int i, String str, String str2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.f4043a.transact(34, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void a(y yVar, int i, String str, String str2, String str3, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeStringArray(strArr);
                    this.f4043a.transact(33, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void a(y yVar, int i, String str, String str2, String[] strArr) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStringArray(strArr);
                    this.f4043a.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void a(y yVar, int i, String str, String str2, String[] strArr, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStringArray(strArr);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(30, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void a(y yVar, int i, String str, String str2, String[] strArr, String str3, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStringArray(strArr);
                    obtain.writeString(str3);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void a(y yVar, int i, String str, String str2, String[] strArr, String str3, IBinder iBinder, String str4, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStringArray(strArr);
                    obtain.writeString(str3);
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeString(str4);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void a(y yVar, int i, String str, String[] strArr, String str2, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeStringArray(strArr);
                    obtain.writeString(str2);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void a(y yVar, GetServiceRequest getServiceRequest) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    if (getServiceRequest != null) {
                        obtain.writeInt(1);
                        getServiceRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(46, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void a(y yVar, ValidateAccountRequest validateAccountRequest) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    if (validateAccountRequest != null) {
                        obtain.writeInt(1);
                        validateAccountRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(47, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f4043a;
            }

            @Override // com.google.android.gms.common.internal.z
            public final void b(y yVar, int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f4043a.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void b(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void c(y yVar, int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f4043a.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void c(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void d(y yVar, int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f4043a.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void d(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void e(y yVar, int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f4043a.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void e(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void f(y yVar, int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f4043a.transact(31, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void f(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void g(y yVar, int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f4043a.transact(32, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void g(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void h(y yVar, int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f4043a.transact(35, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void h(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void i(y yVar, int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f4043a.transact(36, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void i(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void j(y yVar, int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f4043a.transact(40, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void j(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void k(y yVar, int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f4043a.transact(42, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void k(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void l(y yVar, int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f4043a.transact(44, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void l(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void m(y yVar, int i, String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f4043a.transact(45, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void m(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void n(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void o(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void p(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void q(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(37, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void r(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(38, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void s(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(41, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.z
            public final void t(y yVar, int i, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                    obtain.writeStrongBinder(yVar != null ? yVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f4043a.transact(43, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static z a(IBinder iBinder) {
            z aVar;
            if (iBinder == null) {
                aVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                aVar = (queryLocalInterface == null || !(queryLocalInterface instanceof z)) ? new C0119a(iBinder) : (z) queryLocalInterface;
            }
            return aVar;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            Bundle bundle = null;
            Bundle bundle2 = null;
            Bundle bundle3 = null;
            Bundle bundle4 = null;
            Bundle bundle5 = null;
            Bundle bundle6 = null;
            Bundle bundle7 = null;
            Bundle bundle8 = null;
            Bundle bundle9 = null;
            Bundle bundle10 = null;
            Bundle bundle11 = null;
            Bundle bundle12 = null;
            Bundle bundle13 = null;
            Bundle bundle14 = null;
            Bundle bundle15 = null;
            Bundle bundle16 = null;
            Bundle bundle17 = null;
            Bundle bundle18 = null;
            Bundle bundle19 = null;
            GetServiceRequest getServiceRequest = null;
            ValidateAccountRequest validateAccountRequest = null;
            Bundle bundle20 = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    a(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a2 = y.a.a(parcel.readStrongBinder());
                    int readInt = parcel.readInt();
                    String readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle20 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    a(a2, readInt, readString, bundle20);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    a(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    a(y.a.a(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a3 = y.a.a(parcel.readStrongBinder());
                    int readInt2 = parcel.readInt();
                    String readString2 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    b(a3, readInt2, readString2, bundle);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a4 = y.a.a(parcel.readStrongBinder());
                    int readInt3 = parcel.readInt();
                    String readString3 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    c(a4, readInt3, readString3, bundle2);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a5 = y.a.a(parcel.readStrongBinder());
                    int readInt4 = parcel.readInt();
                    String readString4 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    d(a5, readInt4, readString4, bundle3);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a6 = y.a.a(parcel.readStrongBinder());
                    int readInt5 = parcel.readInt();
                    String readString5 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    e(a6, readInt5, readString5, bundle4);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    a(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray(), parcel.readString(), parcel.readStrongBinder(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    a(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a7 = y.a.a(parcel.readStrongBinder());
                    int readInt6 = parcel.readInt();
                    String readString6 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle5 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    f(a7, readInt6, readString6, bundle5);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a8 = y.a.a(parcel.readStrongBinder());
                    int readInt7 = parcel.readInt();
                    String readString7 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle6 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    g(a8, readInt7, readString7, bundle6);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 13:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a9 = y.a.a(parcel.readStrongBinder());
                    int readInt8 = parcel.readInt();
                    String readString8 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle7 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    h(a9, readInt8, readString8, bundle7);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case AsusRedPointNotificationDualPanelHelper.ID.UPDATE_VERSION /* 14 */:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a10 = y.a.a(parcel.readStrongBinder());
                    int readInt9 = parcel.readInt();
                    String readString9 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle8 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    i(a10, readInt9, readString9, bundle8);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 15:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a11 = y.a.a(parcel.readStrongBinder());
                    int readInt10 = parcel.readInt();
                    String readString10 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle9 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    j(a11, readInt10, readString10, bundle9);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 16:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a12 = y.a.a(parcel.readStrongBinder());
                    int readInt11 = parcel.readInt();
                    String readString11 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle10 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    k(a12, readInt11, readString11, bundle10);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 17:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a13 = y.a.a(parcel.readStrongBinder());
                    int readInt12 = parcel.readInt();
                    String readString12 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle11 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    l(a13, readInt12, readString12, bundle11);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 18:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a14 = y.a.a(parcel.readStrongBinder());
                    int readInt13 = parcel.readInt();
                    String readString13 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle12 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    m(a14, readInt13, readString13, bundle12);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 19:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    a(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readStrongBinder(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 20:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    a(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.createStringArray(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 21:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    b(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 22:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    c(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 23:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a15 = y.a.a(parcel.readStrongBinder());
                    int readInt14 = parcel.readInt();
                    String readString14 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle13 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    n(a15, readInt14, readString14, bundle13);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 24:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    d(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 25:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a16 = y.a.a(parcel.readStrongBinder());
                    int readInt15 = parcel.readInt();
                    String readString15 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle14 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    o(a16, readInt15, readString15, bundle14);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 26:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    e(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 27:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a17 = y.a.a(parcel.readStrongBinder());
                    int readInt16 = parcel.readInt();
                    String readString16 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle15 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    p(a17, readInt16, readString16, bundle15);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 28:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    a();
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 30:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    a(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 31:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    f(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 32:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    g(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 33:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    a(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.createStringArray());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 34:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    a(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 35:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    h(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 36:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    i(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 37:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a18 = y.a.a(parcel.readStrongBinder());
                    int readInt17 = parcel.readInt();
                    String readString17 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle16 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    q(a18, readInt17, readString17, bundle16);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 38:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a19 = y.a.a(parcel.readStrongBinder());
                    int readInt18 = parcel.readInt();
                    String readString18 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle17 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    r(a19, readInt18, readString18, bundle17);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 40:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    j(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 41:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a20 = y.a.a(parcel.readStrongBinder());
                    int readInt19 = parcel.readInt();
                    String readString19 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle18 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    s(a20, readInt19, readString19, bundle18);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 42:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    k(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 43:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a21 = y.a.a(parcel.readStrongBinder());
                    int readInt20 = parcel.readInt();
                    String readString20 = parcel.readString();
                    if (parcel.readInt() != 0) {
                        bundle19 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    t(a21, readInt20, readString20, bundle19);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 44:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    l(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 45:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    m(y.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 46:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a22 = y.a.a(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        getServiceRequest = GetServiceRequest.CREATOR.createFromParcel(parcel);
                    }
                    a(a22, getServiceRequest);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 47:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    y a23 = y.a.a(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        validateAccountRequest = ValidateAccountRequest.CREATOR.createFromParcel(parcel);
                    }
                    a(a23, validateAccountRequest);
                    parcel2.writeNoException();
                    z = true;
                    break;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.common.internal.IGmsServiceBroker");
                    z = true;
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    void a();

    void a(y yVar, int i);

    void a(y yVar, int i, String str);

    void a(y yVar, int i, String str, Bundle bundle);

    void a(y yVar, int i, String str, IBinder iBinder, Bundle bundle);

    void a(y yVar, int i, String str, String str2);

    void a(y yVar, int i, String str, String str2, String str3, String[] strArr);

    void a(y yVar, int i, String str, String str2, String[] strArr);

    void a(y yVar, int i, String str, String str2, String[] strArr, Bundle bundle);

    void a(y yVar, int i, String str, String str2, String[] strArr, String str3, Bundle bundle);

    void a(y yVar, int i, String str, String str2, String[] strArr, String str3, IBinder iBinder, String str4, Bundle bundle);

    void a(y yVar, int i, String str, String[] strArr, String str2, Bundle bundle);

    void a(y yVar, GetServiceRequest getServiceRequest);

    void a(y yVar, ValidateAccountRequest validateAccountRequest);

    void b(y yVar, int i, String str);

    void b(y yVar, int i, String str, Bundle bundle);

    void c(y yVar, int i, String str);

    void c(y yVar, int i, String str, Bundle bundle);

    void d(y yVar, int i, String str);

    void d(y yVar, int i, String str, Bundle bundle);

    void e(y yVar, int i, String str);

    void e(y yVar, int i, String str, Bundle bundle);

    void f(y yVar, int i, String str);

    void f(y yVar, int i, String str, Bundle bundle);

    void g(y yVar, int i, String str);

    void g(y yVar, int i, String str, Bundle bundle);

    void h(y yVar, int i, String str);

    void h(y yVar, int i, String str, Bundle bundle);

    void i(y yVar, int i, String str);

    void i(y yVar, int i, String str, Bundle bundle);

    void j(y yVar, int i, String str);

    void j(y yVar, int i, String str, Bundle bundle);

    void k(y yVar, int i, String str);

    void k(y yVar, int i, String str, Bundle bundle);

    void l(y yVar, int i, String str);

    void l(y yVar, int i, String str, Bundle bundle);

    void m(y yVar, int i, String str);

    void m(y yVar, int i, String str, Bundle bundle);

    void n(y yVar, int i, String str, Bundle bundle);

    void o(y yVar, int i, String str, Bundle bundle);

    void p(y yVar, int i, String str, Bundle bundle);

    void q(y yVar, int i, String str, Bundle bundle);

    void r(y yVar, int i, String str, Bundle bundle);

    void s(y yVar, int i, String str, Bundle bundle);

    void t(y yVar, int i, String str, Bundle bundle);
}
