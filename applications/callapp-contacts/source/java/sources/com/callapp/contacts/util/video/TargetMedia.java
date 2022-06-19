package com.callapp.contacts.util.video;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/TargetMedia.class */
public class TargetMedia {

    /* renamed from: a */
    public File f28436a;

    /* renamed from: b */
    public List<TargetTrack> f28437b = new ArrayList();

    public TargetMedia(File file, List<MediaTrackFormat> list) {
        this.f28436a = file;
        setTracks(list);
    }

    public int getIncludedTrackCount() {
        int i = 0;
        for (TargetTrack targetTrack : this.f28437b) {
            if (targetTrack.f28439b) {
                i++;
            }
        }
        return i;
    }

    public void setTracks(List<MediaTrackFormat> list) {
        this.f28437b = new ArrayList(list.size());
        for (MediaTrackFormat mediaTrackFormat : list) {
            TargetVideoTrack targetVideoTrack = null;
            if (mediaTrackFormat instanceof VideoTrackFormat) {
                targetVideoTrack = new TargetVideoTrack(mediaTrackFormat.f28431a, true, false, new VideoTrackFormat((VideoTrackFormat) mediaTrackFormat));
            }
            this.f28437b.add(targetVideoTrack);
        }
    }
}
