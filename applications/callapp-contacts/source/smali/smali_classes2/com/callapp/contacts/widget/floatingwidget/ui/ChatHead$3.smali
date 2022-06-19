.class Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$3;
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

    .line 118
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$3;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-direct {p0}, Lcom/facebook/rebound/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/rebound/e;)V
    .locals 2

    .line 121
    invoke-super {p0, p1}, Lcom/facebook/rebound/d;->a(Lcom/facebook/rebound/e;)V

    .line 1153
    iget-object p1, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, p1, Lcom/facebook/rebound/e$a;->a:D

    .line 123
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$3;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->setScaleX(F)V

    .line 124
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$3;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->setScaleY(F)V

    return-void
.end method
