.class public Lcom/callapp/contacts/framework/util/MultiTaskRunner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlinx/coroutines/bv;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lkotlin/c/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->b:Ljava/util/ArrayList;

    .line 21
    sget-object v0, Lb/a;->a:Lb/a$a;

    .line 1017
    invoke-static {}, Lb/a;->a()Lkotlinx/coroutines/bk;

    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->d:Lkotlin/c/f;

    return-void
.end method

.method public constructor <init>(Lkotlin/c/f;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->b:Ljava/util/ArrayList;

    .line 25
    iput-object p1, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->d:Lkotlin/c/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    sget-object v0, Lb/a;->a:Lb/a$a;

    iget-object v0, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->d:Lkotlin/c/f;

    iget-object v1, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lb/a$a;->b(Lkotlin/c/f;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/manager/task/Task;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/task/Task;->setMetaData(Ljava/lang/String;)Lcom/callapp/contacts/manager/task/Task;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 50
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    sget-object v0, Lb/a;->a:Lb/a$a;

    iget-object v0, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->d:Lkotlin/c/f;

    iget-object v1, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lb/a$a;->a(Lkotlin/c/f;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->c:Ljava/util/List;

    return-void
.end method

.method public final d()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/bv;

    .line 68
    invoke-interface {v2, v1}, Lkotlinx/coroutines/bv;->a(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    .line 71
    :cond_0
    iput-object v1, p0, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->c:Ljava/util/List;

    return-void
.end method
