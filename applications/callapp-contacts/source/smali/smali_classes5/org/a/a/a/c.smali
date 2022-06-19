.class public final Lorg/a/a/a/c;
.super Lorg/a/a/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/a/a/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/a/a/a/a<",
        "TK;TV;",
        "Ljava/util/Set<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final b:Lorg/a/a/a/c$a;


# direct methods
.method protected constructor <init>(Ljava/util/Map;Lorg/a/a/a/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;",
            "Lorg/a/a/a/c$a;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lorg/a/a/a/a;-><init>(Ljava/util/Map;)V

    .line 51
    iput-object p2, p0, Lorg/a/a/a/c;->b:Lorg/a/a/a/c$a;

    return-void
.end method

.method public static a(Lorg/a/a/a/c$a;)Lorg/a/a/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/a/a/a/c$a;",
            ")",
            "Lorg/a/a/a/c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/a/a/a/c;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1, p0}, Lorg/a/a/a/c;-><init>(Ljava/util/Map;Lorg/a/a/a/c$a;)V

    return-object v0
.end method


# virtual methods
.method protected final synthetic a()Ljava/util/Collection;
    .locals 3

    .line 1055
    sget-object v0, Lorg/a/a/a/c$1;->a:[I

    iget-object v1, p0, Lorg/a/a/a/c;->b:Lorg/a/a/a/c$a;

    invoke-virtual {v1}, Lorg/a/a/a/c$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1059
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    return-object v0

    .line 1061
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown set type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/a/a/a/c;->b:Lorg/a/a/a/c$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method
