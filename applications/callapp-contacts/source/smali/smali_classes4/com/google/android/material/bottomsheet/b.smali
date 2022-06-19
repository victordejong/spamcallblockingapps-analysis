.class public Lcom/google/android/material/bottomsheet/b;
.super Landroidx/appcompat/app/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomsheet/b$a;
    }
.end annotation


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/g;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;Z)V"
        }
    .end annotation

    .line 78
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/b;->c:Z

    .line 3088
    iget p2, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;->d()V

    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/material/bottomsheet/a;

    if-eqz p2, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/a;->c()V

    .line 86
    :cond_1
    new-instance p2, Lcom/google/android/material/bottomsheet/b$a;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/google/android/material/bottomsheet/b$a;-><init>(Lcom/google/android/material/bottomsheet/b;Lcom/google/android/material/bottomsheet/b$1;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;)V

    .line 87
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomsheet/b;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;->d()V

    return-void
.end method

.method private a(Z)Z
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 64
    instance-of v1, v0, Lcom/google/android/material/bottomsheet/a;

    if-eqz v1, :cond_0

    .line 65
    check-cast v0, Lcom/google/android/material/bottomsheet/a;

    .line 66
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->b()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    .line 1909
    iget-boolean v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-eqz v2, :cond_0

    .line 2181
    iget-boolean v0, v0, Lcom/google/android/material/bottomsheet/a;->a:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0, v1, p1}, Lcom/google/android/material/bottomsheet/b;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private d()V
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/b;->c:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-super {p0}, Landroidx/appcompat/app/g;->b()V

    return-void

    .line 95
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/g;->a()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 41
    new-instance p1, Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->getTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/bottomsheet/a;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/b;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-super {p0}, Landroidx/appcompat/app/g;->a()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/b;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-super {p0}, Landroidx/appcompat/app/g;->b()V

    :cond_0
    return-void
.end method
