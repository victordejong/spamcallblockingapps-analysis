package androidx.media2.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.LinearInterpolator;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.UriMediaItem;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.SessionCommandGroup;
import androidx.media2.widget.PlayerWrapper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Formatter;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView.class */
public class MediaControlView extends MediaViewGroup {
    public static final long AD_SKIP_WAIT_TIME_MS = 5000;
    public static final long DEFAULT_DELAYED_ANIMATION_INTERVAL_MS = 2000;
    public static final long DEFAULT_PROGRESS_UPDATE_TIME_MS = 1000;
    public static final long DISABLE_DELAYED_ANIMATION = -1;
    public static final long FORWARD_TIME_MS = 30000;
    public static final long HIDE_TIME_MS = 250;
    public static final int MAX_PROGRESS = 1000;
    public static final int MAX_SCALE_LEVEL = 10000;
    public static final int PLAYBACK_SPEED_1x_INDEX = 3;
    public static final int PLAY_BUTTON_PAUSE = 0;
    public static final int PLAY_BUTTON_PLAY = 1;
    public static final int PLAY_BUTTON_REPLAY = 2;
    public static final String RESOURCE_EMPTY = "";
    public static final int RESOURCE_NON_EXISTENT = -1;
    public static final long REWIND_TIME_MS = 10000;
    public static final int SEEK_POSITION_NOT_SET = -1;
    public static final int SETTINGS_MODE_AUDIO_TRACK = 0;
    public static final int SETTINGS_MODE_MAIN = 3;
    public static final int SETTINGS_MODE_PLAYBACK_SPEED = 1;
    public static final int SETTINGS_MODE_SUBTITLE_TRACK = 2;
    public static final long SHOW_TIME_MS = 250;
    public static final int SIZE_TYPE_EMBEDDED = 0;
    public static final int SIZE_TYPE_FULL = 1;
    public static final int SIZE_TYPE_MINIMAL = 2;
    public static final int SIZE_TYPE_UNDEFINED = -1;
    public static final int UX_STATE_ALL_VISIBLE = 0;
    public static final int UX_STATE_ANIMATING = 3;
    public static final int UX_STATE_NONE_VISIBLE = 2;
    public static final int UX_STATE_ONLY_PROGRESS_VISIBLE = 1;
    public AccessibilityManager mAccessibilityManager;
    public View mAdExternalLink;
    public TextView mAdRemainingView;
    public TextView mAdSkipView;
    public List<String> mAudioTrackDescriptionList;
    public List<SessionPlayer.TrackInfo> mAudioTracks;
    public ViewGroup mBasicControls;
    public View mBottomBarBackground;
    public ViewGroup mBottomBarLeft;
    public ViewGroup mCenterView;
    public View mCenterViewBackground;
    public long mCurrentSeekPosition;
    public TextView mCurrentTime;
    public int mCustomPlaybackSpeedIndex;
    public long mDelayedAnimationIntervalMs;
    public boolean mDragging;
    public long mDuration;
    public int mEmbeddedSettingsItemWidth;
    public View mEmbeddedTransportControls;
    public TextView mEndTime;
    public ViewGroup mExtraControls;
    public final View.OnClickListener mFfwdListener;
    public StringBuilder mFormatBuilder;
    public Formatter mFormatter;
    public ImageButton mFullScreenButton;
    public final View.OnClickListener mFullScreenListener;
    public int mFullSettingsItemWidth;
    public View mFullTransportControls;
    public final Runnable mHideAllBars;
    public AnimatorSet mHideAllBarsAnimator;
    public Runnable mHideMainBars;
    public AnimatorSet mHideMainBarsAnimator;
    public final Runnable mHideProgressBar;
    public AnimatorSet mHideProgressBarAnimator;
    public boolean mIsAdvertisement;
    public boolean mIsAttachedToVideoView;
    public boolean mIsFullScreen;
    public boolean mIsShowingReplayButton;
    public ImageButton mMinimalFullScreenButton;
    public ViewGroup mMinimalFullScreenView;
    public View mMinimalTransportControls;
    public boolean mNeedToHideBars;
    public boolean mNeedToShowBars;
    public final View.OnClickListener mNextListener;
    public long mNextSeekPosition;
    public OnFullScreenListener mOnFullScreenListener;
    public ValueAnimator mOverflowHideAnimator;
    public final View.OnClickListener mOverflowHideListener;
    public boolean mOverflowIsShowing;
    public ValueAnimator mOverflowShowAnimator;
    public final View.OnClickListener mOverflowShowListener;
    public final View.OnClickListener mPlayPauseListener;
    public List<Integer> mPlaybackSpeedMultBy100List;
    public List<String> mPlaybackSpeedTextList;
    public PlayerWrapper mPlayer;
    public final View.OnClickListener mPrevListener;
    public SeekBar mProgress;
    public ViewGroup mProgressBar;
    public Resources mResources;
    public final View.OnClickListener mRewListener;
    public boolean mSeekAvailable;
    public final SeekBar.OnSeekBarChangeListener mSeekListener;
    public int mSelectedAudioTrackIndex;
    public int mSelectedSpeedIndex;
    public int mSelectedSubtitleTrackIndex;
    public SettingsAdapter mSettingsAdapter;
    public final View.OnClickListener mSettingsButtonListener;
    public PopupWindow.OnDismissListener mSettingsDismissListener;
    public List<Integer> mSettingsIconIdsList;
    public final AdapterView.OnItemClickListener mSettingsItemClickListener;
    public int mSettingsItemHeight;
    public ListView mSettingsListView;
    public List<String> mSettingsMainTextsList;
    public int mSettingsMode;
    public List<String> mSettingsSubTextsList;
    public PopupWindow mSettingsWindow;
    public int mSettingsWindowMargin;
    public final Runnable mShowAllBars;
    public AnimatorSet mShowAllBarsAnimator;
    public AnimatorSet mShowMainBarsAnimator;
    public int mSizeType;
    public SubSettingsAdapter mSubSettingsAdapter;
    public ImageButton mSubtitleButton;
    public List<String> mSubtitleDescriptionsList;
    public final View.OnClickListener mSubtitleListener;
    public List<SessionPlayer.TrackInfo> mSubtitleTracks;
    public ViewGroup mTimeView;
    public View mTitleBar;
    public TextView mTitleView;
    public SparseArray<View> mTransportControlsMap;
    public final Runnable mUpdateProgress;
    public int mUxState;
    public int mVideoTrackCount;
    public boolean mWasPlaying;
    public static final String TAG = "MediaControlView";
    public static final boolean DEBUG = Log.isLoggable(TAG, 3);

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$OnFullScreenListener.class */
    public interface OnFullScreenListener {
        void onFullScreen(@NonNull View view, boolean z);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$PlayerCallback.class */
    public class PlayerCallback extends PlayerWrapper.PlayerCallback {
        public PlayerCallback() {
        }

        @Override // androidx.media2.widget.PlayerWrapper.PlayerCallback
        public void onAllowedCommandsChanged(@NonNull PlayerWrapper playerWrapper, @NonNull SessionCommandGroup sessionCommandGroup) {
            MediaControlView mediaControlView = MediaControlView.this;
            if (playerWrapper == mediaControlView.mPlayer) {
                mediaControlView.updateAllowedCommands();
            }
        }

        @Override // androidx.media2.widget.PlayerWrapper.PlayerCallback
        public void onCurrentMediaItemChanged(@NonNull PlayerWrapper playerWrapper, @Nullable MediaItem mediaItem) {
            if (playerWrapper == MediaControlView.this.mPlayer) {
                if (MediaControlView.DEBUG) {
                    String str = "onCurrentMediaItemChanged(): " + mediaItem;
                }
                MediaControlView.this.updateTimeViews(mediaItem);
                MediaControlView.this.updateTitleView(mediaItem);
                MediaControlView.this.updatePrevNextButtons(playerWrapper.getPreviousMediaItemIndex(), playerWrapper.getNextMediaItemIndex());
            }
        }

        @Override // androidx.media2.widget.PlayerWrapper.PlayerCallback
        public void onPlaybackCompleted(@NonNull PlayerWrapper playerWrapper) {
            if (playerWrapper == MediaControlView.this.mPlayer) {
                boolean z = MediaControlView.DEBUG;
                MediaControlView.this.updateReplayButton(true);
                MediaControlView.this.mProgress.setProgress(1000);
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.mCurrentTime.setText(mediaControlView.stringForTime(mediaControlView.mDuration));
            }
        }

        @Override // androidx.media2.widget.PlayerWrapper.PlayerCallback
        public void onPlaybackSpeedChanged(@NonNull PlayerWrapper playerWrapper, float f) {
            if (playerWrapper == MediaControlView.this.mPlayer) {
                int round = Math.round(f * 100.0f);
                MediaControlView mediaControlView = MediaControlView.this;
                if (mediaControlView.mCustomPlaybackSpeedIndex != -1) {
                    mediaControlView.removeCustomSpeedFromList();
                }
                int i = 0;
                if (MediaControlView.this.mPlaybackSpeedMultBy100List.contains(Integer.valueOf(round))) {
                    for (int i2 = 0; i2 < MediaControlView.this.mPlaybackSpeedMultBy100List.size(); i2++) {
                        if (round == MediaControlView.this.mPlaybackSpeedMultBy100List.get(i2).intValue()) {
                            MediaControlView mediaControlView2 = MediaControlView.this;
                            mediaControlView2.updateSelectedSpeed(i2, mediaControlView2.mPlaybackSpeedTextList.get(i2));
                            return;
                        }
                    }
                    return;
                }
                String string = MediaControlView.this.mResources.getString(C0995R.string.MediaControlView_custom_playback_speed_text, Float.valueOf(round / 100.0f));
                while (true) {
                    if (i >= MediaControlView.this.mPlaybackSpeedMultBy100List.size()) {
                        break;
                    } else if (round < MediaControlView.this.mPlaybackSpeedMultBy100List.get(i).intValue()) {
                        MediaControlView.this.mPlaybackSpeedMultBy100List.add(i, Integer.valueOf(round));
                        MediaControlView.this.mPlaybackSpeedTextList.add(i, string);
                        MediaControlView.this.updateSelectedSpeed(i, string);
                        break;
                    } else {
                        if (i == MediaControlView.this.mPlaybackSpeedMultBy100List.size() - 1 && round > MediaControlView.this.mPlaybackSpeedMultBy100List.get(i).intValue()) {
                            MediaControlView.this.mPlaybackSpeedMultBy100List.add(Integer.valueOf(round));
                            MediaControlView.this.mPlaybackSpeedTextList.add(string);
                            MediaControlView.this.updateSelectedSpeed(i + 1, string);
                        }
                        i++;
                    }
                }
                MediaControlView mediaControlView3 = MediaControlView.this;
                mediaControlView3.mCustomPlaybackSpeedIndex = mediaControlView3.mSelectedSpeedIndex;
            }
        }

