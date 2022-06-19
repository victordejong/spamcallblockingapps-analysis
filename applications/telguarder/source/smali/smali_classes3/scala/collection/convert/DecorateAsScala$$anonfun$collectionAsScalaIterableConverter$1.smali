.class public final Lscala/collection/convert/DecorateAsScala$$anonfun$collectionAsScalaIterableConverter$1;
.super Lscala/runtime/AbstractFunction0;
.source "DecorateAsScala.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/convert/DecorateAsScala;->collectionAsScalaIterableConverter(Ljava/util/Collection;)Lscala/collection/convert/Decorators$AsScala;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/Iterable<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final i$4:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lscala/collection/convert/DecorateAsScala;Ljava/util/Collection;)V
    .locals 0

    .line 89
    iput-object p2, p0, Lscala/collection/convert/DecorateAsScala$$anonfun$collectionAsScalaIterableConverter$1;->i$4:Ljava/util/Collection;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lscala/collection/convert/DecorateAsScala$$anonfun$collectionAsScalaIterableConverter$1;->apply()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "TA;>;"
        }
    .end annotation

    .line 89
    sget-object v0, Lscala/collection/convert/WrapAsScala$;->MODULE$:Lscala/collection/convert/WrapAsScala$;

    iget-object v1, p0, Lscala/collection/convert/DecorateAsScala$$anonfun$collectionAsScalaIterableConverter$1;->i$4:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lscala/collection/convert/WrapAsScala$;->collectionAsScalaIterable(Ljava/util/Collection;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method
