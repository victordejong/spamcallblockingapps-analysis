package com.callapp.contacts.activity.contact.header;

import com.callapp.contacts.manager.preferences.Prefs;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/header/ThemeState.class */
public enum ThemeState {
    WHITE(2131100228, 2131099683, 2131100228, 2131099819, 2131099819, 2131100228, 2131099926, 2131100228, 2131099926, 2131100228, 2131099926, 2131099918, 2131100228, 2131099784, 2131099713, new NextThemeFetcher() { // from class: com.callapp.contacts.activity.contact.header.ThemeState.1
        @Override // com.callapp.contacts.activity.contact.header.ThemeState.NextThemeFetcher
        public final ThemeState getNextTheme() {
            return ThemeState.DARK;
        }
    }, new NextThemeFetcher() { // from class: com.callapp.contacts.activity.contact.header.ThemeState.2
        @Override // com.callapp.contacts.activity.contact.header.ThemeState.NextThemeFetcher
        public final ThemeState getNextTheme() {
            return ThemeState.PRIMARY;
        }
    }),
    DARK(2131099918, 2131099819, 2131099918, 2131100228, 2131100228, 2131100228, 2131100228, 2131100228, 2131100228, 2131099824, 2131100228, 2131100228, 2131100228, 2131100228, 2131100228, new NextThemeFetcher() { // from class: com.callapp.contacts.activity.contact.header.ThemeState.3
        @Override // com.callapp.contacts.activity.contact.header.ThemeState.NextThemeFetcher
        public final ThemeState getNextTheme() {
            return ThemeState.WHITE;
        }
    }, new NextThemeFetcher() { // from class: com.callapp.contacts.activity.contact.header.ThemeState.4
        @Override // com.callapp.contacts.activity.contact.header.ThemeState.NextThemeFetcher
        public final ThemeState getNextTheme() {
            return ThemeState.PRIMARYDARK;
        }
    }),
    PRIMARY(2131099784, 2131099683, 2131099784, 2131100228, 2131100228, 2131100228, 2131100228, 2131100228, 2131100228, 2131099784, 2131100228, 2131100228, 2131100228, 2131100228, 2131100228, new NextThemeFetcher() { // from class: com.callapp.contacts.activity.contact.header.ThemeState.5
        @Override // com.callapp.contacts.activity.contact.header.ThemeState.NextThemeFetcher
        public final ThemeState getNextTheme() {
            return ThemeState.WHITE;
        }
    }, new NextThemeFetcher() { // from class: com.callapp.contacts.activity.contact.header.ThemeState.6
        @Override // com.callapp.contacts.activity.contact.header.ThemeState.NextThemeFetcher
        public final ThemeState getNextTheme() {
            return ThemeState.DARK;
        }
    }),
    PRIMARYDARK(2131099785, 2131099819, 2131099785, 2131100228, 2131100228, 2131100228, 2131100228, 2131100228, 2131100228, 2131099824, 2131100228, 2131100228, 2131100228, 2131100228, 2131100228, new NextThemeFetcher() { // from class: com.callapp.contacts.activity.contact.header.ThemeState.7
        @Override // com.callapp.contacts.activity.contact.header.ThemeState.NextThemeFetcher
        public final ThemeState getNextTheme() {
            return ThemeState.WHITE;
        }
    }, new NextThemeFetcher() { // from class: com.callapp.contacts.activity.contact.header.ThemeState.8
        @Override // com.callapp.contacts.activity.contact.header.ThemeState.NextThemeFetcher
        public final ThemeState getNextTheme() {
            return ThemeState.DARK;
        }
    }),
    COVER(2131100145, 2131099683, 2131100145, 2131100228, 2131100228, 2131100228, 2131100228, 2131100228, 2131099926, 2131100228, 2131099926, 2131100228, 2131100228, 2131100228, 2131100228, new NextThemeFetcher() { // from class: com.callapp.contacts.activity.contact.header.ThemeState.9
        @Override // com.callapp.contacts.activity.contact.header.ThemeState.NextThemeFetcher
        public final ThemeState getNextTheme() {
            return ThemeState.WHITE;
        }
    }, new NextThemeFetcher() { // from class: com.callapp.contacts.activity.contact.header.ThemeState.10
        @Override // com.callapp.contacts.activity.contact.header.ThemeState.NextThemeFetcher
        public final ThemeState getNextTheme() {
            return ThemeState.WHITE;
        }
    });
    
