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
import com.p456lb.video_trimmer_library.BaseVideoTrimmerView;
import com.p456lb.video_trimmer_library.p457a.AbstractC16595c;
import com.p456lb.video_trimmer_library.p458b.C16596a;
import com.p456lb.video_trimmer_library.view.RangeSeekBarView;
import com.p456lb.video_trimmer_library.view.TimeLineView;
import java.util.Formatter;
import kotlin.jvm.internal.C18524p;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/VideoTrimmerView.class */
public class VideoTrimmerView extends BaseVideoTrimmerView {

    /* renamed from: g */
    private TextView f28472g;

    /* renamed from: h */
    private TextView f28473h;

    /* renamed from: i */
    private TextView f28474i;

    /* renamed from: j */
    private View f28475j;

    /* renamed from: k */
    private TimeLineView f28476k;

    /* renamed from: l */
    private ImageView f28477l;

    /* renamed from: m */
    private VideoView f28478m;

    /* renamed from: n */
    private View f28479n;

    /* renamed from: o */
    private RangeSeekBarView f28480o;

    /* renamed from: p */
    private TrimmerEvents f28481p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/VideoTrimmerView$TrimmerEvents.class */
    public interface TrimmerEvents {
        void onError(String str);
    }

    public VideoTrimmerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VideoTrimmerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: b */
    private static String m26886b(int i) {
        long j = i / 1000;
        long j2 = j % 60;
        long j3 = (j / 60) % 60;
        long j4 = j / 3600;
        Formatter formatter = new Formatter();
        return j4 > 0 ? formatter.format("%d:%02d:%02d", Long.valueOf(j4), Long.valueOf(j3), Long.valueOf(j2)).toString() : formatter.format("%02d:%02d", Long.valueOf(j3), Long.valueOf(j2)).toString();
    }

    @Override // com.p456lb.video_trimmer_library.BaseVideoTrimmerView
    /* renamed from: a */
    public final void mo6960a() {
        View inflate = LayoutInflater.from(CallAppApplication.get()).inflate(2131559128, (ViewGroup) this, true);
        this.f28476k = (TimeLineView) inflate.findViewById(2131364119);
        this.f28475j = inflate.findViewById(2131364123);
        this.f28477l = (ImageView) inflate.findViewById(2131363520);
        this.f28478m = (VideoView) inflate.findViewById(2131364514);
        this.f28479n = inflate.findViewById(2131364515);
        this.f28480o = (RangeSeekBarView) inflate.findViewById(2131363610);
        this.f28474i = (TextView) inflate.findViewById(2131364508);
        this.f28472g = (TextView) inflate.findViewById(2131364219);
        this.f28473h = (TextView) inflate.findViewById(2131363521);
        ((TextView) inflate.findViewById(2131362620)).setText(Activities.getString(2131886784));
        findViewById(2131362621).setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.util.video.VideoTrimmerView.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                try {
                    VideoTrimmerView videoTrimmerView = VideoTrimmerView.this;
                    videoTrimmerView.m6952b();
                    MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                    mediaMetadataRetriever.setDataSource(videoTrimmerView.getContext(), videoTrimmerView.f58374a);
                    long parseLong = Long.parseLong(mediaMetadataRetriever.extractMetadata(9));
                    if (videoTrimmerView.f58376c < 1000) {
                        if (parseLong - videoTrimmerView.f58378e > 1000 - videoTrimmerView.f58376c) {
                            videoTrimmerView.f58378e += 1000 - videoTrimmerView.f58376c;
                        } else if (videoTrimmerView.f58377d > 1000 - videoTrimmerView.f58376c) {
                            videoTrimmerView.f58377d -= 1000 - videoTrimmerView.f58376c;
                        }
                    }
                    if (videoTrimmerView.f58375b != null) {
                        AbstractC16595c abstractC16595c = videoTrimmerView.f58375b;
                        if (abstractC16595c == null) {
                            C18524p.m3855a();
                        }
                        abstractC16595c.mo6934b();
                    }
                    C16596a.f58401a.m6932a(new BaseVideoTrimmerView.C16585c(null, 0L, null));
                } catch (Exception e) {
                    CLog.m27611a(VideoTrimmerView.class, "failed to trim the video " + e.getMessage());
                    if (VideoTrimmerView.this.f28481p == null) {
                        return;
                    }
                    VideoTrimmerView.this.f28481p.onError(e.getMessage());
                }
            }
        });
    }

    @Override // com.p456lb.video_trimmer_library.BaseVideoTrimmerView
    /* renamed from: a */
    public final void mo6959a(int i) {
        String string = Activities.getString(2131887674);
        TextView textView = this.f28473h;
        textView.setText(m26886b(i) + StringUtils.SPACE + string);
    }

    @Override // com.p456lb.video_trimmer_library.BaseVideoTrimmerView
    /* renamed from: a */
    public final void mo6958a(int i, int i2) {
        String string = Activities.getString(2131887674);
        TextView textView = this.f28472g;
        textView.setText(m26886b(i2 - i) + StringUtils.SPACE + string);
    }

    @Override // com.p456lb.video_trimmer_library.BaseVideoTrimmerView
    /* renamed from: a */
    public final void mo6957a(long j) {
        this.f28474i.setText(android.text.format.Formatter.formatShortFileSize(CallAppApplication.get(), j));
    }

    @Override // com.p456lb.video_trimmer_library.BaseVideoTrimmerView
    public View getPlayView() {
        return this.f28477l;
    }

    @Override // com.p456lb.video_trimmer_library.BaseVideoTrimmerView
    public RangeSeekBarView getRangeSeekBarView() {
        return this.f28480o;
    }

    @Override // com.p456lb.video_trimmer_library.BaseVideoTrimmerView
    public View getTimeInfoContainer() {
        return this.f28475j;
    }

    @Override // com.p456lb.video_trimmer_library.BaseVideoTrimmerView
    public TimeLineView getTimeLineView() {
        return this.f28476k;
    }

    @Override // com.p456lb.video_trimmer_library.BaseVideoTrimmerView
    public VideoView getVideoView() {
        return this.f28478m;
    }

    @Override // com.p456lb.video_trimmer_library.BaseVideoTrimmerView
    public View getVideoViewContainer() {
        return this.f28479n;
    }

    public void setTrimmerEvents(TrimmerEvents trimmerEvents) {
        this.f28481p = trimmerEvents;
    }
}
