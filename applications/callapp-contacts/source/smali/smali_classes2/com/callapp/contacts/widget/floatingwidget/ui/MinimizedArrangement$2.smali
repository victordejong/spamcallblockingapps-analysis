.class Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$2;
.super Lcom/facebook/rebound/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$2;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    invoke-direct {p0}, Lcom/facebook/rebound/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/rebound/e;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$2;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->f(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)Lcom/facebook/rebound/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$2;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->f(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)Lcom/facebook/rebound/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rebound/f;->b()Lcom/facebook/rebound/e;

    move-result-object v0

    .line 1153
    iget-object p1, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v1, p1, Lcom/facebook/rebound/e$a;->a:D

    const/4 p1, 0x1

    .line 2113
    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    :cond_0
    return-void
.end method

.method public final b(Lcom/facebook/rebound/e;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/facebook/rebound/d;->b(Lcom/facebook/rebound/e;)V

    .line 72
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$2;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    invoke-static {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->d(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$2;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    invoke-static {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->e(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)Z

    :cond_0
    return-void
.end method
