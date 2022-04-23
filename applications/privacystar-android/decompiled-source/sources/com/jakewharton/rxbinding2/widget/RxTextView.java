package com.jakewharton.rxbinding2.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.widget.TextView;
import com.jakewharton.rxbinding2.InitialValueObservable;
import com.jakewharton.rxbinding2.internal.Functions;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Predicate;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxTextView.class */
public final class RxTextView {
    private RxTextView() {
        throw new AssertionError("No instances.");
    }

    @CheckResult
    @NonNull
    public static InitialValueObservable<TextViewAfterTextChangeEvent> afterTextChangeEvents(@NonNull TextView textView) {
        Preconditions.checkNotNull(textView, "view == null");
        return new TextViewAfterTextChangeEventObservable(textView);
    }

    @CheckResult
    @NonNull
    public static InitialValueObservable<TextViewBeforeTextChangeEvent> beforeTextChangeEvents(@NonNull TextView textView) {
        Preconditions.checkNotNull(textView, "view == null");
        return new TextViewBeforeTextChangeEventObservable(textView);
    }

    @CheckResult
    @NonNull
    public static Consumer<? super Integer> color(@NonNull final TextView textView) {
        Preconditions.checkNotNull(textView, "view == null");
        return new Consumer<Integer>() { // from class: com.jakewharton.rxbinding2.widget.RxTextView.7
            public void accept(Integer num) throws Exception {
                textView.setTextColor(num.intValue());
            }
        };
    }

    @CheckResult
    @NonNull
    public static Observable<TextViewEditorActionEvent> editorActionEvents(@NonNull TextView textView) {
        Preconditions.checkNotNull(textView, "view == null");
        return editorActionEvents(textView, Functions.PREDICATE_ALWAYS_TRUE);
    }

    @CheckResult
    @NonNull
    public static Observable<TextViewEditorActionEvent> editorActionEvents(@NonNull TextView textView, @NonNull Predicate<? super TextViewEditorActionEvent> predicate) {
        Preconditions.checkNotNull(textView, "view == null");
        Preconditions.checkNotNull(predicate, "handled == null");
        return new TextViewEditorActionEventObservable(textView, predicate);
    }

    @CheckResult
    @NonNull
    public static Observable<Integer> editorActions(@NonNull TextView textView) {
        Preconditions.checkNotNull(textView, "view == null");
        return editorActions(textView, Functions.PREDICATE_ALWAYS_TRUE);
    }

    @CheckResult
    @NonNull
    public static Observable<Integer> editorActions(@NonNull TextView textView, @NonNull Predicate<? super Integer> predicate) {
        Preconditions.checkNotNull(textView, "view == null");
        Preconditions.checkNotNull(predicate, "handled == null");
        return new TextViewEditorActionObservable(textView, predicate);
    }

    @CheckResult
    @NonNull
    public static Consumer<? super CharSequence> error(@NonNull final TextView textView) {
        Preconditions.checkNotNull(textView, "view == null");
        return new Consumer<CharSequence>() { // from class: com.jakewharton.rxbinding2.widget.RxTextView.3
            public void accept(CharSequence charSequence) {
                textView.setError(charSequence);
            }
        };
    }

    @CheckResult
    @NonNull
    public static Consumer<? super Integer> errorRes(@NonNull final TextView textView) {
        Preconditions.checkNotNull(textView, "view == null");
        return new Consumer<Integer>() { // from class: com.jakewharton.rxbinding2.widget.RxTextView.4
            public void accept(Integer num) {
                textView.setError(textView.getContext().getResources().getText(num.intValue()));
            }
        };
    }

    @CheckResult
    @NonNull
    public static Consumer<? super CharSequence> hint(@NonNull final TextView textView) {
        Preconditions.checkNotNull(textView, "view == null");
        return new Consumer<CharSequence>() { // from class: com.jakewharton.rxbinding2.widget.RxTextView.5
            public void accept(CharSequence charSequence) {
                textView.setHint(charSequence);
            }
        };
    }

    @CheckResult
    @NonNull
    public static Consumer<? super Integer> hintRes(@NonNull final TextView textView) {
        Preconditions.checkNotNull(textView, "view == null");
        return new Consumer<Integer>() { // from class: com.jakewharton.rxbinding2.widget.RxTextView.6
            public void accept(Integer num) {
                textView.setHint(num.intValue());
            }
        };
    }

    @CheckResult
    @NonNull
    public static Consumer<? super CharSequence> text(@NonNull final TextView textView) {
        Preconditions.checkNotNull(textView, "view == null");
        return new Consumer<CharSequence>() { // from class: com.jakewharton.rxbinding2.widget.RxTextView.1
            public void accept(CharSequence charSequence) {
                textView.setText(charSequence);
            }
        };
    }

    @CheckResult
    @NonNull
    public static InitialValueObservable<TextViewTextChangeEvent> textChangeEvents(@NonNull TextView textView) {
        Preconditions.checkNotNull(textView, "view == null");
        return new TextViewTextChangeEventObservable(textView);
    }

    @CheckResult
    @NonNull
    public static InitialValueObservable<CharSequence> textChanges(@NonNull TextView textView) {
        Preconditions.checkNotNull(textView, "view == null");
        return new TextViewTextObservable(textView);
    }

    @CheckResult
    @NonNull
    public static Consumer<? super Integer> textRes(@NonNull final TextView textView) {
        Preconditions.checkNotNull(textView, "view == null");
        return new Consumer<Integer>() { // from class: com.jakewharton.rxbinding2.widget.RxTextView.2
            public void accept(Integer num) {
                textView.setText(num.intValue());
            }
        };
    }
}
