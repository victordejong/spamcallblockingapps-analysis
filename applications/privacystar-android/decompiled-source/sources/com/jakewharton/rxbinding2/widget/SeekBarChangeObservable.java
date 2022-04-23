package com.jakewharton.rxbinding2.widget;

import android.support.annotation.Nullable;
import android.widget.SeekBar;
import com.jakewharton.rxbinding2.InitialValueObservable;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observer;
import io.reactivex.android.MainThreadDisposable;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/SeekBarChangeObservable.class */
final class SeekBarChangeObservable extends InitialValueObservable<Integer> {
    @Nullable
    private final Boolean shouldBeFromUser;
    private final SeekBar view;

    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/SeekBarChangeObservable$Listener.class */
    static final class Listener extends MainThreadDisposable implements SeekBar.OnSeekBarChangeListener {
        private final Observer<? super Integer> observer;
        private final Boolean shouldBeFromUser;
        private final SeekBar view;

        Listener(SeekBar seekBar, Boolean bool, Observer<? super Integer> observer) {
            this.view = seekBar;
            this.shouldBeFromUser = bool;
            this.observer = observer;
        }

        @Override // io.reactivex.android.MainThreadDisposable
        protected void onDispose() {
            this.view.setOnSeekBarChangeListener(this);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (isDisposed()) {
                return;
            }
            if (this.shouldBeFromUser == null || this.shouldBeFromUser.booleanValue() == z) {
                this.observer.onNext(Integer.valueOf(i));
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SeekBarChangeObservable(SeekBar seekBar, @Nullable Boolean bool) {
        this.view = seekBar;
        this.shouldBeFromUser = bool;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.jakewharton.rxbinding2.InitialValueObservable
    public Integer getInitialValue() {
        return Integer.valueOf(this.view.getProgress());
    }

    @Override // com.jakewharton.rxbinding2.InitialValueObservable
    protected void subscribeListener(Observer<? super Integer> observer) {
        if (Preconditions.checkMainThread(observer)) {
            Listener listener = new Listener(this.view, this.shouldBeFromUser, observer);
            this.view.setOnSeekBarChangeListener(listener);
            observer.onSubscribe(listener);
        }
    }
}
