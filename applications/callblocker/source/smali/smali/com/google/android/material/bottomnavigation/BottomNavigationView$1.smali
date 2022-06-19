.class Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;
.super Ljava/lang/Object;
.source "BottomNavigationView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/g;)V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 239
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getSelectedItemId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 240
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;->a(Landroid/view/MenuItem;)V

    .line 243
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-static {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
