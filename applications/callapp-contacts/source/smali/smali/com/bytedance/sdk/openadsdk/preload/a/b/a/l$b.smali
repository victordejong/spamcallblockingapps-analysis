.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/a/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/preload/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/bytedance/sdk/openadsdk/preload/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/s<",
            "*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/bytedance/sdk/openadsdk/preload/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/k<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;ZLjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "*>;Z",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/s;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$b;->d:Lcom/bytedance/sdk/openadsdk/preload/a/s;

    .line 132
    instance-of v2, p1, Lcom/bytedance/sdk/openadsdk/preload/a/k;

    if-eqz v2, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/preload/a/k;

    :cond_1
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$b;->e:Lcom/bytedance/sdk/openadsdk/preload/a/k;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 135
    :goto_2
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a;->a(Z)V

    .line 136
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$b;->a:Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    .line 137
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$b;->b:Z

    .line 138
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$b;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .locals 7
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

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$b;->a:Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$b;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$b;->a:Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$b;->c:Ljava/lang/Class;

    .line 146
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    .line 147
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$b;->d:Lcom/bytedance/sdk/openadsdk/preload/a/s;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$b;->e:Lcom/bytedance/sdk/openadsdk/preload/a/k;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/s;Lcom/bytedance/sdk/openadsdk/preload/a/k;Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;Lcom/bytedance/sdk/openadsdk/preload/a/w;)V

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
