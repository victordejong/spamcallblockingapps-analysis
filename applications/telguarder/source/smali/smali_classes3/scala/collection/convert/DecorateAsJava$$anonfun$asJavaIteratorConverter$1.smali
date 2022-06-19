.class public final Lscala/collection/convert/DecorateAsJava$$anonfun$asJavaIteratorConverter$1;
.super Lscala/runtime/AbstractFunction0;
.source "DecorateAsJava.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/convert/DecorateAsJava;->asJavaIteratorConverter(Lscala/collection/Iterator;)Lscala/collection/convert/Decorators$AsJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Ljava/util/Iterator<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final i$1:Lscala/collection/Iterator;


# direct methods
.method public constructor <init>(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Iterator;)V
    .locals 0

    .line 75
    iput-object p2, p0, Lscala/collection/convert/DecorateAsJava$$anonfun$asJavaIteratorConverter$1;->i$1:Lscala/collection/Iterator;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lscala/collection/convert/DecorateAsJava$$anonfun$asJavaIteratorConverter$1;->apply()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 75
    sget-object v0, Lscala/collection/convert/WrapAsJava$;->MODULE$:Lscala/collection/convert/WrapAsJava$;

    iget-object v1, p0, Lscala/collection/convert/DecorateAsJava$$anonfun$asJavaIteratorConverter$1;->i$1:Lscala/collection/Iterator;

    invoke-virtual {v0, v1}, Lscala/collection/convert/WrapAsJava$;->asJavaIterator(Lscala/collection/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
