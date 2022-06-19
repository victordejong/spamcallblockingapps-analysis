.class abstract Lcom/criteo/publisher/model/b0/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/model/b0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Lcom/criteo/publisher/model/b0/m;)Lcom/criteo/publisher/model/b0/n$a;
.end method

.method abstract a(Lcom/criteo/publisher/model/b0/q;)Lcom/criteo/publisher/model/b0/n$a;
.end method

.method abstract a(Ljava/util/List;)Lcom/criteo/publisher/model/b0/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/r;",
            ">;)",
            "Lcom/criteo/publisher/model/b0/n$a;"
        }
    .end annotation
.end method

.method abstract a()Lcom/criteo/publisher/model/b0/n;
.end method

.method abstract b(Ljava/util/List;)Lcom/criteo/publisher/model/b0/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/p;",
            ">;)",
            "Lcom/criteo/publisher/model/b0/n$a;"
        }
    .end annotation
.end method

.method b()Lcom/criteo/publisher/model/b0/n;
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/criteo/publisher/model/b0/n$a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/criteo/publisher/model/b0/n$a;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/criteo/publisher/model/b0/n$a;->a()Lcom/criteo/publisher/model/b0/n;

    move-result-object v0

    return-object v0

    .line 128
    :cond_0
    new-instance v0, Lcom/google/gson/JsonParseException;

    const-string v1, "Expect that native payload has, at least, one impression pixel."

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    new-instance v0, Lcom/google/gson/JsonParseException;

    const-string v1, "Expect that native payload has, at least, one product."

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/r;",
            ">;"
        }
    .end annotation
.end method

.method abstract d()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/p;",
            ">;"
        }
    .end annotation
.end method
