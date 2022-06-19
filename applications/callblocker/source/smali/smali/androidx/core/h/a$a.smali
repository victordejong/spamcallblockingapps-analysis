.class final Landroidx/core/h/a$a;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/core/h/a;


# direct methods
.method constructor <init>(Landroidx/core/h/a;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 65
    iput-object p1, p0, Landroidx/core/h/a$a;->a:Landroidx/core/h/a;

    .line 66
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroidx/core/h/a$a;->a:Landroidx/core/h/a;

    invoke-virtual {v0, p1, p2}, Landroidx/core/h/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroidx/core/h/a$a;->a:Landroidx/core/h/a;

    .line 119
    invoke-virtual {v0, p1}, Landroidx/core/h/a;->a(Landroid/view/View;)Landroidx/core/h/a/d;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroidx/core/h/a/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 120
    :goto_0
    return-object v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroidx/core/h/a$a;->a:Landroidx/core/h/a;

    invoke-virtual {v0, p1, p2}, Landroidx/core/h/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 77
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .prologue
    .line 82
    invoke-static {p2}, Landroidx/core/h/a/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/h/a/c;

    move-result-object v2

    .line 83
    invoke-static {p1}, Landroidx/core/h/u;->E(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/core/h/a/c;->l(Z)V

    .line 84
    invoke-static {p1}, Landroidx/core/h/u;->G(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/core/h/a/c;->n(Z)V

    .line 85
    invoke-static {p1}, Landroidx/core/h/u;->F(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/h/a/c;->h(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Landroidx/core/h/a$a;->a:Landroidx/core/h/a;

    invoke-virtual {v0, p1, v2}, Landroidx/core/h/a;->a(Landroid/view/View;Landroidx/core/h/a/c;)V

    .line 87
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Landroidx/core/h/a/c;->a(Ljava/lang/CharSequence;Landroid/view/View;)V

    .line 88
    invoke-static {p1}, Landroidx/core/h/a;->b(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    .line 89
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 90
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/h/a/c$a;

    invoke-virtual {v2, v0}, Landroidx/core/h/a/c;->a(Landroidx/core/h/a/c$a;)V

    .line 89
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroidx/core/h/a$a;->a:Landroidx/core/h/a;

    invoke-virtual {v0, p1, p2}, Landroidx/core/h/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 97
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroidx/core/h/a$a;->a:Landroidx/core/h/a;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/h/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroidx/core/h/a$a;->a:Landroidx/core/h/a;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/h/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroidx/core/h/a$a;->a:Landroidx/core/h/a;

    invoke-virtual {v0, p1, p2}, Landroidx/core/h/a;->a(Landroid/view/View;I)V

    .line 108
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroidx/core/h/a$a;->a:Landroidx/core/h/a;

    invoke-virtual {v0, p1, p2}, Landroidx/core/h/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 113
    return-void
.end method
