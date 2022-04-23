package com.googlecode.mp4parser;

import com.b.a.a.b;
import com.b.a.a.e;
import com.b.a.c;
import com.b.a.d;
import com.googlecode.mp4parser.c.f;
import com.googlecode.mp4parser.c.j;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a.class */
public abstract class a implements b {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static f LOG = f.a(a.class);
    private ByteBuffer content;
    e dataSource;
    private ByteBuffer deadBytes = null;
    boolean isParsed = true;
    long offset;
    private e parent;
    protected String type;
    private byte[] userType;

    public a(String str) {
        this.type = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(String str, byte[] bArr) {
        this.type = str;
        this.userType = bArr;
    }

    private void getHeader(ByteBuffer byteBuffer) {
        if (isSmallBox()) {
            com.b.a.f.b(byteBuffer, getSize());
            byteBuffer.put(d.a(getType()));
        } else {
            com.b.a.f.b(byteBuffer, 1L);
            byteBuffer.put(d.a(getType()));
            com.b.a.f.a(byteBuffer, getSize());
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
        ByteBuffer allocate = ByteBuffer.allocate(com.googlecode.mp4parser.c.b.a(getContentSize() + (this.deadBytes != null ? byteBuffer2.limit() : 0)));
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
            LOG.c(String.valueOf(getType()) + ": remaining differs " + byteBuffer.remaining() + " vs. " + allocate.remaining());
            return false;
        }
        int position = byteBuffer.position();
        int limit = byteBuffer.limit() - 1;
        int limit2 = allocate.limit() - 1;
        while (limit >= position) {
            byte b2 = byteBuffer.get(limit);
            byte b3 = allocate.get(limit2);
            if (b2 != b3) {
                LOG.c(String.format("%s: buffers differ at %d: %2X/%2X", getType(), Integer.valueOf(limit), Byte.valueOf(b2), Byte.valueOf(b3)));
                byte[] bArr = new byte[byteBuffer.remaining()];
                byte[] bArr2 = new byte[allocate.remaining()];
                byteBuffer.get(bArr);
                allocate.get(bArr2);
                System.err.println("original      : " + c.a(bArr, 4));
                System.err.println("reconstructed : " + c.a(bArr2, 4));
                return false;
            }
            limit--;
            limit2--;
        }
        return true;
    }

    protected abstract void _parseDetails(ByteBuffer byteBuffer);

    @Override // com.b.a.a.b
    public void getBox(WritableByteChannel writableByteChannel) throws IOException {
        if (this.isParsed) {
            ByteBuffer allocate = ByteBuffer.allocate(com.googlecode.mp4parser.c.b.a(getSize()));
            getHeader(allocate);
            getContent(allocate);
            ByteBuffer byteBuffer = this.deadBytes;
            if (byteBuffer != null) {
                byteBuffer.rewind();
                while (this.deadBytes.remaining() > 0) {
                    allocate.put(this.deadBytes);
                }
            }
            writableByteChannel.write((ByteBuffer) allocate.rewind());
            return;
        }
        int i = 16;
        int i2 = isSmallBox() ? 8 : 16;
        if (!"uuid".equals(getType())) {
            i = 0;
        }
        ByteBuffer allocate2 = ByteBuffer.allocate(i2 + i);
        getHeader(allocate2);
        writableByteChannel.write((ByteBuffer) allocate2.rewind());
        writableByteChannel.write((ByteBuffer) this.content.position(0));
    }

    protected abstract void getContent(ByteBuffer byteBuffer);

    protected abstract long getContentSize();

    public long getOffset() {
        return this.offset;
    }

    @Override // com.b.a.a.b
    public e getParent() {
        return this.parent;
    }

    public String getPath() {
        return j.a(this);
    }

    @Override // com.b.a.a.b
    public long getSize() {
        long j;
        int i = 0;
        if (this.isParsed) {
            j = getContentSize();
        } else {
            ByteBuffer byteBuffer = this.content;
            j = byteBuffer != null ? byteBuffer.limit() : 0;
        }
        long j2 = (j >= 4294967288L ? 8 : 0) + 8 + ("uuid".equals(getType()) ? 16 : 0);
        ByteBuffer byteBuffer2 = this.deadBytes;
        if (byteBuffer2 != null) {
            i = byteBuffer2.limit();
        }
        return j + j2 + i;
    }

    @Override // com.b.a.a.b
    public String getType() {
        return this.type;
    }

    public byte[] getUserType() {
        return this.userType;
    }

    public boolean isParsed() {
        return this.isParsed;
    }

    @Override // com.b.a.a.b
    public void parse(e eVar, ByteBuffer byteBuffer, long j, com.b.a.b bVar) throws IOException {
        this.offset = eVar.b() - byteBuffer.remaining();
        this.dataSource = eVar;
        this.content = ByteBuffer.allocate(com.googlecode.mp4parser.c.b.a(j));
        while (this.content.remaining() > 0) {
            eVar.a(this.content);
        }
        this.content.position(0);
        this.isParsed = false;
    }

    public final void parseDetails() {
        synchronized (this) {
            f fVar = LOG;
            fVar.a("parsing details of " + getType());
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

    @Override // com.b.a.a.b
    public void setParent(e eVar) {
        this.parent = eVar;
    }
}
