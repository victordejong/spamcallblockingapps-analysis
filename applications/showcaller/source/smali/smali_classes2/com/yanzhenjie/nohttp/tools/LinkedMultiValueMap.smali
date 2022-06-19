.class public Lcom/yanzhenjie/nohttp/tools/LinkedMultiValueMap;
.super Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;
.source "LinkedMultiValueMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/yanzhenjie/nohttp/tools/BasicMultiValueMap;-><init>(Ljava/util/Map;)V

    return-void
.end method
