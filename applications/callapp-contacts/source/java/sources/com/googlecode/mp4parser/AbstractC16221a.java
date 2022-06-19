package com.googlecode.mp4parser;

import com.googlecode.mp4parser.p425c.AbstractC16287f;
import com.googlecode.mp4parser.p425c.C16282b;
import com.googlecode.mp4parser.p425c.C16291j;
import com.p102b.p103a.AbstractC3512b;
import com.p102b.p103a.C3513c;
import com.p102b.p103a.C3514d;
import com.p102b.p103a.C3516f;
import com.p102b.p103a.p104a.AbstractC3476b;
import com.p102b.p103a.p104a.AbstractC3487e;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
/* renamed from: com.googlecode.mp4parser.a */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a.class */
public abstract class AbstractC16221a implements AbstractC3476b {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static AbstractC16287f LOG = AbstractC16287f.m7514a(AbstractC16221a.class);
    private ByteBuffer content;
    AbstractC16294e dataSource;
    private ByteBuffer deadBytes = null;
    boolean isParsed = true;
    long offset;
    private AbstractC3487e parent;
    protected String type;
    private byte[] userType;

    public AbstractC16221a(String str) {
        this.type = str;
    }

    public AbstractC16221a(String str, byte[] bArr) {
        this.type = str;
        this.userType = bArr;
    }

    private void getHeader(ByteBuffer byteBuffer) {
        if (isSmallBox()) {
            C3516f.m37835b(byteBuffer, getSize());
            byteBuffer.put(C3514d.m37853a(getType()));
        } else {
            C3516f.m37835b(byteBuffer, 1L);
            byteBuffer.put(C3514d.m37853a(getType()));
            C3516f.m37839a(byteBuffer, getSize());
        }
        if ("uuid".equals(getType())) {
            byteBuffer.put(getUserType());
        }
    }

    private boolean isSmallBox() {
        int i = "uuid".equals(getType()) ? 24 : 8;
        if (!this.isParsed) {
            return ((long) (this.content.limit() + i)) < 4294967296L;
        }
        long contentSize = getContentSize();
        ByteBuffer byteBuffer = this.deadBytes;
        return (contentSize + ((long) (byteBuffer != null ? byteBuffer.limit() : 0))) + ((long) i) < 4294967296L;
    }

    private boolean verify(ByteBuffer byteBuffer) {
        ByteBuffer byteBuffer2;
        ByteBuffer allocate = ByteBuffer.allocate(C16282b.m7517a(getContentSize() + (this.deadBytes != null ? byteBuffer2.limit() : 0)));
        getContent(allocate);
        ByteBuffer byteBuffer3 = this.deadBytes;
        if (byteBuffer3 != null) {
            byteBuffer3.rewind();
            while (this.deadBytes.remaining() > 0) {
                allocate.put(this.deadBytes);
            }
        }
        byteBuffer.rewind();
        allocate.rewind();
        if (byteBuffer.remaining() != allocate.remaining()) {
            System.err.print(String.valueOf(getType()) + ": remaining differs " + byteBuffer.remaining() + " vs. " + allocate.remaining());
            LOG.mo7511c(String.valueOf(getType()) + ": remaining differs " + byteBuffer.remaining() + " vs. " + allocate.remaining());
            return false;
        }
        int position = byteBuffer.position();
        int limit = byteBuffer.limit() - 1;
        int limit2 = allocate.limit() - 1;
        while (limit >= position) {
            byte b = byteBuffer.get(limit);
            byte b2 = allocate.get(limit2);
            if (b != b2) {
                LOG.mo7511c(String.format("%s: buffers differ at %d: %2X/%2X", getType(), Integer.valueOf(limit), Byte.valueOf(b), Byte.valueOf(b2)));
                byte[] bArr = new byte[byteBuffer.remaining()];
                byte[] bArr2 = new byte[allocate.remaining()];
                byteBuffer.get(bArr);
                allocate.get(bArr2);
                System.err.println("original      : " + C3513c.m37855a(bArr, 4));
                System.err.println("reconstructed : " + C3513c.m37855a(bArr2, 4));
                return false;
            }
            limit--;
            limit2--;
        }
        return true;
    }

