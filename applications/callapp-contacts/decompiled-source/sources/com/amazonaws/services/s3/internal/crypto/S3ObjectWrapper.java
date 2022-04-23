package com.amazonaws.services.s3.internal.crypto;

import com.amazonaws.AmazonClientException;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectId;
import com.amazonaws.services.s3.model.S3ObjectInputStream;
import com.amazonaws.util.StringUtils;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Map;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/S3ObjectWrapper.class */
class S3ObjectWrapper implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    final S3Object f6876a;

    /* renamed from: b  reason: collision with root package name */
    private final S3ObjectId f6877b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public S3ObjectWrapper(S3Object s3Object, S3ObjectId s3ObjectId) {
        if (s3Object != null) {
            this.f6876a = s3Object;
            this.f6877b = s3ObjectId;
            return;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Finally extract failed */
    private static String a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StringUtils.f6920a));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb.append(readLine);
                } else {
                    inputStream.close();
                    return sb.toString();
                }
            }
        } catch (Throwable th) {
            inputStream.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(S3ObjectInputStream s3ObjectInputStream) {
        this.f6876a.setObjectContent(s3ObjectInputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        Map<String, String> userMetadata = this.f6876a.getObjectMetadata().getUserMetadata();
        return userMetadata != null && userMetadata.containsKey("x-amz-crypto-instr-file");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String b() {
        try {
            return a((InputStream) this.f6876a.getObjectContent());
        } catch (Exception e) {
            throw new AmazonClientException("Error parsing JSON: " + e.getMessage());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f6876a.close();
    }

    public String toString() {
        return this.f6876a.toString();
    }
}
