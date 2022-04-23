package com.amazonaws.auth;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/PropertiesCredentials.class */
public class PropertiesCredentials implements AWSCredentials {

    /* renamed from: a  reason: collision with root package name */
    private final String f6578a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6579b;

    public PropertiesCredentials(File file) throws IOException {
        if (file.exists()) {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                Properties properties = new Properties();
                properties.load(fileInputStream);
                if (properties.getProperty("accessKey") == null || properties.getProperty("secretKey") == null) {
                    throw new IllegalArgumentException("The specified file (" + file.getAbsolutePath() + ") doesn't contain the expected properties 'accessKey' and 'secretKey'.");
                }
                this.f6578a = properties.getProperty("accessKey");
                this.f6579b = properties.getProperty("secretKey");
                try {
                    fileInputStream.close();
                } catch (IOException e) {
                }
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (IOException e2) {
                }
                throw th;
            }
        } else {
            throw new FileNotFoundException("File doesn't exist:  " + file.getAbsolutePath());
        }
    }

    public PropertiesCredentials(InputStream inputStream) throws IOException {
        Properties properties = new Properties();
        try {
            properties.load(inputStream);
            try {
                inputStream.close();
            } catch (Exception e) {
            }
            if (properties.getProperty("accessKey") == null || properties.getProperty("secretKey") == null) {
                throw new IllegalArgumentException("The specified properties data doesn't contain the expected properties 'accessKey' and 'secretKey'.");
            }
            this.f6578a = properties.getProperty("accessKey");
            this.f6579b = properties.getProperty("secretKey");
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (Exception e2) {
            }
            throw th;
        }
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public final String a() {
        return this.f6578a;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public final String b() {
        return this.f6579b;
    }
}
