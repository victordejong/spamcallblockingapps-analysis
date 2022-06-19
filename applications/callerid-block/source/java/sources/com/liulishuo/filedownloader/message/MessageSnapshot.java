package com.liulishuo.filedownloader.message;

import android.os.Parcel;
import android.os.Parcelable;
import com.liulishuo.filedownloader.message.LargeMessageSnapshot;
import com.liulishuo.filedownloader.message.SmallMessageSnapshot;
import p092e.p096e.p097a.p102h0.C3066f;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/MessageSnapshot.class */
public abstract class MessageSnapshot implements Parcelable {
    public static final Parcelable.Creator<MessageSnapshot> CREATOR = new C2761a();

    /* renamed from: b */
    private final int f11480b;

    /* renamed from: c */
    protected boolean f11481c;

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException.class */
    public static class NoFieldException extends IllegalStateException {
        NoFieldException(String str, MessageSnapshot messageSnapshot) {
            super(C3066f.m367o("There isn't a field for '%s' in this message %d %d %s", str, Integer.valueOf(messageSnapshot.m1856e()), Byte.valueOf(messageSnapshot.mo1841m()), messageSnapshot.getClass().getName()));
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/MessageSnapshot$StartedMessageSnapshot.class */
    public static class StartedMessageSnapshot extends MessageSnapshot {
        public StartedMessageSnapshot(int i) {
            super(i);
        }

        StartedMessageSnapshot(Parcel parcel) {
            super(parcel);
        }

        @Override // com.liulishuo.filedownloader.message.MessageSnapshot
        /* renamed from: m */
        public byte mo1841m() {
            return (byte) 6;
        }
    }

    /* renamed from: com.liulishuo.filedownloader.message.MessageSnapshot$a */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/MessageSnapshot$a.class */
    static final class C2761a implements Parcelable.Creator<MessageSnapshot> {
        C2761a() {
        }

        /* renamed from: a */
        public MessageSnapshot createFromParcel(Parcel parcel) {
            boolean z = parcel.readByte() == 1;
            byte readByte = parcel.readByte();
            StartedMessageSnapshot startedMessageSnapshot = readByte != -4 ? readByte != -3 ? readByte != -1 ? readByte != 1 ? readByte != 2 ? readByte != 3 ? readByte != 5 ? readByte != 6 ? null : new StartedMessageSnapshot(parcel) : z ? new LargeMessageSnapshot.RetryMessageSnapshot(parcel) : new SmallMessageSnapshot.RetryMessageSnapshot(parcel) : z ? new LargeMessageSnapshot.ProgressMessageSnapshot(parcel) : new SmallMessageSnapshot.ProgressMessageSnapshot(parcel) : z ? new LargeMessageSnapshot.ConnectedMessageSnapshot(parcel) : new SmallMessageSnapshot.ConnectedMessageSnapshot(parcel) : z ? new LargeMessageSnapshot.PendingMessageSnapshot(parcel) : new SmallMessageSnapshot.PendingMessageSnapshot(parcel) : z ? new LargeMessageSnapshot.ErrorMessageSnapshot(parcel) : new SmallMessageSnapshot.ErrorMessageSnapshot(parcel) : z ? new LargeMessageSnapshot.CompletedSnapshot(parcel) : new SmallMessageSnapshot.CompletedSnapshot(parcel) : z ? new LargeMessageSnapshot.WarnMessageSnapshot(parcel) : new SmallMessageSnapshot.WarnMessageSnapshot(parcel);
            if (startedMessageSnapshot != null) {
                startedMessageSnapshot.f11481c = z;
                return startedMessageSnapshot;
            }
            throw new IllegalStateException("Can't restore the snapshot because unknown status: " + ((int) readByte));
        }

        /* renamed from: b */
        public MessageSnapshot[] newArray(int i) {
            return new MessageSnapshot[i];
        }
    }

    /* renamed from: com.liulishuo.filedownloader.message.MessageSnapshot$b */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/MessageSnapshot$b.class */
    public interface AbstractC2762b {
        /* renamed from: a */
        MessageSnapshot mo1842a();
    }

    public MessageSnapshot(int i) {
        this.f11480b = i;
    }

    public MessageSnapshot(Parcel parcel) {
        this.f11480b = parcel.readInt();
    }

    /* renamed from: c */
    public String mo1849c() {
        throw new NoFieldException("getEtag", this);
    }

    /* renamed from: d */
    public String mo1848d() {
        throw new NoFieldException("getFileName", this);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public int m1856e() {
        return this.f11480b;
    }

    /* renamed from: f */
    public long mo1852f() {
        throw new NoFieldException("getLargeSofarBytes", this);
    }

    /* renamed from: g */
    public long mo1851g() {
        throw new NoFieldException("getLargeTotalBytes", this);
    }

    /* renamed from: h */
    public int mo1843h() {
        throw new NoFieldException("getRetryingTimes", this);
    }

    /* renamed from: i */
    public int mo1844i() {
        throw new NoFieldException("getSmallSofarBytes", this);
    }

    /* renamed from: l */
    public int mo1845l() {
        throw new NoFieldException("getSmallTotalBytes", this);
    }

    /* renamed from: m */
    public abstract /* synthetic */ byte mo1841m();

    /* renamed from: n */
    public Throwable mo1846n() {
        throw new NoFieldException("getThrowable", this);
    }

    /* renamed from: o */
    public boolean m1855o() {
        return this.f11481c;
    }

    /* renamed from: p */
    public boolean mo1847p() {
        throw new NoFieldException("isResuming", this);
    }

    /* renamed from: q */
    public boolean mo1850q() {
        throw new NoFieldException("isReusedDownloadedFile", this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.f11481c ? (byte) 1 : (byte) 0);
        parcel.writeByte(mo1841m());
        parcel.writeInt(this.f11480b);
    }
}
