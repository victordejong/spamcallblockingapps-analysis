.class public Lcom/google/android/material/internal/k;
.super Landroid/widget/ImageButton;
.source "VisibilityAwareImageButton.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/material/internal/k;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/k;->a:I

    .line 49
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 58
    if-eqz p2, :cond_0

    .line 59
    iput p1, p0, Lcom/google/android/material/internal/k;->a:I

    .line 61
    :cond_0
    return-void
.end method

.method public final getUserSetVisibility()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/material/internal/k;->a:I

    return v0
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/internal/k;->a(IZ)V

    .line 54
    return-void
.end method
