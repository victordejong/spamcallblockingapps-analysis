package com.callapp.contacts.util.video;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/VideoTrackFormat.class */
public class VideoTrackFormat extends MediaTrackFormat {

    /* renamed from: c  reason: collision with root package name */
    public int f16346c;

    /* renamed from: d  reason: collision with root package name */
    public int f16347d;
    public int e;
    public int f;
    public int g;
    public long h;
    public int i;

    public VideoTrackFormat(int i, String str) {
        super(i, str);
    }

    public VideoTrackFormat(VideoTrackFormat videoTrackFormat) {
        super(videoTrackFormat);
        this.f16346c = videoTrackFormat.f16346c;
        this.f16347d = videoTrackFormat.f16347d;
        this.e = videoTrackFormat.e;
        this.f = videoTrackFormat.f;
        this.g = videoTrackFormat.g;
        this.h = videoTrackFormat.h;
        this.i = videoTrackFormat.i;
    }
}
