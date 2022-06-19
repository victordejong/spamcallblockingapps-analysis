package com.liulishuo.filedownloader.message;

import android.os.Parcel;
import android.os.Parcelable;
import com.liulishuo.filedownloader.message.LargeMessageSnapshot;
import com.liulishuo.filedownloader.message.SmallMessageSnapshot;
import p078c.p122d.p123a.p128i0.C2040f;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/MessageSnapshot.class */
public abstract class MessageSnapshot implements Parcelable {
    public static final Parcelable.Creator<MessageSnapshot> CREATOR = new C9366a();

    /* renamed from: d */
    private final int f40077d;

    /* renamed from: e */
    protected boolean f40078e;

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/MessageSnapshot$NoFieldException.class */
    public static class NoFieldException extends IllegalStateException {
        NoFieldException(String str, MessageSnapshot messageSnapshot) {
            super(C2040f.m28206o("There isn't a field for '%s' in this message %d %d %s", str, Integer.valueOf(messageSnapshot.m901e()), Byte.valueOf(messageSnapshot.mo886k()), messageSnapshot.getClass().getName()));
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
        /* renamed from: k */
        public byte mo886k() {
            return (byte) 6;
        }
    }

    /* renamed from: com.liulishuo.filedownloader.message.MessageSnapshot$a */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/message/MessageSnapshot$a.class */
    static final class C9366a implements Parcelable.Creator<MessageSnapshot> {
        C9366a() {
        }

        /* renamed from: a */
        public MessageSnapshot createFromParcel(Parcel parcel) {
            boolean z = parcel.readByte() == 1;
            byte readByte = parcel.readByte();
            StartedMessageSnapshot startedMessageSnapshot = readByte != -4 ? readByte != -3 ? readByte != -1 ? readByte != 1 ? readByte != 2 ? readByte != 3 ? readByte != 5 ? readByte != 6 ? null : new StartedMessageSnapshot(parcel) : z ? new LargeMessageSnapshot.RetryMessageSnapshot(parcel) : new SmallMessageSnapshot.RetryMessageSnapshot(parcel) : z ? new LargeMessageSnapshot.ProgressMessageSnapshot(parcel) : new SmallMessageSnapshot.ProgressMessageSnapshot(parcel) : z ? new LargeMessageSnapshot.ConnectedMessageSnapshot(parcel) : new SmallMessageSnapshot.ConnectedMessageSnapshot(parcel) : z ? new LargeMessageSnapshot.PendingMessageSnapshot(parcel) : new SmallMessageSnapshot.PendingMessageSnapshot(parcel) : z ? new LargeMessageSnapshot.ErrorMessageSnapshot(parcel) : new SmallMessageSnapshot.ErrorMessageSnapshot(parcel) : z ? new LargeMessageSnapshot.CompletedSnapshot(parcel) : new SmallMessageSnapshot.CompletedSnapshot(parcel) : z ? new LargeMessageSnapshot.WarnMessageSnapshot(parcel) : new SmallMessageSnapshot.WarnMessageSnapshot(parcel);
            if (startedMessageSnapshot != null) {
                startedMessageSnapshot.f40078e = z;
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
    public interface AbstractC9367b {
        /* renamed from: a */
        MessageSnapshot mo887a();
    }

    public MessageSnapshot(int i) {
        this.f40077d = i;
    }

    public MessageSnapshot(Parcel parcel) {
        this.f40077d = parcel.readInt();
    }

    /* renamed from: c */
    public String mo894c() {
        throw new NoFieldException("getEtag", this);
    }

    /* renamed from: d */
    public String mo893d() {
        throw new NoFieldException("getFileName", this);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public int m901e() {
        return this.f40077d;
    }

    /* renamed from: f */
    public long mo897f() {
        throw new NoFieldException("getLargeSofarBytes", this);
    }

    /* renamed from: g */
    public long mo896g() {
        throw new NoFieldException("getLargeTotalBytes", this);
    }

    /* renamed from: h */
    public int mo888h() {
        throw new NoFieldException("getRetryingTimes", this);
    }

    /* renamed from: i */
    public int mo889i() {
        throw new NoFieldException("getSmallSofarBytes", this);
    }

    /* renamed from: j */
    public int mo890j() {
        throw new NoFieldException("getSmallTotalBytes", this);
    }

    /* renamed from: k */
    public abstract /* synthetic */ byte mo886k();

    /* renamed from: l */
    public Throwable mo891l() {
        throw new NoFieldException("getThrowable", this);
    }

    /* renamed from: m */
    public boolean m900m() {
        return this.f40078e;
    }

    /* renamed from: n */
    public boolean mo892n() {
        throw new NoFieldException("isResuming", this);
    }

    /* renamed from: o */
    public boolean mo895o() {
        throw new NoFieldException("isReusedDownloadedFile", this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.f40078e ? (byte) 1 : (byte) 0);
        parcel.writeByte(mo886k());
        parcel.writeInt(this.f40077d);
    }
}
