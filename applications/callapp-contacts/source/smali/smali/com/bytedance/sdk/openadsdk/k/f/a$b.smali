.class Lcom/bytedance/sdk/openadsdk/k/f/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/k/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/bytedance/sdk/openadsdk/k/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcom/bytedance/sdk/openadsdk/k/f/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/f/a;-><init>(Lcom/bytedance/sdk/openadsdk/k/f/a$1;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/k/f/a$b;->a:Lcom/bytedance/sdk/openadsdk/k/f/a;

    return-void
.end method

.method static synthetic a()Lcom/bytedance/sdk/openadsdk/k/f/a;
    .locals 1

    .line 52
    sget-object v0, Lcom/bytedance/sdk/openadsdk/k/f/a$b;->a:Lcom/bytedance/sdk/openadsdk/k/f/a;

    return-object v0
.end method
