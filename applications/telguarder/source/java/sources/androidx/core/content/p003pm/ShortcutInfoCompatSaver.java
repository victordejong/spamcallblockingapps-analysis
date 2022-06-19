package androidx.core.content.p003pm;

import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.core.content.pm.ShortcutInfoCompatSaver */
/* loaded from: classes-dex2jar.jar:androidx/core/content/pm/ShortcutInfoCompatSaver.class */
public abstract class ShortcutInfoCompatSaver<T> {

    /* renamed from: androidx.core.content.pm.ShortcutInfoCompatSaver$NoopImpl */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/pm/ShortcutInfoCompatSaver$NoopImpl.class */
    public static class NoopImpl extends ShortcutInfoCompatSaver<Void> {
        @Override // androidx.core.content.p003pm.ShortcutInfoCompatSaver
        /* renamed from: addShortcuts */
        public Void addShortcuts2(List<ShortcutInfoCompat> list) {
            return null;
        }

        @Override // androidx.core.content.p003pm.ShortcutInfoCompatSaver
        public Void removeAllShortcuts() {
            return null;
        }

        @Override // androidx.core.content.p003pm.ShortcutInfoCompatSaver
        /* renamed from: removeShortcuts */
        public Void removeShortcuts2(List<String> list) {
            return null;
        }
    }

    public abstract T addShortcuts(List<ShortcutInfoCompat> list);

    public List<ShortcutInfoCompat> getShortcuts() throws Exception {
        return new ArrayList();
    }

    public abstract T removeAllShortcuts();

    public abstract T removeShortcuts(List<String> list);
}
