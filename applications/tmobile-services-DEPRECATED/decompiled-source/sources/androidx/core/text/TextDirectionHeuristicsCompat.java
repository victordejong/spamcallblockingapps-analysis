package androidx.core.text;

import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/core/text/TextDirectionHeuristicsCompat.class */
public final class TextDirectionHeuristicsCompat {

    /* renamed from: a */
    public static final TextDirectionHeuristicCompat f3189a = new TextDirectionHeuristicInternal(null, false);

    /* renamed from: b */
    public static final TextDirectionHeuristicCompat f3190b = new TextDirectionHeuristicInternal(null, true);

    /* renamed from: c */
    public static final TextDirectionHeuristicCompat f3191c = new TextDirectionHeuristicInternal(FirstStrong.f3195a, false);

    /* renamed from: d */
    public static final TextDirectionHeuristicCompat f3192d = new TextDirectionHeuristicInternal(FirstStrong.f3195a, true);

    /* loaded from: classes-dex2jar.jar:androidx/core/text/TextDirectionHeuristicsCompat$AnyStrong.class */
    private static class AnyStrong implements TextDirectionAlgorithm {

        /* renamed from: b */
        static final AnyStrong f3193b = new AnyStrong(true);

        /* renamed from: a */
        private final boolean f3194a;

        private AnyStrong(boolean z) {
            this.f3194a = z;
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionAlgorithm
        /* renamed from: a */
        public int mo19359a(CharSequence charSequence, int i, int i2) {
            boolean z = false;
            for (int i3 = i; i3 < i2 + i; i3++) {
                int a = TextDirectionHeuristicsCompat.m19361a(Character.getDirectionality(charSequence.charAt(i3)));
                if (a != 0) {
                    if (a != 1) {
                        continue;
                    } else if (!this.f3194a) {
                        return 1;
                    }
                } else if (this.f3194a) {
                    return 0;
                }
                z = true;
            }
            if (z) {
                return this.f3194a ? 1 : 0;
            }
            return 2;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/text/TextDirectionHeuristicsCompat$FirstStrong.class */
    private static class FirstStrong implements TextDirectionAlgorithm {

        /* renamed from: a */
        static final FirstStrong f3195a = new FirstStrong();

        private FirstStrong() {
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionAlgorithm
        /* renamed from: a */
        public int mo19359a(CharSequence charSequence, int i, int i2) {
            int i3 = 2;
            for (int i4 = i; i4 < i2 + i && i3 == 2; i4++) {
                i3 = TextDirectionHeuristicsCompat.m19360b(Character.getDirectionality(charSequence.charAt(i4)));
            }
            return i3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm.class */
    public interface TextDirectionAlgorithm {
        /* renamed from: a */
        int mo19359a(CharSequence charSequence, int i, int i2);
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl.class */
    private static abstract class TextDirectionHeuristicImpl implements TextDirectionHeuristicCompat {

        /* renamed from: a */
        private final TextDirectionAlgorithm f3196a;

        TextDirectionHeuristicImpl(TextDirectionAlgorithm textDirectionAlgorithm) {
            this.f3196a = textDirectionAlgorithm;
        }

        /* renamed from: c */
        private boolean m19357c(CharSequence charSequence, int i, int i2) {
            int a = this.f3196a.mo19359a(charSequence, i, i2);
            if (a == 0) {
                return true;
            }
            if (a != 1) {
                return mo19356b();
            }
            return false;
        }

        @Override // androidx.core.text.TextDirectionHeuristicCompat
        /* renamed from: a */
        public boolean mo19358a(CharSequence charSequence, int i, int i2) {
            if (charSequence != null && i >= 0 && i2 >= 0 && charSequence.length() - i2 >= i) {
                return this.f3196a == null ? mo19356b() : m19357c(charSequence, i, i2);
            }
            throw new IllegalArgumentException();
        }

        /* renamed from: b */
        protected abstract boolean mo19356b();
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal.class */
    private static class TextDirectionHeuristicInternal extends TextDirectionHeuristicImpl {

        /* renamed from: b */
        private final boolean f3197b;

        TextDirectionHeuristicInternal(TextDirectionAlgorithm textDirectionAlgorithm, boolean z) {
            super(textDirectionAlgorithm);
            this.f3197b = z;
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl
        /* renamed from: b */
        protected boolean mo19356b() {
            return this.f3197b;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale.class */
    private static class TextDirectionHeuristicLocale extends TextDirectionHeuristicImpl {

        /* renamed from: b */
        static final TextDirectionHeuristicLocale f3198b = new TextDirectionHeuristicLocale();

        TextDirectionHeuristicLocale() {
            super(null);
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl
        /* renamed from: b */
        protected boolean mo19356b() {
            boolean z = true;
            if (TextUtilsCompat.m19354b(Locale.getDefault()) != 1) {
                z = false;
            }
            return z;
        }
    }

    static {
        AnyStrong anyStrong = AnyStrong.f3193b;
        TextDirectionHeuristicLocale textDirectionHeuristicLocale = TextDirectionHeuristicLocale.f3198b;
    }

    private TextDirectionHeuristicsCompat() {
    }

    /* renamed from: a */
    static int m19361a(int i) {
        if (i != 0) {
            return (i == 1 || i == 2) ? 0 : 2;
        }
        return 1;
    }

    /* renamed from: b */
    static int m19360b(int i) {
        if (i == 0) {
            return 1;
        }
        if (i == 1 || i == 2) {
            return 0;
        }
        switch (i) {
            case 14:
            case 15:
                return 1;
            case 16:
            case 17:
                return 0;
            default:
                return 2;
        }
    }
}
