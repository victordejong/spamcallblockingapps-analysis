.class final Lcom/criteo/publisher/k/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/k/a/g;


# instance fields
.field private final a:Lcom/criteo/publisher/m0/q;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/m0/q;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/criteo/publisher/k/a/f;->a:Lcom/criteo/publisher/m0/q;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/criteo/publisher/k/a/f;->a:Lcom/criteo/publisher/m0/q;

    const-string v1, "IABTCF_TCString"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/criteo/publisher/m0/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/criteo/publisher/k/a/f;->a:Lcom/criteo/publisher/m0/q;

    const-string v1, "IABTCF_gdprApplies"

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/m0/q;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 52
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final c()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x2

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/criteo/publisher/k/a/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/criteo/publisher/k/a/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 66
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
