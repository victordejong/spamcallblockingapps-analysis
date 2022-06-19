.class final Lcom/bytedance/sdk/openadsdk/g/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/g/a/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/g/b/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/q;Lcom/bytedance/sdk/openadsdk/core/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/w;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/w;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/bytedance/sdk/openadsdk/g/a/d;
    .locals 2

    .line 33
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/b/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/w;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/b/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/w;)V

    return-object v0
.end method