        @Override // androidx.media2.widget.PlayerWrapper.PlayerCallback
        public void onPlayerStateChanged(@NonNull PlayerWrapper playerWrapper, int i) {
            if (playerWrapper == MediaControlView.this.mPlayer) {
                if (MediaControlView.DEBUG) {
                    String str = "onPlayerStateChanged(state: " + i + ")";
                }
                MediaControlView.this.updateTimeViews(playerWrapper.getCurrentMediaItem());
                if (i == 1) {
                    MediaControlView.this.updatePlayButton(1);
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.removeCallbacks(mediaControlView.mUpdateProgress);
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    mediaControlView2.removeCallbacks(mediaControlView2.mHideMainBars);
                    MediaControlView mediaControlView3 = MediaControlView.this;
                    mediaControlView3.removeCallbacks(mediaControlView3.mHideProgressBar);
                    MediaControlView mediaControlView4 = MediaControlView.this;
                    mediaControlView4.post(mediaControlView4.mShowAllBars);
                } else if (i == 2) {
                    MediaControlView mediaControlView5 = MediaControlView.this;
                    mediaControlView5.removeCallbacks(mediaControlView5.mUpdateProgress);
                    MediaControlView mediaControlView6 = MediaControlView.this;
                    mediaControlView6.post(mediaControlView6.mUpdateProgress);
                    MediaControlView.this.resetHideCallbacks();
                    MediaControlView.this.updateReplayButton(false);
                } else if (i == 3) {
                    MediaControlView.this.updatePlayButton(1);
                    MediaControlView mediaControlView7 = MediaControlView.this;
                    mediaControlView7.removeCallbacks(mediaControlView7.mUpdateProgress);
                    if (MediaControlView.this.getWindowToken() != null) {
                        new AlertDialog.Builder(MediaControlView.this.getContext()).setMessage(C0995R.string.mcv2_playback_error_text).setPositiveButton(C0995R.string.mcv2_error_dialog_button, new DialogInterface.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.PlayerCallback.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i2) {
                                dialogInterface.dismiss();
                            }
                        }).setCancelable(true).show();
                    }
                }
            }
        }

        @Override // androidx.media2.widget.PlayerWrapper.PlayerCallback
        public void onPlaylistChanged(@NonNull PlayerWrapper playerWrapper, @Nullable List<MediaItem> list, @Nullable MediaMetadata mediaMetadata) {
            if (playerWrapper == MediaControlView.this.mPlayer) {
                if (MediaControlView.DEBUG) {
                    String str = "onPlaylistChanged(): list: " + list + ", metadata: " + mediaMetadata;
                }
                MediaControlView.this.updatePrevNextButtons(playerWrapper.getPreviousMediaItemIndex(), playerWrapper.getNextMediaItemIndex());
            }
        }

        @Override // androidx.media2.widget.PlayerWrapper.PlayerCallback
        public void onSeekCompleted(@NonNull PlayerWrapper playerWrapper, long j) {
            if (playerWrapper == MediaControlView.this.mPlayer) {
                if (MediaControlView.DEBUG) {
                    String str = "onSeekCompleted(): " + j;
                }
                long j2 = MediaControlView.this.mDuration;
                MediaControlView.this.mProgress.setProgress(j2 <= 0 ? 0 : (int) ((1000 * j) / j2));
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.mCurrentTime.setText(mediaControlView.stringForTime(j));
                MediaControlView mediaControlView2 = MediaControlView.this;
                long j3 = mediaControlView2.mNextSeekPosition;
                if (j3 != -1) {
                    mediaControlView2.mCurrentSeekPosition = j3;
                    playerWrapper.seekTo(j3);
                    MediaControlView.this.mNextSeekPosition = -1L;
                    return;
                }
                mediaControlView2.mCurrentSeekPosition = -1L;
                if (!mediaControlView2.mDragging) {
                    mediaControlView2.removeCallbacks(mediaControlView2.mUpdateProgress);
                    MediaControlView mediaControlView3 = MediaControlView.this;
                    mediaControlView3.removeCallbacks(mediaControlView3.mHideMainBars);
                    MediaControlView mediaControlView4 = MediaControlView.this;
                    mediaControlView4.post(mediaControlView4.mUpdateProgress);
                    MediaControlView mediaControlView5 = MediaControlView.this;
                    mediaControlView5.postDelayedRunnable(mediaControlView5.mHideMainBars, mediaControlView5.mDelayedAnimationIntervalMs);
                }
            }
        }

        @Override // androidx.media2.widget.PlayerWrapper.PlayerCallback
        public void onTrackDeselected(@NonNull PlayerWrapper playerWrapper, @NonNull SessionPlayer.TrackInfo trackInfo) {
            if (playerWrapper == MediaControlView.this.mPlayer) {
                if (MediaControlView.DEBUG) {
                    String str = "onTrackDeselected(): " + trackInfo;
                }
                if (trackInfo.getTrackType() == 4) {
                    for (int i = 0; i < MediaControlView.this.mSubtitleTracks.size(); i++) {
                        if (MediaControlView.this.mSubtitleTracks.get(i).equals(trackInfo)) {
                            MediaControlView mediaControlView = MediaControlView.this;
                            mediaControlView.mSelectedSubtitleTrackIndex = -1;
                            if (mediaControlView.mSettingsMode == 2) {
                                mediaControlView.mSubSettingsAdapter.setCheckPosition(mediaControlView.mSelectedSubtitleTrackIndex + 1);
                            }
                            MediaControlView mediaControlView2 = MediaControlView.this;
                            mediaControlView2.mSubtitleButton.setImageDrawable(mediaControlView2.mResources.getDrawable(C0995R.C0996drawable.ic_subtitle_off));
                            MediaControlView mediaControlView3 = MediaControlView.this;
                            mediaControlView3.mSubtitleButton.setContentDescription(mediaControlView3.mResources.getString(C0995R.string.mcv2_cc_is_off));
                            return;
                        }
                    }
                }
            }
        }

        @Override // androidx.media2.widget.PlayerWrapper.PlayerCallback
        public void onTrackInfoChanged(@NonNull PlayerWrapper playerWrapper, @NonNull List<SessionPlayer.TrackInfo> list) {
            if (playerWrapper == MediaControlView.this.mPlayer) {
                if (MediaControlView.DEBUG) {
                    String str = "onTrackInfoChanged(): " + list;
                }
                MediaControlView.this.updateTracks(playerWrapper, list);
                MediaControlView.this.updateTimeViews(playerWrapper.getCurrentMediaItem());
                MediaControlView.this.updateTitleView(playerWrapper.getCurrentMediaItem());
            }
        }

        @Override // androidx.media2.widget.PlayerWrapper.PlayerCallback
        public void onTrackSelected(@NonNull PlayerWrapper playerWrapper, @NonNull SessionPlayer.TrackInfo trackInfo) {
            if (playerWrapper == MediaControlView.this.mPlayer) {
                if (MediaControlView.DEBUG) {
                    String str = "onTrackSelected(): " + trackInfo;
                }
                if (trackInfo.getTrackType() == 4) {
                    for (int i = 0; i < MediaControlView.this.mSubtitleTracks.size(); i++) {
                        if (MediaControlView.this.mSubtitleTracks.get(i).equals(trackInfo)) {
                            MediaControlView mediaControlView = MediaControlView.this;
                            mediaControlView.mSelectedSubtitleTrackIndex = i;
                            if (mediaControlView.mSettingsMode == 2) {
                                mediaControlView.mSubSettingsAdapter.setCheckPosition(mediaControlView.mSelectedSubtitleTrackIndex + 1);
                            }
                            MediaControlView mediaControlView2 = MediaControlView.this;
                            mediaControlView2.mSubtitleButton.setImageDrawable(mediaControlView2.mResources.getDrawable(C0995R.C0996drawable.ic_subtitle_on));
                            MediaControlView mediaControlView3 = MediaControlView.this;
                            mediaControlView3.mSubtitleButton.setContentDescription(mediaControlView3.mResources.getString(C0995R.string.mcv2_cc_is_on));
                            return;
                        }
                    }
                } else if (trackInfo.getTrackType() == 2) {
                    for (int i2 = 0; i2 < MediaControlView.this.mAudioTracks.size(); i2++) {
                        if (MediaControlView.this.mAudioTracks.get(i2).equals(trackInfo)) {
                            MediaControlView mediaControlView4 = MediaControlView.this;
                            mediaControlView4.mSelectedAudioTrackIndex = i2;
                            mediaControlView4.mSettingsSubTextsList.set(0, mediaControlView4.mSubSettingsAdapter.getMainText(mediaControlView4.mSelectedAudioTrackIndex));
                            return;
                        }
                    }
                }
            }
        }

