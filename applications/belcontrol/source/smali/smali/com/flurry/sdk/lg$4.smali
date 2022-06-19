.class public final Lcom/flurry/sdk/lg$4;
.super Lcom/flurry/sdk/mf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/lg;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/lg$a;

.field public final synthetic b:Lcom/flurry/sdk/lg;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/lg;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/lg$4;->b:Lcom/flurry/sdk/lg;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/flurry/sdk/lg$4;->a:Lcom/flurry/sdk/lg$a;

    invoke-direct {p0}, Lcom/flurry/sdk/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    iget-object v0, p0, Lcom/flurry/sdk/lg$4;->b:Lcom/flurry/sdk/lg;

    invoke-static {}, Lcom/flurry/sdk/jz;->a()Lcom/flurry/sdk/jz;

    move-result-object v1

    iget-boolean v1, v1, Lcom/flurry/sdk/jz;->b:Z

    const/4 v2, 0x5

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/flurry/sdk/lg;->b:Ljava/lang/String;

    const-string v1, "Reports were not sent! No Internet connection!"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/flurry/sdk/lg;->e:Lcom/flurry/sdk/li;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/flurry/sdk/li;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v4, 0x4

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/flurry/sdk/lg;->b:Ljava/lang/String;

    const-string v1, "No more reports to send."

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/flurry/sdk/lg;->c()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/flurry/sdk/lg;->e:Lcom/flurry/sdk/li;

    invoke-virtual {v5, v3}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Lcom/flurry/sdk/lg;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Number of not sent blocks = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v0, Lcom/flurry/sdk/lg;->d:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Lcom/flurry/sdk/lg;->c()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Lcom/flurry/sdk/kn;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v8

    iget-object v8, v8, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/flurry/sdk/lh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x1

    new-instance v10, Lcom/flurry/sdk/lg$6;

    invoke-direct {v10, v0}, Lcom/flurry/sdk/lg$6;-><init>(Lcom/flurry/sdk/lg;)V

    const-string v11, ".yflurrydatasenderblock."

    invoke-direct {v7, v8, v11, v9, v10}, Lcom/flurry/sdk/kn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lr;)V

    invoke-virtual {v7}, Lcom/flurry/sdk/kn;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/sdk/lh;

    const/4 v8, 0x6

    if-nez v7, :cond_4

    iget-object v7, v0, Lcom/flurry/sdk/lg;->b:Ljava/lang/String;

    const-string v9, "Internal ERROR! Cannot read!"

    :goto_1
    invoke-static {v8, v7, v9}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/flurry/sdk/lg;->e:Lcom/flurry/sdk/li;

    invoke-virtual {v7, v6, v3}, Lcom/flurry/sdk/li;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    iget-object v7, v7, Lcom/flurry/sdk/lh;->b:[B

    if-eqz v7, :cond_6

    array-length v9, v7

    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    iget-object v8, v0, Lcom/flurry/sdk/lg;->b:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Reading block info "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/flurry/sdk/lg;->d:Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v7, v6, v3}, Lcom/flurry/sdk/lg;->a([BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :goto_2
    iget-object v7, v0, Lcom/flurry/sdk/lg;->b:Ljava/lang/String;

    const-string v9, "Internal ERROR! Report is empty!"

    goto :goto_1

    :cond_7
    return-void
.end method
