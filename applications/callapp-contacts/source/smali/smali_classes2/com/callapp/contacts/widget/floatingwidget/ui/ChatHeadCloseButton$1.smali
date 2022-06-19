.class Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$1;
.super Lcom/facebook/rebound/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

.field final synthetic b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$1;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-direct {p0}, Lcom/facebook/rebound/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/rebound/e;)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Lcom/facebook/rebound/d;->a(Lcom/facebook/rebound/e;)V

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$1;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->b(Lcom/facebook/rebound/e;)I

    move-result p1

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getChatHeadContainer()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$1;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    invoke-interface {v0, v1, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->a(Landroid/view/View;I)V

    return-void
.end method
