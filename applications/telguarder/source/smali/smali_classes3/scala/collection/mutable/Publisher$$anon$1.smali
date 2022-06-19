.class public final Lscala/collection/mutable/Publisher$$anon$1;
.super Lscala/collection/mutable/HashMap;
.source "Publisher.scala"

# interfaces
.implements Lscala/collection/mutable/MultiMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/Publisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/HashMap<",
        "Lscala/collection/mutable/Subscriber<",
        "TEvt;",
        "Lscala/collection/mutable/Publisher;",
        ">;",
        "Lscala/collection/mutable/Set<",
        "Lscala/Function1<",
        "TEvt;",
        "Ljava/lang/Object;",
        ">;>;>;",
        "Lscala/collection/mutable/MultiMap<",
        "Lscala/collection/mutable/Subscriber<",
        "TEvt;",
        "Lscala/collection/mutable/Publisher;",
        ">;",
        "Lscala/Function1<",
        "TEvt;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/mutable/Publisher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/Publisher$class;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lscala/collection/mutable/HashMap;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/MultiMap$class;->$init$(Lscala/collection/mutable/MultiMap;)V

    return-void
.end method


# virtual methods
.method public addBinding(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/MultiMap;
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/MultiMap$class;->addBinding(Lscala/collection/mutable/MultiMap;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/MultiMap;

    move-result-object p1

    return-object p1
.end method

.method public entryExists(Ljava/lang/Object;Lscala/Function1;)Z
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/MultiMap$class;->entryExists(Lscala/collection/mutable/MultiMap;Ljava/lang/Object;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public makeSet()Lscala/collection/mutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Set<",
            "Lscala/Function1<",
            "TEvt;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lscala/collection/mutable/MultiMap$class;->makeSet(Lscala/collection/mutable/MultiMap;)Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeBinding(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/MultiMap;
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/MultiMap$class;->removeBinding(Lscala/collection/mutable/MultiMap;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/MultiMap;

    move-result-object p1

    return-object p1
.end method
