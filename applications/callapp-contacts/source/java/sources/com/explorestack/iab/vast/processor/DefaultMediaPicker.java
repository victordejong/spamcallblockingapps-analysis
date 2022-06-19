package com.explorestack.iab.vast.processor;

import android.content.Context;
import android.util.DisplayMetrics;
import android.util.Pair;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.vast.VastLog;
import com.explorestack.iab.vast.tags.C9673k;
import com.explorestack.iab.vast.tags.MediaFileTag;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/processor/DefaultMediaPicker.class */
public class DefaultMediaPicker extends VastMediaPicker<MediaFileTag> {

    /* renamed from: a */
    private int f32763a;

    /* renamed from: b */
    private boolean f32764b;

    /* renamed from: com.explorestack.iab.vast.processor.DefaultMediaPicker$a */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/processor/DefaultMediaPicker$a.class */
    final class C9657a implements Comparator<Pair<C9673k, MediaFileTag>> {
        private C9657a() {
            DefaultMediaPicker.this = r4;
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(Pair<C9673k, MediaFileTag> pair, Pair<C9673k, MediaFileTag> pair2) {
            Pair<C9673k, MediaFileTag> pair3 = pair;
            Pair<C9673k, MediaFileTag> pair4 = pair2;
            int d = ((MediaFileTag) pair3.second).m23842d("width");
            int d2 = ((MediaFileTag) pair3.second).m23842d("height");
            int d3 = ((MediaFileTag) pair4.second).m23842d("width");
            int d4 = ((MediaFileTag) pair4.second).m23842d("height");
            int abs = Math.abs((d * d2) - DefaultMediaPicker.this.f32763a);
            int abs2 = Math.abs((d3 * d4) - DefaultMediaPicker.this.f32763a);
            VastLog.m24015d("DefaultMediaPicker", "AreaComparator: obj1:" + abs + " obj2:" + abs2);
            if (abs < abs2) {
                return -1;
            }
            return abs > abs2 ? 1 : 0;
        }
    }

    public DefaultMediaPicker(int i, int i2) {
        this.f32763a = i * i2;
    }

    public DefaultMediaPicker(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.f32763a = displayMetrics.widthPixels * displayMetrics.heightPixels;
        this.f32764b = Utils.m24101c(context);
    }

    protected boolean isMediaFileCompatible(MediaFileTag mediaFileTag) {
        return mediaFileTag.getType().matches("video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)");
    }

    @Override // com.explorestack.iab.vast.processor.VastMediaPicker
    public Pair<C9673k, MediaFileTag> pickVideo(List<Pair<C9673k, MediaFileTag>> list) {
        if (list == null) {
            return null;
        }
        Collections.sort(list, new C9657a());
        VastLog.m24015d("DefaultMediaPicker", "getBestMatch");
        Pair<C9673k, MediaFileTag> pair = null;
        for (Pair<C9673k, MediaFileTag> pair2 : list) {
            if (isMediaFileCompatible((MediaFileTag) pair2.second)) {
                MediaFileTag mediaFileTag = (MediaFileTag) pair2.second;
                boolean z = true;
                if ((mediaFileTag.m23842d("width") > mediaFileTag.m23842d("height")) != this.f32764b) {
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
