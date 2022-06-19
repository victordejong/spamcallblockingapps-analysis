.class public Lcom/google/android/material/bottomnavigation/d;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomnavigation/d$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/appcompat/view/menu/g;

.field private b:Lcom/google/android/material/bottomnavigation/c;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/bottomnavigation/d;->c:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/google/android/material/bottomnavigation/d;->d:I

    .line 101
    return-void
.end method

.method public a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 2

    .prologue
    .line 52
    iput-object p2, p0, Lcom/google/android/material/bottomnavigation/d;->a:Landroidx/appcompat/view/menu/g;

    .line 53
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/d;->b:Lcom/google/android/material/bottomnavigation/c;

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/d;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/c;->a(Landroidx/appcompat/view/menu/g;)V

    .line 54
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 120
    instance-of v0, p1, Lcom/google/android/material/bottomnavigation/d$a;

    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/d;->b:Lcom/google/android/material/bottomnavigation/c;

    move-object v0, p1

    check-cast v0, Lcom/google/android/material/bottomnavigation/d$a;

    iget v0, v0, Lcom/google/android/material/bottomnavigation/d$a;->a:I

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomnavigation/c;->b(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/d;->b:Lcom/google/android/material/bottomnavigation/c;

    .line 124
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/c;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Lcom/google/android/material/bottomnavigation/d$a;

    iget-object v1, p1, Lcom/google/android/material/bottomnavigation/d$a;->b:Lcom/google/android/material/internal/e;

    .line 123
    invoke-static {v0, v1}, Lcom/google/android/material/b/b;->a(Landroid/content/Context;Lcom/google/android/material/internal/e;)Landroid/util/SparseArray;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/d;->b:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomnavigation/c;->setBadgeDrawables(Landroid/util/SparseArray;)V

    .line 127
    :cond_0
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/m$a;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public a(Lcom/google/android/material/bottomnavigation/c;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/d;->b:Lcom/google/android/material/bottomnavigation/c;

    .line 48
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/d;->c:Z

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    if-eqz p1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/d;->b:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/c;->b()V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/d;->b:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/c;->c()V

    goto :goto_0
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroidx/appcompat/view/menu/r;)Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/d;->c:Z

    .line 131
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/google/android/material/bottomnavigation/d;->d:I

    return v0
.end method

.method public f()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/google/android/material/bottomnavigation/d$a;

    invoke-direct {v0}, Lcom/google/android/material/bottomnavigation/d$a;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/d;->b:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/c;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/bottomnavigation/d$a;->a:I

    .line 113
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/d;->b:Lcom/google/android/material/bottomnavigation/c;

    .line 114
    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/c;->getBadgeDrawables()Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/b/b;->a(Landroid/util/SparseArray;)Lcom/google/android/material/internal/e;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/bottomnavigation/d$a;->b:Lcom/google/android/material/internal/e;

    .line 115
    return-object v0
.end method
