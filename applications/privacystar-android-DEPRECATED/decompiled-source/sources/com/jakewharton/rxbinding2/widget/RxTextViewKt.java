package com.jakewharton.rxbinding2.widget;

import android.widget.TextView;
import com.jakewharton.rxbinding2.InitialValueObservable;
import com.privacystar.core.service.googleplay.IABConstants;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��B\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0013\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00050\u0001*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0006\u001a\n\u0012\u0006\b��\u0012\u00020\b0\u0007*\u00020\u0003H\u0086\b\u001a\u0013\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n*\u00020\u0003H\u0086\b\u001a#\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n*\u00020\u00032\u000e\u0010\f\u001a\n\u0012\u0006\b��\u0012\u00020\u000b0\rH\u0086\b\u001a\u0013\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\n*\u00020\u0003H\u0086\b\u001a#\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\n*\u00020\u00032\u000e\u0010\f\u001a\n\u0012\u0006\b��\u0012\u00020\b0\rH\u0086\b\u001a\u0015\u0010\u000f\u001a\n\u0012\u0006\b��\u0012\u00020\u00100\u0007*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0011\u001a\n\u0012\u0006\b��\u0012\u00020\b0\u0007*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0012\u001a\n\u0012\u0006\b��\u0012\u00020\u00100\u0007*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0013\u001a\n\u0012\u0006\b��\u0012\u00020\b0\u0007*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0014\u001a\n\u0012\u0006\b��\u0012\u00020\u00100\u0007*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u0001*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00100\u0001*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0018\u001a\n\u0012\u0006\b��\u0012\u00020\b0\u0007*\u00020\u0003H\u0086\b¨\u0006\u0019"}, m254d2 = {"afterTextChangeEvents", "Lcom/jakewharton/rxbinding2/InitialValueObservable;", "Lcom/jakewharton/rxbinding2/widget/TextViewAfterTextChangeEvent;", "Landroid/widget/TextView;", "beforeTextChangeEvents", "Lcom/jakewharton/rxbinding2/widget/TextViewBeforeTextChangeEvent;", "color", "Lio/reactivex/functions/Consumer;", "", "editorActionEvents", "Lio/reactivex/Observable;", "Lcom/jakewharton/rxbinding2/widget/TextViewEditorActionEvent;", "handled", "Lio/reactivex/functions/Predicate;", "editorActions", IABConstants.EXTRA_ERROR, "", "errorRes", "hint", "hintRes", "text", "textChangeEvents", "Lcom/jakewharton/rxbinding2/widget/TextViewTextChangeEvent;", "textChanges", "textRes", "rxbinding2-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxTextViewKt.class */
public final class RxTextViewKt {
    @NotNull
    public static final InitialValueObservable<TextViewAfterTextChangeEvent> afterTextChangeEvents(@NotNull TextView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<TextViewAfterTextChangeEvent> afterTextChangeEvents = RxTextView.afterTextChangeEvents(receiver);
        Intrinsics.checkExpressionValueIsNotNull(afterTextChangeEvents, "RxTextView.afterTextChangeEvents(this)");
        return afterTextChangeEvents;
    }

    @NotNull
    public static final InitialValueObservable<TextViewBeforeTextChangeEvent> beforeTextChangeEvents(@NotNull TextView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<TextViewBeforeTextChangeEvent> beforeTextChangeEvents = RxTextView.beforeTextChangeEvents(receiver);
        Intrinsics.checkExpressionValueIsNotNull(beforeTextChangeEvents, "RxTextView.beforeTextChangeEvents(this)");
        return beforeTextChangeEvents;
    }

    @NotNull
    public static final Consumer<? super Integer> color(@NotNull TextView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Integer> color = RxTextView.color(receiver);
        Intrinsics.checkExpressionValueIsNotNull(color, "RxTextView.color(this)");
        return color;
    }

    @NotNull
    public static final Observable<TextViewEditorActionEvent> editorActionEvents(@NotNull TextView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<TextViewEditorActionEvent> editorActionEvents = RxTextView.editorActionEvents(receiver);
        Intrinsics.checkExpressionValueIsNotNull(editorActionEvents, "RxTextView.editorActionEvents(this)");
        return editorActionEvents;
    }

    @NotNull
    public static final Observable<TextViewEditorActionEvent> editorActionEvents(@NotNull TextView receiver, @NotNull Predicate<? super TextViewEditorActionEvent> handled) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        Observable<TextViewEditorActionEvent> editorActionEvents = RxTextView.editorActionEvents(receiver, handled);
        Intrinsics.checkExpressionValueIsNotNull(editorActionEvents, "RxTextView.editorActionEvents(this, handled)");
        return editorActionEvents;
    }

    @NotNull
    public static final Observable<Integer> editorActions(@NotNull TextView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<Integer> editorActions = RxTextView.editorActions(receiver);
        Intrinsics.checkExpressionValueIsNotNull(editorActions, "RxTextView.editorActions(this)");
        return editorActions;
    }

    @NotNull
    public static final Observable<Integer> editorActions(@NotNull TextView receiver, @NotNull Predicate<? super Integer> handled) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        Observable<Integer> editorActions = RxTextView.editorActions(receiver, handled);
        Intrinsics.checkExpressionValueIsNotNull(editorActions, "RxTextView.editorActions(this, handled)");
        return editorActions;
    }

    @NotNull
    public static final Consumer<? super CharSequence> error(@NotNull TextView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super CharSequence> error = RxTextView.error(receiver);
        Intrinsics.checkExpressionValueIsNotNull(error, "RxTextView.error(this)");
        return error;
    }

    @NotNull
    public static final Consumer<? super Integer> errorRes(@NotNull TextView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Integer> errorRes = RxTextView.errorRes(receiver);
        Intrinsics.checkExpressionValueIsNotNull(errorRes, "RxTextView.errorRes(this)");
        return errorRes;
    }

    @NotNull
    public static final Consumer<? super CharSequence> hint(@NotNull TextView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super CharSequence> hint = RxTextView.hint(receiver);
        Intrinsics.checkExpressionValueIsNotNull(hint, "RxTextView.hint(this)");
        return hint;
    }

    @NotNull
    public static final Consumer<? super Integer> hintRes(@NotNull TextView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Integer> hintRes = RxTextView.hintRes(receiver);
        Intrinsics.checkExpressionValueIsNotNull(hintRes, "RxTextView.hintRes(this)");
        return hintRes;
    }

    @NotNull
    public static final Consumer<? super CharSequence> text(@NotNull TextView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super CharSequence> text = RxTextView.text(receiver);
        Intrinsics.checkExpressionValueIsNotNull(text, "RxTextView.text(this)");
        return text;
    }

    @NotNull
    public static final InitialValueObservable<TextViewTextChangeEvent> textChangeEvents(@NotNull TextView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<TextViewTextChangeEvent> textChangeEvents = RxTextView.textChangeEvents(receiver);
        Intrinsics.checkExpressionValueIsNotNull(textChangeEvents, "RxTextView.textChangeEvents(this)");
        return textChangeEvents;
    }

    @NotNull
    public static final InitialValueObservable<CharSequence> textChanges(@NotNull TextView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<CharSequence> textChanges = RxTextView.textChanges(receiver);
        Intrinsics.checkExpressionValueIsNotNull(textChanges, "RxTextView.textChanges(this)");
        return textChanges;
    }

    @NotNull
    public static final Consumer<? super Integer> textRes(@NotNull TextView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Integer> textRes = RxTextView.textRes(receiver);
        Intrinsics.checkExpressionValueIsNotNull(textRes, "RxTextView.textRes(this)");
        return textRes;
    }
}
