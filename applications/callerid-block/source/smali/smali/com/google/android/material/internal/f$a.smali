.class Lcom/google/android/material/internal/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/material/internal/f;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/f$a;->b:Lcom/google/android/material/internal/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    iget-object v0, p0, Lcom/google/android/material/internal/f$a;->b:Lcom/google/android/material/internal/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/f;->A(Z)V

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->getItemData()Landroidx/appcompat/view/menu/i;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/internal/f$a;->b:Lcom/google/android/material/internal/f;

    iget-object v2, v0, Lcom/google/android/material/internal/f;->e:Landroidx/appcompat/view/menu/g;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v3}, Landroidx/appcompat/view/menu/g;->O(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/m;I)Z

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/f$a;->b:Lcom/google/android/material/internal/f;

    iget-object v0, v0, Lcom/google/android/material/internal/f;->g:Lcom/google/android/material/internal/f$c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/f$c;->G(Landroidx/appcompat/view/menu/i;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p1, p0, Lcom/google/android/material/internal/f$a;->b:Lcom/google/android/material/internal/f;

    invoke-virtual {p1, v3}, Lcom/google/android/material/internal/f;->A(Z)V

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/internal/f$a;->b:Lcom/google/android/material/internal/f;

    invoke-virtual {p1, v3}, Lcom/google/android/material/internal/f;->J(Z)V

    :cond_1
    return-void
.end method
