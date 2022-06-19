.class Lcom/google/android/material/tabs/TabLayout$h$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabs/TabLayout$h;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/android/material/tabs/TabLayout$h;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout$h;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2549
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$h$1;->b:Lcom/google/android/material/tabs/TabLayout$h;

    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout$h$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .prologue
    .line 2561
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2562
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h$1;->b:Lcom/google/android/material/tabs/TabLayout$h;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h$1;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/material/tabs/TabLayout$h;->a(Lcom/google/android/material/tabs/TabLayout$h;Landroid/view/View;)V

    .line 2564
    :cond_0
    return-void
.end method
