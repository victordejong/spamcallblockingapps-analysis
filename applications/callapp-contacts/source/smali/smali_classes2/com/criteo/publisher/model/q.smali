.class public abstract Lcom/criteo/publisher/model/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/criteo/publisher/m0/a;Lcom/criteo/publisher/model/AdSize;)Lcom/criteo/publisher/model/q;
    .locals 6

    .line 40
    invoke-virtual {p3}, Lcom/criteo/publisher/model/AdSize;->getFormattedSize()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 42
    new-instance p3, Lcom/criteo/publisher/model/i;

    sget-object v0, Lcom/criteo/publisher/m0/a;->c:Lcom/criteo/publisher/m0/a;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 45
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    sget-object v0, Lcom/criteo/publisher/m0/a;->b:Lcom/criteo/publisher/m0/a;

    if-ne p2, v0, :cond_1

    .line 46
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v4, p2

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/criteo/publisher/model/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Collection;)V

    return-object p3
.end method

.method public static a(Lcom/google/gson/f;)Lcom/google/gson/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/f;",
            ")",
            "Lcom/google/gson/j<",
            "Lcom/criteo/publisher/model/q;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/criteo/publisher/model/i$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/model/i$a;-><init>(Lcom/google/gson/f;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "impId"
    .end annotation
.end method

.method public abstract b()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "placementId"
    .end annotation
.end method

.method public abstract c()Ljava/util/Collection;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "sizes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "interstitial"
    .end annotation
.end method

.method public abstract e()Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "isNative"
    .end annotation
.end method
