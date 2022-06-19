.class public Lcom/google/android/material/slider/RangeSlider;
.super Lcom/google/android/material/slider/BaseSlider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/slider/RangeSlider$RangeSliderState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/slider/BaseSlider<",
        "Lcom/google/android/material/slider/RangeSlider;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private b:F

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/slider/RangeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 61
    sget v0, Lcom/google/android/material/a$b;->sliderStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/slider/RangeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    sget-object v2, Lcom/google/android/material/a$l;->RangeSlider:[I

    sget v4, Lcom/google/android/material/slider/RangeSlider;->a:I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 67
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    sget p2, Lcom/google/android/material/a$l;->RangeSlider_values:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 70
    sget p2, Lcom/google/android/material/a$l;->RangeSlider_values:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 71
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1116
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1117
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    .line 1118
    invoke-virtual {p2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/material/slider/RangeSlider;->setValues(Ljava/util/List;)V

    .line 75
    :cond_1
    sget p2, Lcom/google/android/material/a$l;->RangeSlider_minSeparation:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/material/slider/RangeSlider;->b:F

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()F
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->a()F

    move-result v0

    return v0
.end method

.method public final bridge synthetic b()F
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->b()F

    move-result v0

    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic e()I
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->e()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic f()Z
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->f()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final h()F
    .locals 1

    .line 131
    iget v0, p0, Lcom/google/android/material/slider/RangeSlider;->b:F

    return v0
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 174
    check-cast p1, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;

    .line 175
    invoke-virtual {p1}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 177
    invoke-static {p1}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->access$000(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/RangeSlider;->b:F

    .line 178
    invoke-static {p1}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->access$100(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/slider/RangeSlider;->c:I

    .line 179
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/RangeSlider;->a(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 163
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 165
    new-instance v1, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;

    invoke-direct {v1, v0}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;-><init>(Landroid/os/Parcelable;)V

    .line 166
    iget v0, p0, Lcom/google/android/material/slider/RangeSlider;->b:F

    invoke-static {v1, v0}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->access$002(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;F)F

    .line 167
    iget v0, p0, Lcom/google/android/material/slider/RangeSlider;->c:I

    invoke-static {v1, v0}, Lcom/google/android/material/slider/RangeSlider$RangeSliderState;->access$102(Lcom/google/android/material/slider/RangeSlider$RangeSliderState;I)I

    return-object v1
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setFocusedThumbIndex(I)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setFocusedThumbIndex(I)V

    return-void
.end method

.method public bridge synthetic setHaloRadius(I)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    return-void
.end method

.method public bridge synthetic setHaloRadiusResource(I)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadiusResource(I)V

    return-void
.end method

.method public bridge synthetic setHaloTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setLabelBehavior(I)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setLabelBehavior(I)V

    return-void
.end method

.method public bridge synthetic setLabelFormatter(Lcom/google/android/material/slider/a;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setLabelFormatter(Lcom/google/android/material/slider/a;)V

    return-void
.end method

.method public setMinSeparation(F)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/google/android/material/slider/RangeSlider;->b:F

    const/4 p1, 0x0

    .line 142
    iput p1, p0, Lcom/google/android/material/slider/RangeSlider;->c:I

    .line 143
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/RangeSlider;->a(I)V

    return-void
.end method

.method public setMinSeparationValue(F)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/google/android/material/slider/RangeSlider;->b:F

    const/4 p1, 0x1

    .line 156
    iput p1, p0, Lcom/google/android/material/slider/RangeSlider;->c:I

    .line 157
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/RangeSlider;->a(I)V

    return-void
.end method

.method public bridge synthetic setStepSize(F)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setStepSize(F)V

    return-void
.end method

.method public bridge synthetic setThumbElevation(F)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    return-void
.end method

.method public bridge synthetic setThumbElevationResource(I)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevationResource(I)V

    return-void
.end method

.method public bridge synthetic setThumbRadius(I)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    return-void
.end method

.method public bridge synthetic setThumbRadiusResource(I)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadiusResource(I)V

    return-void
.end method

.method public bridge synthetic setThumbStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setThumbStrokeColorResource(I)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColorResource(I)V

    return-void
.end method

.method public bridge synthetic setThumbStrokeWidth(F)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    return-void
.end method

.method public bridge synthetic setThumbStrokeWidthResource(I)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidthResource(I)V

    return-void
.end method

.method public bridge synthetic setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTickActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTickTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTickVisible(Z)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickVisible(Z)V

    return-void
.end method

.method public bridge synthetic setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTrackHeight(I)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackHeight(I)V

    return-void
.end method

.method public bridge synthetic setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setValueFrom(F)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValueFrom(F)V

    return-void
.end method

.method public bridge synthetic setValueTo(F)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValueTo(F)V

    return-void
.end method

.method public setValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValues(Ljava/util/List;)V

    return-void
.end method

.method public varargs setValues([Ljava/lang/Float;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValues([Ljava/lang/Float;)V

    return-void
.end method
