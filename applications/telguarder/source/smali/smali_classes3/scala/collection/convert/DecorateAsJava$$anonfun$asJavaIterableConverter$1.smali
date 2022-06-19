.class public final Lscala/collection/convert/DecorateAsJava$$anonfun$asJavaIterableConverter$1;
.super Lscala/runtime/AbstractFunction0;
.source "DecorateAsJava.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/convert/DecorateAsJava;->asJavaIterableConverter(Lscala/collection/Iterable;)Lscala/collection/convert/Decorators$AsJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Ljava/lang/Iterable<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final i$2:Lscala/collection/Iterable;


# direct methods
.method public constructor <init>(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Iterable;)V
    .locals 0

    .line 112
    iput-object p2, p0, Lscala/collection/convert/DecorateAsJava$$anonfun$asJavaIterableConverter$1;->i$2:Lscala/collection/Iterable;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TA;>;"
        }
    .end annotation

    .line 112
    sget-object v0, Lscala/collection/convert/WrapAsJava$;->MODULE$:Lscala/collection/convert/WrapAsJava$;

    iget-object v1, p0, Lscala/collection/convert/DecorateAsJava$$anonfun$asJavaIterableConverter$1;->i$2:Lscala/collection/Iterable;

    invoke-virtual {v0, v1}, Lscala/collection/convert/WrapAsJava$;->asJavaIterable(Lscala/collection/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lscala/collection/convert/DecorateAsJava$$anonfun$asJavaIterableConverter$1;->apply()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
