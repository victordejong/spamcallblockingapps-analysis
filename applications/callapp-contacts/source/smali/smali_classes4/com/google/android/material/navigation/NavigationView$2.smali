.class final Lcom/google/android/material/navigation/NavigationView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/navigation/NavigationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView$2;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .line 681
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$2;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->a(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->getLocationOnScreen([I)V

    .line 682
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$2;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v0}, Lcom/google/android/material/navigation/NavigationView;->a(Lcom/google/android/material/navigation/NavigationView;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 683
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$2;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-static {v3}, Lcom/google/android/material/navigation/NavigationView;->b(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/internal/e;

    move-result-object v3

    .line 1327
    iget-boolean v4, v3, Lcom/google/android/material/internal/e;->p:Z

    if-eq v4, v0, :cond_1

    .line 1328
    iput-boolean v0, v3, Lcom/google/android/material/internal/e;->p:Z

    .line 1329
    invoke-virtual {v3}, Lcom/google/android/material/internal/e;->c()V

    .line 684
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationView$2;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v3, v0}, Lcom/google/android/material/navigation/NavigationView;->setDrawTopInsetForeground(Z)V

    .line 686
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$2;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2041
    :goto_1
    instance-of v3, v0, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_3

    .line 2042
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 2043
    check-cast v0, Landroid/app/Activity;

    goto :goto_2

    .line 2045
    :cond_2
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    .line 687
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_7

    const v3, 0x1020002

    .line 689
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$2;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationView;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 691
    :goto_3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    .line 693
    :goto_4
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$2;->a:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v4, v1}, Lcom/google/android/material/navigation/NavigationView;->setDrawBottomInsetForeground(Z)V

    :cond_7
    return-void
.end method
