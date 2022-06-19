.class public Lcom/google/android/material/internal/NavigationSubMenu;
.super Li1;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/internal/NavigationMenu;Lz0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Li1;-><init>(Landroid/content/Context;Lx0;Lz0;)V

    return-void
.end method


# virtual methods
.method public onItemsChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lx0;->onItemsChanged(Z)V

    invoke-virtual {p0}, Li1;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lx0;

    invoke-virtual {v0, p1}, Lx0;->onItemsChanged(Z)V

    return-void
.end method
