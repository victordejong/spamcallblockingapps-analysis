package com.amazonaws.util;

import com.amazonaws.internal.SdkFilterInputStream;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/NamespaceRemovingInputStream.class */
class NamespaceRemovingInputStream extends SdkFilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f6915a = new byte[200];

    /* renamed from: b  reason: collision with root package name */
    private boolean f6916b = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer.class */
    public static final class StringPrefixSlicer {

        /* renamed from: a  reason: collision with root package name */
        String f6917a;

        public StringPrefixSlicer(String str) {
            this.f6917a = str;
        }

        public final boolean a(String str) {
            if (!this.f6917a.startsWith(str)) {
                return false;
            }
            this.f6917a = this.f6917a.substring(str.length());
            return true;
        }

        public final boolean b(String str) {
            if (!this.f6917a.startsWith(str)) {
                return false;
            }
            while (this.f6917a.startsWith(str)) {
                this.f6917a = this.f6917a.substring(str.length());
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
            if (!this.f6916b) {
                this.f6915a[0] = (byte) read;
                this.in.mark(this.f6915a.length);
                InputStream inputStream = this.in;
                byte[] bArr = this.f6915a;
                int read2 = inputStream.read(bArr, 1, bArr.length - 1);
                this.in.reset();
                String str = new String(this.f6915a, 0, read2 + 1, StringUtils.f6920a);
                StringPrefixSlicer stringPrefixSlicer = new StringPrefixSlicer(str);
                if (!stringPrefixSlicer.a("xmlns")) {
                    i = -1;
                } else {
                    stringPrefixSlicer.b(StringUtils.SPACE);
                    if (!stringPrefixSlicer.a("=")) {
                        i = -1;
                    } else {
                        stringPrefixSlicer.b(StringUtils.SPACE);
                        if (!stringPrefixSlicer.a("\"")) {
                            i = -1;
                        } else {
                            int indexOf = stringPrefixSlicer.f6917a.indexOf("\"");
                            if (indexOf < 0) {
                                z = false;
                            } else {
                                stringPrefixSlicer.f6917a = stringPrefixSlicer.f6917a.substring(indexOf + 1);
                                z = true;
                            }
                            i = !z ? -1 : str.length() - stringPrefixSlicer.f6917a.length();
                        }
                    }
                }
                i2 = read;
                if (i > 0) {
                    for (int i3 = 0; i3 < i - 1; i3++) {
                        this.in.read();
                    }
                    i2 = this.in.read();
                    this.f6916b = true;
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
