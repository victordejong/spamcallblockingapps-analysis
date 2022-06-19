.class public Lcom/bytedance/sdk/adnet/err/a;
.super Lcom/bytedance/sdk/adnet/err/VAdError;
.source "SourceFile"


# instance fields
.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/i;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Lcom/bytedance/sdk/adnet/core/i;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/err/a;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v0, "User needs to (re)enter credentials."

    return-object v0

    .line 55
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
