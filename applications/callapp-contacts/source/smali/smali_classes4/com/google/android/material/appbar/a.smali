.class final Lcom/google/android/material/appbar/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Z

.field private final e:Landroid/view/View;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/google/android/material/appbar/a;->g:Z

    .line 38
    iput-boolean v0, p0, Lcom/google/android/material/appbar/a;->d:Z

    .line 41
    iput-object p1, p0, Lcom/google/android/material/appbar/a;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/a;->a:I

    .line 47
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/a;->f:I

    return-void
.end method

.method public final a(I)Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/google/android/material/appbar/a;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/a;->b:I

    if-eq v0, p1, :cond_0

    .line 63
    iput p1, p0, Lcom/google/android/material/appbar/a;->b:I

    .line 64
    invoke-virtual {p0}, Lcom/google/android/material/appbar/a;->b()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final b()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->e:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/appbar/a;->b:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/appbar/a;->a:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/v;->e(Landroid/view/View;I)V

    .line 52
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->e:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/appbar/a;->c:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/appbar/a;->f:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/v;->f(Landroid/view/View;I)V

    return-void
.end method
