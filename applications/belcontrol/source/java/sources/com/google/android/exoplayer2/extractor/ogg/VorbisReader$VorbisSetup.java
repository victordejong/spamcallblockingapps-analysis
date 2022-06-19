package com.google.android.exoplayer2.extractor.ogg;

import com.google.android.exoplayer2.extractor.ogg.VorbisUtil;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup.class */
public final class VorbisReader$VorbisSetup {
    public final VorbisUtil.CommentHeader commentHeader;
    public final int iLogModes;
    public final VorbisUtil.VorbisIdHeader idHeader;
    public final VorbisUtil.Mode[] modes;
    public final byte[] setupHeaderData;

    public VorbisReader$VorbisSetup(VorbisUtil.VorbisIdHeader vorbisIdHeader, VorbisUtil.CommentHeader commentHeader, byte[] bArr, VorbisUtil.Mode[] modeArr, int i) {
        this.idHeader = vorbisIdHeader;
        this.commentHeader = commentHeader;
        this.setupHeaderData = bArr;
        this.modes = modeArr;
        this.iLogModes = i;
    }
}