    private int actionIconsMaximizedColor;
    private int actionIconsMinimizedColor;
    private int buttonColor;
    private int cardsBackgroundColor;
    private int editCircleColor;
    private int editCircleStrokeColor;
    private int editIconColor;
    private final NextThemeFetcher leftTheme;
    private int noteIconColor;
    private int parallaxBackgroundColor;
    private final NextThemeFetcher rightTheme;
    private int subtitleTextDefaultColor;
    private int subtitleTextMaximizedColor;
    private int titleDefaultOpenColor;
    private int titleMaximizedColor;
    private int titleMinimizedColor;
    private int videoRingtoneIconColor;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher.class */
    public interface NextThemeFetcher {
        ThemeState getNextTheme();
    }

    ThemeState(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, NextThemeFetcher nextThemeFetcher, NextThemeFetcher nextThemeFetcher2) {
        this.parallaxBackgroundColor = i;
        this.cardsBackgroundColor = i2;
        this.buttonColor = i3;
        this.titleDefaultOpenColor = i4;
        this.titleMinimizedColor = i5;
        this.titleMaximizedColor = i6;
        this.subtitleTextDefaultColor = i7;
        this.subtitleTextMaximizedColor = i8;
        this.editCircleStrokeColor = i9;
        this.editCircleColor = i10;
        this.editIconColor = i11;
        this.noteIconColor = i14;
        this.videoRingtoneIconColor = i15;
        this.actionIconsMinimizedColor = i12;
        this.actionIconsMaximizedColor = i13;
        this.leftTheme = nextThemeFetcher;
        this.rightTheme = nextThemeFetcher2;
    }

    public final int getActionIconsMaximizedColor() {
        return this.actionIconsMaximizedColor;
    }

    public final int getActionIconsMinimizedColor() {
        return this.actionIconsMinimizedColor;
    }

    public final int getButtonColor() {
        return this.buttonColor;
    }

    public final int getCardsBackgroundColor() {
        return this.cardsBackgroundColor;
    }

    public final int getEditCircleColor() {
        return this.editCircleColor;
    }

    public final int getEditCircleStrokeColor() {
        return this.editCircleStrokeColor;
    }

    public final int getEditIconColor() {
        return this.editIconColor;
    }

    public final ThemeState getLeftThemeChangedEvent() {
        return this.leftTheme.getNextTheme();
    }

    public final int getNoteIconColor() {
        return this.noteIconColor;
    }

    public final int getParallaxBackgroundColor() {
        return this.parallaxBackgroundColor;
    }

    public final ThemeState getRightThemeChangedEvent() {
        return this.rightTheme.getNextTheme();
    }

    public final int getSubtitleTextDefaultColor() {
        return this.subtitleTextDefaultColor;
    }

    public final int getSubtitleTextMaximizedColor() {
        return this.subtitleTextMaximizedColor;
    }

    public final int getTitleDefaultOpenColor() {
        return this.titleDefaultOpenColor;
    }

    public final int getTitleMaximizedColor() {
        return this.titleMaximizedColor;
    }

    public final int getTitleMinimizedColor() {
        return this.titleMinimizedColor;
    }

    public final int getVideoRingtoneIconColor() {
        return this.videoRingtoneIconColor;
    }

    public final boolean isLightTheme() {
        return (Prefs.f26417di.get() == DARK || Prefs.f26417di.get() == PRIMARYDARK) ? false : true;
    }
}
