.class abstract Lcom/bytedance/sdk/openadsdk/g/a/c;
.super Lcom/bytedance/sdk/openadsdk/g/a/b;
.source "SourceFile"


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/g/a/w;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/a/b;-><init>()V

    .line 9
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/g/a/b;->b()Lcom/bytedance/sdk/openadsdk/g/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c;->a:Lcom/bytedance/sdk/openadsdk/g/a/w;

    return-void
.end method


# virtual methods
.method abstract a(Lcom/bytedance/sdk/openadsdk/g/a/p;Lcom/bytedance/sdk/openadsdk/g/a/s;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
