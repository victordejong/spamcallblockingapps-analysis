package p459j.p460a.p474c0.p480d.p482e;

import android.content.Context;
import android.drm.DrmConvertedStatus;
import android.drm.DrmManagerClient;
import androidx.media2.session.MediaSessionImplBase;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
/* renamed from: j.a.c0.d.e.c */
/* loaded from: classes2-dex2jar.jar:j/a/c0/d/e/c.class */
public class C11720c {

    /* renamed from: a */
    public DrmManagerClient f26287a;

    /* renamed from: b */
    public int f26288b;

    public C11720c(DrmManagerClient drmManagerClient, int i) {
        this.f26287a = drmManagerClient;
        this.f26288b = i;
    }

    /* renamed from: a */
    public static C11720c m8435a(Context context, String str) {
        DrmManagerClient drmManagerClient;
        DrmManagerClient drmManagerClient2;
        int i = -1;
        if (!(context == null || str == null || str.equals(""))) {
            try {
                try {
                    drmManagerClient2 = new DrmManagerClient(context);
                    try {
                        i = drmManagerClient2.openConvertSession(str);
                        drmManagerClient = drmManagerClient2;
                    } catch (IllegalArgumentException e) {
                        String str2 = "Conversion of Mimetype: " + str + " is not supported.";
                        drmManagerClient = drmManagerClient2;
                    }
                } catch (IllegalArgumentException | IllegalStateException e2) {
                    drmManagerClient = drmManagerClient2;
                }
            } catch (IllegalArgumentException | IllegalStateException e3) {
            }
            if (drmManagerClient == null && i >= 0) {
                return new C11720c(drmManagerClient, i);
            }
        }
        drmManagerClient = null;
        return drmManagerClient == null ? null : null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v21, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r15v24 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r6v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v39 */
    /* JADX WARN: Type inference failed for: r6v40 */
    /* JADX WARN: Type inference failed for: r6v41 */
    /* JADX WARN: Type inference failed for: r6v42 */
    /* renamed from: a */
    public int m8434a(String str) {
        StringBuilder sb;
        DrmManagerClient drmManagerClient = this.f26287a;
        char c = 491;
        int i = 491;
        if (drmManagerClient != null) {
            int i2 = this.f26288b;
            i = 491;
            if (i2 >= 0) {
                i = 491;
                try {
                    DrmConvertedStatus closeConvertSession = drmManagerClient.closeConvertSession(i2);
                    if (closeConvertSession != null && closeConvertSession.statusCode == 1) {
                        RandomAccessFile randomAccessFile = closeConvertSession.convertedData;
                        if (randomAccessFile != 0) {
                            RandomAccessFile randomAccessFile2 = null;
                            RandomAccessFile randomAccessFile3 = null;
                            RandomAccessFile randomAccessFile4 = null;
                            randomAccessFile = null;
                            try {
                                try {
                                    try {
                                        try {
                                            randomAccessFile = 0;
                                            randomAccessFile2 = new RandomAccessFile(str, "rw");
                                        } catch (IllegalStateException e) {
                                            i = 492;
                                            String str2 = "Could not close convertsession. Convertsession: " + this.f26288b;
                                            return i;
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        c = 492;
                                    }
                                } catch (FileNotFoundException e2) {
                                } catch (IOException e3) {
                                } catch (IllegalArgumentException e4) {
                                    randomAccessFile2 = null;
                                } catch (SecurityException e5) {
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                            try {
                                randomAccessFile2.seek(closeConvertSession.offset);
                                randomAccessFile2.write(closeConvertSession.convertedData);
                                try {
                                    randomAccessFile2.close();
                                    i = 200;
                                } catch (IOException e6) {
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("Failed to close File:");
                                    sb2.append(str);
                                    sb2.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
                                    sb = sb2;
                                    sb.toString();
                                    i = 492;
                                    return i;
                                } catch (IllegalStateException e7) {
                                    i = 200;
                                    String str22 = "Could not close convertsession. Convertsession: " + this.f26288b;
                                    return i;
                                }
                            } catch (FileNotFoundException e8) {
                                randomAccessFile4 = randomAccessFile2;
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("File: ");
                                sb3.append(str);
                                sb3.append(" could not be found.");
                                RandomAccessFile randomAccessFile5 = randomAccessFile4;
                                sb3.toString();
                                randomAccessFile = randomAccessFile5;
                                if (randomAccessFile4 != null) {
                                    try {
                                        randomAccessFile4.close();
                                        randomAccessFile = randomAccessFile5;
                                    } catch (IOException e9) {
                                        StringBuilder sb4 = new StringBuilder();
                                        sb4.append("Failed to close File:");
                                        sb4.append(str);
                                        sb4.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
                                        sb = sb4;
                                        sb.toString();
                                        i = 492;
                                        return i;
                                    }
                                }
                                i = 492;
                                return i;
                            } catch (IOException e10) {
                                randomAccessFile3 = randomAccessFile2;
                                StringBuilder sb5 = new StringBuilder();
                                sb5.append("Could not access File: ");
                                sb5.append(str);
                                sb5.append(" .");
                                RandomAccessFile randomAccessFile6 = randomAccessFile3;
                                sb5.toString();
                                randomAccessFile = randomAccessFile6;
                                if (randomAccessFile3 != null) {
                                    try {
                                        randomAccessFile3.close();
                                        randomAccessFile = randomAccessFile6;
                                    } catch (IOException e11) {
                                        StringBuilder sb6 = new StringBuilder();
                                        sb6.append("Failed to close File:");
                                        sb6.append(str);
                                        sb6.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
                                        sb = sb6;
                                        sb.toString();
                                        i = 492;
                                        return i;
                                    }
                                }
                                i = 492;
                                return i;
                            } catch (IllegalArgumentException e12) {
                                if (randomAccessFile2 != null) {
                                    try {
                                        randomAccessFile2.close();
                                    } catch (IOException e13) {
                                        StringBuilder sb7 = new StringBuilder();
                                        sb7.append("Failed to close File:");
                                        sb7.append(str);
                                        sb7.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
                                        sb = sb7;
                                        sb.toString();
                                        i = 492;
                                        return i;
                                    }
                                }
                                i = 492;
                                return i;
                            } catch (SecurityException e14) {
                                StringBuilder sb8 = new StringBuilder();
                                sb8.append("Access to File: ");
                                sb8.append(str);
                                sb8.append(" was denied denied by SecurityManager.");
                                RandomAccessFile randomAccessFile7 = randomAccessFile2;
                                sb8.toString();
                                i = 491;
                                randomAccessFile = randomAccessFile7;
                                if (randomAccessFile2 != null) {
                                    try {
                                        randomAccessFile2.close();
                                        i = 491;
                                        randomAccessFile = randomAccessFile7;
                                    } catch (IOException e15) {
                                        StringBuilder sb9 = new StringBuilder();
                                        sb9.append("Failed to close File:");
                                        sb9.append(str);
                                        sb9.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
                                        sb = sb9;
                                        sb.toString();
                                        i = 492;
                                        return i;
                                    }
                                }
                                return i;
                            } catch (Throwable th3) {
                                th = th3;
                                randomAccessFile = randomAccessFile2;
                                if (randomAccessFile != 0) {
                                    try {
                                        randomAccessFile.close();
                                    } catch (IOException e16) {
                                        String str3 = "Failed to close File:" + str + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM;
                                    }
                                }
                                throw th;
                            }
                        }
                    }
                    i = 406;
                } catch (IllegalStateException e17) {
                }
            }
        }
        return i;
    }

    /* renamed from: a */
    public byte[] m8433a(byte[] bArr, int i) {
        byte[] bArr2;
        DrmConvertedStatus drmConvertedStatus;
        if (bArr != null) {
            try {
                if (i != bArr.length) {
                    byte[] bArr3 = new byte[i];
                    System.arraycopy(bArr, 0, bArr3, 0, i);
                    drmConvertedStatus = this.f26287a.convertData(this.f26288b, bArr3);
                } else {
                    drmConvertedStatus = this.f26287a.convertData(this.f26288b, bArr);
                }
                bArr2 = null;
                if (drmConvertedStatus != null) {
                    bArr2 = null;
                    if (drmConvertedStatus.statusCode == 1) {
                        bArr2 = null;
                        if (drmConvertedStatus.convertedData != null) {
                            bArr2 = drmConvertedStatus.convertedData;
                        }
                    }
                }
            } catch (IllegalArgumentException e) {
                String str = "Buffer with data to convert is illegal. Convertsession: " + this.f26288b;
                bArr2 = null;
            } catch (IllegalStateException e2) {
                String str2 = "Could not convert data. Convertsession: " + this.f26288b;
                bArr2 = null;
            }
            return bArr2;
        }
        throw new IllegalArgumentException("Parameter inBuffer is null");
    }
}
