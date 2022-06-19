.class public Lcom/criteo/publisher/f/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/criteo/publisher/f/z;

.field private final b:Lcom/criteo/publisher/j0/g;

.field private final c:Lcom/criteo/publisher/m0/g;

.field private final d:Lcom/criteo/publisher/model/t;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/f/z;Lcom/criteo/publisher/j0/g;Lcom/criteo/publisher/m0/g;Lcom/criteo/publisher/model/t;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/criteo/publisher/f/ab;->a:Lcom/criteo/publisher/f/z;

    .line 50
    iput-object p2, p0, Lcom/criteo/publisher/f/ab;->b:Lcom/criteo/publisher/j0/g;

    .line 51
    iput-object p3, p0, Lcom/criteo/publisher/f/ab;->c:Lcom/criteo/publisher/m0/g;

    .line 52
    iput-object p4, p0, Lcom/criteo/publisher/f/ab;->d:Lcom/criteo/publisher/model/t;

    .line 53
    iput-object p5, p0, Lcom/criteo/publisher/f/ab;->e:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/criteo/publisher/f/ab;->d:Lcom/criteo/publisher/model/t;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/t;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/criteo/publisher/f/ab;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/criteo/publisher/f/ad;

    iget-object v2, p0, Lcom/criteo/publisher/f/ab;->a:Lcom/criteo/publisher/f/z;

    iget-object v3, p0, Lcom/criteo/publisher/f/ab;->b:Lcom/criteo/publisher/j0/g;

    iget-object v4, p0, Lcom/criteo/publisher/f/ab;->c:Lcom/criteo/publisher/m0/g;

    invoke-direct {v1, v2, v3, v4}, Lcom/criteo/publisher/f/ad;-><init>(Lcom/criteo/publisher/f/z;Lcom/criteo/publisher/j0/g;Lcom/criteo/publisher/m0/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
