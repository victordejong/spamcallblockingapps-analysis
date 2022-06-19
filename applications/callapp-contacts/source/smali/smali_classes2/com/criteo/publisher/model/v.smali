.class public abstract Lcom/criteo/publisher/model/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/criteo/publisher/model/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/criteo/publisher/model/v;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/criteo/publisher/model/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/criteo/publisher/model/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static a(Lcom/google/gson/f;)Lcom/google/gson/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/f;",
            ")",
            "Lcom/google/gson/j<",
            "Lcom/criteo/publisher/model/v;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/criteo/publisher/model/j$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/model/j$a;-><init>(Lcom/google/gson/f;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "cpId"
    .end annotation
.end method

.method public abstract c()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
