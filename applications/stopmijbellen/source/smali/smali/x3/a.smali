.class public Lx3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx3/a;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lx3/a;->a:Lcom/google/android/material/navigation/NavigationView;

    .line 2
    iget-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->j:[I

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 4
    iget-object v0, p0, Lx3/a;->a:Lcom/google/android/material/navigation/NavigationView;

    .line 5
    iget-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->j:[I

    const/4 v2, 0x1

    .line 6
    aget v1, v1, v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v0, v0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 8
    iget-boolean v4, v0, Lv3/h;->u:Z

    if-eq v4, v1, :cond_1

    .line 9
    iput-boolean v1, v0, Lv3/h;->u:Z

    .line 10
    invoke-virtual {v0}, Lv3/h;->m()V

    .line 11
    :cond_1
    iget-object v0, p0, Lx3/a;->a:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v1, :cond_2

    .line 12
    iget-boolean v1, v0, Lcom/google/android/material/navigation/NavigationView;->m:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 13
    :goto_1
    invoke-virtual {v0, v1}, Lv3/k;->setDrawTopInsetForeground(Z)V

    .line 14
    iget-object v0, p0, Lx3/a;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 15
    :goto_2
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_4

    .line 16
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 17
    check-cast v0, Landroid/app/Activity;

    goto :goto_3

    .line 18
    :cond_3
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_8

    const v1, 0x1020002

    .line 19
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v4, p0, Lx3/a;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    if-ne v1, v4, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    .line 20
    :goto_4
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    .line 21
    :goto_5
    iget-object v4, p0, Lx3/a;->a:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 22
    iget-boolean v0, v4, Lcom/google/android/material/navigation/NavigationView;->n:Z

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    .line 23
    :goto_6
    invoke-virtual {v4, v2}, Lv3/k;->setDrawBottomInsetForeground(Z)V

    :cond_8
    return-void
.end method
