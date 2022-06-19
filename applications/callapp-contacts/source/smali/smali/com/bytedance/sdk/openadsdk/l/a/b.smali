.class public Lcom/bytedance/sdk/openadsdk/l/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget v0, Lcom/bytedance/sdk/openadsdk/l/e;->a:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/a/b;->a:I

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/l/a/b;->b:I

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/l/a/b;->c:Ljava/lang/String;

    .line 21
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/l/a/b;->b:I

    .line 22
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/l/a/b;->c:Ljava/lang/String;

    return-void
.end method
