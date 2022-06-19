package com.tenor.android.core.model.impl;

import com.tenor.android.core.constant.MediaCollectionFormat;
import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/model/impl/MediaCollection.class */
public class MediaCollection implements Serializable {
    private static final long serialVersionUID = -8824214919408809561L;
    private Media gif;
    private Media loopedmp4;
    private Media mediumgif;
    private Media mp4;
    private Media nanogif;
    private Media nanomp4;
    private Media nanowebm;
    private Media tinygif;
    private Media tinymp4;
    private Media tinywebm;
    private Media webm;

    private static Media getOrEmptyMedia(Media media) {
        if (media == null) {
            media = new Media();
        }
        return media;
    }

    public Media get(@MediaCollectionFormat.Value String str) {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1894618214:
                if (str.equals(MediaCollectionFormat.WEBM_NANO)) {
                    z = false;
                    break;
                }
                break;
            case -1894431770:
                if (str.equals(MediaCollectionFormat.WEBM_TINY)) {
                    z = true;
                    break;
                }
                break;
            case -1741304720:
                if (str.equals(MediaCollectionFormat.GIF_MEDIUM)) {
                    z = true;
                    break;
                }
                break;
            case 70564:
                if (str.equals(MediaCollectionFormat.GIF)) {
                    z = true;
                    break;
                }
                break;
            case 76529:
                if (str.equals(MediaCollectionFormat.MP4)) {
                    z = true;
                    break;
                }
                break;
            case 2660249:
                if (str.equals(MediaCollectionFormat.WEBM)) {
                    z = true;
                    break;
                }
                break;
            case 282427217:
                if (str.equals(MediaCollectionFormat.MP4_LOOPED)) {
                    z = true;
                    break;
                }
                break;
            case 617099074:
                if (str.equals(MediaCollectionFormat.MP4_NANO)) {
                    z = true;
                    break;
                }
                break;
            case 617285518:
                if (str.equals(MediaCollectionFormat.MP4_TINY)) {
                    z = true;
                    break;
                }
                break;
            case 1642905199:
                if (str.equals(MediaCollectionFormat.GIF_NANO)) {
                    z = true;
                    break;
                }
                break;
            case 1643091643:
                if (str.equals(MediaCollectionFormat.GIF_TINY)) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return getOrEmptyMedia(this.nanowebm);
            case true:
                return getOrEmptyMedia(this.tinywebm);
            case true:
                return getOrEmptyMedia(this.mediumgif);
            case true:
                return getOrEmptyMedia(this.gif);
            case true:
                return getOrEmptyMedia(this.mp4);
            case true:
                return getOrEmptyMedia(this.webm);
            case true:
                return getOrEmptyMedia(this.loopedmp4);
            case true:
                return getOrEmptyMedia(this.nanomp4);
            case true:
                return getOrEmptyMedia(this.tinymp4);
            case true:
                return getOrEmptyMedia(this.nanogif);
            case true:
                return getOrEmptyMedia(this.tinygif);
            default:
                return new Media();
        }
    }
}
