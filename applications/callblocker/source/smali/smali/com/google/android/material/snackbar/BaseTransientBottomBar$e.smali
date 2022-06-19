.class public Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;
.super Landroid/widget/FrameLayout;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "e"
.end annotation


# static fields
.field private static final a:Landroid/view/View$OnTouchListener;


# instance fields
.field private b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$d;

.field private c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;

.field private d:I

.field private final e:F

.field private final f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1075
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e$1;

    invoke-direct {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e$1;-><init>()V

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->a:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1092
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1093
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1096
    invoke-static {p1, p2, v2, v2}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1099
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1100
    sget-object v1, Lcom/google/android/material/a$l;->SnackbarLayout:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1101
    sget v1, Lcom/google/android/material/a$l;->SnackbarLayout_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1102
    sget v1, Lcom/google/android/material/a$l;->SnackbarLayout_elevation:I

    .line 1103
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 1102
    invoke-static {p0, v1}, Landroidx/core/h/u;->a(Landroid/view/View;F)V

    .line 1105
    :cond_0
    sget v1, Lcom/google/android/material/a$l;->SnackbarLayout_animationMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->d:I

    .line 1106
    sget v1, Lcom/google/android/material/a$l;->SnackbarLayout_backgroundOverlayColorAlpha:I

    .line 1107
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->e:F

    .line 1108
    sget v1, Lcom/google/android/material/a$l;->SnackbarLayout_actionTextColorAlpha:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->f:F

    .line 1109
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1111
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->setFocusable(Z)V

    .line 1113
    return-void
.end method


# virtual methods
.method getActionTextColorAlpha()F
    .locals 1

    .prologue
    .line 1172
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->f:F

    return v0
.end method

.method getAnimationMode()I
    .locals 1

    .prologue
    .line 1160
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->d:I

    return v0
.end method

.method getBackgroundOverlayColorAlpha()F
    .locals 1

    .prologue
    .line 1168
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->e:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1132
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1133
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;

    invoke-interface {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;->a(Landroid/view/View;)V

    .line 1137
    :cond_0
    invoke-static {p0}, Landroidx/core/h/u;->q(Landroid/view/View;)V

    .line 1138
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1142
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1143
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;

    invoke-interface {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;->b(Landroid/view/View;)V

    .line 1146
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 1124
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1125
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$d;

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$d;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$d;->a(Landroid/view/View;IIII)V

    .line 1128
    :cond_0
    return-void
.end method

.method setAnimationMode(I)V
    .locals 0

    .prologue
    .line 1164
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->d:I

    .line 1165
    return-void
.end method

.method setOnAttachStateChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;)V
    .locals 0

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;

    .line 1156
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 1118
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1119
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1120
    return-void

    .line 1118
    :cond_0
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->a:Landroid/view/View$OnTouchListener;

    goto :goto_0
.end method

.method setOnLayoutChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$d;)V
    .locals 0

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$d;

    .line 1151
    return-void
.end method
