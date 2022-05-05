package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.flurry.sdk.ie */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ie.class */
public class C3267ie {

    /* renamed from: b */
    public static final String f5484b = "ie";

    /* renamed from: a */
    public byte[] f5485a;

    /* renamed from: com.flurry.sdk.ie$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ie$a.class */
    public static final class C3268a implements AbstractC3417kl<C3267ie> {
        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ C3267ie mo32526a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.ie.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            C3267ie ieVar = new C3267ie((byte) 0);
            int readUnsignedShort = dataInputStream.readUnsignedShort();
            if (readUnsignedShort > 0) {
                byte[] bArr = new byte[readUnsignedShort];
                dataInputStream.readFully(bArr);
                ieVar.f5485a = bArr;
            }
            return ieVar;
        }

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ void mo32525a(OutputStream outputStream, C3267ie ieVar) throws IOException {
            C3267ie ieVar2 = ieVar;
            if (outputStream != null && ieVar2 != null) {
                DataOutputStream dataOutputStream = new DataOutputStream(this, outputStream) { // from class: com.flurry.sdk.ie.a.1
                    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                    public final void close() {
                    }
                };
                int i = 0;
                byte[] bArr = ieVar2.f5485a;
                if (bArr != null) {
                    i = bArr.length;
                }
                dataOutputStream.writeShort(i);
                if (i > 0) {
                    dataOutputStream.write(ieVar2.f5485a);
                }
                dataOutputStream.flush();
            }
        }
    }

    public C3267ie() {
    }

    public /* synthetic */ C3267ie(byte b) {
        this();
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x042e A[Catch: all -> 0x04a9, IOException -> 0x04ad, TRY_LEAVE, TryCatch #5 {IOException -> 0x04ad, all -> 0x04a9, blocks: (B:11:0x002c, B:13:0x0070, B:14:0x0079, B:16:0x0081, B:18:0x0092, B:19:0x00a4, B:21:0x00ab, B:23:0x00b4, B:24:0x00c6, B:26:0x00cd, B:28:0x00d7, B:29:0x00e0, B:31:0x00fc, B:33:0x0104, B:34:0x012e, B:36:0x0139, B:37:0x0142, B:39:0x015c, B:41:0x0164, B:42:0x0196, B:45:0x01cd, B:50:0x0215, B:52:0x024a, B:53:0x0253, B:55:0x0266, B:57:0x0270, B:58:0x0279, B:60:0x0293, B:62:0x029b, B:63:0x02ca, B:65:0x02d5, B:66:0x02de, B:68:0x02f5, B:70:0x02fd, B:71:0x0312, B:73:0x0324, B:76:0x0336, B:78:0x0340, B:81:0x035a, B:85:0x0373, B:89:0x038d, B:90:0x03a6, B:92:0x03d9, B:94:0x03e1, B:96:0x03f1, B:99:0x03ff, B:101:0x040c, B:102:0x0422, B:104:0x042e, B:105:0x0437, B:107:0x0447, B:111:0x0462, B:112:0x0477, B:113:0x0489, B:115:0x049b), top: B:138:0x002c, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0437 A[Catch: all -> 0x04a9, IOException -> 0x04ad, TRY_ENTER, TryCatch #5 {IOException -> 0x04ad, all -> 0x04a9, blocks: (B:11:0x002c, B:13:0x0070, B:14:0x0079, B:16:0x0081, B:18:0x0092, B:19:0x00a4, B:21:0x00ab, B:23:0x00b4, B:24:0x00c6, B:26:0x00cd, B:28:0x00d7, B:29:0x00e0, B:31:0x00fc, B:33:0x0104, B:34:0x012e, B:36:0x0139, B:37:0x0142, B:39:0x015c, B:41:0x0164, B:42:0x0196, B:45:0x01cd, B:50:0x0215, B:52:0x024a, B:53:0x0253, B:55:0x0266, B:57:0x0270, B:58:0x0279, B:60:0x0293, B:62:0x029b, B:63:0x02ca, B:65:0x02d5, B:66:0x02de, B:68:0x02f5, B:70:0x02fd, B:71:0x0312, B:73:0x0324, B:76:0x0336, B:78:0x0340, B:81:0x035a, B:85:0x0373, B:89:0x038d, B:90:0x03a6, B:92:0x03d9, B:94:0x03e1, B:96:0x03f1, B:99:0x03ff, B:101:0x040c, B:102:0x0422, B:104:0x042e, B:105:0x0437, B:107:0x0447, B:111:0x0462, B:112:0x0477, B:113:0x0489, B:115:0x049b), top: B:138:0x002c, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x024a A[Catch: all -> 0x04a9, IOException -> 0x04ad, TRY_LEAVE, TryCatch #5 {IOException -> 0x04ad, all -> 0x04a9, blocks: (B:11:0x002c, B:13:0x0070, B:14:0x0079, B:16:0x0081, B:18:0x0092, B:19:0x00a4, B:21:0x00ab, B:23:0x00b4, B:24:0x00c6, B:26:0x00cd, B:28:0x00d7, B:29:0x00e0, B:31:0x00fc, B:33:0x0104, B:34:0x012e, B:36:0x0139, B:37:0x0142, B:39:0x015c, B:41:0x0164, B:42:0x0196, B:45:0x01cd, B:50:0x0215, B:52:0x024a, B:53:0x0253, B:55:0x0266, B:57:0x0270, B:58:0x0279, B:60:0x0293, B:62:0x029b, B:63:0x02ca, B:65:0x02d5, B:66:0x02de, B:68:0x02f5, B:70:0x02fd, B:71:0x0312, B:73:0x0324, B:76:0x0336, B:78:0x0340, B:81:0x035a, B:85:0x0373, B:89:0x038d, B:90:0x03a6, B:92:0x03d9, B:94:0x03e1, B:96:0x03f1, B:99:0x03ff, B:101:0x040c, B:102:0x0422, B:104:0x042e, B:105:0x0437, B:107:0x0447, B:111:0x0462, B:112:0x0477, B:113:0x0489, B:115:0x049b), top: B:138:0x002c, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0253 A[Catch: all -> 0x04a9, IOException -> 0x04ad, TRY_ENTER, TryCatch #5 {IOException -> 0x04ad, all -> 0x04a9, blocks: (B:11:0x002c, B:13:0x0070, B:14:0x0079, B:16:0x0081, B:18:0x0092, B:19:0x00a4, B:21:0x00ab, B:23:0x00b4, B:24:0x00c6, B:26:0x00cd, B:28:0x00d7, B:29:0x00e0, B:31:0x00fc, B:33:0x0104, B:34:0x012e, B:36:0x0139, B:37:0x0142, B:39:0x015c, B:41:0x0164, B:42:0x0196, B:45:0x01cd, B:50:0x0215, B:52:0x024a, B:53:0x0253, B:55:0x0266, B:57:0x0270, B:58:0x0279, B:60:0x0293, B:62:0x029b, B:63:0x02ca, B:65:0x02d5, B:66:0x02de, B:68:0x02f5, B:70:0x02fd, B:71:0x0312, B:73:0x0324, B:76:0x0336, B:78:0x0340, B:81:0x035a, B:85:0x0373, B:89:0x038d, B:90:0x03a6, B:92:0x03d9, B:94:0x03e1, B:96:0x03f1, B:99:0x03ff, B:101:0x040c, B:102:0x0422, B:104:0x042e, B:105:0x0437, B:107:0x0447, B:111:0x0462, B:112:0x0477, B:113:0x0489, B:115:0x049b), top: B:138:0x002c, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0270 A[Catch: all -> 0x04a9, IOException -> 0x04ad, TRY_ENTER, TRY_LEAVE, TryCatch #5 {IOException -> 0x04ad, all -> 0x04a9, blocks: (B:11:0x002c, B:13:0x0070, B:14:0x0079, B:16:0x0081, B:18:0x0092, B:19:0x00a4, B:21:0x00ab, B:23:0x00b4, B:24:0x00c6, B:26:0x00cd, B:28:0x00d7, B:29:0x00e0, B:31:0x00fc, B:33:0x0104, B:34:0x012e, B:36:0x0139, B:37:0x0142, B:39:0x015c, B:41:0x0164, B:42:0x0196, B:45:0x01cd, B:50:0x0215, B:52:0x024a, B:53:0x0253, B:55:0x0266, B:57:0x0270, B:58:0x0279, B:60:0x0293, B:62:0x029b, B:63:0x02ca, B:65:0x02d5, B:66:0x02de, B:68:0x02f5, B:70:0x02fd, B:71:0x0312, B:73:0x0324, B:76:0x0336, B:78:0x0340, B:81:0x035a, B:85:0x0373, B:89:0x038d, B:90:0x03a6, B:92:0x03d9, B:94:0x03e1, B:96:0x03f1, B:99:0x03ff, B:101:0x040c, B:102:0x0422, B:104:0x042e, B:105:0x0437, B:107:0x0447, B:111:0x0462, B:112:0x0477, B:113:0x0489, B:115:0x049b), top: B:138:0x002c, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0279 A[Catch: all -> 0x04a9, IOException -> 0x04ad, TRY_ENTER, TryCatch #5 {IOException -> 0x04ad, all -> 0x04a9, blocks: (B:11:0x002c, B:13:0x0070, B:14:0x0079, B:16:0x0081, B:18:0x0092, B:19:0x00a4, B:21:0x00ab, B:23:0x00b4, B:24:0x00c6, B:26:0x00cd, B:28:0x00d7, B:29:0x00e0, B:31:0x00fc, B:33:0x0104, B:34:0x012e, B:36:0x0139, B:37:0x0142, B:39:0x015c, B:41:0x0164, B:42:0x0196, B:45:0x01cd, B:50:0x0215, B:52:0x024a, B:53:0x0253, B:55:0x0266, B:57:0x0270, B:58:0x0279, B:60:0x0293, B:62:0x029b, B:63:0x02ca, B:65:0x02d5, B:66:0x02de, B:68:0x02f5, B:70:0x02fd, B:71:0x0312, B:73:0x0324, B:76:0x0336, B:78:0x0340, B:81:0x035a, B:85:0x0373, B:89:0x038d, B:90:0x03a6, B:92:0x03d9, B:94:0x03e1, B:96:0x03f1, B:99:0x03ff, B:101:0x040c, B:102:0x0422, B:104:0x042e, B:105:0x0437, B:107:0x0447, B:111:0x0462, B:112:0x0477, B:113:0x0489, B:115:0x049b), top: B:138:0x002c, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x02d5 A[Catch: all -> 0x04a9, IOException -> 0x04ad, TRY_ENTER, TRY_LEAVE, TryCatch #5 {IOException -> 0x04ad, all -> 0x04a9, blocks: (B:11:0x002c, B:13:0x0070, B:14:0x0079, B:16:0x0081, B:18:0x0092, B:19:0x00a4, B:21:0x00ab, B:23:0x00b4, B:24:0x00c6, B:26:0x00cd, B:28:0x00d7, B:29:0x00e0, B:31:0x00fc, B:33:0x0104, B:34:0x012e, B:36:0x0139, B:37:0x0142, B:39:0x015c, B:41:0x0164, B:42:0x0196, B:45:0x01cd, B:50:0x0215, B:52:0x024a, B:53:0x0253, B:55:0x0266, B:57:0x0270, B:58:0x0279, B:60:0x0293, B:62:0x029b, B:63:0x02ca, B:65:0x02d5, B:66:0x02de, B:68:0x02f5, B:70:0x02fd, B:71:0x0312, B:73:0x0324, B:76:0x0336, B:78:0x0340, B:81:0x035a, B:85:0x0373, B:89:0x038d, B:90:0x03a6, B:92:0x03d9, B:94:0x03e1, B:96:0x03f1, B:99:0x03ff, B:101:0x040c, B:102:0x0422, B:104:0x042e, B:105:0x0437, B:107:0x0447, B:111:0x0462, B:112:0x0477, B:113:0x0489, B:115:0x049b), top: B:138:0x002c, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x02de A[Catch: all -> 0x04a9, IOException -> 0x04ad, TRY_ENTER, TryCatch #5 {IOException -> 0x04ad, all -> 0x04a9, blocks: (B:11:0x002c, B:13:0x0070, B:14:0x0079, B:16:0x0081, B:18:0x0092, B:19:0x00a4, B:21:0x00ab, B:23:0x00b4, B:24:0x00c6, B:26:0x00cd, B:28:0x00d7, B:29:0x00e0, B:31:0x00fc, B:33:0x0104, B:34:0x012e, B:36:0x0139, B:37:0x0142, B:39:0x015c, B:41:0x0164, B:42:0x0196, B:45:0x01cd, B:50:0x0215, B:52:0x024a, B:53:0x0253, B:55:0x0266, B:57:0x0270, B:58:0x0279, B:60:0x0293, B:62:0x029b, B:63:0x02ca, B:65:0x02d5, B:66:0x02de, B:68:0x02f5, B:70:0x02fd, B:71:0x0312, B:73:0x0324, B:76:0x0336, B:78:0x0340, B:81:0x035a, B:85:0x0373, B:89:0x038d, B:90:0x03a6, B:92:0x03d9, B:94:0x03e1, B:96:0x03f1, B:99:0x03ff, B:101:0x040c, B:102:0x0422, B:104:0x042e, B:105:0x0437, B:107:0x0447, B:111:0x0462, B:112:0x0477, B:113:0x0489, B:115:0x049b), top: B:138:0x002c, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0324 A[Catch: all -> 0x04a9, IOException -> 0x04ad, TRY_ENTER, TRY_LEAVE, TryCatch #5 {IOException -> 0x04ad, all -> 0x04a9, blocks: (B:11:0x002c, B:13:0x0070, B:14:0x0079, B:16:0x0081, B:18:0x0092, B:19:0x00a4, B:21:0x00ab, B:23:0x00b4, B:24:0x00c6, B:26:0x00cd, B:28:0x00d7, B:29:0x00e0, B:31:0x00fc, B:33:0x0104, B:34:0x012e, B:36:0x0139, B:37:0x0142, B:39:0x015c, B:41:0x0164, B:42:0x0196, B:45:0x01cd, B:50:0x0215, B:52:0x024a, B:53:0x0253, B:55:0x0266, B:57:0x0270, B:58:0x0279, B:60:0x0293, B:62:0x029b, B:63:0x02ca, B:65:0x02d5, B:66:0x02de, B:68:0x02f5, B:70:0x02fd, B:71:0x0312, B:73:0x0324, B:76:0x0336, B:78:0x0340, B:81:0x035a, B:85:0x0373, B:89:0x038d, B:90:0x03a6, B:92:0x03d9, B:94:0x03e1, B:96:0x03f1, B:99:0x03ff, B:101:0x040c, B:102:0x0422, B:104:0x042e, B:105:0x0437, B:107:0x0447, B:111:0x0462, B:112:0x0477, B:113:0x0489, B:115:0x049b), top: B:138:0x002c, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x038d A[Catch: all -> 0x04a9, IOException -> 0x04ad, LOOP:5: B:87:0x0386->B:89:0x038d, LOOP_END, TRY_ENTER, TRY_LEAVE, TryCatch #5 {IOException -> 0x04ad, all -> 0x04a9, blocks: (B:11:0x002c, B:13:0x0070, B:14:0x0079, B:16:0x0081, B:18:0x0092, B:19:0x00a4, B:21:0x00ab, B:23:0x00b4, B:24:0x00c6, B:26:0x00cd, B:28:0x00d7, B:29:0x00e0, B:31:0x00fc, B:33:0x0104, B:34:0x012e, B:36:0x0139, B:37:0x0142, B:39:0x015c, B:41:0x0164, B:42:0x0196, B:45:0x01cd, B:50:0x0215, B:52:0x024a, B:53:0x0253, B:55:0x0266, B:57:0x0270, B:58:0x0279, B:60:0x0293, B:62:0x029b, B:63:0x02ca, B:65:0x02d5, B:66:0x02de, B:68:0x02f5, B:70:0x02fd, B:71:0x0312, B:73:0x0324, B:76:0x0336, B:78:0x0340, B:81:0x035a, B:85:0x0373, B:89:0x038d, B:90:0x03a6, B:92:0x03d9, B:94:0x03e1, B:96:0x03f1, B:99:0x03ff, B:101:0x040c, B:102:0x0422, B:104:0x042e, B:105:0x0437, B:107:0x0447, B:111:0x0462, B:112:0x0477, B:113:0x0489, B:115:0x049b), top: B:138:0x002c, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x03e1 A[Catch: all -> 0x04a9, IOException -> 0x04ad, TryCatch #5 {IOException -> 0x04ad, all -> 0x04a9, blocks: (B:11:0x002c, B:13:0x0070, B:14:0x0079, B:16:0x0081, B:18:0x0092, B:19:0x00a4, B:21:0x00ab, B:23:0x00b4, B:24:0x00c6, B:26:0x00cd, B:28:0x00d7, B:29:0x00e0, B:31:0x00fc, B:33:0x0104, B:34:0x012e, B:36:0x0139, B:37:0x0142, B:39:0x015c, B:41:0x0164, B:42:0x0196, B:45:0x01cd, B:50:0x0215, B:52:0x024a, B:53:0x0253, B:55:0x0266, B:57:0x0270, B:58:0x0279, B:60:0x0293, B:62:0x029b, B:63:0x02ca, B:65:0x02d5, B:66:0x02de, B:68:0x02f5, B:70:0x02fd, B:71:0x0312, B:73:0x0324, B:76:0x0336, B:78:0x0340, B:81:0x035a, B:85:0x0373, B:89:0x038d, B:90:0x03a6, B:92:0x03d9, B:94:0x03e1, B:96:0x03f1, B:99:0x03ff, B:101:0x040c, B:102:0x0422, B:104:0x042e, B:105:0x0437, B:107:0x0447, B:111:0x0462, B:112:0x0477, B:113:0x0489, B:115:0x049b), top: B:138:0x002c, inners: #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C3267ie(com.flurry.sdk.C3271if r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3267ie.<init>(com.flurry.sdk.if):void");
    }

    public C3267ie(byte[] bArr) {
        this.f5485a = bArr;
    }
}
