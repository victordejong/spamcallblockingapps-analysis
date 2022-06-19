.class public Lcom/criteo/publisher/j0/a;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/criteo/publisher/m0/d;

.field private final d:Lcom/criteo/publisher/m0/b;

.field private final e:Lcom/criteo/publisher/j0/g;

.field private final f:Lcom/criteo/publisher/model/u;

.field private final g:Lcom/criteo/publisher/k/c;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/criteo/publisher/m0/d;Lcom/criteo/publisher/m0/b;Lcom/criteo/publisher/j0/g;Lcom/criteo/publisher/model/u;Lcom/criteo/publisher/k/c;Ljava/lang/String;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    .line 35
    const-class v0, Lcom/criteo/publisher/j0/a;

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/j0/a;->a:Lcom/criteo/publisher/logging/g;

    .line 67
    iput-object p1, p0, Lcom/criteo/publisher/j0/a;->b:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/criteo/publisher/j0/a;->c:Lcom/criteo/publisher/m0/d;

    .line 69
    iput-object p3, p0, Lcom/criteo/publisher/j0/a;->d:Lcom/criteo/publisher/m0/b;

    .line 70
    iput-object p4, p0, Lcom/criteo/publisher/j0/a;->e:Lcom/criteo/publisher/j0/g;

    .line 71
    iput-object p5, p0, Lcom/criteo/publisher/j0/a;->f:Lcom/criteo/publisher/model/u;

    .line 72
    iput-object p6, p0, Lcom/criteo/publisher/j0/a;->g:Lcom/criteo/publisher/k/c;

    .line 73
    iput-object p7, p0, Lcom/criteo/publisher/j0/a;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/criteo/publisher/j0/a;->d:Lcom/criteo/publisher/m0/b;

    .line 1078
    invoke-virtual {v0}, Lcom/criteo/publisher/m0/b;->a()Lcom/criteo/publisher/m0/b$b;

    move-result-object v0

    .line 1202
    iget-boolean v5, v0, Lcom/criteo/publisher/m0/b$b;->b:Z

    .line 79
    iget-object v0, p0, Lcom/criteo/publisher/j0/a;->d:Lcom/criteo/publisher/m0/b;

    .line 2074
    invoke-virtual {v0}, Lcom/criteo/publisher/m0/b;->a()Lcom/criteo/publisher/m0/b$b;

    move-result-object v0

    .line 2198
    iget-object v3, v0, Lcom/criteo/publisher/m0/b$b;->a:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/criteo/publisher/j0/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 82
    iget-object v0, p0, Lcom/criteo/publisher/j0/a;->f:Lcom/criteo/publisher/model/u;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/u;->b()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/criteo/publisher/j0/a;->e:Lcom/criteo/publisher/j0/g;

    iget-object v4, p0, Lcom/criteo/publisher/j0/a;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/criteo/publisher/j0/a;->g:Lcom/criteo/publisher/k/c;

    .line 3092
    iget-object v0, v0, Lcom/criteo/publisher/k/c;->d:Lcom/criteo/publisher/k/a/d;

    invoke-virtual {v0}, Lcom/criteo/publisher/k/a/d;->a()Lcom/criteo/publisher/k/a/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3096
    :cond_0
    invoke-virtual {v0}, Lcom/criteo/publisher/k/a/c;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 83
    invoke-virtual/range {v1 .. v7}, Lcom/criteo/publisher/j0/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/criteo/publisher/j0/a;->a:Lcom/criteo/publisher/logging/g;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, "App event response: %s"

    invoke-virtual {v1, v4, v2}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "throttleSec"

    .line 95
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/criteo/publisher/j0/a;->c:Lcom/criteo/publisher/m0/d;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {v2, v0}, Lcom/criteo/publisher/m0/d;->a(I)V

    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/j0/a;->c:Lcom/criteo/publisher/m0/d;

    invoke-interface {v0, v3}, Lcom/criteo/publisher/m0/d;->a(I)V

    return-void
.end method
