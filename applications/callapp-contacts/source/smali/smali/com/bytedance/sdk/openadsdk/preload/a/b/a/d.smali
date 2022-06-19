.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/a/w;


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/c;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;

    return-void
.end method


# virtual methods
.method final a(Lcom/bytedance/sdk/openadsdk/preload/a/b/c;Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;Lcom/bytedance/sdk/openadsdk/preload/a/a/b;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/c;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/f;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "*>;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/a/b;",
            ")",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "*>;"
        }
    .end annotation

    .line 55
    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/preload/a/a/b;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->b(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/c;->a(Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/b/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/i;->a()Ljava/lang/Object;

    move-result-object p1

    .line 58
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/v;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Lcom/bytedance/sdk/openadsdk/preload/a/v;

    goto :goto_2

    .line 60
    :cond_0
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/w;

    if-eqz v0, :cond_1

    .line 61
    check-cast p1, Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/a/w;->a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object p1

    goto :goto_2

    .line 62
    :cond_1
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/s;

    if-nez v0, :cond_3

    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/k;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Invalid attempt to bind an instance of "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a @JsonAdapter for "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 63
    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/s;

    move-object v3, v0

    goto :goto_1

    :cond_4
    move-object v3, v1

    .line 66
    :goto_1
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/k;

    if-eqz v0, :cond_5

    move-object v1, p1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/preload/a/k;

    :cond_5
    move-object v4, v1

    .line 69
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/s;Lcom/bytedance/sdk/openadsdk/preload/a/k;Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;Lcom/bytedance/sdk/openadsdk/preload/a/w;)V

    :goto_2
    if-eqz p1, :cond_6

    .line 77
    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/preload/a/a/b;->b()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 78
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->a()Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object p1

    :cond_6
    return-object p1
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/f;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "TT;>;)",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TT;>;"
        }
    .end annotation

    .line 44
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    .line 45
    const-class v1, Lcom/bytedance/sdk/openadsdk/preload/a/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/a/b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/d;->a(Lcom/bytedance/sdk/openadsdk/preload/a/b/c;Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;Lcom/bytedance/sdk/openadsdk/preload/a/a/b;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object p1

    return-object p1
.end method
