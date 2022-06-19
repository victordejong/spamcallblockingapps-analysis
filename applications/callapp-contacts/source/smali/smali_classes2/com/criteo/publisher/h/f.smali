.class public final Lcom/criteo/publisher/h/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/h/d;


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/h/f;->a:Lcom/criteo/publisher/logging/g;

    return-void
.end method


# virtual methods
.method public final a()Lcom/criteo/publisher/i/a;
    .locals 1

    .line 43
    sget-object v0, Lcom/criteo/publisher/i/a;->i:Lcom/criteo/publisher/i/a;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/criteo/publisher/m0/a;Lcom/criteo/publisher/model/s;)V
    .locals 2

    .line 2037
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    check-cast p1, Ljava/util/Map;

    .line 71
    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crt_displayUrl"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crt_cpm"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "crt_displayUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",crt_cpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/criteo/publisher/m0/a;->a:Lcom/criteo/publisher/m0/a;

    if-ne p2, v1, :cond_1

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->k()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->e()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "crt_size"

    .line 78
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",crt_size="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/criteo/publisher/h/f;->a:Lcom/criteo/publisher/logging/g;

    .line 2043
    sget-object p2, Lcom/criteo/publisher/i/a;->i:Lcom/criteo/publisher/i/a;

    .line 82
    invoke-static {p2, v0}, Lcom/criteo/publisher/h/a;->a(Lcom/criteo/publisher/i/a;Ljava/lang/String;)Lcom/criteo/publisher/logging/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 0

    .line 37
    instance-of p1, p1, Ljava/util/Map;

    return p1
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    .line 1037
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    check-cast p1, Ljava/util/Map;

    const-string v0, "crt_cpm"

    .line 54
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crt_displayUrl"

    .line 55
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crt_size"

    .line 56
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