    protected abstract void _parseDetails(ByteBuffer byteBuffer);

    @Override // com.p102b.p103a.p104a.AbstractC3476b
    public void getBox(WritableByteChannel writableByteChannel) throws IOException {
        if (!this.isParsed) {
            int i = 16;
            int i2 = isSmallBox() ? 8 : 16;
            if (!"uuid".equals(getType())) {
                i = 0;
            }
            ByteBuffer allocate = ByteBuffer.allocate(i2 + i);
            getHeader(allocate);
            writableByteChannel.write((ByteBuffer) allocate.rewind());
            writableByteChannel.write((ByteBuffer) this.content.position(0));
            return;
        }
        ByteBuffer allocate2 = ByteBuffer.allocate(C16282b.m7517a(getSize()));
        getHeader(allocate2);
        getContent(allocate2);
        ByteBuffer byteBuffer = this.deadBytes;
        if (byteBuffer != null) {
            byteBuffer.rewind();
            while (this.deadBytes.remaining() > 0) {
                allocate2.put(this.deadBytes);
            }
        }
        writableByteChannel.write((ByteBuffer) allocate2.rewind());
    }

    protected abstract void getContent(ByteBuffer byteBuffer);

    protected abstract long getContentSize();

    public long getOffset() {
        return this.offset;
    }

    @Override // com.p102b.p103a.p104a.AbstractC3476b
    public AbstractC3487e getParent() {
        return this.parent;
    }

    public String getPath() {
        return C16291j.m7505a(this);
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    @Override // com.p102b.p103a.p104a.AbstractC3476b
    public long getSize() {
        char c;
        ByteBuffer byteBuffer;
        if (this.isParsed) {
            c = getContentSize();
        } else {
            ByteBuffer byteBuffer2 = this.content;
            c = byteBuffer2 != null ? byteBuffer2.limit() : 0;
        }
        return c + (c >= 4294967288L ? 8 : 0) + 8 + ("uuid".equals(getType()) ? 16 : 0) + (this.deadBytes == null ? 0 : byteBuffer.limit());
    }

    @Override // com.p102b.p103a.p104a.AbstractC3476b
    public String getType() {
        return this.type;
    }

    public byte[] getUserType() {
        return this.userType;
    }

    public boolean isParsed() {
        return this.isParsed;
    }

    @Override // com.p102b.p103a.p104a.AbstractC3476b
    public void parse(AbstractC16294e abstractC16294e, ByteBuffer byteBuffer, long j, AbstractC3512b abstractC3512b) throws IOException {
        this.offset = abstractC16294e.mo7485b() - byteBuffer.remaining();
        this.dataSource = abstractC16294e;
        this.content = ByteBuffer.allocate(C16282b.m7517a(j));
        while (this.content.remaining() > 0) {
            abstractC16294e.mo7486a(this.content);
        }
        this.content.position(0);
        this.isParsed = false;
    }

    public final void parseDetails() {
        synchronized (this) {
            AbstractC16287f abstractC16287f = LOG;
            abstractC16287f.mo7513a("parsing details of " + getType());
            ByteBuffer byteBuffer = this.content;
            if (byteBuffer != null) {
                this.isParsed = true;
                byteBuffer.rewind();
                _parseDetails(byteBuffer);
                if (byteBuffer.remaining() > 0) {
                    this.deadBytes = byteBuffer.slice();
                }
                this.content = null;
            }
        }
    }

    @Override // com.p102b.p103a.p104a.AbstractC3476b
    public void setParent(AbstractC3487e abstractC3487e) {
        this.parent = abstractC3487e;
    }
}
