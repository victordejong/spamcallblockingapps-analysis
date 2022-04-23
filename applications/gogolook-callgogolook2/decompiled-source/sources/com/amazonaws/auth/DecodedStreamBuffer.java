package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/DecodedStreamBuffer.class */
public class DecodedStreamBuffer {
    public static final Log log = LogFactory.getLog(DecodedStreamBuffer.class);
    public byte[] bufferArray;
    public boolean bufferSizeOverflow;
    public int byteBuffered;
    public int maxBufferSize;
    public int pos = -1;

    public DecodedStreamBuffer(int i) {
        this.bufferArray = new byte[i];
        this.maxBufferSize = i;
    }

    public void buffer(byte[] bArr, int i, int i2) {
        this.pos = -1;
        int i3 = this.byteBuffered;
        if (i3 + i2 > this.maxBufferSize) {
            if (log.isDebugEnabled()) {
                log.debug("Buffer size " + this.maxBufferSize + " has been exceeded and the input stream will not be repeatable. Freeing buffer memory");
            }
            this.bufferSizeOverflow = true;
            return;
        }
        System.arraycopy(bArr, i, this.bufferArray, i3, i2);
        this.byteBuffered += i2;
    }

    public boolean hasNext() {
        int i = this.pos;
        return i != -1 && i < this.byteBuffered;
    }

    public byte next() {
        byte[] bArr = this.bufferArray;
        int i = this.pos;
        this.pos = i + 1;
        return bArr[i];
    }

    public void startReadBuffer() {
        if (!this.bufferSizeOverflow) {
            this.pos = 0;
            return;
        }
        throw new AmazonClientException("The input stream is not repeatable since the buffer size " + this.maxBufferSize + " has been exceeded.");
    }
}
