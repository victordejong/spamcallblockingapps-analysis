package com.callapp.contacts.util.video;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/TargetMedia.class */
public class TargetMedia {

    /* renamed from: a  reason: collision with root package name */
    public File f16324a;

    /* renamed from: b  reason: collision with root package name */
    public List<TargetTrack> f16325b = new ArrayList();

    public TargetMedia(File file, List<MediaTrackFormat> list) {
        this.f16324a = file;
        setTracks(list);
    }

    public int getIncludedTrackCount() {
        int i = 0;
        for (TargetTrack targetTrack : this.f16325b) {
            if (targetTrack.f16327b) {
                i++;
            }
        }
        return i;
    }

    public void setTracks(List<MediaTrackFormat> list) {
        this.f16325b = new ArrayList(list.size());
        for (MediaTrackFormat mediaTrackFormat : list) {
            TargetVideoTrack targetVideoTrack = null;
            if (mediaTrackFormat instanceof VideoTrackFormat) {
                targetVideoTrack = new TargetVideoTrack(mediaTrackFormat.f16319a, true, false, new VideoTrackFormat((VideoTrackFormat) mediaTrackFormat));
            }
            this.f16325b.add(targetVideoTrack);
        }
    }
}
