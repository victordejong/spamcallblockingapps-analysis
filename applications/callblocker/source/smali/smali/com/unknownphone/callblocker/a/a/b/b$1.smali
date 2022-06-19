.class Lcom/unknownphone/callblocker/a/a/b/b$1;
.super Lcom/unknownphone/callblocker/custom/f;
.source "RecentCallsAltFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/a/a/b/b;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/a/a/b/b;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/a/b/b;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/a/b/b$1;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b$1;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->a(Lcom/unknownphone/callblocker/a/a/b/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/a;

    .line 101
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/b/b$1;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-static {v1}, Lcom/unknownphone/callblocker/a/a/b/b;->b(Lcom/unknownphone/callblocker/a/a/b/b;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/b/b$1;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-static {v1}, Lcom/unknownphone/callblocker/a/a/b/b;->b(Lcom/unknownphone/callblocker/a/a/b/b;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/b/b$1;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-static {v1, v0}, Lcom/unknownphone/callblocker/a/a/b/b;->a(Lcom/unknownphone/callblocker/a/a/b/b;Lcom/unknownphone/callblocker/e/a;)V

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b$1;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->d(Lcom/unknownphone/callblocker/a/a/b/b;)Lcom/unknownphone/callblocker/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unknownphone/callblocker/a/a/b/a;->c(I)V

    .line 109
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b$1;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->e(Lcom/unknownphone/callblocker/a/a/b/b;)V

    .line 110
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/b/b$1;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-static {v1}, Lcom/unknownphone/callblocker/a/a/b/b;->b(Lcom/unknownphone/callblocker/a/a/b/b;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/b/b$1;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-static {v1}, Lcom/unknownphone/callblocker/a/a/b/b;->c(Lcom/unknownphone/callblocker/a/a/b/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
