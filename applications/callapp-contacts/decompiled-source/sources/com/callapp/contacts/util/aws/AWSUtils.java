package com.callapp.contacts.util.aws;

import com.amazonaws.AmazonClientException;
import com.amazonaws.auth.BasicSessionCredentials;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.StorageClass;
import com.callapp.common.model.json.JSONAWSSessionCredentials;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.http.HttpRequestParams;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.serializer.string.ClassParserHttpResponseHandler;
import com.callapp.framework.util.StringUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/aws/AWSUtils.class */
public class AWSUtils {
    public static String a(File file, String str, String str2, String str3) {
        if (file == null) {
            return null;
        }
        try {
            return a(new FileInputStream(file), str, str2, file.length(), str3);
        } catch (FileNotFoundException e) {
            CLog.a(AWSUtils.class, e);
            return null;
        }
    }

    private static String a(InputStream inputStream, String str, String str2, long j, String str3) {
        JSONAWSSessionCredentials s3PutSessionCredentials = getS3PutSessionCredentials();
        if (s3PutSessionCredentials == null) {
            return null;
        }
        ObjectMetadata objectMetadata = new ObjectMetadata();
        if (StringUtils.b((CharSequence) str2)) {
            objectMetadata.setContentType(str2);
        }
        objectMetadata.setContentLength(j);
        PutObjectRequest putObjectRequest = new PutObjectRequest(str3, str, inputStream, objectMetadata);
        putObjectRequest.setStorageClass(StorageClass.ReducedRedundancy);
        putObjectRequest.setCannedAcl(CannedAccessControlList.PublicRead);
        try {
            if (new AmazonS3Client(new BasicSessionCredentials(s3PutSessionCredentials.getAccessKey(), s3PutSessionCredentials.getSecretKey(), s3PutSessionCredentials.getSessionToken()), Region.a(Regions.US_EAST_1)).a(putObjectRequest).getETag() == null) {
                AnalyticsManager.get().a(Constants.AWS_S3, "Upload to S3 failed - no ETag");
                return null;
            }
            return a(str3) + str;
        } catch (AmazonClientException e) {
            AnalyticsManager.get().a(Constants.AWS_S3, "Upload to S3 failed - put exception");
            CLog.a(AWSUtils.class, e);
            return null;
        }
    }

    public static String a(String str) {
        return "https://s3.amazonaws.com/" + str + '/';
    }

    public static String b(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "jpg";
        }
        return String.format("%s_%s.%s", StringUtils.a(7, false), String.valueOf(System.currentTimeMillis()), str2);
    }

    private static JSONAWSSessionCredentials getS3PutSessionCredentials() {
        JSONAWSSessionCredentials jSONAWSSessionCredentials;
        synchronized (AWSUtils.class) {
            try {
                JSONAWSSessionCredentials jSONAWSSessionCredentials2 = (JSONAWSSessionCredentials) CacheManager.get().b(JSONAWSSessionCredentials.class, "awss3putsessioncredentials", false);
                jSONAWSSessionCredentials = jSONAWSSessionCredentials2;
                if (jSONAWSSessionCredentials2 == null) {
                    ClassParserHttpResponseHandler classParserHttpResponseHandler = new ClassParserHttpResponseHandler(JSONAWSSessionCredentials.class);
                    HttpUtils.getCallAppServerHost();
                    if (HttpUtils.b()) {
                        HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(HttpUtils.getAWSCredentialsUrl());
                        httpRequestParamsBuilder.f16228c = classParserHttpResponseHandler;
                        HttpUtils.b(httpRequestParamsBuilder.a());
                    }
                    jSONAWSSessionCredentials = (JSONAWSSessionCredentials) classParserHttpResponseHandler.getResult();
                    if (jSONAWSSessionCredentials != null) {
                        CacheManager.get().a(JSONAWSSessionCredentials.class, "awss3putsessioncredentials", jSONAWSSessionCredentials, 2131427331);
                    } else {
                        AnalyticsManager.get().a(Constants.AWS_S3, "Upload to S3 failed - can't get credentials from server");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return jSONAWSSessionCredentials;
    }
}
