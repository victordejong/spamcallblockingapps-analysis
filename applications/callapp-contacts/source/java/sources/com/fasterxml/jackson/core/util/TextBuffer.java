package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.p309io.NumberInput;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/util/TextBuffer.class */
public final class TextBuffer {
    static final char[] NO_CHARS = new char[0];
    private final BufferRecycler _allocator;
    private char[] _currentSegment;
    private int _currentSize;
    private boolean _hasSegments;
    private char[] _inputBuffer;
    private int _inputLen;
    private int _inputStart;
    private char[] _resultArray;
    private String _resultString;
    private int _segmentSize;
    private ArrayList<char[]> _segments;

    public TextBuffer(BufferRecycler bufferRecycler) {
        this._allocator = bufferRecycler;
    }

    protected TextBuffer(BufferRecycler bufferRecycler, char[] cArr) {
        this._allocator = bufferRecycler;
        this._currentSegment = cArr;
        this._currentSize = cArr.length;
        this._inputStart = -1;
    }

    private char[] buf(int i) {
        BufferRecycler bufferRecycler = this._allocator;
        return bufferRecycler != null ? bufferRecycler.allocCharBuffer(2, i) : new char[Math.max(i, 500)];
    }

    private char[] carr(int i) {
        return new char[i];
    }

    private void clearSegments() {
        this._hasSegments = false;
        this._segments.clear();
        this._segmentSize = 0;
        this._currentSize = 0;
    }

    private void expand(int i) {
        int i2;
        if (this._segments == null) {
            this._segments = new ArrayList<>();
        }
        char[] cArr = this._currentSegment;
        this._hasSegments = true;
        this._segments.add(cArr);
        this._segmentSize += cArr.length;
        this._currentSize = 0;
        int length = cArr.length;
        int i3 = length + (length >> 1);
        if (i3 < 500) {
            i2 = 500;
        } else {
            i2 = i3;
            if (i3 > 65536) {
                i2 = 65536;
            }
        }
        this._currentSegment = carr(i2);
    }

    public static TextBuffer fromInitial(char[] cArr) {
        return new TextBuffer(null, cArr);
    }