        @Override // androidx.media2.widget.PlayerWrapper.PlayerCallback
        public void onVideoSizeChanged(@NonNull PlayerWrapper playerWrapper, @NonNull MediaItem mediaItem, @NonNull VideoSize videoSize) {
            List<SessionPlayer.TrackInfo> trackInfo;
            if (playerWrapper == MediaControlView.this.mPlayer) {
                if (MediaControlView.DEBUG) {
                    String str = "onVideoSizeChanged(): " + videoSize;
                }
                if (MediaControlView.this.mVideoTrackCount == 0 && videoSize.getHeight() > 0 && videoSize.getWidth() > 0 && (trackInfo = playerWrapper.getTrackInfo()) != null) {
                    MediaControlView.this.updateTracks(playerWrapper, trackInfo);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$SettingsAdapter.class */
    public class SettingsAdapter extends BaseAdapter {
        public List<Integer> mIconIds;
        public List<String> mMainTexts;
        public List<String> mSubTexts;

        public SettingsAdapter(List<String> list, @Nullable List<String> list2, @Nullable List<Integer> list3) {
            this.mMainTexts = list;
            this.mSubTexts = list2;
            this.mIconIds = list3;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<String> list = this.mMainTexts;
            return list == null ? 0 : list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View inflateLayout = MediaControlView.inflateLayout(MediaControlView.this.getContext(), C0995R.layout.settings_list_item);
            TextView textView = (TextView) inflateLayout.findViewById(C0995R.C0997id.main_text);
            TextView textView2 = (TextView) inflateLayout.findViewById(C0995R.C0997id.sub_text);
            ImageView imageView = (ImageView) inflateLayout.findViewById(C0995R.C0997id.icon);
            textView.setText(this.mMainTexts.get(i));
            List<String> list = this.mSubTexts;
            if (list == null || "".equals(list.get(i))) {
                textView2.setVisibility(8);
            } else {
                textView2.setText(this.mSubTexts.get(i));
            }
            List<Integer> list2 = this.mIconIds;
            if (list2 == null || list2.get(i).intValue() == -1) {
                imageView.setVisibility(8);
            } else {
                imageView.setImageDrawable(MediaControlView.this.mResources.getDrawable(this.mIconIds.get(i).intValue()));
            }
            return inflateLayout;
        }

        public void setSubTexts(List<String> list) {
            this.mSubTexts = list;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$SubSettingsAdapter.class */
    public class SubSettingsAdapter extends BaseAdapter {
        public int mCheckPosition;
        public List<String> mTexts;

        public SubSettingsAdapter(List<String> list, int i) {
            this.mTexts = list;
            this.mCheckPosition = i;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<String> list = this.mTexts;
            return list == null ? 0 : list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public String getMainText(int i) {
            List<String> list = this.mTexts;
            return (list == null || i >= list.size()) ? "" : this.mTexts.get(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View inflateLayout = MediaControlView.inflateLayout(MediaControlView.this.getContext(), C0995R.layout.sub_settings_list_item);
            TextView textView = (TextView) inflateLayout.findViewById(C0995R.C0997id.text);
            ImageView imageView = (ImageView) inflateLayout.findViewById(C0995R.C0997id.check);
            textView.setText(this.mTexts.get(i));
            if (i != this.mCheckPosition) {
                imageView.setVisibility(4);
            }
            return inflateLayout;
        }

        public void setCheckPosition(int i) {
            this.mCheckPosition = i;
        }

        public void setTexts(List<String> list) {
            this.mTexts = list;
        }
    }

    public MediaControlView(@NonNull Context context) {
        this(context, null);
    }

    public MediaControlView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MediaControlView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mIsAttachedToVideoView = false;
        this.mSizeType = -1;
        this.mTransportControlsMap = new SparseArray<>();
        this.mAudioTracks = new ArrayList();
        this.mSubtitleTracks = new ArrayList();
        this.mUpdateProgress = new Runnable() { // from class: androidx.media2.widget.MediaControlView.14
            @Override // java.lang.Runnable
            public void run() {
                PlayerWrapper playerWrapper;
                boolean z = MediaControlView.this.getVisibility() == 0;
                MediaControlView mediaControlView = MediaControlView.this;
                if (!mediaControlView.mDragging && z && (playerWrapper = mediaControlView.mPlayer) != null && playerWrapper.isPlaying()) {
                    long progress = MediaControlView.this.setProgress();
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    mediaControlView2.postDelayedRunnable(mediaControlView2.mUpdateProgress, 1000 - (progress % 1000));
                }
            }
        };
        this.mShowAllBars = new Runnable() { // from class: androidx.media2.widget.MediaControlView.15
            @Override // java.lang.Runnable
            public void run() {
                MediaControlView mediaControlView = MediaControlView.this;
                int i2 = mediaControlView.mUxState;
                if (i2 == 1) {
                    mediaControlView.mShowMainBarsAnimator.start();
                } else if (i2 == 2) {
                    mediaControlView.mShowAllBarsAnimator.start();
                } else if (i2 == 3) {
                    mediaControlView.mNeedToShowBars = true;
                }
                if (MediaControlView.this.mPlayer.isPlaying()) {
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    mediaControlView2.postDelayedRunnable(mediaControlView2.mHideMainBars, mediaControlView2.mDelayedAnimationIntervalMs);
                }
            }
        };
        this.mHideAllBars = new Runnable() { // from class: androidx.media2.widget.MediaControlView.16
            @Override // java.lang.Runnable
            public void run() {
                if (!MediaControlView.this.shouldNotHideBars()) {
                    MediaControlView.this.mHideAllBarsAnimator.start();
                }
            }
        };
        this.mHideMainBars = new Runnable() { // from class: androidx.media2.widget.MediaControlView.17
            @Override // java.lang.Runnable
            public void run() {
                if (MediaControlView.this.mPlayer.isPlaying() && !MediaControlView.this.shouldNotHideBars()) {
                    MediaControlView.this.mHideMainBarsAnimator.start();
                    MediaControlView mediaControlView = MediaControlView.this;
                    mediaControlView.postDelayedRunnable(mediaControlView.mHideProgressBar, mediaControlView.mDelayedAnimationIntervalMs);
                }
            }
        };
        this.mHideProgressBar = new Runnable() { // from class: androidx.media2.widget.MediaControlView.18
            @Override // java.lang.Runnable
            public void run() {
                if (MediaControlView.this.mPlayer.isPlaying() && !MediaControlView.this.shouldNotHideBars()) {
                    MediaControlView.this.mHideProgressBarAnimator.start();
                }
            }
        };
        this.mSeekListener = new SeekBar.OnSeekBarChangeListener() { // from class: androidx.media2.widget.MediaControlView.19
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
                MediaControlView mediaControlView = MediaControlView.this;
                if (mediaControlView.mPlayer != null && mediaControlView.mSeekAvailable && z && mediaControlView.mDragging) {
                    long j = mediaControlView.mDuration;
                    if (j > 0) {
                        MediaControlView.this.seekTo((j * i2) / 1000, !mediaControlView.isCurrentMediaItemFromNetwork());
                    }
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                MediaControlView mediaControlView = MediaControlView.this;
                if (mediaControlView.mPlayer != null && mediaControlView.mSeekAvailable) {
                    mediaControlView.mDragging = true;
                    mediaControlView.removeCallbacks(mediaControlView.mUpdateProgress);
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    mediaControlView2.removeCallbacks(mediaControlView2.mHideMainBars);
                    MediaControlView mediaControlView3 = MediaControlView.this;
                    mediaControlView3.removeCallbacks(mediaControlView3.mHideProgressBar);
                    MediaControlView mediaControlView4 = MediaControlView.this;
                    if (mediaControlView4.mIsShowingReplayButton) {
                        mediaControlView4.updateReplayButton(false);
                    }
                    if (MediaControlView.this.isCurrentMediaItemFromNetwork() && MediaControlView.this.mPlayer.isPlaying()) {
                        MediaControlView mediaControlView5 = MediaControlView.this;
                        mediaControlView5.mWasPlaying = true;
                        mediaControlView5.mPlayer.pause();
                    }
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                MediaControlView mediaControlView = MediaControlView.this;
                if (mediaControlView.mPlayer != null && mediaControlView.mSeekAvailable) {
                    mediaControlView.mDragging = false;
                    long latestSeekPosition = mediaControlView.getLatestSeekPosition();
                    if (MediaControlView.this.isCurrentMediaItemFromNetwork()) {
                        MediaControlView mediaControlView2 = MediaControlView.this;
                        mediaControlView2.mCurrentSeekPosition = -1L;
                        mediaControlView2.mNextSeekPosition = -1L;
                    }
                    MediaControlView.this.seekTo(latestSeekPosition, true);
                    MediaControlView mediaControlView3 = MediaControlView.this;
                    if (mediaControlView3.mWasPlaying) {
                        mediaControlView3.mWasPlaying = false;
                        mediaControlView3.mPlayer.play();
                    }
                }
            }
        };
        this.mPlayPauseListener = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.20
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaControlView mediaControlView = MediaControlView.this;
                if (mediaControlView.mPlayer != null) {
                    mediaControlView.resetHideCallbacks();
                    MediaControlView.this.togglePausePlayState();
                }
            }
        };
        this.mRewListener = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.21
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaControlView mediaControlView = MediaControlView.this;
                if (mediaControlView.mPlayer != null) {
                    mediaControlView.resetHideCallbacks();
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    mediaControlView2.removeCallbacks(mediaControlView2.mUpdateProgress);
                    MediaControlView mediaControlView3 = MediaControlView.this;
                    boolean z = mediaControlView3.mIsShowingReplayButton && mediaControlView3.mDuration != 0;
                    MediaControlView mediaControlView4 = MediaControlView.this;
                    MediaControlView.this.seekTo(Math.max((z ? mediaControlView4.mDuration : mediaControlView4.getLatestSeekPosition()) - 10000, 0L), true);
                    if (z) {
                        MediaControlView.this.updateReplayButton(false);
                    }
                }
            }
        };
        this.mFfwdListener = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.22
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaControlView mediaControlView = MediaControlView.this;
                if (mediaControlView.mPlayer != null) {
                    mediaControlView.resetHideCallbacks();
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    mediaControlView2.removeCallbacks(mediaControlView2.mUpdateProgress);
                    long latestSeekPosition = MediaControlView.this.getLatestSeekPosition();
                    MediaControlView mediaControlView3 = MediaControlView.this;
                    long j = latestSeekPosition + 30000;
                    mediaControlView3.seekTo(Math.min(j, mediaControlView3.mDuration), true);
                    MediaControlView mediaControlView4 = MediaControlView.this;
                    if (j >= mediaControlView4.mDuration && !mediaControlView4.mPlayer.isPlaying()) {
                        MediaControlView.this.updateReplayButton(true);
                    }
                }
            }
        };
        this.mNextListener = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.23
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaControlView mediaControlView = MediaControlView.this;
                if (mediaControlView.mPlayer != null) {
                    mediaControlView.resetHideCallbacks();
                    MediaControlView.this.mPlayer.skipToNextItem();
                }
            }
        };
        this.mPrevListener = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.24
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaControlView mediaControlView = MediaControlView.this;
                if (mediaControlView.mPlayer != null) {
                    mediaControlView.resetHideCallbacks();
                    MediaControlView.this.mPlayer.skipToPreviousItem();
                }
            }
        };
        this.mSubtitleListener = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.25
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaControlView mediaControlView = MediaControlView.this;
                if (mediaControlView.mPlayer != null) {
                    mediaControlView.removeCallbacks(mediaControlView.mHideMainBars);
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    mediaControlView2.removeCallbacks(mediaControlView2.mHideProgressBar);
                    MediaControlView mediaControlView3 = MediaControlView.this;
                    mediaControlView3.mSettingsMode = 2;
                    mediaControlView3.mSubSettingsAdapter.setTexts(mediaControlView3.mSubtitleDescriptionsList);
                    MediaControlView mediaControlView4 = MediaControlView.this;
                    mediaControlView4.mSubSettingsAdapter.setCheckPosition(mediaControlView4.mSelectedSubtitleTrackIndex + 1);
                    MediaControlView mediaControlView5 = MediaControlView.this;
                    mediaControlView5.displaySettingsWindow(mediaControlView5.mSubSettingsAdapter);
                }
            }
        };
        this.mFullScreenListener = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.26
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaControlView mediaControlView = MediaControlView.this;
                if (mediaControlView.mOnFullScreenListener != null) {
                    boolean z = !mediaControlView.mIsFullScreen;
                    if (z) {
                        mediaControlView.mFullScreenButton.setImageDrawable(mediaControlView.mResources.getDrawable(C0995R.C0996drawable.ic_fullscreen_exit));
                        MediaControlView mediaControlView2 = MediaControlView.this;
                        mediaControlView2.mMinimalFullScreenButton.setImageDrawable(mediaControlView2.mResources.getDrawable(C0995R.C0996drawable.ic_fullscreen_exit));
                    } else {
                        mediaControlView.mFullScreenButton.setImageDrawable(mediaControlView.mResources.getDrawable(C0995R.C0996drawable.ic_fullscreen));
                        MediaControlView mediaControlView3 = MediaControlView.this;
                        mediaControlView3.mMinimalFullScreenButton.setImageDrawable(mediaControlView3.mResources.getDrawable(C0995R.C0996drawable.ic_fullscreen));
                    }
                    MediaControlView mediaControlView4 = MediaControlView.this;
                    mediaControlView4.mIsFullScreen = z;
                    mediaControlView4.mOnFullScreenListener.onFullScreen(mediaControlView4, mediaControlView4.mIsFullScreen);
                }
            }
        };
        this.mOverflowShowListener = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.27
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaControlView mediaControlView = MediaControlView.this;
                if (mediaControlView.mPlayer != null) {
                    mediaControlView.resetHideCallbacks();
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    mediaControlView2.mOverflowIsShowing = true;
                    mediaControlView2.mOverflowShowAnimator.start();
                }
            }
        };
        this.mOverflowHideListener = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.28
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaControlView mediaControlView = MediaControlView.this;
                if (mediaControlView.mPlayer != null) {
                    mediaControlView.resetHideCallbacks();
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    mediaControlView2.mOverflowIsShowing = false;
                    mediaControlView2.mOverflowHideAnimator.start();
                }
            }
        };
        this.mSettingsButtonListener = new View.OnClickListener() { // from class: androidx.media2.widget.MediaControlView.29
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaControlView mediaControlView = MediaControlView.this;
                if (mediaControlView.mPlayer != null) {
                    mediaControlView.removeCallbacks(mediaControlView.mHideMainBars);
                    MediaControlView mediaControlView2 = MediaControlView.this;
                    mediaControlView2.removeCallbacks(mediaControlView2.mHideProgressBar);
                    MediaControlView mediaControlView3 = MediaControlView.this;
                    mediaControlView3.mSettingsMode = 3;
                    mediaControlView3.mSettingsAdapter.setSubTexts(mediaControlView3.mSettingsSubTextsList);
                    MediaControlView mediaControlView4 = MediaControlView.this;
                    mediaControlView4.displaySettingsWindow(mediaControlView4.mSettingsAdapter);
                }
            }
        };
        this.mSettingsItemClickListener = new AdapterView.OnItemClickListener() { // from class: androidx.media2.widget.MediaControlView.30
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                MediaControlView mediaControlView = MediaControlView.this;
                int i3 = mediaControlView.mSettingsMode;
                if (i3 == 0) {
                    if (i2 != mediaControlView.mSelectedAudioTrackIndex && mediaControlView.mAudioTracks.size() > 0) {
                        MediaControlView mediaControlView2 = MediaControlView.this;
                        mediaControlView2.mPlayer.selectTrack(mediaControlView2.mAudioTracks.get(i2));
                    }
                    MediaControlView.this.dismissSettingsWindow();
                } else if (i3 == 1) {
                    if (i2 != mediaControlView.mSelectedSpeedIndex) {
                        MediaControlView.this.mPlayer.setPlaybackSpeed(mediaControlView.mPlaybackSpeedMultBy100List.get(i2).intValue() / 100.0f);
                    }
                    MediaControlView.this.dismissSettingsWindow();
                } else if (i3 == 2) {
                    int i4 = mediaControlView.mSelectedSubtitleTrackIndex;
                    if (i2 != i4 + 1) {
                        if (i2 > 0) {
                            mediaControlView.mPlayer.selectTrack(mediaControlView.mSubtitleTracks.get(i2 - 1));
                        } else {
                            mediaControlView.mPlayer.deselectTrack(mediaControlView.mSubtitleTracks.get(i4));
                        }
                    }
                    MediaControlView.this.dismissSettingsWindow();
                } else if (i3 == 3) {
                    if (i2 == 0) {
                        mediaControlView.mSubSettingsAdapter.setTexts(mediaControlView.mAudioTrackDescriptionList);
                        MediaControlView mediaControlView3 = MediaControlView.this;
                        mediaControlView3.mSubSettingsAdapter.setCheckPosition(mediaControlView3.mSelectedAudioTrackIndex);
                        MediaControlView.this.mSettingsMode = 0;
                    } else if (i2 == 1) {
                        mediaControlView.mSubSettingsAdapter.setTexts(mediaControlView.mPlaybackSpeedTextList);
                        MediaControlView mediaControlView4 = MediaControlView.this;
                        mediaControlView4.mSubSettingsAdapter.setCheckPosition(mediaControlView4.mSelectedSpeedIndex);
                        MediaControlView.this.mSettingsMode = 1;
                    }
                    MediaControlView mediaControlView5 = MediaControlView.this;
                    mediaControlView5.displaySettingsWindow(mediaControlView5.mSubSettingsAdapter);
                }
            }
        };
        this.mSettingsDismissListener = new PopupWindow.OnDismissListener() { // from class: androidx.media2.widget.MediaControlView.31
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                MediaControlView mediaControlView = MediaControlView.this;
                if (mediaControlView.mNeedToHideBars) {
                    mediaControlView.postDelayedRunnable(mediaControlView.mHideMainBars, mediaControlView.mDelayedAnimationIntervalMs);
                }
            }
        };
        this.mResources = context.getResources();
        ViewGroup.inflate(context, C0995R.layout.media_controller, this);
        initControllerView();
        this.mDelayedAnimationIntervalMs = 2000L;
        this.mAccessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
    }

    private boolean hasActualVideo() {
        if (this.mVideoTrackCount > 0) {
            return true;
        }
        VideoSize videoSize = this.mPlayer.getVideoSize();
        if (videoSize.getHeight() <= 0 || videoSize.getWidth() <= 0) {
            return false;
        }
        String str = "video track count is zero, but it renders video. size: " + videoSize;
        return true;
    }

    private void hideMediaControlView() {
        if (!shouldNotHideBars() && this.mUxState != 3) {
            removeCallbacks(this.mHideMainBars);
            removeCallbacks(this.mHideProgressBar);
            post(this.mHideAllBars);
        }
    }

    public static View inflateLayout(Context context, int i) {
        return ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(i, (ViewGroup) null);
    }

    private void initControllerView() {
        this.mTitleBar = findViewById(C0995R.C0997id.title_bar);
        this.mTitleView = (TextView) findViewById(C0995R.C0997id.title_text);
        this.mAdExternalLink = findViewById(C0995R.C0997id.ad_external_link);
        this.mCenterView = (ViewGroup) findViewById(C0995R.C0997id.center_view);
        this.mCenterViewBackground = findViewById(C0995R.C0997id.center_view_background);
        this.mEmbeddedTransportControls = initTransportControls(C0995R.C0997id.embedded_transport_controls);
        this.mMinimalTransportControls = initTransportControls(C0995R.C0997id.minimal_transport_controls);
        this.mMinimalFullScreenView = (ViewGroup) findViewById(C0995R.C0997id.minimal_fullscreen_view);
        this.mMinimalFullScreenButton = (ImageButton) findViewById(C0995R.C0997id.minimal_fullscreen);
        this.mMinimalFullScreenButton.setOnClickListener(this.mFullScreenListener);
        this.mProgressBar = (ViewGroup) findViewById(C0995R.C0997id.progress_bar);
        this.mProgress = (SeekBar) findViewById(C0995R.C0997id.progress);
        this.mProgress.setOnSeekBarChangeListener(this.mSeekListener);
        this.mProgress.setMax(1000);
        this.mCurrentSeekPosition = -1L;
        this.mNextSeekPosition = -1L;
        this.mBottomBarBackground = findViewById(C0995R.C0997id.bottom_bar_background);
        this.mBottomBarLeft = (ViewGroup) findViewById(C0995R.C0997id.bottom_bar_left);
        this.mFullTransportControls = initTransportControls(C0995R.C0997id.full_transport_controls);
        this.mTimeView = (ViewGroup) findViewById(C0995R.C0997id.time);
        this.mEndTime = (TextView) findViewById(C0995R.C0997id.time_end);
        this.mCurrentTime = (TextView) findViewById(C0995R.C0997id.time_current);
        this.mAdSkipView = (TextView) findViewById(C0995R.C0997id.ad_skip_time);
        this.mFormatBuilder = new StringBuilder();
        this.mFormatter = new Formatter(this.mFormatBuilder, Locale.getDefault());
        this.mBasicControls = (ViewGroup) findViewById(C0995R.C0997id.basic_controls);
        this.mExtraControls = (ViewGroup) findViewById(C0995R.C0997id.extra_controls);
        this.mSubtitleButton = (ImageButton) findViewById(C0995R.C0997id.subtitle);
        this.mSubtitleButton.setOnClickListener(this.mSubtitleListener);
        this.mFullScreenButton = (ImageButton) findViewById(C0995R.C0997id.fullscreen);
        this.mFullScreenButton.setOnClickListener(this.mFullScreenListener);
        ((ImageButton) findViewById(C0995R.C0997id.overflow_show)).setOnClickListener(this.mOverflowShowListener);
        ((ImageButton) findViewById(C0995R.C0997id.overflow_hide)).setOnClickListener(this.mOverflowHideListener);
        ((ImageButton) findViewById(C0995R.C0997id.settings)).setOnClickListener(this.mSettingsButtonListener);
        this.mAdRemainingView = (TextView) findViewById(C0995R.C0997id.ad_remaining);
        initializeSettingsLists();
        this.mSettingsListView = (ListView) inflateLayout(getContext(), C0995R.layout.settings_list);
        this.mSettingsAdapter = new SettingsAdapter(this.mSettingsMainTextsList, this.mSettingsSubTextsList, this.mSettingsIconIdsList);
        this.mSubSettingsAdapter = new SubSettingsAdapter(null, 0);
        this.mSettingsListView.setAdapter((ListAdapter) this.mSettingsAdapter);
        this.mSettingsListView.setChoiceMode(1);
        this.mSettingsListView.setOnItemClickListener(this.mSettingsItemClickListener);
        this.mTransportControlsMap.append(0, this.mEmbeddedTransportControls);
        this.mTransportControlsMap.append(1, this.mFullTransportControls);
        this.mTransportControlsMap.append(2, this.mMinimalTransportControls);
        this.mEmbeddedSettingsItemWidth = this.mResources.getDimensionPixelSize(C0995R.dimen.mcv2_embedded_settings_width);
        this.mFullSettingsItemWidth = this.mResources.getDimensionPixelSize(C0995R.dimen.mcv2_full_settings_width);
        this.mSettingsItemHeight = this.mResources.getDimensionPixelSize(C0995R.dimen.mcv2_settings_height);
        this.mSettingsWindowMargin = this.mResources.getDimensionPixelSize(C0995R.dimen.mcv2_settings_offset) * (-1);
        this.mSettingsWindow = new PopupWindow((View) this.mSettingsListView, this.mEmbeddedSettingsItemWidth, -2, true);
        this.mSettingsWindow.setBackgroundDrawable(new ColorDrawable());
        this.mSettingsWindow.setOnDismissListener(this.mSettingsDismissListener);
        float dimension = this.mResources.getDimension(C0995R.dimen.mcv2_title_bar_height);
        float dimension2 = this.mResources.getDimension(C0995R.dimen.mcv2_custom_progress_thumb_size);
        float dimension3 = this.mResources.getDimension(C0995R.dimen.mcv2_bottom_bar_height);
        View[] viewArr = {this.mBottomBarBackground, this.mBottomBarLeft, this.mTimeView, this.mBasicControls, this.mExtraControls, this.mProgressBar};
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.media2.widget.MediaControlView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                MediaControlView.this.mProgress.getThumb().setLevel((int) ((MediaControlView.this.mSizeType == 2 ? 0 : 10000) * floatValue));
                MediaControlView.this.mCenterView.setAlpha(floatValue);
                MediaControlView.this.mMinimalFullScreenView.setAlpha(floatValue);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                MediaControlView.this.mCenterView.setVisibility(4);
                MediaControlView.this.mMinimalFullScreenView.setVisibility(4);
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.media2.widget.MediaControlView.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                MediaControlView.this.mProgress.getThumb().setLevel((int) ((MediaControlView.this.mSizeType == 2 ? 0 : 10000) * floatValue));
                MediaControlView.this.mCenterView.setAlpha(floatValue);
                MediaControlView.this.mMinimalFullScreenView.setAlpha(floatValue);
            }
        });
        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                MediaControlView.this.mCenterView.setVisibility(0);
                MediaControlView.this.mMinimalFullScreenView.setVisibility(0);
            }
        });
        this.mHideMainBarsAnimator = new AnimatorSet();
        AnimatorSet.Builder play = this.mHideMainBarsAnimator.play(ofFloat);
        float f = -dimension;
        play.with(AnimatorUtil.ofTranslationY(0.0f, f, this.mTitleBar)).with(AnimatorUtil.ofTranslationYTogether(0.0f, dimension3, viewArr));
        this.mHideMainBarsAnimator.setDuration(250L);
        this.mHideMainBarsAnimator.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.mUxState = 1;
                if (mediaControlView.mNeedToShowBars) {
                    mediaControlView.post(mediaControlView.mShowAllBars);
                    MediaControlView.this.mNeedToShowBars = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                MediaControlView.this.mUxState = 3;
            }
        });
        float f2 = dimension2 + dimension3;
        this.mHideProgressBarAnimator = AnimatorUtil.ofTranslationYTogether(dimension3, f2, viewArr);
        this.mHideProgressBarAnimator.setDuration(250L);
        this.mHideProgressBarAnimator.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.mUxState = 2;
                if (mediaControlView.mNeedToShowBars) {
                    mediaControlView.post(mediaControlView.mShowAllBars);
                    MediaControlView.this.mNeedToShowBars = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                MediaControlView.this.mUxState = 3;
            }
        });
        this.mHideAllBarsAnimator = new AnimatorSet();
        this.mHideAllBarsAnimator.play(ofFloat).with(AnimatorUtil.ofTranslationY(0.0f, f, this.mTitleBar)).with(AnimatorUtil.ofTranslationYTogether(0.0f, f2, viewArr));
        this.mHideAllBarsAnimator.setDuration(250L);
        this.mHideAllBarsAnimator.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                MediaControlView mediaControlView = MediaControlView.this;
                mediaControlView.mUxState = 2;
                if (mediaControlView.mNeedToShowBars) {
                    mediaControlView.post(mediaControlView.mShowAllBars);
                    MediaControlView.this.mNeedToShowBars = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                MediaControlView.this.mUxState = 3;
            }
        });
        this.mShowMainBarsAnimator = new AnimatorSet();
        this.mShowMainBarsAnimator.play(ofFloat2).with(AnimatorUtil.ofTranslationY(f, 0.0f, this.mTitleBar)).with(AnimatorUtil.ofTranslationYTogether(dimension3, 0.0f, viewArr));
        this.mShowMainBarsAnimator.setDuration(250L);
        this.mShowMainBarsAnimator.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                MediaControlView.this.mUxState = 0;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                MediaControlView.this.mUxState = 3;
            }
        });
        this.mShowAllBarsAnimator = new AnimatorSet();
        this.mShowAllBarsAnimator.play(ofFloat2).with(AnimatorUtil.ofTranslationY(f, 0.0f, this.mTitleBar)).with(AnimatorUtil.ofTranslationYTogether(f2, 0.0f, viewArr));
        this.mShowAllBarsAnimator.setDuration(250L);
        this.mShowAllBarsAnimator.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                MediaControlView.this.mUxState = 0;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                MediaControlView.this.mUxState = 3;
            }
        });
        this.mOverflowShowAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.mOverflowShowAnimator.setDuration(250L);
        this.mOverflowShowAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.media2.widget.MediaControlView.10
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                MediaControlView.this.animateOverflow(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        this.mOverflowShowAnimator.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.11
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                int i = 4;
                MediaControlView.this.mBasicControls.setVisibility(4);
                ImageButton findFullSizedControlButton = MediaControlView.this.findFullSizedControlButton(C0995R.C0997id.ffwd);
                PlayerWrapper playerWrapper = MediaControlView.this.mPlayer;
                if (playerWrapper == null || !playerWrapper.canSeekForward()) {
                    i = 8;
                }
                findFullSizedControlButton.setVisibility(i);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                MediaControlView.this.mExtraControls.setVisibility(0);
            }
        });
        this.mOverflowHideAnimator = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.mOverflowHideAnimator.setDuration(250L);
        this.mOverflowHideAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.media2.widget.MediaControlView.12
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                MediaControlView.this.animateOverflow(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        this.mOverflowHideAnimator.addListener(new AnimatorListenerAdapter() { // from class: androidx.media2.widget.MediaControlView.13
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                MediaControlView.this.mExtraControls.setVisibility(8);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                int i = 0;
                MediaControlView.this.mBasicControls.setVisibility(0);
                ImageButton findFullSizedControlButton = MediaControlView.this.findFullSizedControlButton(C0995R.C0997id.ffwd);
                PlayerWrapper playerWrapper = MediaControlView.this.mPlayer;
                if (playerWrapper == null || !playerWrapper.canSeekForward()) {
                    i = 8;
                }
                findFullSizedControlButton.setVisibility(i);
            }
        });
    }

    private View initTransportControls(int i) {
        View findViewById = findViewById(i);
        ImageButton imageButton = (ImageButton) findViewById.findViewById(C0995R.C0997id.pause);
        if (imageButton != null) {
            imageButton.setOnClickListener(this.mPlayPauseListener);
        }
        ImageButton imageButton2 = (ImageButton) findViewById.findViewById(C0995R.C0997id.ffwd);
        if (imageButton2 != null) {
            imageButton2.setOnClickListener(this.mFfwdListener);
        }
        ImageButton imageButton3 = (ImageButton) findViewById.findViewById(C0995R.C0997id.rew);
        if (imageButton3 != null) {
            imageButton3.setOnClickListener(this.mRewListener);
        }
        ImageButton imageButton4 = (ImageButton) findViewById.findViewById(C0995R.C0997id.next);
        if (imageButton4 != null) {
            imageButton4.setOnClickListener(this.mNextListener);
        }
        ImageButton imageButton5 = (ImageButton) findViewById.findViewById(C0995R.C0997id.prev);
        if (imageButton5 != null) {
            imageButton5.setOnClickListener(this.mPrevListener);
        }
        return findViewById;
    }

    private void initializeSettingsLists() {
        this.mSettingsMainTextsList = new ArrayList();
        this.mSettingsMainTextsList.add(this.mResources.getString(C0995R.string.MediaControlView_audio_track_text));
        this.mSettingsMainTextsList.add(this.mResources.getString(C0995R.string.MediaControlView_playback_speed_text));
        this.mSettingsSubTextsList = new ArrayList();
        this.mSettingsSubTextsList.add(this.mResources.getString(C0995R.string.MediaControlView_audio_track_none_text));
        String string = this.mResources.getString(C0995R.string.MediaControlView_playback_speed_normal);
        this.mSettingsSubTextsList.add(string);
        this.mSettingsSubTextsList.add("");
        this.mSettingsIconIdsList = new ArrayList();
        this.mSettingsIconIdsList.add(Integer.valueOf(C0995R.C0996drawable.ic_audiotrack));
        this.mSettingsIconIdsList.add(Integer.valueOf(C0995R.C0996drawable.ic_speed));
        this.mAudioTrackDescriptionList = new ArrayList();
        this.mAudioTrackDescriptionList.add(this.mResources.getString(C0995R.string.MediaControlView_audio_track_none_text));
        this.mPlaybackSpeedTextList = new ArrayList(Arrays.asList(this.mResources.getStringArray(C0995R.array.MediaControlView_playback_speeds)));
        this.mPlaybackSpeedTextList.add(3, string);
        this.mSelectedSpeedIndex = 3;
        this.mPlaybackSpeedMultBy100List = new ArrayList();
        for (int i : this.mResources.getIntArray(C0995R.array.speed_multiplied_by_100)) {
            this.mPlaybackSpeedMultBy100List.add(Integer.valueOf(i));
        }
        this.mCustomPlaybackSpeedIndex = -1;
    }

    private boolean isCurrentItemMusic() {
        return !hasActualVideo() && this.mAudioTracks.size() > 0;
    }

    private void layoutChild(View view, int i, int i2) {
        view.layout(i, i2, view.getMeasuredWidth() + i, view.getMeasuredHeight() + i2);
    }

    private void showMediaControlView() {
        if (this.mUxState != 3) {
            removeCallbacks(this.mHideMainBars);
            removeCallbacks(this.mHideProgressBar);
            post(this.mShowAllBars);
        }
    }

    private void updateLayoutForSizeChange(int i) {
        if (i == 0 || i == 1) {
            this.mProgress.getThumb().setLevel(10000);
        } else if (i == 2) {
            this.mProgress.getThumb().setLevel(0);
        }
        updateReplayButton(this.mIsShowingReplayButton);
    }

    public void animateOverflow(float f) {
        this.mExtraControls.setTranslationX(((int) (this.mExtraControls.getWidth() * f)) * (-1));
        float f2 = 1.0f - f;
        this.mTimeView.setAlpha(f2);
        this.mBasicControls.setAlpha(f2);
        this.mFullTransportControls.setTranslationX(((int) (findFullSizedControlButton(C0995R.C0997id.pause).getLeft() * f)) * (-1));
        findFullSizedControlButton(C0995R.C0997id.ffwd).setAlpha(f2);
    }

    public void dismissSettingsWindow() {
        this.mNeedToHideBars = true;
        this.mSettingsWindow.dismiss();
    }

    public void displaySettingsWindow(BaseAdapter baseAdapter) {
        this.mSettingsListView.setAdapter((ListAdapter) baseAdapter);
        this.mSettingsWindow.setWidth(this.mSizeType == 0 ? this.mEmbeddedSettingsItemWidth : this.mFullSettingsItemWidth);
        int measuredHeight = getMeasuredHeight() + (this.mSettingsWindowMargin * 2);
        int count = baseAdapter.getCount() * this.mSettingsItemHeight;
        if (count >= measuredHeight) {
            count = measuredHeight;
        }
        this.mSettingsWindow.setHeight(count);
        this.mNeedToHideBars = false;
        this.mSettingsWindow.dismiss();
        if (count > 0) {
            PopupWindow popupWindow = this.mSettingsWindow;
            int i = this.mSettingsWindowMargin;
            popupWindow.showAsDropDown(this, i, i - count, 85);
            this.mNeedToHideBars = true;
        }
    }

    public void ensurePlayerIsNotNull() {
        if (this.mPlayer == null) {
            throw new IllegalStateException("mPlayer must not be null");
        }
    }

    @Nullable
    public ImageButton findControlButton(int i, @IdRes int i2) {
        View view = this.mTransportControlsMap.get(i);
        if (view == null) {
            return null;
        }
        return (ImageButton) view.findViewById(i2);
    }

    @NonNull
    public ImageButton findFullSizedControlButton(@IdRes int i) {
        ImageButton findControlButton = findControlButton(1, i);
        if (findControlButton != null) {
            return findControlButton;
        }
        throw new IllegalArgumentException("Couldn't find a view that has the given id");
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.media2.widget.MediaControlView";
    }

    public long getLatestSeekPosition() {
        ensurePlayerIsNotNull();
        long j = this.mNextSeekPosition;
        if (j != -1) {
            return j;
        }
        long j2 = this.mCurrentSeekPosition;
        return j2 != -1 ? j2 : this.mPlayer.getCurrentPosition();
    }

    public boolean isCurrentMediaItemFromNetwork() {
        ensurePlayerIsNotNull();
        MediaItem currentMediaItem = this.mPlayer.getCurrentMediaItem();
        if (!(currentMediaItem instanceof UriMediaItem)) {
            return false;
        }
        return UriUtil.isFromNetwork(((UriMediaItem) currentMediaItem).getUri());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        PlayerWrapper playerWrapper = this.mPlayer;
        if (playerWrapper != null) {
            playerWrapper.attachCallback();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        PlayerWrapper playerWrapper = this.mPlayer;
        if (playerWrapper != null) {
            playerWrapper.detachCallback();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = ((i3 - i) - getPaddingLeft()) - getPaddingRight();
        int paddingTop = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        int i5 = (this.mIsAdvertisement || ((this.mBottomBarLeft.getMeasuredWidth() + this.mTimeView.getMeasuredWidth()) + this.mBasicControls.getMeasuredWidth() <= paddingLeft && (this.mTitleBar.getMeasuredHeight() + this.mProgressBar.getMeasuredHeight()) + this.mBottomBarBackground.getMeasuredHeight() <= paddingTop)) ? 1 : (this.mTimeView.getMeasuredWidth() + this.mBasicControls.getMeasuredWidth() > paddingLeft || ((this.mTitleBar.getMeasuredHeight() + this.mEmbeddedTransportControls.getMeasuredHeight()) + this.mProgressBar.getMeasuredHeight()) + this.mBottomBarBackground.getMeasuredHeight() > paddingTop) ? 2 : 0;
        if (this.mSizeType != i5) {
            this.mSizeType = i5;
            updateLayoutForSizeChange(i5);
        }
        int i6 = 4;
        this.mTitleBar.setVisibility(i5 != 2 ? 0 : 4);
        this.mCenterViewBackground.setVisibility(i5 != 1 ? 0 : 4);
        this.mEmbeddedTransportControls.setVisibility(i5 == 0 ? 0 : 4);
        this.mMinimalTransportControls.setVisibility(i5 == 2 ? 0 : 4);
        this.mBottomBarBackground.setVisibility(i5 != 2 ? 0 : 4);
        this.mBottomBarLeft.setVisibility(i5 == 1 ? 0 : 4);
        this.mTimeView.setVisibility(i5 != 2 ? 0 : 4);
        this.mBasicControls.setVisibility(i5 != 2 ? 0 : 4);
        ImageButton imageButton = this.mMinimalFullScreenButton;
        if (i5 == 2) {
            i6 = 0;
        }
        imageButton.setVisibility(i6);
        int paddingLeft2 = getPaddingLeft();
        int i7 = paddingLeft + paddingLeft2;
        int paddingTop2 = getPaddingTop();
        int i8 = paddingTop + paddingTop2;
        layoutChild(this.mTitleBar, paddingLeft2, paddingTop2);
        layoutChild(this.mCenterView, paddingLeft2, paddingTop2);
        View view = this.mBottomBarBackground;
        layoutChild(view, paddingLeft2, i8 - view.getMeasuredHeight());
        ViewGroup viewGroup = this.mBottomBarLeft;
        layoutChild(viewGroup, paddingLeft2, i8 - viewGroup.getMeasuredHeight());
        layoutChild(this.mTimeView, i5 == 1 ? (i7 - this.mBasicControls.getMeasuredWidth()) - this.mTimeView.getMeasuredWidth() : paddingLeft2, i8 - this.mTimeView.getMeasuredHeight());
        ViewGroup viewGroup2 = this.mBasicControls;
        layoutChild(viewGroup2, i7 - viewGroup2.getMeasuredWidth(), i8 - this.mBasicControls.getMeasuredHeight());
        ViewGroup viewGroup3 = this.mExtraControls;
        layoutChild(viewGroup3, i7, i8 - viewGroup3.getMeasuredHeight());
        ViewGroup viewGroup4 = this.mProgressBar;
        layoutChild(viewGroup4, paddingLeft2, i5 == 2 ? i8 - viewGroup4.getMeasuredHeight() : (i8 - viewGroup4.getMeasuredHeight()) - this.mResources.getDimensionPixelSize(C0995R.dimen.mcv2_custom_progress_margin_bottom));
        ViewGroup viewGroup5 = this.mMinimalFullScreenView;
        layoutChild(viewGroup5, paddingLeft2, i8 - viewGroup5.getMeasuredHeight());
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int resolveSize = ViewGroup.resolveSize(getSuggestedMinimumWidth(), i);
        int resolveSize2 = ViewGroup.resolveSize(getSuggestedMinimumHeight(), i2);
        int paddingLeft = (resolveSize - getPaddingLeft()) - getPaddingRight();
        int paddingTop = (resolveSize2 - getPaddingTop()) - getPaddingBottom();
        if (paddingLeft < 0) {
            i3 = 16777216;
            paddingLeft = 0;
        } else {
            i3 = 0;
        }
        int i4 = i3;
        int i5 = paddingTop;
        if (paddingTop < 0) {
            i4 = i3 | 256;
            i5 = 0;
        }
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                int i7 = layoutParams.width;
                int makeMeasureSpec = i7 == -1 ? View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824) : i7 == -2 ? View.MeasureSpec.makeMeasureSpec(paddingLeft, 0) : View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
                int i8 = layoutParams.height;
                childAt.measure(makeMeasureSpec, i8 == -1 ? View.MeasureSpec.makeMeasureSpec(i5, 1073741824) : i8 == -2 ? View.MeasureSpec.makeMeasureSpec(i5, 0) : View.MeasureSpec.makeMeasureSpec(i8, 1073741824));
                i4 = childAt.getMeasuredState() | i4;
            }
        }
        setMeasuredDimension(ViewGroup.resolveSizeAndState(resolveSize, i, i4), ViewGroup.resolveSizeAndState(resolveSize2, i2, i4 << 16));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mPlayer == null) {
            return super.onTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() != 1) {
            return true;
        }
        if (isCurrentItemMusic() && this.mSizeType == 1) {
            return true;
        }
        if (this.mUxState == 0) {
            hideMediaControlView();
            return true;
        }
        showMediaControlView();
        return true;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (this.mPlayer == null) {
            return super.onTrackballEvent(motionEvent);
        }
        if (motionEvent.getAction() != 1) {
            return true;
        }
        if (isCurrentItemMusic() && this.mSizeType == 1) {
            return true;
        }
        if (this.mUxState == 0) {
            hideMediaControlView();
            return true;
        }
        showMediaControlView();
        return true;
    }

    @Override // androidx.media2.widget.MediaViewGroup, android.view.View
    @RequiresApi(24)
    public /* bridge */ /* synthetic */ void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
    }

    @Override // androidx.media2.widget.MediaViewGroup
    public void onVisibilityAggregatedCompat(boolean z) {
        super.onVisibilityAggregatedCompat(z);
        if (this.mPlayer != null) {
            if (z) {
                removeCallbacks(this.mUpdateProgress);
                post(this.mUpdateProgress);
                return;
            }
            removeCallbacks(this.mUpdateProgress);
        }
    }

    public void postDelayedRunnable(Runnable runnable, long j) {
        if (j != -1) {
            postDelayed(runnable, j);
        }
    }

    public void removeCustomSpeedFromList() {
        this.mPlaybackSpeedMultBy100List.remove(this.mCustomPlaybackSpeedIndex);
        this.mPlaybackSpeedTextList.remove(this.mCustomPlaybackSpeedIndex);
        this.mCustomPlaybackSpeedIndex = -1;
    }

    public void requestPlayButtonFocus() {
        ImageButton findControlButton = findControlButton(this.mSizeType, C0995R.C0997id.pause);
        if (findControlButton != null) {
            findControlButton.requestFocus();
        }
    }

    public void resetHideCallbacks() {
        removeCallbacks(this.mHideMainBars);
        removeCallbacks(this.mHideProgressBar);
        postDelayedRunnable(this.mHideMainBars, this.mDelayedAnimationIntervalMs);
    }

    public void seekTo(long j, boolean z) {
        ensurePlayerIsNotNull();
        long j2 = this.mDuration;
        this.mProgress.setProgress(j2 <= 0 ? 0 : (int) ((1000 * j) / j2));
        this.mCurrentTime.setText(stringForTime(j));
        if (this.mCurrentSeekPosition == -1) {
            this.mCurrentSeekPosition = j;
            if (z) {
                this.mPlayer.seekTo(this.mCurrentSeekPosition);
                return;
            }
            return;
        }
        this.mNextSeekPosition = j;
    }

    public void setAttachedToVideoView(boolean z) {
        this.mIsAttachedToVideoView = z;
    }

    public void setDelayedAnimationInterval(long j) {
        this.mDelayedAnimationIntervalMs = j;
    }

    public void setMediaController(@NonNull MediaController mediaController) {
        if (mediaController == null) {
            throw new NullPointerException("controller must not be null");
        } else if (!this.mIsAttachedToVideoView) {
            setMediaControllerInternal(mediaController);
        } else {
            throw new IllegalStateException("It's attached to VideoView. Use VideoView's method.");
        }
    }

    public void setMediaControllerInternal(@NonNull MediaController mediaController) {
        PlayerWrapper playerWrapper = this.mPlayer;
        if (playerWrapper != null) {
            playerWrapper.detachCallback();
        }
        this.mPlayer = new PlayerWrapper(mediaController, ContextCompat.getMainExecutor(getContext()), new PlayerCallback());
        if (isAttachedToWindow()) {
            this.mPlayer.attachCallback();
        }
    }

    public void setOnFullScreenListener(@Nullable OnFullScreenListener onFullScreenListener) {
        if (onFullScreenListener == null) {
            this.mOnFullScreenListener = null;
            this.mFullScreenButton.setVisibility(8);
            return;
        }
        this.mOnFullScreenListener = onFullScreenListener;
        this.mFullScreenButton.setVisibility(0);
    }

    public void setPlayer(@NonNull SessionPlayer sessionPlayer) {
        if (sessionPlayer == null) {
            throw new NullPointerException("player must not be null");
        } else if (!this.mIsAttachedToVideoView) {
            setPlayerInternal(sessionPlayer);
        } else {
            throw new IllegalStateException("It's attached to VideoView. Use VideoView's method.");
        }
    }

    public void setPlayerInternal(@NonNull SessionPlayer sessionPlayer) {
        PlayerWrapper playerWrapper = this.mPlayer;
        if (playerWrapper != null) {
            playerWrapper.detachCallback();
        }
        this.mPlayer = new PlayerWrapper(sessionPlayer, ContextCompat.getMainExecutor(getContext()), new PlayerCallback());
        if (isAttachedToWindow()) {
            this.mPlayer.attachCallback();
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long setProgress() {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.widget.MediaControlView.setProgress():long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r3.mSizeType != 1) goto L_0x0015;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean shouldNotHideBars() {
        /*
            r3 = this;
            r0 = r3
            boolean r0 = r0.isCurrentItemMusic()
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0015
            r0 = r5
            r4 = r0
            r0 = r3
            int r0 = r0.mSizeType
            r1 = 1
            if (r0 == r1) goto L_0x003f
        L_0x0015:
            r0 = r5
            r4 = r0
            r0 = r3
            android.view.accessibility.AccessibilityManager r0 = r0.mAccessibilityManager
            boolean r0 = r0.isTouchExplorationEnabled()
            if (r0 != 0) goto L_0x003f
            r0 = r5
            r4 = r0
            r0 = r3
            androidx.media2.widget.PlayerWrapper r0 = r0.mPlayer
            int r0 = r0.getPlayerState()
            r1 = 3
            if (r0 == r1) goto L_0x003f
            r0 = r3
            androidx.media2.widget.PlayerWrapper r0 = r0.mPlayer
            int r0 = r0.getPlayerState()
            if (r0 != 0) goto L_0x003d
            r0 = r5
            r4 = r0
            goto L_0x003f
        L_0x003d:
            r0 = 0
            r4 = r0
        L_0x003f:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.widget.MediaControlView.shouldNotHideBars():boolean");
    }

    public String stringForTime(long j) {
        long j2 = j / 1000;
        long j3 = j2 % 60;
        long j4 = (j2 / 60) % 60;
        long j5 = j2 / 3600;
        this.mFormatBuilder.setLength(0);
        return j5 > 0 ? this.mFormatter.format("%d:%02d:%02d", Long.valueOf(j5), Long.valueOf(j4), Long.valueOf(j3)).toString() : this.mFormatter.format("%02d:%02d", Long.valueOf(j4), Long.valueOf(j3)).toString();
    }

    public void togglePausePlayState() {
        ensurePlayerIsNotNull();
        if (this.mPlayer.isPlaying()) {
            this.mPlayer.pause();
            updatePlayButton(1);
            return;
        }
        if (this.mIsShowingReplayButton) {
            this.mPlayer.seekTo(0L);
        }
        this.mPlayer.play();
        updatePlayButton(0);
    }

    public void updateAllowedCommands() {
        ensurePlayerIsNotNull();
        boolean canPause = this.mPlayer.canPause();
        boolean canSeekBackward = this.mPlayer.canSeekBackward();
        boolean canSeekForward = this.mPlayer.canSeekForward();
        boolean canSkipToPrevious = this.mPlayer.canSkipToPrevious();
        boolean canSkipToNext = this.mPlayer.canSkipToNext();
        int size = this.mTransportControlsMap.size();
        int i = 0;
        while (true) {
            int i2 = 8;
            if (i >= size) {
                break;
            }
            int keyAt = this.mTransportControlsMap.keyAt(i);
            ImageButton findControlButton = findControlButton(keyAt, C0995R.C0997id.pause);
            if (findControlButton != null) {
                findControlButton.setVisibility(canPause ? 0 : 8);
            }
            ImageButton findControlButton2 = findControlButton(keyAt, C0995R.C0997id.rew);
            if (findControlButton2 != null) {
                findControlButton2.setVisibility(canSeekBackward ? 0 : 8);
            }
            ImageButton findControlButton3 = findControlButton(keyAt, C0995R.C0997id.ffwd);
            if (findControlButton3 != null) {
                findControlButton3.setVisibility(canSeekForward ? 0 : 8);
            }
            ImageButton findControlButton4 = findControlButton(keyAt, C0995R.C0997id.prev);
            if (findControlButton4 != null) {
                findControlButton4.setVisibility(canSkipToPrevious ? 0 : 8);
            }
            ImageButton findControlButton5 = findControlButton(keyAt, C0995R.C0997id.next);
            if (findControlButton5 != null) {
                if (canSkipToNext) {
                    i2 = 0;
                }
                findControlButton5.setVisibility(i2);
            }
            i++;
        }
        if (this.mPlayer.canSeekTo()) {
            this.mSeekAvailable = true;
            this.mProgress.setEnabled(true);
        }
        if (this.mPlayer.canSelectDeselectTrack()) {
            this.mSubtitleButton.setVisibility(0);
        } else {
            this.mSubtitleButton.setVisibility(8);
        }
    }

    public void updateLayoutForAd() {
        ensurePlayerIsNotNull();
        if (this.mIsAdvertisement) {
            findFullSizedControlButton(C0995R.C0997id.rew).setVisibility(8);
            findFullSizedControlButton(C0995R.C0997id.ffwd).setVisibility(8);
            findFullSizedControlButton(C0995R.C0997id.prev).setVisibility(8);
            findFullSizedControlButton(C0995R.C0997id.next).setVisibility(0);
            findFullSizedControlButton(C0995R.C0997id.next).setEnabled(false);
            findFullSizedControlButton(C0995R.C0997id.next).setColorFilter(C0995R.color.gray);
            this.mTimeView.setVisibility(8);
            this.mAdSkipView.setVisibility(0);
            this.mAdRemainingView.setVisibility(0);
            this.mAdExternalLink.setVisibility(0);
            this.mProgress.setEnabled(false);
            return;
        }
        findFullSizedControlButton(C0995R.C0997id.rew).setVisibility(this.mPlayer.canSeekBackward() ? 0 : 8);
        findFullSizedControlButton(C0995R.C0997id.ffwd).setVisibility(this.mPlayer.canSeekForward() ? 0 : 8);
        findFullSizedControlButton(C0995R.C0997id.prev).setVisibility(this.mPlayer.canSkipToPrevious() ? 0 : 8);
        findFullSizedControlButton(C0995R.C0997id.next).setVisibility(this.mPlayer.canSkipToNext() ? 0 : 8);
        findFullSizedControlButton(C0995R.C0997id.next).setEnabled(true);
        findFullSizedControlButton(C0995R.C0997id.next).clearColorFilter();
        this.mTimeView.setVisibility(0);
        this.mAdSkipView.setVisibility(8);
        this.mAdRemainingView.setVisibility(8);
        this.mAdExternalLink.setVisibility(8);
        this.mProgress.setEnabled(this.mSeekAvailable);
    }

    public void updatePlayButton(int i) {
        String str;
        Drawable drawable;
        ImageButton findControlButton = findControlButton(this.mSizeType, C0995R.C0997id.pause);
        if (findControlButton != null) {
            if (i == 0) {
                drawable = this.mResources.getDrawable(C0995R.C0996drawable.ic_pause_circle_filled);
                str = this.mResources.getString(C0995R.string.mcv2_pause_button_desc);
            } else if (i == 1) {
                drawable = this.mResources.getDrawable(C0995R.C0996drawable.ic_play_circle_filled);
                str = this.mResources.getString(C0995R.string.mcv2_play_button_desc);
            } else if (i == 2) {
                drawable = this.mResources.getDrawable(C0995R.C0996drawable.ic_replay_circle_filled);
                str = this.mResources.getString(C0995R.string.mcv2_replay_button_desc);
            } else {
                throw new IllegalArgumentException("unknown type " + i);
            }
            findControlButton.setImageDrawable(drawable);
            findControlButton.setContentDescription(str);
        }
    }

    public void updatePrevNextButtons(int i, int i2) {
        int size = this.mTransportControlsMap.size();
        for (int i3 = 0; i3 < size; i3++) {
            int keyAt = this.mTransportControlsMap.keyAt(i3);
            ImageButton findControlButton = findControlButton(keyAt, C0995R.C0997id.prev);
            if (findControlButton != null) {
                if (i > -1) {
                    findControlButton.setAlpha(1.0f);
                    findControlButton.setEnabled(true);
                } else {
                    findControlButton.setAlpha(0.5f);
                    findControlButton.setEnabled(false);
                }
            }
            ImageButton findControlButton2 = findControlButton(keyAt, C0995R.C0997id.next);
            if (findControlButton2 != null) {
                if (i2 > -1) {
                    findControlButton2.setAlpha(1.0f);
                    findControlButton2.setEnabled(true);
                } else {
                    findControlButton2.setAlpha(0.5f);
                    findControlButton2.setEnabled(false);
                }
            }
        }
    }

    public void updateReplayButton(boolean z) {
        ImageButton findControlButton = findControlButton(this.mSizeType, C0995R.C0997id.ffwd);
        if (z) {
            this.mIsShowingReplayButton = true;
            updatePlayButton(2);
            if (findControlButton != null) {
                findControlButton.setAlpha(0.5f);
                findControlButton.setEnabled(false);
                return;
            }
            return;
        }
        this.mIsShowingReplayButton = false;
        PlayerWrapper playerWrapper = this.mPlayer;
        if (playerWrapper == null || !playerWrapper.isPlaying()) {
            updatePlayButton(1);
        } else {
            updatePlayButton(0);
        }
        if (findControlButton != null) {
            findControlButton.setAlpha(1.0f);
            findControlButton.setEnabled(true);
        }
    }

    public void updateSelectedSpeed(int i, String str) {
        this.mSelectedSpeedIndex = i;
        this.mSettingsSubTextsList.set(1, str);
        this.mSubSettingsAdapter.setTexts(this.mPlaybackSpeedTextList);
        this.mSubSettingsAdapter.setCheckPosition(this.mSelectedSpeedIndex);
    }

    public void updateTimeViews(MediaItem mediaItem) {
        if (mediaItem == null) {
            this.mProgress.setProgress(0);
            this.mCurrentTime.setText(this.mResources.getString(C0995R.string.MediaControlView_time_placeholder));
            this.mEndTime.setText(this.mResources.getString(C0995R.string.MediaControlView_time_placeholder));
            return;
        }
        ensurePlayerIsNotNull();
        long durationMs = this.mPlayer.getDurationMs();
        if (durationMs > 0) {
            this.mDuration = durationMs;
            setProgress();
        }
    }

    public void updateTitleView(MediaItem mediaItem) {
        if (mediaItem == null) {
            this.mTitleView.setText((CharSequence) null);
        } else if (!isCurrentItemMusic()) {
            CharSequence title = this.mPlayer.getTitle();
            String str = title;
            if (title == null) {
                str = this.mResources.getString(C0995R.string.mcv2_non_music_title_unknown_text);
            }
            this.mTitleView.setText(str.toString());
        } else {
            CharSequence title2 = this.mPlayer.getTitle();
            String str2 = title2;
            if (title2 == null) {
                str2 = this.mResources.getString(C0995R.string.mcv2_music_title_unknown_text);
            }
            CharSequence artistText = this.mPlayer.getArtistText();
            String str3 = artistText;
            if (artistText == null) {
                str3 = this.mResources.getString(C0995R.string.mcv2_music_artist_unknown_text);
            }
            TextView textView = this.mTitleView;
            textView.setText(str2.toString() + " - " + str3.toString());
        }
    }

    public void updateTracks(PlayerWrapper playerWrapper, List<SessionPlayer.TrackInfo> list) {
        this.mVideoTrackCount = 0;
        this.mAudioTracks = new ArrayList();
        this.mSubtitleTracks = new ArrayList();
        this.mSelectedAudioTrackIndex = 0;
        this.mSelectedSubtitleTrackIndex = -1;
        SessionPlayer.TrackInfo selectedTrack = playerWrapper.getSelectedTrack(2);
        SessionPlayer.TrackInfo selectedTrack2 = playerWrapper.getSelectedTrack(4);
        for (int i = 0; i < list.size(); i++) {
            int trackType = list.get(i).getTrackType();
            if (trackType == 1) {
                this.mVideoTrackCount++;
            } else if (trackType == 2) {
                if (list.get(i).equals(selectedTrack)) {
                    this.mSelectedAudioTrackIndex = this.mAudioTracks.size();
                }
                this.mAudioTracks.add(list.get(i));
            } else if (trackType == 4) {
                if (list.get(i).equals(selectedTrack2)) {
                    this.mSelectedSubtitleTrackIndex = this.mSubtitleTracks.size();
                }
                this.mSubtitleTracks.add(list.get(i));
            }
        }
        this.mAudioTrackDescriptionList = new ArrayList();
        if (this.mAudioTracks.isEmpty()) {
            this.mAudioTrackDescriptionList.add(this.mResources.getString(C0995R.string.MediaControlView_audio_track_none_text));
        } else {
            int i2 = 0;
            while (i2 < this.mAudioTracks.size()) {
                i2++;
                this.mAudioTrackDescriptionList.add(this.mResources.getString(C0995R.string.MediaControlView_audio_track_number_text, Integer.valueOf(i2)));
            }
        }
        this.mSettingsSubTextsList.set(0, this.mAudioTrackDescriptionList.get(this.mSelectedAudioTrackIndex));
        this.mSubtitleDescriptionsList = new ArrayList();
        if (!this.mSubtitleTracks.isEmpty()) {
            this.mSubtitleDescriptionsList.add(this.mResources.getString(C0995R.string.MediaControlView_subtitle_off_text));
            for (int i3 = 0; i3 < this.mSubtitleTracks.size(); i3++) {
                String iSO3Language = this.mSubtitleTracks.get(i3).getLanguage().getISO3Language();
                this.mSubtitleDescriptionsList.add(iSO3Language.equals("und") ? this.mResources.getString(C0995R.string.MediaControlView_subtitle_track_number_text, Integer.valueOf(i3 + 1)) : this.mResources.getString(C0995R.string.MediaControlView_subtitle_track_number_and_lang_text, Integer.valueOf(i3 + 1), iSO3Language));
            }
            this.mSubtitleButton.setVisibility(0);
            this.mSubtitleButton.setAlpha(1.0f);
            this.mSubtitleButton.setEnabled(true);
        } else if (isCurrentItemMusic()) {
            this.mSubtitleButton.setVisibility(8);
        } else {
            this.mSubtitleButton.setVisibility(0);
            this.mSubtitleButton.setAlpha(0.5f);
            this.mSubtitleButton.setEnabled(false);
        }
    }
}
