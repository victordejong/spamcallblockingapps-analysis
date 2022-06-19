package androidx.core.content;

import android.content.SharedPreferences;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/core/content/SharedPreferencesCompat.class */
public final class SharedPreferencesCompat {

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/core/content/SharedPreferencesCompat$EditorCompat.class */
    public static final class EditorCompat {
        private static EditorCompat sInstance;
        private final Helper mHelper = new Helper();

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes-dex2jar.jar:androidx/core/content/SharedPreferencesCompat$EditorCompat$Helper.class */
        public static class Helper {
            Helper() {
            }

            public void apply(SharedPreferences.Editor editor) {
                try {
                    editor.apply();
                } catch (AbstractMethodError e) {
                    editor.commit();
                }
            }
        }

        private EditorCompat() {
        }

        @Deprecated
        public static EditorCompat getInstance() {
            if (sInstance == null) {
                sInstance = new EditorCompat();
            }
            return sInstance;
        }

        @Deprecated
        public void apply(SharedPreferences.Editor editor) {
            this.mHelper.apply(editor);
        }
    }

    private SharedPreferencesCompat() {
    }
}
