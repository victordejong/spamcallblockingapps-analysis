.class Lcom/criteo/publisher/model/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/model/u;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/model/u;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/model/u;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/criteo/publisher/model/u$a;->a:Lcom/criteo/publisher/model/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/criteo/publisher/model/u$a;->a:Lcom/criteo/publisher/model/u;

    invoke-static {v0}, Lcom/criteo/publisher/model/u;->a(Lcom/criteo/publisher/model/u;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/criteo/publisher/model/u$a;->a:Lcom/criteo/publisher/model/u;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/u;->e()Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/criteo/publisher/model/u$a;->a:Lcom/criteo/publisher/model/u;

    invoke-static {v1}, Lcom/criteo/publisher/model/u;->b(Lcom/criteo/publisher/model/u;)Lcom/criteo/publisher/m0/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/criteo/publisher/m0/h;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
