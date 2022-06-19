package com.google.android.exoplayer2.text.cea;

import android.util.Log;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/cea/CeaUtil.class */
public final class CeaUtil {
    private static final int COUNTRY_CODE = 181;
    private static final int PAYLOAD_TYPE_CC = 4;
    private static final int PROVIDER_CODE_ATSC = 49;
    private static final int PROVIDER_CODE_DIRECTV = 47;
    private static final String TAG = "CeaUtil";
    private static final int USER_DATA_TYPE_CODE = 3;
    private static final int USER_ID_GA94 = Util.getIntegerCodeForString("GA94");
    private static final int USER_ID_DTG1 = Util.getIntegerCodeForString("DTG1");

    private CeaUtil() {
    }

    public static void consume(long j, ParsableByteArray parsableByteArray, TrackOutput[] trackOutputArr) {
        int i;
        while (parsableByteArray.bytesLeft() > 1) {
            int readNon255TerminatedValue = readNon255TerminatedValue(parsableByteArray);
            int readNon255TerminatedValue2 = readNon255TerminatedValue(parsableByteArray);
            int position = parsableByteArray.getPosition() + readNon255TerminatedValue2;
            if (readNon255TerminatedValue2 == -1 || readNon255TerminatedValue2 > parsableByteArray.bytesLeft()) {
                Log.w(TAG, "Skipping remainder of malformed SEI NAL unit.");
                i = parsableByteArray.limit();
            } else {
                i = position;
                if (readNon255TerminatedValue == 4) {
                    i = position;
                    if (readNon255TerminatedValue2 >= 8) {
                        int readUnsignedByte = parsableByteArray.readUnsignedByte();
                        int readUnsignedShort = parsableByteArray.readUnsignedShort();
                        int readInt = readUnsignedShort == 49 ? parsableByteArray.readInt() : 0;
                        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                        if (readUnsignedShort == 47) {
                            parsableByteArray.skipBytes(1);
                        }
                        boolean z = readUnsignedByte == COUNTRY_CODE && (readUnsignedShort == 49 || readUnsignedShort == 47) && readUnsignedByte2 == 3;
                        boolean z2 = z;
                        if (readUnsignedShort == 49) {
                            z2 = z & (readInt == USER_ID_GA94 || readInt == USER_ID_DTG1);
                        }
                        i = position;
                        if (z2) {
                            int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                            parsableByteArray.skipBytes(1);
                            int i2 = (readUnsignedByte3 & 31) * 3;
                            int position2 = parsableByteArray.getPosition();
                            int length = trackOutputArr.length;
                            int i3 = 0;
                            while (true) {
                                i = position;
                                if (i3 < length) {
                                    TrackOutput trackOutput = trackOutputArr[i3];
                                    parsableByteArray.setPosition(position2);
                                    trackOutput.sampleData(parsableByteArray, i2);
                                    trackOutput.sampleMetadata(j, 1, i2, 0, null);
                                    i3++;
                                }
                            }
                        }
                    }
                }
            }
            parsableByteArray.setPosition(i);
        }
    }

    private static int readNon255TerminatedValue(ParsableByteArray parsableByteArray) {
        int i = 0;
        while (parsableByteArray.bytesLeft() != 0) {
            int readUnsignedByte = parsableByteArray.readUnsignedByte();
            int i2 = i + readUnsignedByte;
            i = i2;
            if (readUnsignedByte != 255) {
                return i2;
            }
        }
        return -1;
    }
}
