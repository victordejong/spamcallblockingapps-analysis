.class public abstract Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;


# instance fields
.field protected a:Landroid/util/DisplayMetrics;

.field protected b:Z

.field private c:Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;

.field private final d:Landroid/content/Context;

.field private e:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->a:Landroid/util/DisplayMetrics;

    .line 23
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 0

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public a(III)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 79
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p2, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 80
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p1, 0x0

    .line 81
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    return-object v0
.end method

.method public a()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 0

    int-to-float p2, p2

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public abstract a(Landroid/view/View;Z)V
.end method

.method public a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;)V
    .locals 2

    .line 33
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->e:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    .line 34
    new-instance v0, Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;-><init>(Landroid/content/Context;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;)V

    const/4 p1, 0x1

    .line 35
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;->setFocusable(Z)V

    .line 36
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;->setFocusableInTouchMode(Z)V

    .line 37
    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->a(Landroid/view/View;Z)V

    .line 39
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->b:Z

    return-void
.end method

.method public b(Landroid/view/View;)I
    .locals 0

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public b()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 0

    int-to-float p2, p2

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->d:Landroid/content/Context;

    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 98
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->a:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->a:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getFrameLayout()Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout;

    return-object v0
.end method

.method public getManager()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer;->e:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    return-object v0
.end method
