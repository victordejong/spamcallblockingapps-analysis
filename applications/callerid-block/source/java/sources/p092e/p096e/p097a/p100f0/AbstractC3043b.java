package p092e.p096e.p097a.p100f0;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import p092e.p096e.p097a.p100f0.AbstractC3040a;
/* renamed from: e.e.a.f0.b */
/* loaded from: classes2-dex2jar.jar:e/e/a/f0/b.class */
public interface AbstractC3043b extends IInterface {

    /* renamed from: e.e.a.f0.b$a */
    /* loaded from: classes2-dex2jar.jar:e/e/a/f0/b$a.class */
    public static abstract class AbstractBinderC3044a extends Binder implements AbstractC3043b {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: e.e.a.f0.b$a$a */
        /* loaded from: classes2-dex2jar.jar:e/e/a/f0/b$a$a.class */
        public static class C3045a implements AbstractC3043b {

            /* renamed from: b */
            private IBinder f12672b;

            C3045a(IBinder iBinder) {
                this.f12672b = iBinder;
            }

            @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
            /* renamed from: P2 */
            public void mo459P2(AbstractC3040a abstractC3040a) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    obtain.writeStrongBinder(abstractC3040a != null ? abstractC3040a.asBinder() : null);
                    this.f12672b.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f12672b;
            }

            @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
            /* renamed from: f0 */
            public byte mo458f0(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    obtain.writeInt(i);
                    this.f12672b.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readByte();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
            /* renamed from: f2 */
            public void mo457f2(AbstractC3040a abstractC3040a) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    obtain.writeStrongBinder(abstractC3040a != null ? abstractC3040a.asBinder() : null);
                    this.f12672b.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
            /* renamed from: f6 */
            public void mo456f6() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    this.f12672b.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
            /* renamed from: i0 */
            public void mo455i0(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
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
                    this.f12672b.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
            /* renamed from: n0 */
            public void mo454n0(boolean z) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    obtain.writeInt(z ? 1 : 0);
                    this.f12672b.transact(13, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
            /* renamed from: v0 */
            public boolean mo453v0(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    obtain.writeInt(i);
                    boolean z = false;
                    this.f12672b.transact(5, obtain, obtain2, 0);
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
        }

        public AbstractBinderC3044a() {
            attachInterface(this, "com.liulishuo.filedownloader.i.IFileDownloadIPCService");
        }

        /* renamed from: g3 */
        public static AbstractC3043b m460g3(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC3043b)) ? new C3045a(iBinder) : (AbstractC3043b) queryLocalInterface;
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
                    mo457f2(AbstractC3040a.AbstractBinderC3041a.m469h0(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    mo459P2(AbstractC3040a.AbstractBinderC3041a.m469h0(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    boolean mo461x4 = mo461x4(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(mo461x4 ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    mo455i0(parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0 ? FileDownloadHeader.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    boolean mo453v0 = mo453v0(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(mo453v0 ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    mo456f6();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    boolean mo467N4 = mo467N4(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(mo467N4 ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    long mo468E3 = mo468E3(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeLong(mo468E3);
                    return true;
                case 9:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    long mo464U1 = mo464U1(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeLong(mo464U1);
                    return true;
                case 10:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    byte mo458f0 = mo458f0(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeByte(mo458f0);
                    return true;
                case 11:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    boolean mo463W2 = mo463W2();
                    parcel2.writeNoException();
                    parcel2.writeInt(mo463W2 ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    int readInt = parcel.readInt();
                    Notification notification = null;
                    if (parcel.readInt() != 0) {
                        notification = (Notification) Notification.CREATOR.createFromParcel(parcel);
                    }
                    mo462t5(readInt, notification);
                    return true;
                case 13:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    mo454n0(z);
                    return true;
                case 14:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    boolean mo466O0 = mo466O0(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(mo466O0 ? 1 : 0);
                    return true;
                case 15:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCService");
                    mo465P3();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    /* renamed from: E3 */
    long mo468E3(int i);

    /* renamed from: N4 */
    boolean mo467N4(int i);

    /* renamed from: O0 */
    boolean mo466O0(int i);

    /* renamed from: P2 */
    void mo459P2(AbstractC3040a abstractC3040a);

    /* renamed from: P3 */
    void mo465P3();

    /* renamed from: U1 */
    long mo464U1(int i);

    /* renamed from: W2 */
    boolean mo463W2();

    /* renamed from: f0 */
    byte mo458f0(int i);

    /* renamed from: f2 */
    void mo457f2(AbstractC3040a abstractC3040a);

    /* renamed from: f6 */
    void mo456f6();

    /* renamed from: i0 */
    void mo455i0(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3);

    /* renamed from: n0 */
    void mo454n0(boolean z);

    /* renamed from: t5 */
    void mo462t5(int i, Notification notification);

    /* renamed from: v0 */
    boolean mo453v0(int i);

    /* renamed from: x4 */
    boolean mo461x4(String str, String str2);
}
