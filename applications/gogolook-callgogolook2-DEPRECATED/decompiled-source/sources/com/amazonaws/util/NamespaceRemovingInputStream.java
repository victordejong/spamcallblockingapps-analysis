package com.amazonaws.util;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/NamespaceRemovingInputStream.class */
public class NamespaceRemovingInputStream extends SdkFilterInputStream {
    public final byte[] lookAheadData = new byte[200];
    public boolean hasRemovedNamespace = false;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer.class */
    public static final class StringPrefixSlicer {

        /* renamed from: s */
        public String f820s;

        public StringPrefixSlicer(String str) {
            this.f820s = str;
        }

        public String getString() {
            return this.f820s;
        }

        public boolean removePrefix(String str) {
            if (!this.f820s.startsWith(str)) {
                return false;
            }
            this.f820s = this.f820s.substring(str.length());
            return true;
        }

        public boolean removePrefixEndingWith(String str) {
            int indexOf = this.f820s.indexOf(str);
            if (indexOf < 0) {
                return false;
            }
            this.f820s = this.f820s.substring(indexOf + str.length());
            return true;
        }

        public boolean removeRepeatingPrefix(String str) {
            if (!this.f820s.startsWith(str)) {
                return false;
            }
            while (this.f820s.startsWith(str)) {
                this.f820s = this.f820s.substring(str.length());
            }
            return true;
        }
    }

    public NamespaceRemovingInputStream(InputStream inputStream) {
        super(new BufferedInputStream(inputStream));
    }

    public final int matchXmlNamespaceAttribute(String str) {
        StringPrefixSlicer stringPrefixSlicer = new StringPrefixSlicer(str);
        if (!stringPrefixSlicer.removePrefix("xmlns")) {
            return -1;
        }
        stringPrefixSlicer.removeRepeatingPrefix(" ");
        if (!stringPrefixSlicer.removePrefix("=")) {
            return -1;
        }
        stringPrefixSlicer.removeRepeatingPrefix(" ");
        if (stringPrefixSlicer.removePrefix("\"") && stringPrefixSlicer.removePrefixEndingWith("\"")) {
            return str.length() - stringPrefixSlicer.getString().length();
        }
        return -1;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        abortIfNeeded();
        int read = ((FilterInputStream) this).in.read();
        int i = read;
        if (read == 120) {
            i = read;
            if (!this.hasRemovedNamespace) {
                this.lookAheadData[0] = (byte) read;
                ((FilterInputStream) this).in.mark(this.lookAheadData.length);
                InputStream inputStream = ((FilterInputStream) this).in;
                byte[] bArr = this.lookAheadData;
                int read2 = inputStream.read(bArr, 1, bArr.length - 1);
                ((FilterInputStream) this).in.reset();
                int matchXmlNamespaceAttribute = matchXmlNamespaceAttribute(new String(this.lookAheadData, 0, read2 + 1, StringUtils.UTF8));
                i = read;
                if (matchXmlNamespaceAttribute > 0) {
                    for (int i2 = 0; i2 < matchXmlNamespaceAttribute - 1; i2++) {
                        ((FilterInputStream) this).in.read();
                    }
                    i = ((FilterInputStream) this).in.read();
                    this.hasRemovedNamespace = true;
                }
            }
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        for (int i3 = 0; i3 < i2; i3++) {
            int read = read();
            if (read != -1) {
                bArr[i3 + i] = (byte) read;
            } else if (i3 == 0) {
                return -1;
            } else {
                return i3;
            }
        }
        return i2;
    }
}
