package com.privacystar.core.data.offender;

import android.support.p001v4.media.session.PlaybackStateCompat;
import com.privacystar.core.data.offender.PhoneRecord;
import java.io.FileInputStream;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/offender/BlockUtility.class */
public class BlockUtility {
    private static final char BitDelta3 = 3;
    private static final char BitShare18Bits = 1;
    private static final char BitShare26Bits = 2;
    private static final char BitShare2Bits = 0;
    private static final int IsHotlistFlag = 4096;
    private static final int MinimumSizeForOneBitShareEntry = 8;
    private static final int PageSize = 4096;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/offender/BlockUtility$SearchParameters.class */
    public class SearchParameters {
        long maxNumber;
        long minNumber;

        private SearchParameters() {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.privacystar.core.data.offender.PhoneRecord findInBlock(byte[] r6, long r7) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.offender.BlockUtility.findInBlock(byte[], long):com.privacystar.core.data.offender.PhoneRecord");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x005d, code lost:
        if (r0 == 2) goto L_0x0060;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2, types: [long] */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.privacystar.core.data.offender.PhoneRecord findInRegion(com.privacystar.core.data.offender.BlockUtility.SearchParameters r7, byte[] r8, int r9, long r10) {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.offender.BlockUtility.findInRegion(com.privacystar.core.data.offender.BlockUtility$SearchParameters, byte[], int, long):com.privacystar.core.data.offender.PhoneRecord");
    }

    public static PhoneRecord findRecord(FileInputStream fileInputStream, long j) throws IOException {
        int i;
        boolean z;
        byte[] bArr = new byte[4096];
        fileInputStream.getChannel().position(0L);
        int read = fileInputStream.read(bArr);
        if (read != 4096) {
            return null;
        }
        int i2 = (int) (j >>> 3);
        int i3 = 4;
        int i4 = -1;
        int i5 = -1;
        while (true) {
            boolean z2 = false;
            i = i5;
            z = false;
            if (i3 >= read) {
                break;
            }
            int i6 = BinaryFormatter.getInt(bArr, i3, 0, 31);
            if (i6 < i4) {
                i = i5;
                z = false;
                if (i5 < 0) {
                    return null;
                }
            } else if (i2 < i6) {
                i = i5;
                z = false;
                break;
            } else if (i2 == i6) {
                if (BinaryFormatter.getInt(bArr, i3, 31, 1) != 0) {
                    z2 = true;
                }
                i = i5;
                z = z2;
                if (!z2) {
                    i = i5 + 1;
                    z = z2;
                }
            } else {
                i3 += 4;
                i5++;
                i4 = i6;
            }
        }
        PhoneRecord phoneRecord = null;
        if (i >= 0) {
            phoneRecord = null;
            if (i < 1024) {
                fileInputStream.getChannel().position((i + 1) * PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
                if (fileInputStream.read(bArr) != 4096) {
                    return null;
                }
                phoneRecord = findInBlock(bArr, j);
                if (phoneRecord == null && z) {
                    fileInputStream.getChannel().position((i + 2) * PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
                    if (fileInputStream.read(bArr) != 4096) {
                        return null;
                    }
                    phoneRecord = findInBlock(bArr, j);
                }
            }
        }
        return phoneRecord;
    }

    private static void setRecordMetadata(PhoneRecord phoneRecord, char c) {
        int unsigned = BinaryFormatter.unsigned(c);
        phoneRecord.recordType = PhoneRecord.PhoneRecordType.getById(unsigned >>> 13);
        phoneRecord.isHotlist = (unsigned & 4096) != 0;
    }

    private static void setRecordNumberFromCanonicalForm(PhoneRecord phoneRecord, long j) {
        phoneRecord.phoneNumber = j;
    }
}
