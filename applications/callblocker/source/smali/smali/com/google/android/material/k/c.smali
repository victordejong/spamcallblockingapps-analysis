.class public final Lcom/google/android/material/k/c;
.super Ljava/lang/Object;
.source "ExpandableWidgetHelper.java"


# instance fields
.field private final a:Landroid/view/View;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/k/b;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/google/android/material/k/c;->b:Z

    .line 37
    iput v0, p0, Lcom/google/android/material/k/c;->c:I

    .line 41
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/material/k/c;->a:Landroid/view/View;

    .line 42
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/material/k/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 92
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    .line 93
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, p0, Lcom/google/android/material/k/c;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(Landroid/view/View;)V

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/google/android/material/k/c;->c:I

    .line 82
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    const-string/jumbo v0, "expanded"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/k/c;->b:Z

    .line 72
    const-string/jumbo v0, "expandedComponentIdHint"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/k/c;->c:I

    .line 74
    iget-boolean v0, p0, Lcom/google/android/material/k/c;->b:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/google/android/material/k/c;->d()V

    .line 77
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/material/k/c;->b:Z

    return v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string/jumbo v1, "expanded"

    iget-boolean v2, p0, Lcom/google/android/material/k/c;->b:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    const-string/jumbo v1, "expandedComponentIdHint"

    iget v2, p0, Lcom/google/android/material/k/c;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/google/android/material/k/c;->c:I

    return v0
.end method
