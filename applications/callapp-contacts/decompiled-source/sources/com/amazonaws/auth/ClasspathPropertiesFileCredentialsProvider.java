package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import java.io.IOException;
import java.io.InputStream;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider.class */
public class ClasspathPropertiesFileCredentialsProvider implements AWSCredentialsProvider {

    /* renamed from: a  reason: collision with root package name */
    private static String f6572a = "AwsCredentials.properties";

    /* renamed from: b  reason: collision with root package name */
    private final String f6573b;

    public ClasspathPropertiesFileCredentialsProvider() {
        this(f6572a);
    }

    public ClasspathPropertiesFileCredentialsProvider(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Credentials file path cannot be null");
        } else if (!str.startsWith("/")) {
            this.f6573b = "/".concat(String.valueOf(str));
        } else {
            this.f6573b = str;
        }
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public final AWSCredentials a() {
        InputStream resourceAsStream = getClass().getResourceAsStream(this.f6573b);
        if (resourceAsStream != null) {
            try {
                return new PropertiesCredentials(resourceAsStream);
            } catch (IOException e) {
                throw new AmazonClientException("Unable to load AWS credentials from the " + this.f6573b + " file on the classpath", e);
            }
        } else {
            throw new AmazonClientException("Unable to load AWS credentials from the " + this.f6573b + " file on the classpath");
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f6573b + ")";
    }
}
