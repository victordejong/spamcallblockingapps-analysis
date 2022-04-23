package com.fasterxml.jackson.core.util;

import com.callapp.contacts.activity.contact.details.ConferenceActivity;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/util/BufferRecycler.class */
public class BufferRecycler {
    private static final int[] BYTE_BUFFER_LENGTHS = {8000, 8000, 2000, 2000};
    private static final int[] CHAR_BUFFER_LENGTHS = {ConferenceActivity.SNACK_BAR_DURATION, ConferenceActivity.SNACK_BAR_DURATION, 200, 200};
    protected final AtomicReferenceArray<byte[]> _byteBuffers;
    protected final AtomicReferenceArray<char[]> _charBuffers;

    public BufferRecycler() {
        this(4, 4);
    }

    protected BufferRecycler(int i, int i2) {
        this._byteBuffers = new AtomicReferenceArray<>(i);
        this._charBuffers = new AtomicReferenceArray<>(i2);
    }

    public final byte[] allocByteBuffer(int i) {
        return allocByteBuffer(i, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x002d, code lost:
        if (r0.length < r8) goto L_0x0030;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] allocByteBuffer(int r5, int r6) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            int r0 = r0.byteBufferLength(r1)
            r7 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = r7
            if (r0 >= r1) goto L_0x0011
            r0 = r7
            r8 = r0
        L_0x0011:
            r0 = r4
            java.util.concurrent.atomic.AtomicReferenceArray<byte[]> r0 = r0._byteBuffers
            r1 = r5
            r2 = 0
            java.lang.Object r0 = r0.getAndSet(r1, r2)
            byte[] r0 = (byte[]) r0
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0030
            r0 = r9
            r10 = r0
            r0 = r9
            int r0 = r0.length
            r1 = r8
            if (r0 >= r1) goto L_0x0038
        L_0x0030:
            r0 = r4
            r1 = r8
            byte[] r0 = r0.balloc(r1)
            r10 = r0
        L_0x0038:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.util.BufferRecycler.allocByteBuffer(int, int):byte[]");
    }

    public final char[] allocCharBuffer(int i) {
        return allocCharBuffer(i, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x002d, code lost:
        if (r0.length < r8) goto L_0x0030;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public char[] allocCharBuffer(int r5, int r6) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            int r0 = r0.charBufferLength(r1)
            r7 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = r7
            if (r0 >= r1) goto L_0x0011
            r0 = r7
            r8 = r0
        L_0x0011:
            r0 = r4
            java.util.concurrent.atomic.AtomicReferenceArray<char[]> r0 = r0._charBuffers
            r1 = r5
            r2 = 0
            java.lang.Object r0 = r0.getAndSet(r1, r2)
            char[] r0 = (char[]) r0
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0030
            r0 = r9
            r10 = r0
            r0 = r9
            int r0 = r0.length
            r1 = r8
            if (r0 >= r1) goto L_0x0038
        L_0x0030:
            r0 = r4
            r1 = r8
            char[] r0 = r0.calloc(r1)
            r10 = r0
        L_0x0038:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.util.BufferRecycler.allocCharBuffer(int, int):char[]");
    }

    protected byte[] balloc(int i) {
        return new byte[i];
    }

    protected int byteBufferLength(int i) {
        return BYTE_BUFFER_LENGTHS[i];
    }

    protected char[] calloc(int i) {
        return new char[i];
    }

    protected int charBufferLength(int i) {
        return CHAR_BUFFER_LENGTHS[i];
    }

    public void releaseByteBuffer(int i, byte[] bArr) {
        this._byteBuffers.set(i, bArr);
    }

    public void releaseCharBuffer(int i, char[] cArr) {
        this._charBuffers.set(i, cArr);
    }
}
