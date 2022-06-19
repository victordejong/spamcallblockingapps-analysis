.class Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$1;
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

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    invoke-direct {p0}, Lcom/facebook/rebound/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/rebound/e;)V
    .locals 7

    .line 43
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)F

    move-result v1

    float-to-double v1, v1

    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    invoke-static {v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->b(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    .line 1153
    iget-object v5, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v5, v5, Lcom/facebook/rebound/e$a;->a:D

    sub-double/2addr v3, v5

    mul-double v1, v1, v3

    .line 43
    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    invoke-static {v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->b(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    div-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;F)F

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->c(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)Lcom/facebook/rebound/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->c(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)Lcom/facebook/rebound/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rebound/f;->b()Lcom/facebook/rebound/e;

    move-result-object v0

    .line 2153
    iget-object p1, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v1, p1, Lcom/facebook/rebound/e$a;->a:D

    const/4 p1, 0x1

    .line 3113
    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    :cond_0
    return-void
.end method

.method public final b(Lcom/facebook/rebound/e;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/facebook/rebound/d;->b(Lcom/facebook/rebound/e;)V

    .line 51
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    invoke-static {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->d(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;

    invoke-static {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->e(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)Z

    :cond_0
    return-void
.end method

.method public final c(Lcom/facebook/rebound/e;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/facebook/rebound/d;->c(Lcom/facebook/rebound/e;)V

    return-void
.end method
