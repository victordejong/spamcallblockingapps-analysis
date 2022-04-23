package com.explorestack.iab.vast.processor;

import android.content.Context;
import android.util.DisplayMetrics;
import android.util.Pair;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.vast.VastLog;
import com.explorestack.iab.vast.tags.MediaFileTag;
import com.explorestack.iab.vast.tags.k;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/processor/DefaultMediaPicker.class */
public class DefaultMediaPicker extends VastMediaPicker<MediaFileTag> {

    /* renamed from: a  reason: collision with root package name */
    private int f19273a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f19274b;

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/processor/DefaultMediaPicker$a.class */
    final class a implements Comparator<Pair<k, MediaFileTag>> {
        private a() {
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(Pair<k, MediaFileTag> pair, Pair<k, MediaFileTag> pair2) {
            Pair<k, MediaFileTag> pair3 = pair;
            Pair<k, MediaFileTag> pair4 = pair2;
            int d2 = ((MediaFileTag) pair3.second).d("width");
            int d3 = ((MediaFileTag) pair3.second).d("height");
            int d4 = ((MediaFileTag) pair4.second).d("width");
            int d5 = ((MediaFileTag) pair4.second).d("height");
            int abs = Math.abs((d2 * d3) - DefaultMediaPicker.this.f19273a);
            int abs2 = Math.abs((d4 * d5) - DefaultMediaPicker.this.f19273a);
            VastLog.d("DefaultMediaPicker", "AreaComparator: obj1:" + abs + " obj2:" + abs2);
            if (abs < abs2) {
                return -1;
            }
            return abs > abs2 ? 1 : 0;
        }
    }

    public DefaultMediaPicker(int i, int i2) {
        this.f19273a = i * i2;
    }

    public DefaultMediaPicker(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.f19273a = displayMetrics.widthPixels * displayMetrics.heightPixels;
        this.f19274b = Utils.c(context);
    }

    protected boolean isMediaFileCompatible(MediaFileTag mediaFileTag) {
        return mediaFileTag.getType().matches("video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)");
    }

    @Override // com.explorestack.iab.vast.processor.VastMediaPicker
    public Pair<k, MediaFileTag> pickVideo(List<Pair<k, MediaFileTag>> list) {
        Pair<k, MediaFileTag> pair = null;
        if (list == null) {
            return null;
        }
        Collections.sort(list, new a());
        VastLog.d("DefaultMediaPicker", "getBestMatch");
        for (Pair<k, MediaFileTag> pair2 : list) {
            if (isMediaFileCompatible((MediaFileTag) pair2.second)) {
                MediaFileTag mediaFileTag = (MediaFileTag) pair2.second;
                boolean z = true;
                if ((mediaFileTag.d("width") > mediaFileTag.d("height")) != this.f19274b) {
                    z = false;
                }
                if (z) {
                    return pair2;
                }
                if (pair == null) {
                    pair = pair2;
                }
            }
        }
        return pair;
    }
}
