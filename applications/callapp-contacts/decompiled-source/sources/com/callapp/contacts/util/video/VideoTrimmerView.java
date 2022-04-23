package com.callapp.contacts.util.video;

import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.VideoView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.lb.video_trimmer_library.BaseVideoTrimmerView;
import com.lb.video_trimmer_library.a.c;
import com.lb.video_trimmer_library.b.a;
import com.lb.video_trimmer_library.view.RangeSeekBarView;
import com.lb.video_trimmer_library.view.TimeLineView;
import java.util.Formatter;
import kotlin.jvm.internal.p;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/VideoTrimmerView.class */
public class VideoTrimmerView extends BaseVideoTrimmerView {
    private TextView g;
    private TextView h;
    private TextView i;
    private View j;
    private TimeLineView k;
    private ImageView l;
    private VideoView m;
    private View n;
    private RangeSeekBarView o;
    private TrimmerEvents p;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/VideoTrimmerView$TrimmerEvents.class */
    interface TrimmerEvents {
        void onError(String str);
    }

    public VideoTrimmerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VideoTrimmerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private static String b(int i) {
        long j = i / 1000;
        long j2 = j % 60;
        long j3 = (j / 60) % 60;
        long j4 = j / 3600;
        Formatter formatter = new Formatter();
        return j4 > 0 ? formatter.format("%d:%02d:%02d", Long.valueOf(j4), Long.valueOf(j3), Long.valueOf(j2)).toString() : formatter.format("%02d:%02d", Long.valueOf(j3), Long.valueOf(j2)).toString();
    }

    @Override // com.lb.video_trimmer_library.BaseVideoTrimmerView
    public final void a() {
        View inflate = LayoutInflater.from(CallAppApplication.get()).inflate(2131559128, (ViewGroup) this, true);
        this.k = (TimeLineView) inflate.findViewById(2131364119);
        this.j = inflate.findViewById(2131364123);
        this.l = (ImageView) inflate.findViewById(2131363520);
        this.m = (VideoView) inflate.findViewById(2131364514);
        this.n = inflate.findViewById(2131364515);
        this.o = (RangeSeekBarView) inflate.findViewById(2131363610);
        this.i = (TextView) inflate.findViewById(2131364508);
        this.g = (TextView) inflate.findViewById(2131364219);
        this.h = (TextView) inflate.findViewById(2131363521);
        ((TextView) inflate.findViewById(2131362620)).setText(Activities.getString(2131886784));
        findViewById(2131362621).setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.util.video.VideoTrimmerView.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                try {
                    VideoTrimmerView videoTrimmerView = VideoTrimmerView.this;
                    videoTrimmerView.b();
                    MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                    mediaMetadataRetriever.setDataSource(videoTrimmerView.getContext(), videoTrimmerView.f33608a);
                    long parseLong = Long.parseLong(mediaMetadataRetriever.extractMetadata(9));
                    if (videoTrimmerView.f33610c < 1000) {
                        if (parseLong - videoTrimmerView.e > 1000 - videoTrimmerView.f33610c) {
                            videoTrimmerView.e += 1000 - videoTrimmerView.f33610c;
                        } else if (videoTrimmerView.f33611d > 1000 - videoTrimmerView.f33610c) {
                            videoTrimmerView.f33611d -= 1000 - videoTrimmerView.f33610c;
                        }
                    }
                    if (videoTrimmerView.f33609b != null) {
                        c cVar = videoTrimmerView.f33609b;
                        if (cVar == null) {
                            p.a();
                        }
                        cVar.b();
                    }
                    a.f33621a.a(new BaseVideoTrimmerView.c(null, 0L, null));
                } catch (Exception e) {
                    CLog.a(VideoTrimmerView.class, "failed to trim the video " + e.getMessage());
                    if (VideoTrimmerView.this.p != null) {
                        VideoTrimmerView.this.p.onError(e.getMessage());
                    }
                }
            }
        });
    }

    @Override // com.lb.video_trimmer_library.BaseVideoTrimmerView
    public final void a(int i) {
        String string = Activities.getString(2131887674);
        TextView textView = this.h;
        textView.setText(b(i) + StringUtils.SPACE + string);
    }

    @Override // com.lb.video_trimmer_library.BaseVideoTrimmerView
    public final void a(int i, int i2) {
        String string = Activities.getString(2131887674);
        TextView textView = this.g;
        textView.setText(b(i2 - i) + StringUtils.SPACE + string);
    }

    @Override // com.lb.video_trimmer_library.BaseVideoTrimmerView
    public final void a(long j) {
        this.i.setText(android.text.format.Formatter.formatShortFileSize(CallAppApplication.get(), j));
    }

    @Override // com.lb.video_trimmer_library.BaseVideoTrimmerView
    public View getPlayView() {
        return this.l;
    }

    @Override // com.lb.video_trimmer_library.BaseVideoTrimmerView
    public RangeSeekBarView getRangeSeekBarView() {
        return this.o;
    }

    @Override // com.lb.video_trimmer_library.BaseVideoTrimmerView
    public View getTimeInfoContainer() {
        return this.j;
    }

    @Override // com.lb.video_trimmer_library.BaseVideoTrimmerView
    public TimeLineView getTimeLineView() {
        return this.k;
    }

    @Override // com.lb.video_trimmer_library.BaseVideoTrimmerView
    public VideoView getVideoView() {
        return this.m;
    }

    @Override // com.lb.video_trimmer_library.BaseVideoTrimmerView
    public View getVideoViewContainer() {
        return this.n;
    }

    public void setTrimmerEvents(TrimmerEvents trimmerEvents) {
        this.p = trimmerEvents;
    }
}
