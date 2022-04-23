package com.jakewharton.rxbinding2.widget;

import android.support.annotation.NonNull;
import android.widget.SeekBar;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/AutoValue_SeekBarProgressChangeEvent.class */
final class AutoValue_SeekBarProgressChangeEvent extends SeekBarProgressChangeEvent {
    private final boolean fromUser;
    private final int progress;
    private final SeekBar view;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutoValue_SeekBarProgressChangeEvent(SeekBar seekBar, int i, boolean z) {
        if (seekBar == null) {
            throw new NullPointerException("Null view");
        }
        this.view = seekBar;
        this.progress = i;
        this.fromUser = z;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SeekBarProgressChangeEvent)) {
            return false;
        }
        SeekBarProgressChangeEvent seekBarProgressChangeEvent = (SeekBarProgressChangeEvent) obj;
        if (!(this.view.equals(seekBarProgressChangeEvent.view()) && this.progress == seekBarProgressChangeEvent.progress() && this.fromUser == seekBarProgressChangeEvent.fromUser())) {
            z = false;
        }
        return z;
    }

    @Override // com.jakewharton.rxbinding2.widget.SeekBarProgressChangeEvent
    public boolean fromUser() {
        return this.fromUser;
    }

    public int hashCode() {
        int hashCode = this.view.hashCode();
        return ((((hashCode ^ 1000003) * 1000003) ^ this.progress) * 1000003) ^ (this.fromUser ? 1231 : 1237);
    }

    @Override // com.jakewharton.rxbinding2.widget.SeekBarProgressChangeEvent
    public int progress() {
        return this.progress;
    }

    public String toString() {
        return "SeekBarProgressChangeEvent{view=" + this.view + ", progress=" + this.progress + ", fromUser=" + this.fromUser + "}";
    }

    @Override // com.jakewharton.rxbinding2.widget.SeekBarChangeEvent
    @NonNull
    public SeekBar view() {
        return this.view;
    }
}
