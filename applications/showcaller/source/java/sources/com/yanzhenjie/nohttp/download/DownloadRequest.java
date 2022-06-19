package com.yanzhenjie.nohttp.download;

import com.yanzhenjie.nohttp.BasicRequest;
import com.yanzhenjie.nohttp.RequestMethod;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/download/DownloadRequest.class */
public class DownloadRequest extends BasicRequest<DownloadRequest> {
    public static final int STATUS_FINISH = 2;
    public static final int STATUS_RESTART = 0;
    public static final int STATUS_RESUME = 1;
    private final boolean isDeleteOld;
    private final boolean isRange;
    private final String mFileDir;
    private final String mFileName;

    public DownloadRequest(String str, RequestMethod requestMethod, String str2, String str3, boolean z, boolean z2) {
        super(str, requestMethod);
        this.mFileDir = str2;
        this.mFileName = str3;
        this.isRange = z;
        this.isDeleteOld = z2;
    }

    public DownloadRequest(String str, RequestMethod requestMethod, String str2, boolean z, boolean z2) {
        this(str, requestMethod, str2, null, z, z2);
    }

    public int checkBeforeStatus() {
        if (this.isRange) {
            try {
                if (new File(this.mFileDir, this.mFileName).exists() && !this.isDeleteOld) {
                    return 2;
                }
                String str = this.mFileDir;
                StringBuilder sb = new StringBuilder();
                sb.append(this.mFileName);
                sb.append(".nohttp");
                return new File(str, sb.toString()).exists() ? 1 : 0;
            } catch (Exception e) {
                return 0;
            }
        }
        return 0;
    }

    public String getFileDir() {
        return this.mFileDir;
    }

    public String getFileName() {
        return this.mFileName;
    }

    public boolean isDeleteOld() {
        return this.isDeleteOld;
    }

    public boolean isRange() {
        return this.isRange;
    }
}
