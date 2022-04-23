package com.googlecode.mp4parser.h264.model;

import com.googlecode.mp4parser.h264.a.b;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/h264/model/ScalingList.class */
public class ScalingList {
    public int[] scalingList;
    public boolean useDefaultScalingMatrixFlag;

    public static ScalingList read(b bVar, int i) throws IOException {
        ScalingList scalingList = new ScalingList();
        scalingList.scalingList = new int[i];
        int i2 = 8;
        int i3 = 8;
        int i4 = 0;
        while (i4 < i) {
            int i5 = i2;
            if (i2 != 0) {
                i5 = ((bVar.b("deltaScale") + i3) + PropertyFlags.INDEX_PARTIAL_SKIP_NULL) % PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
                scalingList.useDefaultScalingMatrixFlag = i4 == 0 && i5 == 0;
            }
            int[] iArr = scalingList.scalingList;
            if (i5 != 0) {
                i3 = i5;
            }
            iArr[i4] = i3;
            i3 = iArr[i4];
            i4++;
            i2 = i5;
        }
        return scalingList;
    }

    public String toString() {
        return "ScalingList{scalingList=" + this.scalingList + ", useDefaultScalingMatrixFlag=" + this.useDefaultScalingMatrixFlag + '}';
    }

    public void write(com.googlecode.mp4parser.h264.b.b bVar) throws IOException {
        int i = 0;
        if (this.useDefaultScalingMatrixFlag) {
            bVar.b(0, "SPS: ");
            return;
        }
        int i2 = 8;
        while (true) {
            int[] iArr = this.scalingList;
            if (i < iArr.length) {
                bVar.b((iArr[i] - i2) - PropertyFlags.INDEX_PARTIAL_SKIP_NULL, "SPS: ");
                i2 = this.scalingList[i];
                i++;
            } else {
                return;
            }
        }
    }
}
