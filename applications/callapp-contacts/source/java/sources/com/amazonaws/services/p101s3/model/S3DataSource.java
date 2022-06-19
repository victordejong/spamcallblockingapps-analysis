package com.amazonaws.services.p101s3.model;

import com.amazonaws.logging.Log;
import com.amazonaws.util.IOUtils;
import java.io.File;
import java.io.InputStream;
/* renamed from: com.amazonaws.services.s3.model.S3DataSource */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/S3DataSource.class */
public interface S3DataSource {

    /* renamed from: com.amazonaws.services.s3.model.S3DataSource$Utils */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/S3DataSource$Utils.class */
    public enum Utils {
        ;

        public static void cleanupDataSource(S3DataSource s3DataSource, File file, InputStream inputStream, InputStream inputStream2, Log log) {
            if (file != null) {
                IOUtils.release(inputStream2, log);
            }
            s3DataSource.setInputStream(inputStream);
            s3DataSource.setFile(file);
        }
    }

    File getFile();

    InputStream getInputStream();

    void setFile(File file);

    void setInputStream(InputStream inputStream);
}
