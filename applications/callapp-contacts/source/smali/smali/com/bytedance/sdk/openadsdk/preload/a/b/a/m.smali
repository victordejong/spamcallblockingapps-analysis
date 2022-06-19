.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/m;
.super Lcom/bytedance/sdk/openadsdk/preload/a/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/preload/a/f;

.field private final b:Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/v;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/f;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/m;->a:Lcom/bytedance/sdk/openadsdk/preload/a/f;

    .line 35
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/m;->b:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    .line 36
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/m;->c:Ljava/lang/reflect/Type;

    return-void
.end method

.method private a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1

    if-eqz p2, :cond_1

    .line 76
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public final a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/m;->b:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    .line 54
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/m;->c:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/m;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/m;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/m;->a:Lcom/bytedance/sdk/openadsdk/preload/a/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object v0

    .line 57
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$a;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/m;->b:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$a;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 69
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/m;->b:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
