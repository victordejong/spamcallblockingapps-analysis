package com.asus.contacts.fonts;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.asus.contacts.fonts.g;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/f.class */
public interface f extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/f$a.class */
    public static abstract class a extends Binder implements f {

        /* renamed from: com.asus.contacts.fonts.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/f$a$a.class */
        private static final class C0074a implements f {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f2658a;

            C0074a(IBinder iBinder) {
                this.f2658a = iBinder;
            }

            @Override // com.asus.contacts.fonts.f
            public final String a(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.contacts.fonts.FontManagerServiceBinder");
                    obtain.writeInt(i);
                    this.f2658a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.contacts.fonts.f
            public final void a() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.contacts.fonts.FontManagerServiceBinder");
                    this.f2658a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.contacts.fonts.f
            public final void a(g gVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.contacts.fonts.FontManagerServiceBinder");
                    obtain.writeStrongBinder(gVar != null ? gVar.asBinder() : null);
                    this.f2658a.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.contacts.fonts.f
            public final void a(List<Font> list) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.contacts.fonts.FontManagerServiceBinder");
                    obtain.writeTypedList(list);
                    this.f2658a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.contacts.fonts.f
            public final boolean a(int i, String str) {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.contacts.fonts.FontManagerServiceBinder");
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.f2658a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f2658a;
            }

            @Override // com.asus.contacts.fonts.f
            public final Font b(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.contacts.fonts.FontManagerServiceBinder");
                    obtain.writeInt(i);
                    this.f2658a.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? Font.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.contacts.fonts.f
            public final void b() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.contacts.fonts.FontManagerServiceBinder");
                    this.f2658a.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.contacts.fonts.f
            public final void b(g gVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.contacts.fonts.FontManagerServiceBinder");
                    obtain.writeStrongBinder(gVar != null ? gVar.asBinder() : null);
                    this.f2658a.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.contacts.fonts.f
            public final boolean c() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.contacts.fonts.FontManagerServiceBinder");
                    this.f2658a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.contacts.fonts.f
            public final boolean d() {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.contacts.fonts.FontManagerServiceBinder");
                    this.f2658a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.contacts.fonts.f
            public final void e() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.contacts.fonts.FontManagerServiceBinder");
                    this.f2658a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.contacts.fonts.f
            public final List<Font> f() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.contacts.fonts.FontManagerServiceBinder");
                    this.f2658a.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(Font.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.asus.contacts.fonts.f
            public final void g() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.asus.contacts.fonts.FontManagerServiceBinder");
                    this.f2658a.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "com.asus.contacts.fonts.FontManagerServiceBinder");
        }

        public static f a(IBinder iBinder) {
            f aVar;
            if (iBinder == null) {
                aVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.asus.contacts.fonts.FontManagerServiceBinder");
                aVar = (queryLocalInterface == null || !(queryLocalInterface instanceof f)) ? new C0074a(iBinder) : (f) queryLocalInterface;
            }
            return aVar;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            boolean z = true;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.asus.contacts.fonts.FontManagerServiceBinder");
                    a();
                    parcel2.writeNoException();
                    break;
                case 2:
                    parcel.enforceInterface("com.asus.contacts.fonts.FontManagerServiceBinder");
                    e();
                    parcel2.writeNoException();
                    break;
                case 3:
                    parcel.enforceInterface("com.asus.contacts.fonts.FontManagerServiceBinder");
                    boolean c = c();
                    parcel2.writeNoException();
                    if (c) {
                        i5 = 1;
                    }
                    parcel2.writeInt(i5);
                    break;
                case 4:
                    parcel.enforceInterface("com.asus.contacts.fonts.FontManagerServiceBinder");
                    boolean d = d();
                    parcel2.writeNoException();
                    if (d) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    break;
                case 5:
                    parcel.enforceInterface("com.asus.contacts.fonts.FontManagerServiceBinder");
                    a(parcel.createTypedArrayList(Font.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 6:
                    parcel.enforceInterface("com.asus.contacts.fonts.FontManagerServiceBinder");
                    boolean a2 = a(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    if (a2) {
                        i4 = 1;
                    }
                    parcel2.writeInt(i4);
                    break;
                case 7:
                    parcel.enforceInterface("com.asus.contacts.fonts.FontManagerServiceBinder");
                    String a3 = a(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(a3);
                    break;
                case 8:
                    parcel.enforceInterface("com.asus.contacts.fonts.FontManagerServiceBinder");
                    a(g.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    break;
                case 9:
                    parcel.enforceInterface("com.asus.contacts.fonts.FontManagerServiceBinder");
                    b(g.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    break;
                case 10:
                    parcel.enforceInterface("com.asus.contacts.fonts.FontManagerServiceBinder");
                    Font b2 = b(parcel.readInt());
                    parcel2.writeNoException();
                    if (b2 == null) {
                        parcel2.writeInt(0);
                        break;
                    } else {
                        parcel2.writeInt(1);
                        b2.writeToParcel(parcel2, 1);
                        break;
                    }
                case 11:
                    parcel.enforceInterface("com.asus.contacts.fonts.FontManagerServiceBinder");
                    List<Font> f = f();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(f);
                    break;
                case 12:
                    parcel.enforceInterface("com.asus.contacts.fonts.FontManagerServiceBinder");
                    b();
                    parcel2.writeNoException();
                    break;
                case 13:
                    parcel.enforceInterface("com.asus.contacts.fonts.FontManagerServiceBinder");
                    g();
                    parcel2.writeNoException();
                    break;
                case 1598968902:
                    parcel2.writeString("com.asus.contacts.fonts.FontManagerServiceBinder");
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }

    String a(int i);

    void a();

    void a(g gVar);

    void a(List<Font> list);

    boolean a(int i, String str);

    Font b(int i);

    void b();

    void b(g gVar);

    boolean c();

    boolean d();

    void e();

    List<Font> f();

    void g();
}
