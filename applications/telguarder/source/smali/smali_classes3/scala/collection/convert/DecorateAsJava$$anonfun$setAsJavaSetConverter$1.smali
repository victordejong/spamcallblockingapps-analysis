.class public final Lscala/collection/convert/DecorateAsJava$$anonfun$setAsJavaSetConverter$1;
.super Lscala/runtime/AbstractFunction0;
.source "DecorateAsJava.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/convert/DecorateAsJava;->setAsJavaSetConverter(Lscala/collection/Set;)Lscala/collection/convert/Decorators$AsJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Ljava/util/Set<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final s$2:Lscala/collection/Set;


# direct methods
.method public constructor <init>(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Set;)V
    .locals 0

    .line 222
    iput-object p2, p0, Lscala/collection/convert/DecorateAsJava$$anonfun$setAsJavaSetConverter$1;->s$2:Lscala/collection/Set;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lscala/collection/convert/DecorateAsJava$$anonfun$setAsJavaSetConverter$1;->apply()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TA;>;"
        }
    .end annotation

    .line 222
    sget-object v0, Lscala/collection/convert/WrapAsJava$;->MODULE$:Lscala/collection/convert/WrapAsJava$;

    iget-object v1, p0, Lscala/collection/convert/DecorateAsJava$$anonfun$setAsJavaSetConverter$1;->s$2:Lscala/collection/Set;

    invoke-virtual {v0, v1}, Lscala/collection/convert/WrapAsJava$;->setAsJavaSet(Lscala/collection/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
