.class Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;
.super Ljava/lang/Object;
.source "BottomAppBar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->a:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5

    .prologue
    .line 888
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->a:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->a(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 891
    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v1, :cond_2

    .line 892
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 921
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v1, p1

    .line 896
    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 898
    iget-object v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->a:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->b(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b(Landroid/graphics/Rect;)V

    .line 899
    iget-object v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->a:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->b(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 902
    invoke-virtual {v0, v3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->b(I)Z

    .line 905
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    .line 909
    iget-object v4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->a:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-static {v4}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->c(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)I

    move-result v4

    if-nez v4, :cond_1

    .line 912
    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 915
    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/a$d;->mtrl_bottomappbar_fab_bottom_margin:I

    .line 916
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 918
    sub-int v1, v3, v1

    .line 919
    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->e(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->bottomMargin:I

    goto :goto_0
.end method
