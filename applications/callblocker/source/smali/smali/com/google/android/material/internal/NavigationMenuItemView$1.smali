.class Lcom/google/android/material/internal/NavigationMenuItemView$1;
.super Landroidx/core/h/a;
.source "NavigationMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/NavigationMenuItemView;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/NavigationMenuItemView;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView$1;->a:Lcom/google/android/material/internal/NavigationMenuItemView;

    invoke-direct {p0}, Landroidx/core/h/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/h/a/c;)V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Landroidx/core/h/a;->a(Landroid/view/View;Landroidx/core/h/a/c;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView$1;->a:Lcom/google/android/material/internal/NavigationMenuItemView;

    iget-boolean v0, v0, Lcom/google/android/material/internal/NavigationMenuItemView;->c:Z

    invoke-virtual {p2, v0}, Landroidx/core/h/a/c;->a(Z)V

    .line 83
    return-void
.end method
