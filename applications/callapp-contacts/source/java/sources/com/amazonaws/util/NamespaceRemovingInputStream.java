package com.amazonaws.util;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/NamespaceRemovingInputStream.class */
class NamespaceRemovingInputStream extends SdkFilterInputStream {

    /* renamed from: a */
    private final byte[] f12508a = new byte[200];

    /* renamed from: b */
    private boolean f12509b = false;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer.class */
    public static final class StringPrefixSlicer {

        /* renamed from: a */
        String f12510a;

        public StringPrefixSlicer(String str) {
            this.f12510a = str;
        }

        /* renamed from: a */
        public final boolean m38235a(String str) {
            if (!this.f12510a.startsWith(str)) {
                return false;
            }
            this.f12510a = this.f12510a.substring(str.length());
            return true;
        }

        /* renamed from: b */
        public final boolean m38234b(String str) {
            if (!this.f12510a.startsWith(str)) {
                return false;
            }
            while (this.f12510a.startsWith(str)) {
                this.f12510a = this.f12510a.substring(str.length());
            }
            return true;
        }
    }

    public NamespaceRemovingInputStream(InputStream inputStream) {
        super(new BufferedInputStream(inputStream));
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i;
        boolean z;
        abortIfNeeded();
        int read = this.in.read();
        int i2 = read;
        if (read == 120) {
            i2 = read;
            if (!this.f12509b) {
                this.f12508a[0] = (byte) read;
                this.in.mark(this.f12508a.length);
                InputStream inputStream = this.in;
                byte[] bArr = this.f12508a;
                int read2 = inputStream.read(bArr, 1, bArr.length - 1);
                this.in.reset();
                String str = new String(this.f12508a, 0, read2 + 1, StringUtils.f12513a);
                StringPrefixSlicer stringPrefixSlicer = new StringPrefixSlicer(str);
                if (!stringPrefixSlicer.m38235a("xmlns")) {
                    i = -1;
                } else {
                    stringPrefixSlicer.m38234b(StringUtils.SPACE);
                    if (!stringPrefixSlicer.m38235a("=")) {
                        i = -1;
                    } else {
                        stringPrefixSlicer.m38234b(StringUtils.SPACE);
                        if (!stringPrefixSlicer.m38235a("\"")) {
                            i = -1;
                        } else {
                            int indexOf = stringPrefixSlicer.f12510a.indexOf("\"");
                            if (indexOf < 0) {
                                z = false;
                            } else {
                                stringPrefixSlicer.f12510a = stringPrefixSlicer.f12510a.substring(indexOf + 1);
                                z = true;
                            }
                            i = !z ? -1 : str.length() - stringPrefixSlicer.f12510a.length();
                        }
                    }
                }
                i2 = read;
                if (i > 0) {
                    for (int i3 = 0; i3 < i - 1; i3++) {
                        this.in.read();
                    }
                    i2 = this.in.read();
                    this.f12509b = true;
                }
            }
        }
        return i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read;
        for (int i3 = 0; i3 < i2; i3++) {
            if (read() == -1) {
                if (i3 != 0) {
                    return i3;
                }
                return -1;
            }
            bArr[i3 + i] = (byte) read;
        }
        return i2;
    }
}
