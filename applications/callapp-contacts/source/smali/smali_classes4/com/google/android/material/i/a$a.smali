.class final Lcom/google/android/material/i/a$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Lcom/google/android/material/k/h;

.field b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/i/a$a;)V
    .locals 1

    .line 180
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 181
    iget-object v0, p1, Lcom/google/android/material/i/a$a;->a:Lcom/google/android/material/k/h;

    invoke-virtual {v0}, Lcom/google/android/material/k/h;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/k/h;

    iput-object v0, p0, Lcom/google/android/material/i/a$a;->a:Lcom/google/android/material/k/h;

    .line 182
    iget-boolean p1, p1, Lcom/google/android/material/i/a$a;->b:Z

    iput-boolean p1, p0, Lcom/google/android/material/i/a$a;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/k/h;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/google/android/material/i/a$a;->a:Lcom/google/android/material/k/h;

    const/4 p1, 0x0

    .line 177
    iput-boolean p1, p0, Lcom/google/android/material/i/a$a;->b:Z

    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1188
    new-instance v0, Lcom/google/android/material/i/a;

    new-instance v1, Lcom/google/android/material/i/a$a;

    invoke-direct {v1, p0}, Lcom/google/android/material/i/a$a;-><init>(Lcom/google/android/material/i/a$a;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/i/a;-><init>(Lcom/google/android/material/i/a$a;Lcom/google/android/material/i/a$1;)V

    return-object v0
.end method
