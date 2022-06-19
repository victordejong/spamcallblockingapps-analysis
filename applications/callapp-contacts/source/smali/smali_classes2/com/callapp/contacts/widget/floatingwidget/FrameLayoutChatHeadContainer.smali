.class public Lcom/callapp/contacts/widget/floatingwidget/FrameLayoutChatHeadContainer;
.super Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;
.source "SourceFile"


# instance fields
.field private c:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 2

    .line 17
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/FrameLayoutChatHeadContainer;->c:Landroid/widget/FrameLayout;

    .line 19
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/FrameLayoutChatHeadContainer;->a:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 0

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public final a(III)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 45
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p2, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 46
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p1, 0x0

    .line 47
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    return-object v0
.end method

.method public final a()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FrameLayoutChatHeadContainer;->c:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 0

    int-to-float p2, p2

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FrameLayoutChatHeadContainer;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 0

    .line 78
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/FrameLayoutChatHeadContainer;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;)V

    return-void
.end method

.method public final b(Landroid/view/View;)I
    .locals 0

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public final b()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FrameLayoutChatHeadContainer;->c:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .locals 0

    int-to-float p2, p2

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 0

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FrameLayoutChatHeadContainer;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FrameLayoutChatHeadContainer;->a:Landroid/util/DisplayMetrics;

    return-object v0
.end method
