.class Lcom/allinone/callerid/d/d/b$h$a;
.super Ljava/lang/Object;
.source "PopularFragment.java"

# interfaces
.implements Lcom/allinone/callerid/util/gg/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/d/b$h;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/d/d/b$h;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/d/b$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/d/b$h$a;->a:Lcom/allinone/callerid/d/d/b$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "tony"

    const-string v1, "onUserEarnedReward"

    .line 2
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b$h$a;->a:Lcom/allinone/callerid/d/d/b$h;

    iget-object v0, v0, Lcom/allinone/callerid/d/d/b$h;->e:Lcom/allinone/callerid/d/d/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/allinone/callerid/d/d/b;->f2(Lcom/allinone/callerid/d/d/b;Z)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "tony"

    const-string v1, "onAdShowedFullScreenContent"

    .line 2
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdDismissedFullScreenContent_mUserEarnedReward:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/d/d/b$h$a;->a:Lcom/allinone/callerid/d/d/b$h;

    iget-object v1, v1, Lcom/allinone/callerid/d/d/b$h;->e:Lcom/allinone/callerid/d/d/b;

    invoke-static {v1}, Lcom/allinone/callerid/d/d/b;->e2(Lcom/allinone/callerid/d/d/b;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tony"

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b$h$a;->a:Lcom/allinone/callerid/d/d/b$h;

    iget-object v0, v0, Lcom/allinone/callerid/d/d/b$h;->e:Lcom/allinone/callerid/d/d/b;

    invoke-static {v0}, Lcom/allinone/callerid/d/d/b;->e2(Lcom/allinone/callerid/d/d/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b$h$a;->a:Lcom/allinone/callerid/d/d/b$h;

    iget-object v1, v0, Lcom/allinone/callerid/d/d/b$h;->e:Lcom/allinone/callerid/d/d/b;

    iget-object v0, v0, Lcom/allinone/callerid/d/d/b$h;->d:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-static {v1, v0}, Lcom/allinone/callerid/d/d/b;->b2(Lcom/allinone/callerid/d/d/b;Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/d/d/b$h$a;->a:Lcom/allinone/callerid/d/d/b$h;

    iget-object v0, v0, Lcom/allinone/callerid/d/d/b$h;->e:Lcom/allinone/callerid/d/d/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/allinone/callerid/d/d/b;->f2(Lcom/allinone/callerid/d/d/b;Z)Z

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "tony"

    const-string v1, "onAdFailedToShowFullScreenContent"

    .line 2
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
