package com.privacystar.core.p011ui;

import java.util.Observable;
import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/FragmentObserver;", "Ljava/util/Observable;", "()V", "notifyObservers", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.FragmentObserver */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/FragmentObserver.class */
public final class FragmentObserver extends Observable {
    @Override // java.util.Observable
    public void notifyObservers() {
        setChanged();
        super.notifyObservers();
    }
}
