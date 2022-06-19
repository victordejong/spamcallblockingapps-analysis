.class public Lscala/collection/convert/Wrappers$JConcurrentMapWrapper$;
.super Ljava/lang/Object;
.source "Wrappers.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JConcurrentMapWrapper$"
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/convert/Wrappers;


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers;)V
    .locals 0

    .line 328
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper$;->$outer:Lscala/collection/convert/Wrappers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 328
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper$;->$outer:Lscala/collection/convert/Wrappers;

    invoke-interface {v0}, Lscala/collection/convert/Wrappers;->JConcurrentMapWrapper()Lscala/collection/convert/Wrappers$JConcurrentMapWrapper$;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/util/concurrent/ConcurrentMap;)Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TA;TB;>;)",
            "Lscala/collection/convert/Wrappers$JConcurrentMapWrapper<",
            "TA;TB;>;"
        }
    .end annotation

    .line 328
    new-instance v0, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;

    iget-object v1, p0, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper$;->$outer:Lscala/collection/convert/Wrappers;

    invoke-direct {v0, v1, p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/concurrent/ConcurrentMap;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "JConcurrentMapWrapper"

    return-object v0
.end method

.method public unapply(Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/convert/Wrappers$JConcurrentMapWrapper<",
            "TA;TB;>;)",
            "Lscala/Option<",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 328
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper;->underlying()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
