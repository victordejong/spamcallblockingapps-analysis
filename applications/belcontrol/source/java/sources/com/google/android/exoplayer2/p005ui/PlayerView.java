package com.google.android.exoplayer2.p005ui;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer2.ControlDispatcher;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.PlaybackPreparer;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.p005ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.p005ui.PlayerControlView;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ErrorMessageProvider;
import com.google.android.exoplayer2.util.Util;
import java.util.List;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
/* renamed from: com.google.android.exoplayer2.ui.PlayerView */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerView.class */
public class PlayerView extends FrameLayout {
    private static final int SURFACE_TYPE_NONE = 0;
    private static final int SURFACE_TYPE_SURFACE_VIEW = 1;
    private static final int SURFACE_TYPE_TEXTURE_VIEW = 2;
    private final ImageView artworkView;
    private final View bufferingView;
    private final ComponentListener componentListener;
    private final AspectRatioFrameLayout contentFrame;
    private final PlayerControlView controller;
    private boolean controllerAutoShow;
    private boolean controllerHideDuringAds;
    private boolean controllerHideOnTouch;
    private int controllerShowTimeoutMs;
    private CharSequence customErrorMessage;
    private Bitmap defaultArtwork;
    private ErrorMessageProvider<? super ExoPlaybackException> errorMessageProvider;
    private final TextView errorMessageView;
    private boolean keepContentOnPlayerReset;
    private final FrameLayout overlayFrameLayout;
    private Player player;
    private boolean showBuffering;
    private final View shutterView;
    private final SubtitleView subtitleView;
    private final View surfaceView;
    private int textureViewRotation;
    private boolean useArtwork;
    private boolean useController;

    public PlayerView(Context context) {
        this(context, null);
    }

