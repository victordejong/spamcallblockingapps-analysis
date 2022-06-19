.class final Lcom/bytedance/sdk/openadsdk/k/e/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/k/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/bytedance/sdk/openadsdk/k/e/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/k/e/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/k/e/c;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/k/e/c$a;->a:Lcom/bytedance/sdk/openadsdk/k/e/c;

    return-void
.end method

.method static synthetic a()Lcom/bytedance/sdk/openadsdk/k/e/c;
    .locals 1

    .line 8
    sget-object v0, Lcom/bytedance/sdk/openadsdk/k/e/c$a;->a:Lcom/bytedance/sdk/openadsdk/k/e/c;

    return-object v0
.end method
