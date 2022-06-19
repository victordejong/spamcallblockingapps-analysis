.class public Lscala/collection/convert/Wrappers$MapWrapper;
.super Ljava/util/AbstractMap;
.source "Wrappers.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MapWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TA;TB;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/convert/Wrappers;

.field public final scala$collection$convert$Wrappers$MapWrapper$$underlying:Lscala/collection/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Map<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers;Lscala/collection/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers;",
            "Lscala/collection/Map<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 168
    iput-object p2, p0, Lscala/collection/convert/Wrappers$MapWrapper;->scala$collection$convert$Wrappers$MapWrapper$$underlying:Lscala/collection/Map;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$MapWrapper;->$outer:Lscala/collection/convert/Wrappers;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 226
    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$MapWrapper;->scala$collection$convert$Wrappers$MapWrapper$$underlying:Lscala/collection/Map;

    invoke-interface {v0, p1}, Lscala/collection/Map;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 180
    new-instance v0, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$MapWrapper$$anon$1;-><init>(Lscala/collection/convert/Wrappers$MapWrapper;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 172
    :try_start_0
    iget-object v1, p0, Lscala/collection/convert/Wrappers$MapWrapper;->scala$collection$convert$Wrappers$MapWrapper$$underlying:Lscala/collection/Map;

    invoke-interface {v1, p1}, Lscala/collection/Map;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    .line 173
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    instance-of v1, p1, Lscala/Some;

    if-eqz v1, :cond_1

    check-cast p1, Lscala/Some;

    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    .line 172
    :cond_1
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public synthetic scala$collection$convert$Wrappers$MapWrapper$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .line 168
    iget-object v0, p0, Lscala/collection/convert/Wrappers$MapWrapper;->$outer:Lscala/collection/convert/Wrappers;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 169
    iget-object v0, p0, Lscala/collection/convert/Wrappers$MapWrapper;->scala$collection$convert$Wrappers$MapWrapper$$underlying:Lscala/collection/Map;

    invoke-interface {v0}, Lscala/collection/Map;->size()I

    move-result v0

    return v0
.end method
