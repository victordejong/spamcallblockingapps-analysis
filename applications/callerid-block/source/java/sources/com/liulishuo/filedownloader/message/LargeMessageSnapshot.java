package com.liulishuo.filedownloader.message;

import android.os.Parcel;
import com.liulishuo.filedownloader.message.MessageSnapshot;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot.class */
public abstract class LargeMessageSnapshot extends MessageSnapshot {

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedFlowDirectlySnapshot.class */
    public static class CompletedFlowDirectlySnapshot extends CompletedSnapshot implements AbstractC2763a {
        public CompletedFlowDirectlySnapshot(int i, boolean z, long j) {
            super(i, z, j);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot.class */
    public static class CompletedSnapshot extends LargeMessageSnapshot {

        /* renamed from: d */
        private final boolean f11468d;

        /* renamed from: e */
        private final long f11469e;

        public CompletedSnapshot(int i, boolean z, long j) {
            super(i);
            this.f11468d = z;
            this.f11469e = j;
        }

        public CompletedSnapshot(Parcel parcel) {
            super(parcel);
            this.f11468d = parcel.readByte() != 0;
            this.f11469e = parcel.readLong();
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: g */
        public long mo1851g() {
            return this.f11469e;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public byte mo1841m() {
            return (byte) -3;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: q */
        public boolean mo1850q() {
            return this.f11468d;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f11468d ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.f11469e);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$ConnectedMessageSnapshot.class */
    public static class ConnectedMessageSnapshot extends LargeMessageSnapshot {

        /* renamed from: d */
        private final boolean f11470d;

        /* renamed from: e */
        private final long f11471e;

        /* renamed from: f */
        private final String f11472f;

        /* renamed from: g */
        private final String f11473g;

        public ConnectedMessageSnapshot(int i, boolean z, long j, String str, String str2) {
            super(i);
            this.f11470d = z;
            this.f11471e = j;
            this.f11472f = str;
            this.f11473g = str2;
        }

        public ConnectedMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f11470d = parcel.readByte() != 0;
            this.f11471e = parcel.readLong();
            this.f11472f = parcel.readString();
            this.f11473g = parcel.readString();
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: c */
        public String mo1849c() {
            return this.f11472f;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: d */
        public String mo1848d() {
            return this.f11473g;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: g */
        public long mo1851g() {
            return this.f11471e;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public byte mo1841m() {
            return (byte) 2;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: p */
        public boolean mo1847p() {
            return this.f11470d;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f11470d ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.f11471e);
            parcel.writeString(this.f11472f);
            parcel.writeString(this.f11473g);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot.class */
    public static class ErrorMessageSnapshot extends LargeMessageSnapshot {

        /* renamed from: d */
        private final long f11474d;

        /* renamed from: e */
        private final Throwable f11475e;

        public ErrorMessageSnapshot(int i, long j, Throwable th) {
            super(i);
            this.f11474d = j;
            this.f11475e = th;
        }

        public ErrorMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f11474d = parcel.readLong();
            this.f11475e = (Throwable) parcel.readSerializable();
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: f */
        public long mo1852f() {
            return this.f11474d;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public byte mo1841m() {
            return (byte) -1;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: n */
        public Throwable mo1846n() {
            return this.f11475e;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeLong(this.f11474d);
            parcel.writeSerializable(this.f11475e);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$PausedSnapshot.class */
    public static class PausedSnapshot extends PendingMessageSnapshot {
        @Override // com.liulishuo.filedownloader.message.LargeMessageSnapshot.PendingMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public byte mo1841m() {
            return (byte) -2;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$PendingMessageSnapshot.class */
    public static class PendingMessageSnapshot extends LargeMessageSnapshot {

        /* renamed from: d */
        private final long f11476d;

        /* renamed from: e */
        private final long f11477e;

        public PendingMessageSnapshot(int i, long j, long j2) {
            super(i);
            this.f11476d = j;
            this.f11477e = j2;
        }

        public PendingMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f11476d = parcel.readLong();
            this.f11477e = parcel.readLong();
        }

        PendingMessageSnapshot(PendingMessageSnapshot pendingMessageSnapshot) {
            this(pendingMessageSnapshot.m1856e(), pendingMessageSnapshot.mo1852f(), pendingMessageSnapshot.mo1851g());
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: f */
        public long mo1852f() {
            return this.f11476d;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: g */
        public long mo1851g() {
            return this.f11477e;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public byte mo1841m() {
            return (byte) 1;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeLong(this.f11476d);
            parcel.writeLong(this.f11477e);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$ProgressMessageSnapshot.class */
    public static class ProgressMessageSnapshot extends LargeMessageSnapshot {

        /* renamed from: d */
        private final long f11478d;

        public ProgressMessageSnapshot(int i, long j) {
            super(i);
            this.f11478d = j;
        }

        public ProgressMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f11478d = parcel.readLong();
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: f */
        public long mo1852f() {
            return this.f11478d;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public byte mo1841m() {
            return (byte) 3;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeLong(this.f11478d);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$RetryMessageSnapshot.class */
    public static class RetryMessageSnapshot extends ErrorMessageSnapshot {

        /* renamed from: f */
        private final int f11479f;

        public RetryMessageSnapshot(int i, long j, Throwable th, int i2) {
            super(i, j, th);
            this.f11479f = i2;
        }

        public RetryMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f11479f = parcel.readInt();
        }

        @Override // com.liulishuo.filedownloader.message.LargeMessageSnapshot.ErrorMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: h */
        public int mo1843h() {
            return this.f11479f;
        }

        @Override // com.liulishuo.filedownloader.message.LargeMessageSnapshot.ErrorMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public byte mo1841m() {
            return (byte) 5;
        }

        @Override // com.liulishuo.filedownloader.message.LargeMessageSnapshot.ErrorMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f11479f);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnFlowDirectlySnapshot.class */
    public static class WarnFlowDirectlySnapshot extends WarnMessageSnapshot implements AbstractC2763a {
        public WarnFlowDirectlySnapshot(int i, long j, long j2) {
            super(i, j, j2);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot.class */
    public static class WarnMessageSnapshot extends PendingMessageSnapshot implements MessageSnapshot.AbstractC2762b {
        public WarnMessageSnapshot(int i, long j, long j2) {
            super(i, j, j2);
        }

        public WarnMessageSnapshot(Parcel parcel) {
            super(parcel);
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot.AbstractC2762b
        /* renamed from: a */
        public MessageSnapshot mo1842a() {
            return new PendingMessageSnapshot(this);
        }

        @Override // com.liulishuo.filedownloader.message.LargeMessageSnapshot.PendingMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public byte mo1841m() {
            return (byte) -4;
        }
    }

    LargeMessageSnapshot(int i) {
        super(i);
        this.f11481c = true;
    }

    LargeMessageSnapshot(Parcel parcel) {
        super(parcel);
    }

    @Override // com.liulishuo.filedownloader.message.MessageSnapshot
    /* renamed from: i */
    public int mo1844i() {
        if (mo1852f() > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) mo1852f();
    }

    @Override // com.liulishuo.filedownloader.message.MessageSnapshot
    /* renamed from: l */
    public int mo1845l() {
        if (mo1851g() > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) mo1851g();
    }
}
