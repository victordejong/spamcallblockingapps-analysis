package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import com.airbnb.lottie.utils.Utils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/content/CompoundTrimPathContent.class */
public class CompoundTrimPathContent {

    /* renamed from: a */
    private List<TrimPathContent> f5879a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m16191a(TrimPathContent trimPathContent) {
        this.f5879a.add(trimPathContent);
    }

    /* renamed from: b */
    public void m16190b(Path path) {
        for (int size = this.f5879a.size() - 1; size >= 0; size--) {
            Utils.m15696b(path, this.f5879a.get(size));
        }
    }
}