    public PlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Finally extract failed */
    public PlayerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int i2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i3;
        boolean z5;
        int i4;
        boolean z6;
        int i5;
        boolean z7;
        int i6;
        if (isInEditMode()) {
            this.contentFrame = null;
            this.shutterView = null;
            this.surfaceView = null;
            this.artworkView = null;
            this.subtitleView = null;
            this.bufferingView = null;
            this.errorMessageView = null;
            this.controller = null;
            this.componentListener = null;
            this.overlayFrameLayout = null;
            ImageView imageView = new ImageView(context);
            if (Util.SDK_INT >= 23) {
                configureEditModeLogoV23(getResources(), imageView);
            } else {
                configureEditModeLogo(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i7 = C0577R.C0580layout.exo_player_view;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C0577R.styleable.PlayerView, 0, 0);
            try {
                int i8 = C0577R.styleable.PlayerView_shutter_background_color;
                z7 = obtainStyledAttributes.hasValue(i8);
                i5 = obtainStyledAttributes.getColor(i8, 0);
                i7 = obtainStyledAttributes.getResourceId(C0577R.styleable.PlayerView_player_layout_id, i7);
                z6 = obtainStyledAttributes.getBoolean(C0577R.styleable.PlayerView_use_artwork, true);
                i4 = obtainStyledAttributes.getResourceId(C0577R.styleable.PlayerView_default_artwork, 0);
                z5 = obtainStyledAttributes.getBoolean(C0577R.styleable.PlayerView_use_controller, true);
                int i9 = obtainStyledAttributes.getInt(C0577R.styleable.PlayerView_surface_type, 1);
                int i10 = obtainStyledAttributes.getInt(C0577R.styleable.PlayerView_resize_mode, 0);
                int i11 = obtainStyledAttributes.getInt(C0577R.styleable.PlayerView_show_timeout, 5000);
                z4 = obtainStyledAttributes.getBoolean(C0577R.styleable.PlayerView_hide_on_touch, true);
                z3 = obtainStyledAttributes.getBoolean(C0577R.styleable.PlayerView_auto_show, true);
                z2 = obtainStyledAttributes.getBoolean(C0577R.styleable.PlayerView_show_buffering, false);
                this.keepContentOnPlayerReset = obtainStyledAttributes.getBoolean(C0577R.styleable.PlayerView_keep_content_on_player_reset, this.keepContentOnPlayerReset);
                z = obtainStyledAttributes.getBoolean(C0577R.styleable.PlayerView_hide_during_ads, true);
                obtainStyledAttributes.recycle();
                i2 = i10;
                i3 = i9;
                i6 = i11;
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            i2 = 0;
            z = true;
            z2 = false;
            z4 = true;
            z3 = true;
            i5 = 0;
            z7 = false;
            z6 = true;
            i4 = 0;
            z5 = true;
            i3 = 1;
            i6 = 5000;
        }
        LayoutInflater.from(context).inflate(i7, this);
        this.componentListener = new ComponentListener(this, (C05761) null);
        setDescendantFocusability(PKIFailureInfo.transactionIdInUse);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(C0577R.C0579id.exo_content_frame);
        this.contentFrame = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            setResizeModeRaw(aspectRatioFrameLayout, i2);
        }
        View findViewById = findViewById(C0577R.C0579id.exo_shutter);
        this.shutterView = findViewById;
        if (findViewById != null && z7) {
            findViewById.setBackgroundColor(i5);
        }
        if (aspectRatioFrameLayout == null || i3 == 0) {
            this.surfaceView = null;
        } else {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            TextureView textureView = i3 == 2 ? new TextureView(context) : new SurfaceView(context);
            this.surfaceView = textureView;
            textureView.setLayoutParams(layoutParams);
            aspectRatioFrameLayout.addView(textureView, 0);
        }
        this.overlayFrameLayout = (FrameLayout) findViewById(C0577R.C0579id.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(C0577R.C0579id.exo_artwork);
        this.artworkView = imageView2;
        this.useArtwork = z6 && imageView2 != null;
        if (i4 != 0) {
            this.defaultArtwork = BitmapFactory.decodeResource(context.getResources(), i4);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(C0577R.C0579id.exo_subtitles);
        this.subtitleView = subtitleView;
        if (subtitleView != null) {
            subtitleView.setUserDefaultStyle();
            subtitleView.setUserDefaultTextSize();
        }
        View findViewById2 = findViewById(C0577R.C0579id.exo_buffering);
        this.bufferingView = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        this.showBuffering = z2;
        TextView textView = (TextView) findViewById(C0577R.C0579id.exo_error_message);
        this.errorMessageView = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        PlayerControlView playerControlView = (PlayerControlView) findViewById(C0577R.C0579id.exo_controller);
        View findViewById3 = findViewById(C0577R.C0579id.exo_controller_placeholder);
        if (playerControlView != null) {
            this.controller = playerControlView;
        } else if (findViewById3 != null) {
            PlayerControlView playerControlView2 = new PlayerControlView(context, null, 0, attributeSet);
            this.controller = playerControlView2;
            playerControlView2.setLayoutParams(findViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById3.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById3);
            viewGroup.removeView(findViewById3);
            viewGroup.addView(playerControlView2, indexOfChild);
        } else {
            this.controller = null;
        }
        PlayerControlView playerControlView3 = this.controller;
        this.controllerShowTimeoutMs = playerControlView3 == null ? 0 : i6;
        this.controllerHideOnTouch = z4;
        this.controllerAutoShow = z3;
        this.controllerHideDuringAds = z;
        boolean z8 = false;
        if (z5) {
            z8 = false;
            if (playerControlView3 != null) {
                z8 = true;
            }
        }
        this.useController = z8;
        hideController();
    }

    public static void applyTextureViewRotation(TextureView textureView, int i) {
        float width = textureView.getWidth();
        float height = textureView.getHeight();
        if (width == 0.0f || height == 0.0f || i == 0) {
            textureView.setTransform(null);
            return;
        }
        Matrix matrix = new Matrix();
        float f = width / 2.0f;
        float f2 = height / 2.0f;
        matrix.postRotate(i, f, f2);
        RectF rectF = new RectF(0.0f, 0.0f, width, height);
        RectF rectF2 = new RectF();
        matrix.mapRect(rectF2, rectF);
        matrix.postScale(width / rectF2.width(), height / rectF2.height(), f, f2);
        textureView.setTransform(matrix);
    }

    private void closeShutter() {
        View view = this.shutterView;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private static void configureEditModeLogo(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(C0577R.C0578drawable.exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(C0577R.color.exo_edit_mode_background_color));
    }

    @TargetApi(23)
    private static void configureEditModeLogoV23(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(C0577R.C0578drawable.exo_edit_mode_logo, null));
        imageView.setBackgroundColor(resources.getColor(C0577R.color.exo_edit_mode_background_color, null));
    }

    private void hideArtwork() {
        ImageView imageView = this.artworkView;
        if (imageView != null) {
            imageView.setImageResource(17170445);
            this.artworkView.setVisibility(4);
        }
    }

    @SuppressLint({"InlinedApi"})
    private boolean isDpadKey(int i) {
        return i == 19 || i == 270 || i == 22 || i == 271 || i == 20 || i == 269 || i == 21 || i == 268 || i == 23;
    }

    public boolean isPlayingAd() {
        Player player = this.player;
        return player != null && player.isPlayingAd() && this.player.getPlayWhenReady();
    }

    public void maybeShowController(boolean z) {
        if ((!isPlayingAd() || !this.controllerHideDuringAds) && this.useController) {
            boolean z2 = this.controller.isVisible() && this.controller.getShowTimeoutMs() <= 0;
            boolean shouldShowControllerIndefinitely = shouldShowControllerIndefinitely();
            if (!z && !z2 && !shouldShowControllerIndefinitely) {
                return;
            }
            showController(shouldShowControllerIndefinitely);
        }
    }

    private boolean setArtworkFromBitmap(Bitmap bitmap) {
        if (bitmap != null) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            if (width <= 0 || height <= 0) {
                return false;
            }
            AspectRatioFrameLayout aspectRatioFrameLayout = this.contentFrame;
            if (aspectRatioFrameLayout != null) {
                aspectRatioFrameLayout.setAspectRatio(width / height);
            }
            this.artworkView.setImageBitmap(bitmap);
            this.artworkView.setVisibility(0);
            return true;
        }
        return false;
    }

    private boolean setArtworkFromMetadata(Metadata metadata) {
        for (int i = 0; i < metadata.length(); i++) {
            ApicFrame apicFrame = metadata.get(i);
            if (apicFrame instanceof ApicFrame) {
                byte[] bArr = apicFrame.pictureData;
                return setArtworkFromBitmap(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
            }
        }
        return false;
    }

    private static void setResizeModeRaw(AspectRatioFrameLayout aspectRatioFrameLayout, int i) {
        aspectRatioFrameLayout.setResizeMode(i);
    }

    private boolean shouldShowControllerIndefinitely() {
        boolean z;
        Player player = this.player;
        if (player == null) {
            return true;
        }
        int playbackState = player.getPlaybackState();
        if (this.controllerAutoShow) {
            z = true;
            if (playbackState != 1) {
                z = true;
                if (playbackState != 4) {
                    if (!this.player.getPlayWhenReady()) {
                        z = true;
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    private void showController(boolean z) {
        if (!this.useController) {
            return;
        }
        this.controller.setShowTimeoutMs(z ? 0 : this.controllerShowTimeoutMs);
        this.controller.show();
    }

    public static void switchTargetView(Player player, PlayerView playerView, PlayerView playerView2) {
        if (playerView == playerView2) {
            return;
        }
        if (playerView2 != null) {
            playerView2.setPlayer(player);
        }
        if (playerView == null) {
            return;
        }
        playerView.setPlayer(null);
    }

    public void updateBuffering() {
        Player player;
        if (this.bufferingView != null) {
            this.bufferingView.setVisibility(this.showBuffering && (player = this.player) != null && player.getPlaybackState() == 2 && this.player.getPlayWhenReady() ? 0 : 8);
        }
    }

    public void updateErrorMessage() {
        TextView textView = this.errorMessageView;
        if (textView != null) {
            CharSequence charSequence = this.customErrorMessage;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.errorMessageView.setVisibility(0);
                return;
            }
            Player player = this.player;
            ExoPlaybackException exoPlaybackException = null;
            if (player != null) {
                exoPlaybackException = null;
                if (player.getPlaybackState() == 1) {
                    exoPlaybackException = null;
                    if (this.errorMessageProvider != null) {
                        exoPlaybackException = this.player.getPlaybackError();
                    }
                }
            }
            if (exoPlaybackException == null) {
                this.errorMessageView.setVisibility(8);
                return;
            }
            this.errorMessageView.setText((CharSequence) this.errorMessageProvider.getErrorMessage(exoPlaybackException).second);
            this.errorMessageView.setVisibility(0);
        }
    }

    public void updateForCurrentTrackSelections(boolean z) {
        Player player = this.player;
        if (player == null || player.getCurrentTrackGroups().isEmpty()) {
            if (this.keepContentOnPlayerReset) {
                return;
            }
            hideArtwork();
            closeShutter();
            return;
        }
        if (z && !this.keepContentOnPlayerReset) {
            closeShutter();
        }
        TrackSelectionArray currentTrackSelections = this.player.getCurrentTrackSelections();
        for (int i = 0; i < currentTrackSelections.length; i++) {
            if (this.player.getRendererType(i) == 2 && currentTrackSelections.get(i) != null) {
                hideArtwork();
                return;
            }
        }
        closeShutter();
        if (this.useArtwork) {
            for (int i2 = 0; i2 < currentTrackSelections.length; i2++) {
                TrackSelection trackSelection = currentTrackSelections.get(i2);
                if (trackSelection != null) {
                    for (int i3 = 0; i3 < trackSelection.length(); i3++) {
                        Metadata metadata = trackSelection.getFormat(i3).metadata;
                        if (metadata != null && setArtworkFromMetadata(metadata)) {
                            return;
                        }
                    }
                    continue;
                }
            }
            if (setArtworkFromBitmap(this.defaultArtwork)) {
                return;
            }
        }
        hideArtwork();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        Player player = this.player;
        if (player != null && player.isPlayingAd()) {
            this.overlayFrameLayout.requestFocus();
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean z = false;
        boolean z2 = isDpadKey(keyEvent.getKeyCode()) && this.useController && !this.controller.isVisible();
        maybeShowController(true);
        if (z2 || dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent)) {
            z = true;
        }
        return z;
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        return this.useController && this.controller.dispatchMediaKeyEvent(keyEvent);
    }

    public boolean getControllerAutoShow() {
        return this.controllerAutoShow;
    }

    public boolean getControllerHideOnTouch() {
        return this.controllerHideOnTouch;
    }

    public int getControllerShowTimeoutMs() {
        return this.controllerShowTimeoutMs;
    }

    public Bitmap getDefaultArtwork() {
        return this.defaultArtwork;
    }

    public FrameLayout getOverlayFrameLayout() {
        return this.overlayFrameLayout;
    }

    public Player getPlayer() {
        return this.player;
    }

    public int getResizeMode() {
        Assertions.checkState(this.contentFrame != null);
        return this.contentFrame.getResizeMode();
    }

    public SubtitleView getSubtitleView() {
        return this.subtitleView;
    }

    public boolean getUseArtwork() {
        return this.useArtwork;
    }

    public boolean getUseController() {
        return this.useController;
    }

    public View getVideoSurfaceView() {
        return this.surfaceView;
    }

    public void hideController() {
        PlayerControlView playerControlView = this.controller;
        if (playerControlView != null) {
            playerControlView.hide();
        }
    }

    public boolean isControllerVisible() {
        PlayerControlView playerControlView = this.controller;
        return playerControlView != null && playerControlView.isVisible();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.useController || this.player == null || motionEvent.getActionMasked() != 0) {
            return false;
        }
        if (!this.controller.isVisible()) {
            maybeShowController(true);
            return true;
        } else if (!this.controllerHideOnTouch) {
            return true;
        } else {
            this.controller.hide();
            return true;
        }
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!this.useController || this.player == null) {
            return false;
        }
        maybeShowController(true);
        return true;
    }

    public void setAspectRatioListener(AspectRatioFrameLayout.AspectRatioListener aspectRatioListener) {
        Assertions.checkState(this.contentFrame != null);
        this.contentFrame.setAspectRatioListener(aspectRatioListener);
    }

    public void setControlDispatcher(ControlDispatcher controlDispatcher) {
        Assertions.checkState(this.controller != null);
        this.controller.setControlDispatcher(controlDispatcher);
    }

    public void setControllerAutoShow(boolean z) {
        this.controllerAutoShow = z;
    }

    public void setControllerHideDuringAds(boolean z) {
        this.controllerHideDuringAds = z;
    }

    public void setControllerHideOnTouch(boolean z) {
        Assertions.checkState(this.controller != null);
        this.controllerHideOnTouch = z;
    }

    public void setControllerShowTimeoutMs(int i) {
        Assertions.checkState(this.controller != null);
        this.controllerShowTimeoutMs = i;
        if (this.controller.isVisible()) {
            showController();
        }
    }

    public void setControllerVisibilityListener(PlayerControlView.VisibilityListener visibilityListener) {
        Assertions.checkState(this.controller != null);
        this.controller.setVisibilityListener(visibilityListener);
    }

    public void setCustomErrorMessage(CharSequence charSequence) {
        Assertions.checkState(this.errorMessageView != null);
        this.customErrorMessage = charSequence;
        updateErrorMessage();
    }

    public void setDefaultArtwork(Bitmap bitmap) {
        if (this.defaultArtwork != bitmap) {
            this.defaultArtwork = bitmap;
            updateForCurrentTrackSelections(false);
        }
    }

    public void setErrorMessageProvider(ErrorMessageProvider<? super ExoPlaybackException> errorMessageProvider) {
        if (this.errorMessageProvider != errorMessageProvider) {
            this.errorMessageProvider = errorMessageProvider;
            updateErrorMessage();
        }
    }

    public void setExtraAdGroupMarkers(long[] jArr, boolean[] zArr) {
        Assertions.checkState(this.controller != null);
        this.controller.setExtraAdGroupMarkers(jArr, zArr);
    }

    public void setFastForwardIncrementMs(int i) {
        Assertions.checkState(this.controller != null);
        this.controller.setFastForwardIncrementMs(i);
    }

    public void setKeepContentOnPlayerReset(boolean z) {
        if (this.keepContentOnPlayerReset != z) {
            this.keepContentOnPlayerReset = z;
            updateForCurrentTrackSelections(false);
        }
    }

    public void setPlaybackPreparer(PlaybackPreparer playbackPreparer) {
        Assertions.checkState(this.controller != null);
        this.controller.setPlaybackPreparer(playbackPreparer);
    }

    public void setPlayer(Player player) {
        Player player2 = this.player;
        if (player2 == player) {
            return;
        }
        if (player2 != null) {
            player2.removeListener(this.componentListener);
            Player.VideoComponent videoComponent = this.player.getVideoComponent();
            if (videoComponent != null) {
                videoComponent.removeVideoListener(this.componentListener);
                View view = this.surfaceView;
                if (view instanceof TextureView) {
                    videoComponent.clearVideoTextureView((TextureView) view);
                } else if (view instanceof SurfaceView) {
                    videoComponent.clearVideoSurfaceView((SurfaceView) view);
                }
            }
            Player.TextComponent textComponent = this.player.getTextComponent();
            if (textComponent != null) {
                textComponent.removeTextOutput(this.componentListener);
            }
        }
        this.player = player;
        if (this.useController) {
            this.controller.setPlayer(player);
        }
        SubtitleView subtitleView = this.subtitleView;
        if (subtitleView != null) {
            subtitleView.setCues((List) null);
        }
        updateBuffering();
        updateErrorMessage();
        updateForCurrentTrackSelections(true);
        if (player == null) {
            hideController();
            return;
        }
        Player.VideoComponent videoComponent2 = player.getVideoComponent();
        if (videoComponent2 != null) {
            View view2 = this.surfaceView;
            if (view2 instanceof TextureView) {
                videoComponent2.setVideoTextureView((TextureView) view2);
            } else if (view2 instanceof SurfaceView) {
                videoComponent2.setVideoSurfaceView((SurfaceView) view2);
            }
            videoComponent2.addVideoListener(this.componentListener);
        }
        Player.TextComponent textComponent2 = player.getTextComponent();
        if (textComponent2 != null) {
            textComponent2.addTextOutput(this.componentListener);
        }
        player.addListener(this.componentListener);
        maybeShowController(false);
    }

    public void setRepeatToggleModes(int i) {
        Assertions.checkState(this.controller != null);
        this.controller.setRepeatToggleModes(i);
    }

    public void setResizeMode(int i) {
        Assertions.checkState(this.contentFrame != null);
        this.contentFrame.setResizeMode(i);
    }

    public void setRewindIncrementMs(int i) {
        Assertions.checkState(this.controller != null);
        this.controller.setRewindIncrementMs(i);
    }

    public void setShowBuffering(boolean z) {
        if (this.showBuffering != z) {
            this.showBuffering = z;
            updateBuffering();
        }
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        Assertions.checkState(this.controller != null);
        this.controller.setShowMultiWindowTimeBar(z);
    }

    public void setShowShuffleButton(boolean z) {
        Assertions.checkState(this.controller != null);
        this.controller.setShowShuffleButton(z);
    }

    public void setShutterBackgroundColor(int i) {
        View view = this.shutterView;
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public void setUseArtwork(boolean z) {
        Assertions.checkState(!z || this.artworkView != null);
        if (this.useArtwork != z) {
            this.useArtwork = z;
            updateForCurrentTrackSelections(false);
        }
    }

    public void setUseController(boolean z) {
        PlayerControlView playerControlView;
        Player player;
        Assertions.checkState(!z || this.controller != null);
        if (this.useController == z) {
            return;
        }
        this.useController = z;
        if (z) {
            playerControlView = this.controller;
            player = this.player;
        } else {
            PlayerControlView playerControlView2 = this.controller;
            if (playerControlView2 == null) {
                return;
            }
            playerControlView2.hide();
            playerControlView = this.controller;
            player = null;
        }
        playerControlView.setPlayer(player);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        View view = this.surfaceView;
        if (view instanceof SurfaceView) {
            view.setVisibility(i);
        }
    }

    public void showController() {
        showController(shouldShowControllerIndefinitely());
    }
}
