package org.jsoup.c;

import java.util.ArrayList;
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/e.class */
public final class e extends ArrayList<d> {

    /* renamed from: a  reason: collision with root package name */
    private final int f39223a;

    e(int i, int i2) {
        super(i);
        this.f39223a = i2;
    }

    public static e b() {
        return new e(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        return size() < this.f39223a;
    }
}
