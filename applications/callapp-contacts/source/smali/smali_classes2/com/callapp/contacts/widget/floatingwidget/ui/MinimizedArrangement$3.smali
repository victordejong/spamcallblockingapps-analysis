.class Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$3;
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

    .line 131
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$3;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$3;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-direct {p0}, Lcom/facebook/rebound/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/rebound/e;)V
    .locals 7

    .line 134
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$3;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->c(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)Lcom/facebook/rebound/f;

    move-result-object v0

    .line 1154
    iget-object v0, v0, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 134
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$3;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    invoke-static {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->c(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)Lcom/facebook/rebound/f;

    move-result-object v1

    .line 2154
    iget-object v1, v1, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 135
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 136
    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$3;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v2

    .line 3153
    iget-object p1, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v3, p1, Lcom/facebook/rebound/e$a;->a:D

    int-to-float p1, v0

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$3;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->g(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)F

    move-result v0

    mul-float p1, p1, v0

    float-to-double v5, p1

    add-double/2addr v3, v5

    .line 4113
    invoke-virtual {v2, v3, v4, v1}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    return-void
.end method
