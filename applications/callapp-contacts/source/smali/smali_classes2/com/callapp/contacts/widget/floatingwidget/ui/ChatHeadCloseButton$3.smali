.class Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$3;
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
.field final synthetic a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$3;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    invoke-direct {p0}, Lcom/facebook/rebound/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/rebound/e;)V
    .locals 2

    .line 1153
    iget-object p1, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, p1, Lcom/facebook/rebound/e$a;->a:D

    .line 111
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$3;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->setScaleX(F)V

    .line 112
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$3;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->setScaleY(F)V

    return-void
.end method
