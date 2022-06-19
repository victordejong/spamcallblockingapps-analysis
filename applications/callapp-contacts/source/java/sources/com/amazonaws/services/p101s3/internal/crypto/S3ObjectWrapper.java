package com.amazonaws.services.p101s3.internal.crypto;

import com.amazonaws.AmazonClientException;
import com.amazonaws.services.p101s3.model.S3Object;
import com.amazonaws.services.p101s3.model.S3ObjectId;
import com.amazonaws.services.p101s3.model.S3ObjectInputStream;
import com.amazonaws.util.StringUtils;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Map;
@Deprecated
/* renamed from: com.amazonaws.services.s3.internal.crypto.S3ObjectWrapper */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/S3ObjectWrapper.class */
class S3ObjectWrapper implements Closeable {

    /* renamed from: a */
    final S3Object f12445a;

    /* renamed from: b */
    private final S3ObjectId f12446b;

    public S3ObjectWrapper(S3Object s3Object, S3ObjectId s3ObjectId) {
        if (s3Object != null) {
            this.f12445a = s3Object;
            this.f12446b = s3ObjectId;
            return;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private static String m38302a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StringUtils.f12513a));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    inputStream.close();
                    return sb.toString();
                }
                sb.append(readLine);
            }
        } catch (Throwable th) {
            inputStream.close();
            throw th;
        }
    }

    /* renamed from: a */
    public final void m38303a(S3ObjectInputStream s3ObjectInputStream) {
        this.f12445a.setObjectContent(s3ObjectInputStream);
    }

    /* renamed from: a */
    public final boolean m38304a() {
        Map<String, String> userMetadata = this.f12445a.getObjectMetadata().getUserMetadata();
        return userMetadata != null && userMetadata.containsKey("x-amz-crypto-instr-file");
    }

    /* renamed from: b */
    public final String m38301b() {
        try {
            return m38302a((InputStream) this.f12445a.getObjectContent());
        } catch (Exception e) {
            throw new AmazonClientException("Error parsing JSON: " + e.getMessage());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f12445a.close();
    }

    public String toString() {
        return this.f12445a.toString();
    }
}
