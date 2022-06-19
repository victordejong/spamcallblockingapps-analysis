.class public final Lcom/criteo/publisher/k/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/criteo/publisher/m0/q;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/m0/q;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/criteo/publisher/k/a/h;->a:Lcom/criteo/publisher/m0/q;

    return-void
.end method


# virtual methods
.method final a()Lcom/criteo/publisher/k/a/g;
    .locals 2

    .line 32
    new-instance v0, Lcom/criteo/publisher/k/a/f;

    iget-object v1, p0, Lcom/criteo/publisher/k/a/h;->a:Lcom/criteo/publisher/m0/q;

    invoke-direct {v0, v1}, Lcom/criteo/publisher/k/a/f;-><init>(Lcom/criteo/publisher/m0/q;)V

    .line 34
    invoke-virtual {v0}, Lcom/criteo/publisher/k/a/f;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 38
    :cond_0
    new-instance v0, Lcom/criteo/publisher/k/a/e;

    iget-object v1, p0, Lcom/criteo/publisher/k/a/h;->a:Lcom/criteo/publisher/m0/q;

    invoke-direct {v0, v1}, Lcom/criteo/publisher/k/a/e;-><init>(Lcom/criteo/publisher/m0/q;)V

    .line 40
    invoke-virtual {v0}, Lcom/criteo/publisher/k/a/e;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
