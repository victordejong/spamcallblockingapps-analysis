.class public Lcom/callapp/contacts/behavior/ScrollAwareFABBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8

    .line 14
    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 1031
    invoke-super/range {v0 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    const/4 p1, 0x1

    if-lez p5, :cond_0

    .line 1032
    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result p3

    if-nez p3, :cond_0

    .line 1033
    new-instance p3, Lcom/callapp/contacts/behavior/ScrollAwareFABBehavior$1;

    invoke-direct {p3, p0, p2}, Lcom/callapp/contacts/behavior/ScrollAwareFABBehavior$1;-><init>(Lcom/callapp/contacts/behavior/ScrollAwareFABBehavior;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    .line 1619
    invoke-virtual {p2, p3, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;Z)V

    return-void

    :cond_0
    if-gez p5, :cond_1

    .line 1045
    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 2587
    invoke-virtual {p2, p3, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;Z)V

    :cond_1
    return-void
.end method

.method public final bridge synthetic a(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
