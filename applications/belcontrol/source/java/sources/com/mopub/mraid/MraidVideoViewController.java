package com.mopub.mraid;

import android.content.Context;
import android.content.res.Configuration;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import com.mopub.mobileads.BaseVideoViewController;
import com.mopub.mobileads.base.C1128R;
/* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidVideoViewController.class */
public class MraidVideoViewController extends BaseVideoViewController {

    /* renamed from: e */
    public final VideoView f5080e;

    /* renamed from: f */
    public ImageButton f5081f;

    /* renamed from: g */
    public int f5082g;

    /* renamed from: h */
    public int f5083h;

    /* renamed from: com.mopub.mraid.MraidVideoViewController$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidVideoViewController$a.class */
    public class C1167a implements MediaPlayer.OnPreparedListener {
        public C1167a(MraidVideoViewController mraidVideoViewController) {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            mediaPlayer.setVideoScalingMode(1);
        }
    }

    /* renamed from: com.mopub.mraid.MraidVideoViewController$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidVideoViewController$b.class */
    public class C1168b implements MediaPlayer.OnCompletionListener {
        public C1168b() {
            MraidVideoViewController.this = r4;
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            MraidVideoViewController.this.f5081f.setVisibility(0);
            MraidVideoViewController.this.m3700m(true);
        }
    }

    /* renamed from: com.mopub.mraid.MraidVideoViewController$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidVideoViewController$c.class */
    public class C1169c implements MediaPlayer.OnErrorListener {
        public C1169c() {
            MraidVideoViewController.this = r4;
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            MraidVideoViewController.this.f5081f.setVisibility(0);
            MraidVideoViewController.this.m3699n(false);
            return false;
        }
    }

    /* renamed from: com.mopub.mraid.MraidVideoViewController$d */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidVideoViewController$d.class */
    public class View$OnClickListenerC1170d implements View.OnClickListener {
        public View$OnClickListenerC1170d() {
            MraidVideoViewController.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MraidVideoViewController.this.m3702b().onFinish();
        }
    }

    public MraidVideoViewController(Context context, Bundle bundle, Bundle bundle2, BaseVideoViewController.BaseVideoViewControllerListener baseVideoViewControllerListener) {
        super(context, null, baseVideoViewControllerListener);
        VideoView videoView = new VideoView(context);
        this.f5080e = videoView;
        videoView.setOnPreparedListener(new C1167a(this));
        videoView.setOnCompletionListener(new C1168b());
        videoView.setOnErrorListener(new C1169c());
        videoView.setVideoPath(bundle.getString(BaseVideoPlayerActivity.VIDEO_URL));
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: f */
    public void mo3398f() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: g */
    public void mo3397g(Configuration configuration) {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: h */
    public void mo3396h() {
        super.mo3396h();
        this.f5083h = Dips.asIntPixels(50.0f, m3701c());
        this.f5082g = Dips.asIntPixels(8.0f, m3701c());
        m3387s();
        this.f5081f.setVisibility(8);
        this.f5080e.start();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: i */
    public void mo3395i() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: j */
    public void mo3394j() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: k */
    public void mo3393k() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: l */
    public void mo3392l(Bundle bundle) {
    }

    /* renamed from: s */
    public final void m3387s() {
        ImageButton imageButton = new ImageButton(m3701c());
        this.f5081f = imageButton;
        imageButton.setBackgroundDrawable(null);
        this.f5081f.setImageDrawable(g8.f(m3701c(), C1128R.C1129drawable.ic_mopub_close_button));
        this.f5081f.setOnClickListener(new View$OnClickListenerC1170d());
        int i = this.f5083h;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(11);
        int i2 = this.f5082g;
        layoutParams.setMargins(i2, 0, i2, 0);
        getLayout().addView(this.f5081f, layoutParams);
    }

    /* renamed from: t */
    public VideoView mo3399d() {
        return this.f5080e;
    }
}
