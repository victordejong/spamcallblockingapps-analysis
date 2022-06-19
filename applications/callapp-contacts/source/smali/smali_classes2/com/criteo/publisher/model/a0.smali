.class public Lcom/criteo/publisher/model/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/criteo/publisher/m0/u;

.field private final c:Lcom/criteo/publisher/model/t;

.field private final d:Lcom/criteo/publisher/j0/g;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/model/t;Lcom/criteo/publisher/j0/g;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/criteo/publisher/model/a0;->a:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/criteo/publisher/m0/u;->a:Lcom/criteo/publisher/m0/u;

    iput-object v0, p0, Lcom/criteo/publisher/model/a0;->b:Lcom/criteo/publisher/m0/u;

    .line 44
    iput-object p1, p0, Lcom/criteo/publisher/model/a0;->c:Lcom/criteo/publisher/model/t;

    .line 45
    iput-object p2, p0, Lcom/criteo/publisher/model/a0;->d:Lcom/criteo/publisher/j0/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 72
    sget-object v0, Lcom/criteo/publisher/m0/u;->c:Lcom/criteo/publisher/m0/u;

    iput-object v0, p0, Lcom/criteo/publisher/model/a0;->b:Lcom/criteo/publisher/m0/u;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/criteo/publisher/model/a0;->c:Lcom/criteo/publisher/model/t;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/t;->b()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/criteo/publisher/model/a0;->c:Lcom/criteo/publisher/model/t;

    invoke-virtual {v1}, Lcom/criteo/publisher/model/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/model/a0;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/criteo/publisher/model/u;Lcom/criteo/publisher/l/d;)V
    .locals 8

    .line 88
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/q;->h()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 90
    new-instance v7, Lcom/criteo/publisher/l/e;

    iget-object v6, p0, Lcom/criteo/publisher/model/a0;->d:Lcom/criteo/publisher/j0/g;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/criteo/publisher/l/e;-><init>(Ljava/lang/String;Lcom/criteo/publisher/model/a0;Lcom/criteo/publisher/model/u;Lcom/criteo/publisher/l/d;Lcom/criteo/publisher/j0/g;)V

    .line 98
    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 80
    sget-object v0, Lcom/criteo/publisher/m0/u;->d:Lcom/criteo/publisher/m0/u;

    iput-object v0, p0, Lcom/criteo/publisher/model/a0;->b:Lcom/criteo/publisher/m0/u;

    return-void
.end method

.method public c()V
    .locals 1

    .line 76
    sget-object v0, Lcom/criteo/publisher/m0/u;->b:Lcom/criteo/publisher/m0/u;

    iput-object v0, p0, Lcom/criteo/publisher/model/a0;->b:Lcom/criteo/publisher/m0/u;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/criteo/publisher/model/a0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/criteo/publisher/model/a0;->b:Lcom/criteo/publisher/m0/u;

    sget-object v1, Lcom/criteo/publisher/m0/u;->b:Lcom/criteo/publisher/m0/u;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/criteo/publisher/model/a0;->b:Lcom/criteo/publisher/m0/u;

    sget-object v1, Lcom/criteo/publisher/m0/u;->d:Lcom/criteo/publisher/m0/u;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 1

    .line 67
    sget-object v0, Lcom/criteo/publisher/m0/u;->a:Lcom/criteo/publisher/m0/u;

    iput-object v0, p0, Lcom/criteo/publisher/model/a0;->b:Lcom/criteo/publisher/m0/u;

    const-string v0, ""

    .line 68
    iput-object v0, p0, Lcom/criteo/publisher/model/a0;->a:Ljava/lang/String;

    return-void
.end method