    private char[] resultArray() {
        int i;
        String str = this._resultString;
        if (str != null) {
            return str.toCharArray();
        }
        int i2 = this._inputStart;
        if (i2 >= 0) {
            int i3 = this._inputLen;
            return i3 <= 0 ? NO_CHARS : i2 == 0 ? Arrays.copyOf(this._inputBuffer, i3) : Arrays.copyOfRange(this._inputBuffer, i2, i3 + i2);
        }
        int size = size();
        if (size <= 0) {
            return NO_CHARS;
        }
        char[] carr = carr(size);
        ArrayList<char[]> arrayList = this._segments;
        if (arrayList != null) {
            int size2 = arrayList.size();
            int i4 = 0;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i4 >= size2) {
                    break;
                }
                char[] cArr = this._segments.get(i4);
                int length = cArr.length;
                System.arraycopy(cArr, 0, carr, i5, length);
                i5 += length;
                i4++;
            }
        } else {
            i = 0;
        }
        System.arraycopy(this._currentSegment, 0, carr, i, this._currentSize);
        return carr;
    }

    private void unshare(int i) {
        int i2 = this._inputLen;
        this._inputLen = 0;
        char[] cArr = this._inputBuffer;
        this._inputBuffer = null;
        int i3 = this._inputStart;
        this._inputStart = -1;
        int i4 = i + i2;
        char[] cArr2 = this._currentSegment;
        if (cArr2 == null || i4 > cArr2.length) {
            this._currentSegment = buf(i4);
        }
        if (i2 > 0) {
            System.arraycopy(cArr, i3, this._currentSegment, 0, i2);
        }
        this._segmentSize = 0;
        this._currentSize = i2;
    }

    public final void append(char c) {
        if (this._inputStart >= 0) {
            unshare(16);
        }
        this._resultString = null;
        this._resultArray = null;
        char[] cArr = this._currentSegment;
        char[] cArr2 = cArr;
        if (this._currentSize >= cArr.length) {
            expand(1);
            cArr2 = this._currentSegment;
        }
        int i = this._currentSize;
        this._currentSize = i + 1;
        cArr2[i] = c;
    }

    public final void append(String str, int i, int i2) {
        if (this._inputStart >= 0) {
            unshare(i2);
        }
        this._resultString = null;
        this._resultArray = null;
        char[] cArr = this._currentSegment;
        int length = cArr.length;
        int i3 = this._currentSize;
        int i4 = length - i3;
        if (i4 >= i2) {
            str.getChars(i, i + i2, cArr, i3);
            this._currentSize += i2;
            return;
        }
        int i5 = i;
        int i6 = i2;
        if (i4 > 0) {
            i5 = i + i4;
            str.getChars(i, i5, cArr, i3);
            i6 = i2 - i4;
        }
        while (true) {
            expand(i6);
            int min = Math.min(this._currentSegment.length, i6);
            int i7 = i5 + min;
            str.getChars(i5, i7, this._currentSegment, 0);
            this._currentSize += min;
            i6 -= min;
            if (i6 <= 0) {
                return;
            }
            i5 = i7;
        }
    }

    public final void append(char[] cArr, int i, int i2) {
        int i3;
        if (this._inputStart >= 0) {
            unshare(i2);
        }
        this._resultString = null;
        this._resultArray = null;
        char[] cArr2 = this._currentSegment;
        int length = cArr2.length;
        int i4 = this._currentSize;
        int i5 = length - i4;
        if (i5 >= i2) {
            System.arraycopy(cArr, i, cArr2, i4, i2);
            this._currentSize += i2;
            return;
        }
        int i6 = i;
        int i7 = i2;
        if (i5 > 0) {
            System.arraycopy(cArr, i, cArr2, i4, i5);
            i6 = i + i5;
            i7 = i2 - i5;
        }
        do {
            expand(i7);
            int min = Math.min(this._currentSegment.length, i7);
            System.arraycopy(cArr, i6, this._currentSegment, 0, min);
            this._currentSize += min;
            i6 += min;
            i3 = i7 - min;
            i7 = i3;
        } while (i3 > 0);
    }

    public final char[] contentsAsArray() {
        char[] cArr = this._resultArray;
        char[] cArr2 = cArr;
        if (cArr == null) {
            cArr2 = resultArray();
            this._resultArray = cArr2;
        }
        return cArr2;
    }

    public final BigDecimal contentsAsDecimal() throws NumberFormatException {
        char[] cArr;
        char[] cArr2;
        char[] cArr3 = this._resultArray;
        if (cArr3 != null) {
            return NumberInput.parseBigDecimal(cArr3);
        }
        int i = this._inputStart;
        return (i < 0 || (cArr2 = this._inputBuffer) == null) ? (this._segmentSize != 0 || (cArr = this._currentSegment) == null) ? NumberInput.parseBigDecimal(contentsAsArray()) : NumberInput.parseBigDecimal(cArr, 0, this._currentSize) : NumberInput.parseBigDecimal(cArr2, i, this._inputLen);
    }

    public final double contentsAsDouble() throws NumberFormatException {
        return NumberInput.parseDouble(contentsAsString());
    }

    public final int contentsAsInt(boolean z) {
        char[] cArr;
        int i = this._inputStart;
        return (i < 0 || (cArr = this._inputBuffer) == null) ? z ? -NumberInput.parseInt(this._currentSegment, 1, this._currentSize - 1) : NumberInput.parseInt(this._currentSegment, 0, this._currentSize) : z ? -NumberInput.parseInt(cArr, i + 1, this._inputLen - 1) : NumberInput.parseInt(cArr, i, this._inputLen);
    }

    public final long contentsAsLong(boolean z) {
        char[] cArr;
        int i = this._inputStart;
        return (i < 0 || (cArr = this._inputBuffer) == null) ? z ? -NumberInput.parseLong(this._currentSegment, 1, this._currentSize - 1) : NumberInput.parseLong(this._currentSegment, 0, this._currentSize) : z ? -NumberInput.parseLong(cArr, i + 1, this._inputLen - 1) : NumberInput.parseLong(cArr, i, this._inputLen);
    }

    public final String contentsAsString() {
        if (this._resultString == null) {
            if (this._resultArray != null) {
                this._resultString = new String(this._resultArray);
            } else {
                String str = "";
                if (this._inputStart < 0) {
                    int i = this._segmentSize;
                    int i2 = this._currentSize;
                    if (i == 0) {
                        if (i2 != 0) {
                            str = new String(this._currentSegment, 0, i2);
                        }
                        this._resultString = str;
                    } else {
                        StringBuilder sb = new StringBuilder(i + i2);
                        ArrayList<char[]> arrayList = this._segments;
                        if (arrayList != null) {
                            int size = arrayList.size();
                            for (int i3 = 0; i3 < size; i3++) {
                                char[] cArr = this._segments.get(i3);
                                sb.append(cArr, 0, cArr.length);
                            }
                        }
                        sb.append(this._currentSegment, 0, this._currentSize);
                        this._resultString = sb.toString();
                    }
                } else if (this._inputLen <= 0) {
                    this._resultString = "";
                    return "";
                } else {
                    this._resultString = new String(this._inputBuffer, this._inputStart, this._inputLen);
                }
            }
        }
        return this._resultString;
    }

    public final int contentsToWriter(Writer writer) throws IOException {
        int i;
        char[] cArr = this._resultArray;
        if (cArr != null) {
            writer.write(cArr);
            return this._resultArray.length;
        }
        String str = this._resultString;
        if (str != null) {
            writer.write(str);
            return this._resultString.length();
        }
        int i2 = this._inputStart;
        if (i2 >= 0) {
            int i3 = this._inputLen;
            if (i3 > 0) {
                writer.write(this._inputBuffer, i2, i3);
            }
            return i3;
        }
        ArrayList<char[]> arrayList = this._segments;
        if (arrayList != null) {
            int size = arrayList.size();
            int i4 = 0;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i4 >= size) {
                    break;
                }
                char[] cArr2 = this._segments.get(i4);
                int length = cArr2.length;
                writer.write(cArr2, 0, length);
                i5 += length;
                i4++;
            }
        } else {
            i = 0;
        }
        int i6 = this._currentSize;
        int i7 = i;
        if (i6 > 0) {
            writer.write(this._currentSegment, 0, i6);
            i7 = i + i6;
        }
        return i7;
    }

    public final char[] emptyAndGetCurrentSegment() {
        this._inputStart = -1;
        this._currentSize = 0;
        this._inputLen = 0;
        this._inputBuffer = null;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        }
        char[] cArr = this._currentSegment;
        char[] cArr2 = cArr;
        if (cArr == null) {
            cArr2 = buf(0);
            this._currentSegment = cArr2;
        }
        return cArr2;
    }

    public final char[] expandCurrentSegment() {
        char[] cArr = this._currentSegment;
        int length = cArr.length;
        int i = (length >> 1) + length;
        int i2 = i;
        if (i > 65536) {
            i2 = (length >> 2) + length;
        }
        char[] copyOf = Arrays.copyOf(cArr, i2);
        this._currentSegment = copyOf;
        return copyOf;
    }

    public final char[] finishCurrentSegment() {
        int i;
        if (this._segments == null) {
            this._segments = new ArrayList<>();
        }
        this._hasSegments = true;
        this._segments.add(this._currentSegment);
        int length = this._currentSegment.length;
        this._segmentSize += length;
        this._currentSize = 0;
        int i2 = length + (length >> 1);
        if (i2 < 500) {
            i = 500;
        } else {
            i = i2;
            if (i2 > 65536) {
                i = 65536;
            }
        }
        char[] carr = carr(i);
        this._currentSegment = carr;
        return carr;
    }

    public final char[] getBufferWithoutReset() {
        return this._currentSegment;
    }

    public final char[] getCurrentSegment() {
        if (this._inputStart >= 0) {
            unshare(1);
        } else {
            char[] cArr = this._currentSegment;
            if (cArr == null) {
                this._currentSegment = buf(0);
            } else if (this._currentSize >= cArr.length) {
                expand(1);
            }
        }
        return this._currentSegment;
    }

    public final int getCurrentSegmentSize() {
        return this._currentSize;
    }

    public final char[] getTextBuffer() {
        if (this._inputStart >= 0) {
            return this._inputBuffer;
        }
        char[] cArr = this._resultArray;
        if (cArr != null) {
            return cArr;
        }
        String str = this._resultString;
        if (str != null) {
            char[] charArray = str.toCharArray();
            this._resultArray = charArray;
            return charArray;
        } else if (this._hasSegments) {
            return contentsAsArray();
        } else {
            char[] cArr2 = this._currentSegment;
            char[] cArr3 = cArr2;
            if (cArr2 == null) {
                cArr3 = NO_CHARS;
            }
            return cArr3;
        }
    }

    public final int getTextOffset() {
        int i = this._inputStart;
        if (i >= 0) {
            return i;
        }
        return 0;
    }

    public final boolean hasTextAsCharacters() {
        return this._inputStart >= 0 || this._resultArray != null || this._resultString == null;
    }

    public final void releaseBuffers() {
        char[] cArr;
        this._inputStart = -1;
        this._currentSize = 0;
        this._inputLen = 0;
        this._inputBuffer = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        }
        BufferRecycler bufferRecycler = this._allocator;
        if (bufferRecycler == null || (cArr = this._currentSegment) == null) {
            return;
        }
        this._currentSegment = null;
        bufferRecycler.releaseCharBuffer(2, cArr);
    }

    public final void resetWithCopy(String str, int i, int i2) {
        this._inputBuffer = null;
        this._inputStart = -1;
        this._inputLen = 0;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        } else if (this._currentSegment == null) {
            this._currentSegment = buf(i2);
        }
        this._segmentSize = 0;
        this._currentSize = 0;
        append(str, i, i2);
    }

    public final void resetWithCopy(char[] cArr, int i, int i2) {
        this._inputBuffer = null;
        this._inputStart = -1;
        this._inputLen = 0;
        this._resultString = null;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        } else if (this._currentSegment == null) {
            this._currentSegment = buf(i2);
        }
        this._segmentSize = 0;
        this._currentSize = 0;
        append(cArr, i, i2);
    }

    public final void resetWithShared(char[] cArr, int i, int i2) {
        this._resultString = null;
        this._resultArray = null;
        this._inputBuffer = cArr;
        this._inputStart = i;
        this._inputLen = i2;
        if (this._hasSegments) {
            clearSegments();
        }
    }

    public final void resetWithString(String str) {
        this._inputBuffer = null;
        this._inputStart = -1;
        this._inputLen = 0;
        this._resultString = str;
        this._resultArray = null;
        if (this._hasSegments) {
            clearSegments();
        }
        this._currentSize = 0;
    }

    public final String setCurrentAndReturn(int i) {
        this._currentSize = i;
        if (this._segmentSize > 0) {
            return contentsAsString();
        }
        String str = i == 0 ? "" : new String(this._currentSegment, 0, i);
        this._resultString = str;
        return str;
    }

    public final void setCurrentLength(int i) {
        this._currentSize = i;
    }

    public final int size() {
        if (this._inputStart >= 0) {
            return this._inputLen;
        }
        char[] cArr = this._resultArray;
        if (cArr != null) {
            return cArr.length;
        }
        String str = this._resultString;
        return str != null ? str.length() : this._segmentSize + this._currentSize;
    }

    public final String toString() {
        return contentsAsString();
    }
}
