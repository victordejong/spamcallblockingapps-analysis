.class Lcom/bytedance/sdk/openadsdk/e/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/bytedance/sdk/openadsdk/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/e/a;-><init>(Lcom/bytedance/sdk/openadsdk/e/a$1;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/e/a$a;->a:Lcom/bytedance/sdk/openadsdk/e/a;

    return-void
.end method

.method static synthetic a()Lcom/bytedance/sdk/openadsdk/e/a;
    .locals 1

    .line 61
    sget-object v0, Lcom/bytedance/sdk/openadsdk/e/a$a;->a:Lcom/bytedance/sdk/openadsdk/e/a;

    return-object v0
.end method
