package com.amazonaws.auth;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/PropertiesCredentials.class */
public class PropertiesCredentials implements AWSCredentials {

    /* renamed from: a */
    private final String f12015a;

    /* renamed from: b */
    private final String f12016b;

    public PropertiesCredentials(File file) throws IOException {
        if (!file.exists()) {
            throw new FileNotFoundException("File doesn't exist:  " + file.getAbsolutePath());
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            Properties properties = new Properties();
            properties.load(fileInputStream);
            if (properties.getProperty("accessKey") == null || properties.getProperty("secretKey") == null) {
                throw new IllegalArgumentException("The specified file (" + file.getAbsolutePath() + ") doesn't contain the expected properties 'accessKey' and 'secretKey'.");
            }
            this.f12015a = properties.getProperty("accessKey");
            this.f12016b = properties.getProperty("secretKey");
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
            this.f12015a = properties.getProperty("accessKey");
            this.f12016b = properties.getProperty("secretKey");
        } catch (Throwable th) {
            try {
                inputStream.close();
            } catch (Exception e2) {
            }
            throw th;
        }
    }

    @Override // com.amazonaws.auth.AWSCredentials
    /* renamed from: a */
    public final String mo38659a() {
        return this.f12015a;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    /* renamed from: b */
    public final String mo38658b() {
        return this.f12016b;
    }
}
