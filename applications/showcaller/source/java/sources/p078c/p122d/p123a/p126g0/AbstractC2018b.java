package p078c.p122d.p123a.p126g0;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import p078c.p122d.p123a.p126g0.AbstractC2015a;
/* renamed from: c.d.a.g0.b */
/* loaded from: classes2-dex2jar.jar:c/d/a/g0/b.class */
public interface AbstractC2018b extends IInterface {

    /* renamed from: c.d.a.g0.b$a */
    /* loaded from: classes2-dex2jar.jar:c/d/a/g0/b$a.class */
    public static abstract class AbstractBinderC2019a extends Binder implements AbstractC2018b {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c.d.a.g0.b$a$a */
        /* loaded from: classes2-dex2jar.jar:c/d/a/g0/b$a$a.class */
        public static class C2020a implements AbstractC2018b {

            /* renamed from: d */
            private IBinder f7140d;

            C2020a(IBinder iBinder) {
                this.f7140d = iBinder;
            }

            @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
            /* renamed from: A0 */
            public void mo790A0(boolean z) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    obtain.writeInt(z ? 1 : 0);
                    this.f7140d.transact(13, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f7140d;
            }

            @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
            /* renamed from: e0 */
            public byte mo784e0(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    obtain.writeInt(i);
                    this.f7140d.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readByte();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
            /* renamed from: f0 */
            public void mo783f0(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(z2 ? 1 : 0);
                    if (fileDownloadHeader != null) {
                        obtain.writeInt(1);
                        fileDownloadHeader.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(z3 ? 1 : 0);
                    this.f7140d.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
            /* renamed from: l0 */
            public boolean mo782l0(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    obtain.writeInt(i);
                    boolean z = false;
                    this.f7140d.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
            /* renamed from: n1 */
            public void mo781n1(AbstractC2015a abstractC2015a) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    obtain.writeStrongBinder(abstractC2015a != null ? abstractC2015a.asBinder() : null);
                    this.f7140d.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
            /* renamed from: t6 */
            public void mo779t6() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    this.f7140d.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
            /* renamed from: z4 */
            public void mo776z4(AbstractC2015a abstractC2015a) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    obtain.writeStrongBinder(abstractC2015a != null ? abstractC2015a.asBinder() : null);
                    this.f7140d.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public AbstractBinderC2019a() {
            attachInterface(this, "com.liulishuo.filedownloader.i.IFileDownloadIPCService");
        }

        /* renamed from: m2 */
        public static AbstractC2018b m28289m2(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC2018b)) ? new C2020a(iBinder) : (AbstractC2018b) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1598968902) {
                parcel2.writeString("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                return true;
            }
            boolean z = false;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    mo781n1(AbstractC2015a.AbstractBinderC2016a.m28290c0(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    mo776z4(AbstractC2015a.AbstractBinderC2016a.m28290c0(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    boolean mo780t2 = mo780t2(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(mo780t2 ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    mo783f0(parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0 ? FileDownloadHeader.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    boolean mo782l0 = mo782l0(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(mo782l0 ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    mo779t6();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    boolean mo777z2 = mo777z2(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(mo777z2 ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    long mo786a5 = mo786a5(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeLong(mo786a5);
                    return true;
                case 9:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    long mo788X3 = mo788X3(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeLong(mo788X3);
                    return true;
                case 10:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    byte mo784e0 = mo784e0(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeByte(mo784e0);
                    return true;
                case 11:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    boolean mo789H4 = mo789H4();
                    parcel2.writeNoException();
                    parcel2.writeInt(mo789H4 ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    int readInt = parcel.readInt();
                    Notification notification = null;
                    if (parcel.readInt() != 0) {
                        notification = (Notification) Notification.CREATOR.createFromParcel(parcel);
                    }
                    mo787Z5(readInt, notification);
                    return true;
                case 13:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    mo790A0(z);
                    return true;
                case 14:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    boolean mo778y3 = mo778y3(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(mo778y3 ? 1 : 0);
                    return true;
                case 15:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    mo785d2();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    /* renamed from: A0 */
    void mo790A0(boolean z);

    /* renamed from: H4 */
    boolean mo789H4();

    /* renamed from: X3 */
    long mo788X3(int i);

    /* renamed from: Z5 */
    void mo787Z5(int i, Notification notification);

    /* renamed from: a5 */
    long mo786a5(int i);

    /* renamed from: d2 */
    void mo785d2();

    /* renamed from: e0 */
    byte mo784e0(int i);

    /* renamed from: f0 */
    void mo783f0(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3);

    /* renamed from: l0 */
    boolean mo782l0(int i);

    /* renamed from: n1 */
    void mo781n1(AbstractC2015a abstractC2015a);

    /* renamed from: t2 */
    boolean mo780t2(String str, String str2);

    /* renamed from: t6 */
    void mo779t6();

    /* renamed from: y3 */
    boolean mo778y3(int i);

    /* renamed from: z2 */
    boolean mo777z2(int i);

    /* renamed from: z4 */
    void mo776z4(AbstractC2015a abstractC2015a);
}
