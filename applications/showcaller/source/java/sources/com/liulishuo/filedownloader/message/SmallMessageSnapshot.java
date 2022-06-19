package com.liulishuo.filedownloader.message;

import android.os.Parcel;
import com.liulishuo.filedownloader.message.MessageSnapshot;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot.class */
public abstract class SmallMessageSnapshot extends MessageSnapshot {

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedFlowDirectlySnapshot.class */
    public static class CompletedFlowDirectlySnapshot extends CompletedSnapshot implements AbstractC9368a {
        public CompletedFlowDirectlySnapshot(int i, boolean z, int i2) {
            super(i, z, i2);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot.class */
    public static class CompletedSnapshot extends SmallMessageSnapshot {

        /* renamed from: f */
        private final boolean f40079f;

        /* renamed from: g */
        private final int f40080g;

        public CompletedSnapshot(int i, boolean z, int i2) {
            super(i);
            this.f40079f = z;
            this.f40080g = i2;
        }

        public CompletedSnapshot(Parcel parcel) {
            super(parcel);
            this.f40079f = parcel.readByte() != 0;
            this.f40080g = parcel.readInt();
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: j */
        public int mo890j() {
            return this.f40080g;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: k */
        public byte mo886k() {
            return (byte) -3;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: o */
        public boolean mo895o() {
            return this.f40079f;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f40079f ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.f40080g);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$ConnectedMessageSnapshot.class */
    public static class ConnectedMessageSnapshot extends SmallMessageSnapshot {

        /* renamed from: f */
        private final boolean f40081f;

        /* renamed from: g */
        private final int f40082g;

        /* renamed from: h */
        private final String f40083h;

        /* renamed from: i */
        private final String f40084i;

        public ConnectedMessageSnapshot(int i, boolean z, int i2, String str, String str2) {
            super(i);
            this.f40081f = z;
            this.f40082g = i2;
            this.f40083h = str;
            this.f40084i = str2;
        }

        public ConnectedMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f40081f = parcel.readByte() != 0;
            this.f40082g = parcel.readInt();
            this.f40083h = parcel.readString();
            this.f40084i = parcel.readString();
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: c */
        public String mo894c() {
            return this.f40083h;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: d */
        public String mo893d() {
            return this.f40084i;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: j */
        public int mo890j() {
            return this.f40082g;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: k */
        public byte mo886k() {
            return (byte) 2;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: n */
        public boolean mo892n() {
            return this.f40081f;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f40081f ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.f40082g);
            parcel.writeString(this.f40083h);
            parcel.writeString(this.f40084i);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot.class */
    public static class ErrorMessageSnapshot extends SmallMessageSnapshot {

        /* renamed from: f */
        private final int f40085f;

        /* renamed from: g */
        private final Throwable f40086g;

        public ErrorMessageSnapshot(int i, int i2, Throwable th) {
            super(i);
            this.f40085f = i2;
            this.f40086g = th;
        }

        public ErrorMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f40085f = parcel.readInt();
            this.f40086g = (Throwable) parcel.readSerializable();
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: i */
        public int mo889i() {
            return this.f40085f;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: k */
        public byte mo886k() {
            return (byte) -1;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: l */
        public Throwable mo891l() {
            return this.f40086g;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f40085f);
            parcel.writeSerializable(this.f40086g);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$PausedSnapshot.class */
    public static class PausedSnapshot extends PendingMessageSnapshot {
        @Override // com.liulishuo.filedownloader.message.SmallMessageSnapshot.PendingMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: k */
        public byte mo886k() {
            return (byte) -2;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$PendingMessageSnapshot.class */
    public static class PendingMessageSnapshot extends SmallMessageSnapshot {

        /* renamed from: f */
        private final int f40087f;

        /* renamed from: g */
        private final int f40088g;

        public PendingMessageSnapshot(int i, int i2, int i3) {
            super(i);
            this.f40087f = i2;
            this.f40088g = i3;
        }

        public PendingMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f40087f = parcel.readInt();
            this.f40088g = parcel.readInt();
        }

        PendingMessageSnapshot(PendingMessageSnapshot pendingMessageSnapshot) {
            this(pendingMessageSnapshot.m901e(), pendingMessageSnapshot.mo889i(), pendingMessageSnapshot.mo890j());
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: i */
        public int mo889i() {
            return this.f40087f;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: j */
        public int mo890j() {
            return this.f40088g;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: k */
        public byte mo886k() {
            return (byte) 1;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f40087f);
            parcel.writeInt(this.f40088g);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$ProgressMessageSnapshot.class */
    public static class ProgressMessageSnapshot extends SmallMessageSnapshot {

        /* renamed from: f */
        private final int f40089f;

        public ProgressMessageSnapshot(int i, int i2) {
            super(i);
            this.f40089f = i2;
        }

        public ProgressMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f40089f = parcel.readInt();
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: i */
        public int mo889i() {
            return this.f40089f;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: k */
        public byte mo886k() {
            return (byte) 3;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f40089f);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$RetryMessageSnapshot.class */
    public static class RetryMessageSnapshot extends ErrorMessageSnapshot {

        /* renamed from: h */
        private final int f40090h;

        public RetryMessageSnapshot(int i, int i2, Throwable th, int i3) {
            super(i, i2, th);
            this.f40090h = i3;
        }

        public RetryMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f40090h = parcel.readInt();
        }

        @Override // com.liulishuo.filedownloader.message.SmallMessageSnapshot.ErrorMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: h */
        public int mo888h() {
            return this.f40090h;
        }

        @Override // com.liulishuo.filedownloader.message.SmallMessageSnapshot.ErrorMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: k */
        public byte mo886k() {
            return (byte) 5;
        }

        @Override // com.liulishuo.filedownloader.message.SmallMessageSnapshot.ErrorMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f40090h);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnFlowDirectlySnapshot.class */
    public static class WarnFlowDirectlySnapshot extends WarnMessageSnapshot implements AbstractC9368a {
        public WarnFlowDirectlySnapshot(int i, int i2, int i3) {
            super(i, i2, i3);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnMessageSnapshot.class */
    public static class WarnMessageSnapshot extends PendingMessageSnapshot implements MessageSnapshot.AbstractC9367b {
        public WarnMessageSnapshot(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        public WarnMessageSnapshot(Parcel parcel) {
            super(parcel);
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot.AbstractC9367b
        /* renamed from: a */
        public MessageSnapshot mo887a() {
            return new PendingMessageSnapshot(this);
        }

        @Override // com.liulishuo.filedownloader.message.SmallMessageSnapshot.PendingMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: k */
        public byte mo886k() {
            return (byte) -4;
        }
    }

    SmallMessageSnapshot(int i) {
        super(i);
        this.f40078e = false;
    }

    SmallMessageSnapshot(Parcel parcel) {
        super(parcel);
    }

    @Override // com.liulishuo.filedownloader.message.MessageSnapshot
    /* renamed from: f */
    public long mo897f() {
        return mo889i();
    }

    @Override // com.liulishuo.filedownloader.message.MessageSnapshot
    /* renamed from: g */
    public long mo896g() {
        return mo890j();
    }
}
