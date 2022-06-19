.class public Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getActiveArrangement()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    move-result-object v0

    instance-of v0, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    const-class v1, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 29
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;->a()V

    return v2

    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 17
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 18
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;->getMeasuredWidth()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->a(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 24
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->f()V

    return-void
.end method
