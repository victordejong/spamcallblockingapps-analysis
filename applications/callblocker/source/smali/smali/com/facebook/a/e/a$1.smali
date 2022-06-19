.class final Lcom/facebook/a/e/a$1;
.super Ljava/util/HashMap;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 89
    const-string/jumbo v0, "embedding.weight"

    const-string/jumbo v1, "embed.weight"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/a/e/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string/jumbo v0, "dense1.weight"

    const-string/jumbo v1, "fc1.weight"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/a/e/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v0, "dense2.weight"

    const-string/jumbo v1, "fc2.weight"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/a/e/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v0, "dense3.weight"

    const-string/jumbo v1, "fc3.weight"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/a/e/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v0, "dense1.bias"

    const-string/jumbo v1, "fc1.bias"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/a/e/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v0, "dense2.bias"

    const-string/jumbo v1, "fc2.bias"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/a/e/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v0, "dense3.bias"

    const-string/jumbo v1, "fc3.bias"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/a/e/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method
