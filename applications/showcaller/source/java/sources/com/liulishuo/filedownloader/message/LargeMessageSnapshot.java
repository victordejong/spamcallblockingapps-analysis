package com.liulishuo.filedownloader.message;

import android.os.Parcel;
import com.liulishuo.filedownloader.message.MessageSnapshot;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot.class */
public abstract class LargeMessageSnapshot extends MessageSnapshot {

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedFlowDirectlySnapshot.class */
    public static class CompletedFlowDirectlySnapshot extends CompletedSnapshot implements AbstractC9368a {
        public CompletedFlowDirectlySnapshot(int i, boolean z, long j) {
            super(i, z, j);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot.class */
    public static class CompletedSnapshot extends LargeMessageSnapshot {

        /* renamed from: f */
        private final boolean f40065f;

        /* renamed from: g */
        private final long f40066g;

        public CompletedSnapshot(int i, boolean z, long j) {
            super(i);
            this.f40065f = z;
            this.f40066g = j;
        }

        public CompletedSnapshot(Parcel parcel) {
            super(parcel);
            this.f40065f = parcel.readByte() != 0;
            this.f40066g = parcel.readLong();
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: g */
        public long mo896g() {
            return this.f40066g;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: k */
        public byte mo886k() {
            return (byte) -3;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: o */
        public boolean mo895o() {
            return this.f40065f;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f40065f ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.f40066g);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$ConnectedMessageSnapshot.class */
    public static class ConnectedMessageSnapshot extends LargeMessageSnapshot {

        /* renamed from: f */
        private final boolean f40067f;

        /* renamed from: g */
        private final long f40068g;

        /* renamed from: h */
        private final String f40069h;

        /* renamed from: i */
        private final String f40070i;

        public ConnectedMessageSnapshot(int i, boolean z, long j, String str, String str2) {
            super(i);
            this.f40067f = z;
            this.f40068g = j;
            this.f40069h = str;
            this.f40070i = str2;
        }

        public ConnectedMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f40067f = parcel.readByte() != 0;
            this.f40068g = parcel.readLong();
            this.f40069h = parcel.readString();
            this.f40070i = parcel.readString();
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: c */
        public String mo894c() {
            return this.f40069h;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: d */
        public String mo893d() {
            return this.f40070i;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: g */
        public long mo896g() {
            return this.f40068g;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: k */
        public byte mo886k() {
            return (byte) 2;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: n */
        public boolean mo892n() {
            return this.f40067f;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f40067f ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.f40068g);
            parcel.writeString(this.f40069h);
            parcel.writeString(this.f40070i);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot.class */
    public static class ErrorMessageSnapshot extends LargeMessageSnapshot {

        /* renamed from: f */
        private final long f40071f;

        /* renamed from: g */
        private final Throwable f40072g;

        public ErrorMessageSnapshot(int i, long j, Throwable th) {
            super(i);
            this.f40071f = j;
            this.f40072g = th;
        }

        public ErrorMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f40071f = parcel.readLong();
            this.f40072g = (Throwable) parcel.readSerializable();
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: f */
        public long mo897f() {
            return this.f40071f;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: k */
        public byte mo886k() {
            return (byte) -1;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: l */
        public Throwable mo891l() {
            return this.f40072g;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeLong(this.f40071f);
            parcel.writeSerializable(this.f40072g);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$PausedSnapshot.class */
    public static class PausedSnapshot extends PendingMessageSnapshot {
        @Override // com.liulishuo.filedownloader.message.LargeMessageSnapshot.PendingMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: k */
        public byte mo886k() {
            return (byte) -2;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$PendingMessageSnapshot.class */
    public static class PendingMessageSnapshot extends LargeMessageSnapshot {

        /* renamed from: f */
        private final long f40073f;

        /* renamed from: g */
        private final long f40074g;

        public PendingMessageSnapshot(int i, long j, long j2) {
            super(i);
            this.f40073f = j;
            this.f40074g = j2;
        }

        public PendingMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f40073f = parcel.readLong();
            this.f40074g = parcel.readLong();
        }

        PendingMessageSnapshot(PendingMessageSnapshot pendingMessageSnapshot) {
            this(pendingMessageSnapshot.m901e(), pendingMessageSnapshot.mo897f(), pendingMessageSnapshot.mo896g());
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: f */
        public long mo897f() {
            return this.f40073f;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: g */
        public long mo896g() {
            return this.f40074g;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: k */
        public byte mo886k() {
            return (byte) 1;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeLong(this.f40073f);
            parcel.writeLong(this.f40074g);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$ProgressMessageSnapshot.class */
    public static class ProgressMessageSnapshot extends LargeMessageSnapshot {

        /* renamed from: f */
        private final long f40075f;

        public ProgressMessageSnapshot(int i, long j) {
            super(i);
            this.f40075f = j;
        }

        public ProgressMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f40075f = parcel.readLong();
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: f */
        public long mo897f() {
            return this.f40075f;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: k */
        public byte mo886k() {
            return (byte) 3;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeLong(this.f40075f);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$RetryMessageSnapshot.class */
    public static class RetryMessageSnapshot extends ErrorMessageSnapshot {

        /* renamed from: h */
        private final int f40076h;

        public RetryMessageSnapshot(int i, long j, Throwable th, int i2) {
            super(i, j, th);
            this.f40076h = i2;
        }

        public RetryMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f40076h = parcel.readInt();
        }

        @Override // com.liulishuo.filedownloader.message.LargeMessageSnapshot.ErrorMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: h */
        public int mo888h() {
            return this.f40076h;
        }

        @Override // com.liulishuo.filedownloader.message.LargeMessageSnapshot.ErrorMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: k */
        public byte mo886k() {
            return (byte) 5;
        }

        @Override // com.liulishuo.filedownloader.message.LargeMessageSnapshot.ErrorMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f40076h);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnFlowDirectlySnapshot.class */
    public static class WarnFlowDirectlySnapshot extends WarnMessageSnapshot implements AbstractC9368a {
        public WarnFlowDirectlySnapshot(int i, long j, long j2) {
            super(i, j, j2);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot.class */
    public static class WarnMessageSnapshot extends PendingMessageSnapshot implements MessageSnapshot.AbstractC9367b {
        public WarnMessageSnapshot(int i, long j, long j2) {
            super(i, j, j2);
        }

        public WarnMessageSnapshot(Parcel parcel) {
            super(parcel);
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot.AbstractC9367b
        /* renamed from: a */
        public MessageSnapshot mo887a() {
            return new PendingMessageSnapshot(this);
        }

        @Override // com.liulishuo.filedownloader.message.LargeMessageSnapshot.PendingMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: k */
        public byte mo886k() {
            return (byte) -4;
        }
    }

    LargeMessageSnapshot(int i) {
        super(i);
        this.f40078e = true;
    }

    LargeMessageSnapshot(Parcel parcel) {
        super(parcel);
    }

    @Override // com.liulishuo.filedownloader.message.MessageSnapshot
    /* renamed from: i */
    public int mo889i() {
        if (mo897f() > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) mo897f();
    }

    @Override // com.liulishuo.filedownloader.message.MessageSnapshot
    /* renamed from: j */
    public int mo890j() {
        if (mo896g() > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) mo896g();
    }
}
