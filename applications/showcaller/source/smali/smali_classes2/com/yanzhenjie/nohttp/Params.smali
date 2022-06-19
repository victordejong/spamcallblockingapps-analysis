.class public Lcom/yanzhenjie/nohttp/Params;
.super Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;
.source "Params.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/Params$1;

    invoke-direct {v0}, Lcom/yanzhenjie/nohttp/Params$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static formatKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
