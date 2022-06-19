.class public abstract Lcom/criteo/publisher/f/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/f/y$b;,
        Lcom/criteo/publisher/f/y$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/Collection;Ljava/lang/String;I)Lcom/criteo/publisher/f/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/criteo/publisher/f/s;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/criteo/publisher/f/y;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/f/s;

    .line 42
    invoke-static {v1}, Lcom/criteo/publisher/f/y$a;->a(Lcom/criteo/publisher/f/s;)Lcom/criteo/publisher/f/y$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Lcom/criteo/publisher/f/k;

    invoke-direct {p0, v0, p1, p2}, Lcom/criteo/publisher/f/k;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    return-object p0
.end method

.method public static a(Lcom/google/gson/f;)Lcom/google/gson/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/f;",
            ")",
            "Lcom/google/gson/j<",
            "Lcom/criteo/publisher/f/y;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/criteo/publisher/f/k$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/f/k$a;-><init>(Lcom/google/gson/f;)V

    return-object v0
.end method


# virtual methods
.method abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/f/y$a;",
            ">;"
        }
    .end annotation
.end method

.method abstract b()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "wrapper_version"
    .end annotation
.end method

.method abstract c()I
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "profile_id"
    .end annotation
.end method
