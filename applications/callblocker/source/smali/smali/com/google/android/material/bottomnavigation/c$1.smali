.class Lcom/google/android/material/bottomnavigation/c$1;
.super Ljava/lang/Object;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomnavigation/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomnavigation/c;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomnavigation/c;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/c$1;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 122
    check-cast p1, Lcom/google/android/material/bottomnavigation/a;

    .line 123
    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/a;->getItemData()Landroidx/appcompat/view/menu/i;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/c$1;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-static {v1}, Lcom/google/android/material/bottomnavigation/c;->b(Lcom/google/android/material/bottomnavigation/c;)Landroidx/appcompat/view/menu/g;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/c$1;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-static {v2}, Lcom/google/android/material/bottomnavigation/c;->a(Lcom/google/android/material/bottomnavigation/c;)Lcom/google/android/material/bottomnavigation/d;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/m;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 127
    :cond_0
    return-void
.end method
