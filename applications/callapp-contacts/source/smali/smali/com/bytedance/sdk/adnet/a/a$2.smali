.class Lcom/bytedance/sdk/adnet/a/a$2;
.super Lcom/bytedance/sdk/openadsdk/l/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/a/a;->b(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/bytedance/sdk/adnet/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/a/a;Ljava/lang/String;Z)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/a/a$2;->b:Lcom/bytedance/sdk/adnet/a/a;

    iput-boolean p3, p0, Lcom/bytedance/sdk/adnet/a/a$2;->a:Z

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/l/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a$2;->b:Lcom/bytedance/sdk/adnet/a/a;

    iget-boolean v1, p0, Lcom/bytedance/sdk/adnet/a/a$2;->a:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/a/a;->c(Z)V

    return-void
.end method
