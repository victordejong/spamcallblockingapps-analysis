.class public Lcom/bytedance/sdk/adnet/err/e;
.super Lcom/bytedance/sdk/adnet/err/VAdError;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/i;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Lcom/bytedance/sdk/adnet/core/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/Throwable;I)V

    return-void
.end method
