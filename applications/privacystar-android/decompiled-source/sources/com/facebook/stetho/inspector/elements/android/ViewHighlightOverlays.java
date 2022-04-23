package com.facebook.stetho.inspector.elements.android;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays.class */
abstract class ViewHighlightOverlays {

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$NoOpViewHighlightOverlays.class */
    private static class NoOpViewHighlightOverlays extends ViewHighlightOverlays {
        private NoOpViewHighlightOverlays() {
        }

        @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays
        void highlightView(View view, Rect rect, int i) {
        }

        @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays
        void removeHighlight(View view) {
        }
    }

    @TargetApi(18)
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2.class */
    private static class ViewHighlightOverlaysJellybeanMR2 extends ViewHighlightOverlays {
        private static final int MARGIN_OVERLAY_COLOR = -1426797922;
        private static final int PADDING_OVERLAY_COLOR = -1430332746;
        private final MainHighlightDrawable mMainHighlightDrawable = new MainHighlightDrawable();
        private final HighlightDrawable[] mHighlightDrawables = {this.mMainHighlightDrawable, new PaddingTopHighlightDrawable(), new PaddingBottomHighlightDrawable(), new PaddingRightHighlightDrawable(), new PaddingLeftHighlightDrawable(), new MarginTopHighlightDrawable(), new MarginBottomHighlightDrawable(), new MarginRightHighlightDrawable(), new MarginLeftHighlightDrawable()};

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$HighlightDrawable.class */
        static abstract class HighlightDrawable extends ColorDrawable {
            protected final Rect mMargins = new Rect();
            protected final Rect mPaddings = new Rect();

            public HighlightDrawable() {
            }

            HighlightDrawable(int i) {
                super(i);
            }

            void highlightView(View view) {
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    this.mMargins.left = marginLayoutParams.leftMargin;
                    this.mMargins.top = marginLayoutParams.topMargin;
                    this.mMargins.right = marginLayoutParams.rightMargin;
                    this.mMargins.bottom = marginLayoutParams.bottomMargin;
                } else {
                    this.mMargins.left = 0;
                    this.mMargins.top = 0;
                    this.mMargins.right = 0;
                    this.mMargins.bottom = 0;
                }
                this.mPaddings.left = view.getPaddingLeft();
                this.mPaddings.top = view.getPaddingTop();
                this.mPaddings.right = view.getPaddingRight();
                this.mPaddings.bottom = view.getPaddingBottom();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$MainHighlightDrawable.class */
        static class MainHighlightDrawable extends HighlightDrawable {
            MainHighlightDrawable() {
            }

            @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                Rect clipBounds = canvas.getClipBounds();
                clipBounds.inset(-(this.mMargins.right + this.mMargins.left), -(this.mMargins.top + this.mMargins.bottom));
                canvas.clipRect(clipBounds, Region.Op.REPLACE);
                super.draw(canvas);
            }

            @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays.ViewHighlightOverlaysJellybeanMR2.HighlightDrawable
            void highlightView(View view) {
                super.highlightView(view);
            }
        }

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$MarginBottomHighlightDrawable.class */
        static class MarginBottomHighlightDrawable extends HighlightDrawable {
            MarginBottomHighlightDrawable() {
                super(ViewHighlightOverlaysJellybeanMR2.MARGIN_OVERLAY_COLOR);
            }

            @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                canvas.translate(0.0f, this.mMargins.bottom + this.mMargins.top);
                super.draw(canvas);
            }

            @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays.ViewHighlightOverlaysJellybeanMR2.HighlightDrawable
            void highlightView(View view) {
                super.highlightView(view);
                setBounds(0, view.getHeight() - this.mMargins.bottom, view.getWidth(), view.getHeight());
            }
        }

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$MarginLeftHighlightDrawable.class */
        static class MarginLeftHighlightDrawable extends HighlightDrawable {
            MarginLeftHighlightDrawable() {
                super(ViewHighlightOverlaysJellybeanMR2.MARGIN_OVERLAY_COLOR);
            }

            @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                canvas.translate(-(this.mMargins.left + this.mMargins.right), 0.0f);
                super.draw(canvas);
            }

