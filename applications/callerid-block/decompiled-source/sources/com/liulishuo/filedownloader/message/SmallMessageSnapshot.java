package com.liulishuo.filedownloader.message;

import android.os.Parcel;
import com.liulishuo.filedownloader.message.MessageSnapshot;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot.class */
public abstract class SmallMessageSnapshot extends MessageSnapshot {

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedFlowDirectlySnapshot.class */
    public static class CompletedFlowDirectlySnapshot extends CompletedSnapshot implements AbstractC2763a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public CompletedFlowDirectlySnapshot(int i, boolean z, int i2) {
            super(i, z, i2);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$CompletedSnapshot.class */
    public static class CompletedSnapshot extends SmallMessageSnapshot {

        /* renamed from: d */
        private final boolean f11482d;

        /* renamed from: e */
        private final int f11483e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public CompletedSnapshot(int i, boolean z, int i2) {
            super(i);
            this.f11482d = z;
            this.f11483e = i2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public CompletedSnapshot(Parcel parcel) {
            super(parcel);
            this.f11482d = parcel.readByte() != 0;
            this.f11483e = parcel.readInt();
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: l */
        public int mo1845l() {
            return this.f11483e;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public byte mo1841m() {
            return (byte) -3;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: q */
        public boolean mo1850q() {
            return this.f11482d;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f11482d ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.f11483e);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$ConnectedMessageSnapshot.class */
    public static class ConnectedMessageSnapshot extends SmallMessageSnapshot {

        /* renamed from: d */
        private final boolean f11484d;

        /* renamed from: e */
        private final int f11485e;

        /* renamed from: f */
        private final String f11486f;

        /* renamed from: g */
        private final String f11487g;

        /* JADX INFO: Access modifiers changed from: package-private */
        public ConnectedMessageSnapshot(int i, boolean z, int i2, String str, String str2) {
            super(i);
            this.f11484d = z;
            this.f11485e = i2;
            this.f11486f = str;
            this.f11487g = str2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public ConnectedMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f11484d = parcel.readByte() != 0;
            this.f11485e = parcel.readInt();
            this.f11486f = parcel.readString();
            this.f11487g = parcel.readString();
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: c */
        public String mo1849c() {
            return this.f11486f;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: d */
        public String mo1848d() {
            return this.f11487g;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: l */
        public int mo1845l() {
            return this.f11485e;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public byte mo1841m() {
            return (byte) 2;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: p */
        public boolean mo1847p() {
            return this.f11484d;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f11484d ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.f11485e);
            parcel.writeString(this.f11486f);
            parcel.writeString(this.f11487g);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$ErrorMessageSnapshot.class */
    public static class ErrorMessageSnapshot extends SmallMessageSnapshot {

        /* renamed from: d */
        private final int f11488d;

        /* renamed from: e */
        private final Throwable f11489e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public ErrorMessageSnapshot(int i, int i2, Throwable th) {
            super(i);
            this.f11488d = i2;
            this.f11489e = th;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public ErrorMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f11488d = parcel.readInt();
            this.f11489e = (Throwable) parcel.readSerializable();
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: i */
        public int mo1844i() {
            return this.f11488d;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public byte mo1841m() {
            return (byte) -1;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: n */
        public Throwable mo1846n() {
            return this.f11489e;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f11488d);
            parcel.writeSerializable(this.f11489e);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$PausedSnapshot.class */
    public static class PausedSnapshot extends PendingMessageSnapshot {
        @Override // com.liulishuo.filedownloader.message.SmallMessageSnapshot.PendingMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public byte mo1841m() {
            return (byte) -2;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$PendingMessageSnapshot.class */
    public static class PendingMessageSnapshot extends SmallMessageSnapshot {

        /* renamed from: d */
        private final int f11490d;

        /* renamed from: e */
        private final int f11491e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public PendingMessageSnapshot(int i, int i2, int i3) {
            super(i);
            this.f11490d = i2;
            this.f11491e = i3;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public PendingMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f11490d = parcel.readInt();
            this.f11491e = parcel.readInt();
        }

        PendingMessageSnapshot(PendingMessageSnapshot pendingMessageSnapshot) {
            this(pendingMessageSnapshot.m1856e(), pendingMessageSnapshot.mo1844i(), pendingMessageSnapshot.mo1845l());
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: i */
        public int mo1844i() {
            return this.f11490d;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: l */
        public int mo1845l() {
            return this.f11491e;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public byte mo1841m() {
            return (byte) 1;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f11490d);
            parcel.writeInt(this.f11491e);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$ProgressMessageSnapshot.class */
    public static class ProgressMessageSnapshot extends SmallMessageSnapshot {

        /* renamed from: d */
        private final int f11492d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public ProgressMessageSnapshot(int i, int i2) {
            super(i);
            this.f11492d = i2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public ProgressMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f11492d = parcel.readInt();
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: i */
        public int mo1844i() {
            return this.f11492d;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public byte mo1841m() {
            return (byte) 3;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f11492d);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$RetryMessageSnapshot.class */
    public static class RetryMessageSnapshot extends ErrorMessageSnapshot {

        /* renamed from: f */
        private final int f11493f;

        /* JADX INFO: Access modifiers changed from: package-private */
        public RetryMessageSnapshot(int i, int i2, Throwable th, int i3) {
            super(i, i2, th);
            this.f11493f = i3;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public RetryMessageSnapshot(Parcel parcel) {
            super(parcel);
            this.f11493f = parcel.readInt();
        }

        @Override // com.liulishuo.filedownloader.message.SmallMessageSnapshot.ErrorMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: h */
        public int mo1843h() {
            return this.f11493f;
        }

        @Override // com.liulishuo.filedownloader.message.SmallMessageSnapshot.ErrorMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public byte mo1841m() {
            return (byte) 5;
        }

        @Override // com.liulishuo.filedownloader.message.SmallMessageSnapshot.ErrorMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f11493f);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnFlowDirectlySnapshot.class */
    public static class WarnFlowDirectlySnapshot extends WarnMessageSnapshot implements AbstractC2763a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public WarnFlowDirectlySnapshot(int i, int i2, int i3) {
            super(i, i2, i3);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/SmallMessageSnapshot$WarnMessageSnapshot.class */
    public static class WarnMessageSnapshot extends PendingMessageSnapshot implements MessageSnapshot.AbstractC2762b {
        /* JADX INFO: Access modifiers changed from: package-private */
        public WarnMessageSnapshot(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public WarnMessageSnapshot(Parcel parcel) {
            super(parcel);
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot.AbstractC2762b
        /* renamed from: a */
        public MessageSnapshot mo1842a() {
            return new PendingMessageSnapshot(this);
        }

        @Override // com.liulishuo.filedownloader.message.SmallMessageSnapshot.PendingMessageSnapshot, com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public byte mo1841m() {
            return (byte) -4;
        }
    }

    SmallMessageSnapshot(int i) {
        super(i);
        this.f11481c = false;
    }

    SmallMessageSnapshot(Parcel parcel) {
        super(parcel);
    }

    @Override // com.liulishuo.filedownloader.message.MessageSnapshot
    /* renamed from: f */
    public long mo1852f() {
        return mo1844i();
    }

    @Override // com.liulishuo.filedownloader.message.MessageSnapshot
    /* renamed from: g */
    public long mo1851g() {
        return mo1845l();
    }
}
