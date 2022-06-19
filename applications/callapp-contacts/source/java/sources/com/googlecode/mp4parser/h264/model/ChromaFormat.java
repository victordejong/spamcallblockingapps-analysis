package com.googlecode.mp4parser.h264.model;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/h264/model/ChromaFormat.class */
public class ChromaFormat {
    public static ChromaFormat MONOCHROME = new ChromaFormat(0, 0, 0);
    public static ChromaFormat YUV_420 = new ChromaFormat(1, 2, 2);
    public static ChromaFormat YUV_422 = new ChromaFormat(2, 2, 1);
    public static ChromaFormat YUV_444 = new ChromaFormat(3, 1, 1);

    /* renamed from: id */
    private int f57579id;
    private int subHeight;
    private int subWidth;

    public ChromaFormat(int i, int i2, int i3) {
        this.f57579id = i;
        this.subWidth = i2;
        this.subHeight = i3;
    }

    public static ChromaFormat fromId(int i) {
        ChromaFormat chromaFormat = MONOCHROME;
        if (i == chromaFormat.f57579id) {
            return chromaFormat;
        }
        ChromaFormat chromaFormat2 = YUV_420;
        if (i == chromaFormat2.f57579id) {
            return chromaFormat2;
        }
        ChromaFormat chromaFormat3 = YUV_422;
        if (i == chromaFormat3.f57579id) {
            return chromaFormat3;
        }
        ChromaFormat chromaFormat4 = YUV_444;
        if (i != chromaFormat4.f57579id) {
            return null;
        }
        return chromaFormat4;
    }

    public int getId() {
        return this.f57579id;
    }

    public int getSubHeight() {
        return this.subHeight;
    }

    public int getSubWidth() {
        return this.subWidth;
    }

    public String toString() {
        return "ChromaFormat{\nid=" + this.f57579id + ",\n subWidth=" + this.subWidth + ",\n subHeight=" + this.subHeight + '}';
    }
}