            @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays.ViewHighlightOverlaysJellybeanMR2.HighlightDrawable
            void highlightView(View view) {
                super.highlightView(view);
                setBounds(0, 0, this.mMargins.left, view.getHeight() + this.mMargins.top + this.mMargins.bottom);
            }
        }

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$MarginRightHighlightDrawable.class */
        static class MarginRightHighlightDrawable extends HighlightDrawable {
            MarginRightHighlightDrawable() {
                super(ViewHighlightOverlaysJellybeanMR2.MARGIN_OVERLAY_COLOR);
            }

            @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                canvas.translate(this.mMargins.right, -(this.mMargins.top + this.mMargins.bottom));
                super.draw(canvas);
            }

            @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays.ViewHighlightOverlaysJellybeanMR2.HighlightDrawable
            void highlightView(View view) {
                super.highlightView(view);
                setBounds(view.getWidth() - this.mMargins.right, 0, view.getWidth(), view.getHeight() + this.mMargins.top + this.mMargins.bottom);
            }
        }

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$MarginTopHighlightDrawable.class */
        static class MarginTopHighlightDrawable extends HighlightDrawable {
            MarginTopHighlightDrawable() {
                super(ViewHighlightOverlaysJellybeanMR2.MARGIN_OVERLAY_COLOR);
            }

            @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                canvas.translate(0.0f, -this.mMargins.top);
                super.draw(canvas);
            }

            @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays.ViewHighlightOverlaysJellybeanMR2.HighlightDrawable
            void highlightView(View view) {
                super.highlightView(view);
                setBounds(0, 0, view.getWidth(), this.mMargins.top);
            }
        }

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$PaddingBottomHighlightDrawable.class */
        static class PaddingBottomHighlightDrawable extends HighlightDrawable {
            PaddingBottomHighlightDrawable() {
                super(ViewHighlightOverlaysJellybeanMR2.PADDING_OVERLAY_COLOR);
            }

            @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays.ViewHighlightOverlaysJellybeanMR2.HighlightDrawable
            void highlightView(View view) {
                super.highlightView(view);
                setBounds(this.mPaddings.left, view.getHeight() - this.mPaddings.bottom, view.getWidth() - this.mPaddings.right, view.getHeight());
            }
        }

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$PaddingLeftHighlightDrawable.class */
        static class PaddingLeftHighlightDrawable extends HighlightDrawable {
            PaddingLeftHighlightDrawable() {
                super(ViewHighlightOverlaysJellybeanMR2.PADDING_OVERLAY_COLOR);
            }

            @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays.ViewHighlightOverlaysJellybeanMR2.HighlightDrawable
            void highlightView(View view) {
                super.highlightView(view);
                setBounds(0, 0, this.mPaddings.left, view.getHeight());
            }
        }

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$PaddingRightHighlightDrawable.class */
        static class PaddingRightHighlightDrawable extends HighlightDrawable {
            PaddingRightHighlightDrawable() {
                super(ViewHighlightOverlaysJellybeanMR2.PADDING_OVERLAY_COLOR);
            }

            @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays.ViewHighlightOverlaysJellybeanMR2.HighlightDrawable
            void highlightView(View view) {
                super.highlightView(view);
                setBounds(view.getWidth() - this.mPaddings.right, 0, view.getWidth(), view.getHeight());
            }
        }

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$PaddingTopHighlightDrawable.class */
        static class PaddingTopHighlightDrawable extends HighlightDrawable {
            PaddingTopHighlightDrawable() {
                super(ViewHighlightOverlaysJellybeanMR2.PADDING_OVERLAY_COLOR);
            }

            @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays.ViewHighlightOverlaysJellybeanMR2.HighlightDrawable
            void highlightView(View view) {
                super.highlightView(view);
                setBounds(this.mPaddings.left, 0, view.getWidth() - this.mPaddings.right, this.mPaddings.top);
            }
        }

        ViewHighlightOverlaysJellybeanMR2() {
        }

        @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays
        void highlightView(View view, Rect rect, int i) {
            this.mMainHighlightDrawable.setColor(i);
            if (rect.isEmpty()) {
                this.mMainHighlightDrawable.setBounds(0, 0, view.getWidth(), view.getHeight());
            } else {
                this.mMainHighlightDrawable.setBounds(rect);
            }
            int length = this.mHighlightDrawables.length;
            for (int i2 = 0; i2 < length; i2++) {
                HighlightDrawable highlightDrawable = this.mHighlightDrawables[i2];
                highlightDrawable.highlightView(view);
                view.getOverlay().add(highlightDrawable);
            }
        }

        @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays
        void removeHighlight(View view) {
            for (HighlightDrawable highlightDrawable : this.mHighlightDrawables) {
                view.getOverlay().remove(highlightDrawable);
            }
        }
    }

    ViewHighlightOverlays() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ViewHighlightOverlays newInstance() {
        return Build.VERSION.SDK_INT >= 18 ? new ViewHighlightOverlaysJellybeanMR2() : new NoOpViewHighlightOverlays();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void highlightView(View view, Rect rect, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void removeHighlight(View view);
}
