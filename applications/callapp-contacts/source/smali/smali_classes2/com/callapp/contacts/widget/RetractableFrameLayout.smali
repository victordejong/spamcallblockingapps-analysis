.class public Lcom/callapp/contacts/widget/RetractableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/RetractableView;


# instance fields
.field public final a:Lcom/callapp/contacts/widget/RetractableViewImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance p1, Lcom/callapp/contacts/widget/RetractableViewImpl;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/RetractableViewImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/RetractableFrameLayout;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    new-instance p1, Lcom/callapp/contacts/widget/RetractableViewImpl;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/RetractableViewImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/RetractableFrameLayout;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    new-instance p1, Lcom/callapp/contacts/widget/RetractableViewImpl;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/RetractableViewImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/RetractableFrameLayout;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/widget/RetractableFrameLayout;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    const/4 v1, 0x0

    .line 1106
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->a(Z)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/widget/RetractableFrameLayout;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    const/4 v1, 0x0

    .line 1116
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->b(Z)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/widget/RetractableFrameLayout;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    const/4 v1, 0x1

    .line 1125
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->b(Z)V

    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/widget/RetractableFrameLayout;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/RetractableViewImpl;->isCollapsed()Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 25
    iget-object p1, p0, Lcom/callapp/contacts/widget/RetractableFrameLayout;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    invoke-virtual {p1, p2, p4}, Lcom/callapp/contacts/widget/RetractableViewImpl;->a(II)V

    return-void
.end method

.method public setCollapseListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/callapp/contacts/widget/RetractableFrameLayout;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->setCollapseListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setCollapseMinHeight(I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/widget/RetractableFrameLayout;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->setCollapseMinHeight(I)V

    return-void
.end method

.method public setExpandListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/widget/RetractableFrameLayout;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->setExpandListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setExpandMaxHeight(I)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/callapp/contacts/widget/RetractableFrameLayout;->a:Lcom/callapp/contacts/widget/RetractableViewImpl;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/RetractableViewImpl;->setExpandMaxHeight(I)V

    return-void
.end method
