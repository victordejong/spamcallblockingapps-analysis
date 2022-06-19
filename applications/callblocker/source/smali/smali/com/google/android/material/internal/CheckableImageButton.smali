.class public Lcom/google/android/material/internal/CheckableImageButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "CheckableImageButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/CheckableImageButton$a;
    }
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/internal/CheckableImageButton;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 52
    sget v0, Landroidx/appcompat/a$a;->imageButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->c:Z

    .line 45
    iput-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    .line 58
    new-instance v0, Lcom/google/android/material/internal/CheckableImageButton$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/CheckableImageButton$1;-><init>(Lcom/google/android/material/internal/CheckableImageButton;)V

    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a;)V

    .line 75
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->c:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->b:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->b:Z

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/google/android/material/internal/CheckableImageButton;->a:[I

    array-length v0, v0

    add-int/2addr v0, p1

    .line 107
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->onCreateDrawableState(I)[I

    move-result-object v0

    sget-object v1, Lcom/google/android/material/internal/CheckableImageButton;->a:[I

    .line 106
    invoke-static {v0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->mergeDrawableStates([I[I)[I

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 125
    instance-of v0, p1, Lcom/google/android/material/internal/CheckableImageButton$a;

    if-nez v0, :cond_0

    .line 126
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    check-cast p1, Lcom/google/android/material/internal/CheckableImageButton$a;

    .line 130
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton$a;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 131
    iget-boolean v0, p1, Lcom/google/android/material/internal/CheckableImageButton$a;->a:Z

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/google/android/material/internal/CheckableImageButton$a;

    invoke-direct {v1, v0}, Lcom/google/android/material/internal/CheckableImageButton$a;-><init>(Landroid/os/Parcelable;)V

    .line 119
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->b:Z

    iput-boolean v0, v1, Lcom/google/android/material/internal/CheckableImageButton$a;->a:Z

    .line 120
    return-object v1
.end method

.method public setCheckable(Z)V
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->c:Z

    if-eq v0, p1, :cond_0

    .line 137
    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableImageButton;->c:Z

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->sendAccessibilityEvent(I)V

    .line 140
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->b:Z

    if-eq v0, p1, :cond_0

    .line 80
    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableImageButton;->b:Z

    .line 81
    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableImageButton;->refreshDrawableState()V

    .line 82
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->sendAccessibilityEvent(I)V

    .line 84
    :cond_0
    return-void
.end method

.method public setPressable(Z)V
    .locals 0

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    .line 150
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setPressed(Z)V

    .line 101
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableImageButton;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 94
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
