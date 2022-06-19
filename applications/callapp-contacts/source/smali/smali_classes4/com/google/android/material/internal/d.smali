.class public final Lcom/google/android/material/internal/d;
.super Landroidx/appcompat/view/menu/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/internal/d;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/i;

    .line 46
    new-instance p2, Lcom/google/android/material/internal/f;

    .line 1830
    iget-object p3, p0, Landroidx/appcompat/view/menu/g;->a:Landroid/content/Context;

    .line 46
    invoke-direct {p2, p3, p0, p1}, Lcom/google/android/material/internal/f;-><init>(Landroid/content/Context;Lcom/google/android/material/internal/d;Landroidx/appcompat/view/menu/i;)V

    .line 47
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/i;->a(Landroidx/appcompat/view/menu/r;)V

    return-object p2
.end method
