package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import java.io.IOException;
import java.io.InputStream;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider.class */
public class ClasspathPropertiesFileCredentialsProvider implements AWSCredentialsProvider {

    /* renamed from: a */
    private static String f12007a = "AwsCredentials.properties";

    /* renamed from: b */
    private final String f12008b;

    public ClasspathPropertiesFileCredentialsProvider() {
        this(f12007a);
    }

    public ClasspathPropertiesFileCredentialsProvider(String str) {
        if (str != null) {
            if (!str.startsWith("/")) {
                this.f12008b = "/".concat(String.valueOf(str));
                return;
            } else {
                this.f12008b = str;
                return;
            }
        }
        throw new IllegalArgumentException("Credentials file path cannot be null");
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    /* renamed from: a */
    public final AWSCredentials mo38581a() {
        InputStream resourceAsStream = getClass().getResourceAsStream(this.f12008b);
        if (resourceAsStream == null) {
            throw new AmazonClientException("Unable to load AWS credentials from the " + this.f12008b + " file on the classpath");
        }
        try {
            return new PropertiesCredentials(resourceAsStream);
        } catch (IOException e) {
            throw new AmazonClientException("Unable to load AWS credentials from the " + this.f12008b + " file on the classpath", e);
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f12008b + ")";
    }
}
