.class Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$4;
.super Lcom/facebook/rebound/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;Landroid/os/Bundle;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

.field final synthetic b:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$4;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$4;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-direct {p0}, Lcom/facebook/rebound/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/rebound/e;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$4;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    .line 1153
    iget-object p1, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v1, p1, Lcom/facebook/rebound/e$a;->a:D

    const/4 p1, 0x1

    .line 2113
    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    return-void
.end method
