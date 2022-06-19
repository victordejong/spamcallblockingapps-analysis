.class final Lcom/google/android/material/o/a$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "RippleDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/o/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Lcom/google/android/material/q/g;

.field b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/o/a$a;)V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 181
    iget-object v0, p1, Lcom/google/android/material/o/a$a;->a:Lcom/google/android/material/q/g;

    invoke-virtual {v0}, Lcom/google/android/material/q/g;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/q/g;

    iput-object v0, p0, Lcom/google/android/material/o/a$a;->a:Lcom/google/android/material/q/g;

    .line 182
    iget-boolean v0, p1, Lcom/google/android/material/o/a$a;->b:Z

    iput-boolean v0, p0, Lcom/google/android/material/o/a$a;->b:Z

    .line 183
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/q/g;)V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/google/android/material/o/a$a;->a:Lcom/google/android/material/q/g;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/o/a$a;->b:Z

    .line 178
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/material/o/a;
    .locals 3

    .prologue
    .line 188
    new-instance v0, Lcom/google/android/material/o/a;

    new-instance v1, Lcom/google/android/material/o/a$a;

    invoke-direct {v1, p0}, Lcom/google/android/material/o/a$a;-><init>(Lcom/google/android/material/o/a$a;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/o/a;-><init>(Lcom/google/android/material/o/a$a;Lcom/google/android/material/o/a$1;)V

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/android/material/o/a$a;->a()Lcom/google/android/material/o/a;

    move-result-object v0

    return-object v0
.end method
