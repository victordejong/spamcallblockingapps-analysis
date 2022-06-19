.class Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$1;
.super Lcom/facebook/rebound/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-direct {p0}, Lcom/facebook/rebound/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/rebound/e;)V
    .locals 4

    .line 98
    invoke-super {p0, p1}, Lcom/facebook/rebound/d;->a(Lcom/facebook/rebound/e;)V

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    iget-object v0, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getChatHeadContainer()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    .line 1153
    iget-object p1, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v2, p1, Lcom/facebook/rebound/e$a;->a:D

    double-to-int p1, v2

    .line 99
    invoke-interface {v0, v1, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->a(Landroid/view/View;I)V

    return-void
.end method
