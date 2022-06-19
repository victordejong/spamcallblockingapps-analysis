package android.support.p001v4.media.session;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.p001v4.media.MediaDescriptionCompat;
import android.support.p001v4.media.RatingCompat;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.Log;
import android.view.KeyEvent;
import java.util.List;
import pf;
/* renamed from: android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase$MessageHandler */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler.class */
public class MediaSessionCompat$MediaSessionImplBase$MessageHandler extends Handler {
    private static final int KEYCODE_MEDIA_PAUSE = 127;
    private static final int KEYCODE_MEDIA_PLAY = 126;
    private static final int MSG_ADD_QUEUE_ITEM = 25;
    private static final int MSG_ADD_QUEUE_ITEM_AT = 26;
    private static final int MSG_ADJUST_VOLUME = 2;
    private static final int MSG_COMMAND = 1;
    private static final int MSG_CUSTOM_ACTION = 20;
    private static final int MSG_FAST_FORWARD = 16;
    private static final int MSG_MEDIA_BUTTON = 21;
    private static final int MSG_NEXT = 14;
    private static final int MSG_PAUSE = 12;
    private static final int MSG_PLAY = 7;
    private static final int MSG_PLAY_MEDIA_ID = 8;
    private static final int MSG_PLAY_SEARCH = 9;
    private static final int MSG_PLAY_URI = 10;
    private static final int MSG_PREPARE = 3;
    private static final int MSG_PREPARE_MEDIA_ID = 4;
    private static final int MSG_PREPARE_SEARCH = 5;
    private static final int MSG_PREPARE_URI = 6;
    private static final int MSG_PREVIOUS = 15;
    private static final int MSG_RATE = 19;
    private static final int MSG_RATE_EXTRA = 31;
    private static final int MSG_REMOVE_QUEUE_ITEM = 27;
    private static final int MSG_REMOVE_QUEUE_ITEM_AT = 28;
    private static final int MSG_REWIND = 17;
    private static final int MSG_SEEK_TO = 18;
    private static final int MSG_SET_CAPTIONING_ENABLED = 29;
    private static final int MSG_SET_PLAYBACK_SPEED = 32;
    private static final int MSG_SET_REPEAT_MODE = 23;
    private static final int MSG_SET_SHUFFLE_MODE = 30;
    private static final int MSG_SET_VOLUME = 22;
    private static final int MSG_SKIP_TO_ITEM = 11;
    private static final int MSG_STOP = 13;
    public final /* synthetic */ MediaSessionCompat.MediaSessionImplBase this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaSessionCompat$MediaSessionImplBase$MessageHandler(MediaSessionCompat.MediaSessionImplBase mediaSessionImplBase, Looper looper) {
        super(looper);
        this.this$0 = mediaSessionImplBase;
    }

    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    private void onMediaButtonEvent(KeyEvent keyEvent, MediaSessionCompat.Callback callback) {
        if (keyEvent == null || keyEvent.getAction() != 0) {
            return;
        }
        PlaybackStateCompat playbackStateCompat = this.this$0.mState;
        char actions = playbackStateCompat == null ? (char) 0 : playbackStateCompat.getActions();
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 79) {
            if (keyCode == KEYCODE_MEDIA_PLAY) {
                if ((actions & 4) == 0) {
                    return;
                }
                callback.onPlay();
                return;
            } else if (keyCode == KEYCODE_MEDIA_PAUSE) {
                if ((actions & 2) == 0) {
                    return;
                }
                callback.onPause();
                return;
            } else {
                switch (keyCode) {
                    case 85:
                        break;
                    case 86:
                        if ((actions & 1) == 0) {
                            return;
                        }
                        callback.onStop();
                        return;
                    case 87:
                        if ((actions & ' ') == 0) {
                            return;
                        }
                        callback.onSkipToNext();
                        return;
                    case 88:
                        if ((actions & 16) == 0) {
                            return;
                        }
                        callback.onSkipToPrevious();
                        return;
                    case 89:
                        if ((actions & '\b') == 0) {
                            return;
                        }
                        callback.onRewind();
                        return;
                    case 90:
                        if ((actions & '@') == 0) {
                            return;
                        }
                        callback.onFastForward();
                        return;
                    default:
                        return;
                }
            }
        }
        Log.w(MediaSessionCompat.TAG, "KEYCODE_MEDIA_PLAY_PAUSE and KEYCODE_HEADSETHOOK are handled already");
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        MediaDescriptionCompat mediaDescriptionCompat;
        MediaSessionCompat.Callback callback = this.this$0.mCallback;
        if (callback == null) {
            return;
        }
        Bundle data = message.getData();
        MediaSessionCompat.ensureClassLoader(data);
        this.this$0.setCurrentControllerInfo(new pf.b(data.getString("data_calling_pkg"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid")));
        Bundle bundle = data.getBundle("data_extras");
        MediaSessionCompat.ensureClassLoader(bundle);
        try {
            switch (message.what) {
                case 1:
                    MediaSessionCompat$MediaSessionImplBase$Command mediaSessionCompat$MediaSessionImplBase$Command = (MediaSessionCompat$MediaSessionImplBase$Command) message.obj;
                    callback.onCommand(mediaSessionCompat$MediaSessionImplBase$Command.command, mediaSessionCompat$MediaSessionImplBase$Command.extras, mediaSessionCompat$MediaSessionImplBase$Command.stub);
                    break;
                case 2:
                    this.this$0.adjustVolume(message.arg1, 0);
                    break;
                case 3:
                    callback.onPrepare();
                    break;
                case 4:
                    callback.onPrepareFromMediaId((String) message.obj, bundle);
                    break;
                case 5:
                    callback.onPrepareFromSearch((String) message.obj, bundle);
                    break;
                case 6:
                    callback.onPrepareFromUri((Uri) message.obj, bundle);
                    break;
                case 7:
                    callback.onPlay();
                    break;
                case 8:
                    callback.onPlayFromMediaId((String) message.obj, bundle);
                    break;
                case 9:
                    callback.onPlayFromSearch((String) message.obj, bundle);
                    break;
                case 10:
                    callback.onPlayFromUri((Uri) message.obj, bundle);
                    break;
                case 11:
                    callback.onSkipToQueueItem(((Long) message.obj).longValue());
                    break;
                case 12:
                    callback.onPause();
                    break;
                case 13:
                    callback.onStop();
                    break;
                case 14:
                    callback.onSkipToNext();
                    break;
                case 15:
                    callback.onSkipToPrevious();
                    break;
                case 16:
                    callback.onFastForward();
                    break;
                case 17:
                    callback.onRewind();
                    break;
                case 18:
                    callback.onSeekTo(((Long) message.obj).longValue());
                    break;
                case 19:
                    callback.onSetRating((RatingCompat) message.obj);
                    break;
                case 20:
                    callback.onCustomAction((String) message.obj, bundle);
                    break;
                case 21:
                    KeyEvent keyEvent = (KeyEvent) message.obj;
                    Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                    intent.putExtra("android.intent.extra.KEY_EVENT", keyEvent);
                    if (!callback.onMediaButtonEvent(intent)) {
                        onMediaButtonEvent(keyEvent, callback);
                        break;
                    }
                    break;
                case 22:
                    this.this$0.setVolumeTo(message.arg1, 0);
                    break;
                case 23:
                    callback.onSetRepeatMode(message.arg1);
                    break;
                case 25:
                    callback.onAddQueueItem((MediaDescriptionCompat) message.obj);
                    break;
                case 26:
                    callback.onAddQueueItem((MediaDescriptionCompat) message.obj, message.arg1);
                    break;
                case 27:
                    mediaDescriptionCompat = (MediaDescriptionCompat) message.obj;
                    callback.onRemoveQueueItem(mediaDescriptionCompat);
                    break;
                case 28:
                    List list = this.this$0.mQueue;
                    if (list != null) {
                        int i = message.arg1;
                        MediaSessionCompat.QueueItem queueItem = (i < 0 || i >= list.size()) ? null : (MediaSessionCompat.QueueItem) this.this$0.mQueue.get(message.arg1);
                        if (queueItem != null) {
                            mediaDescriptionCompat = queueItem.getDescription();
                            callback.onRemoveQueueItem(mediaDescriptionCompat);
                            break;
                        }
                    }
                    break;
                case 29:
                    callback.onSetCaptioningEnabled(((Boolean) message.obj).booleanValue());
                    break;
                case 30:
                    callback.onSetShuffleMode(message.arg1);
                    break;
                case 31:
                    callback.onSetRating((RatingCompat) message.obj, bundle);
                    break;
                case 32:
                    callback.onSetPlaybackSpeed(((Float) message.obj).floatValue());
                    break;
            }
        } finally {
            this.this$0.setCurrentControllerInfo((pf.b) null);
        }
    }
}
