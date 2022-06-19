package com.iab.omid.library.mopub.walking;
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/walking/TreeWalker$3.class */
public final class TreeWalker$3 implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        if (TreeWalker.e() != null) {
            TreeWalker.e().post(TreeWalker.f());
            TreeWalker.e().postDelayed(TreeWalker.g(), 200L);
        }
    }
}
