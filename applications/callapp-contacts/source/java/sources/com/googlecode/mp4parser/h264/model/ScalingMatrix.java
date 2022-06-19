package com.googlecode.mp4parser.h264.model;

import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/h264/model/ScalingMatrix.class */
public class ScalingMatrix {
    public ScalingList[] ScalingList4x4;
    public ScalingList[] ScalingList8x8;

    public String toString() {
        StringBuilder sb = new StringBuilder("ScalingMatrix{ScalingList4x4=");
        ScalingList[] scalingListArr = this.ScalingList4x4;
        sb.append(scalingListArr == null ? null : Arrays.asList(scalingListArr));
        sb.append("\n, ScalingList8x8=");
        ScalingList[] scalingListArr2 = this.ScalingList8x8;
        sb.append(scalingListArr2 == null ? null : Arrays.asList(scalingListArr2));
        sb.append("\n}");
        return sb.toString();
    }
}
