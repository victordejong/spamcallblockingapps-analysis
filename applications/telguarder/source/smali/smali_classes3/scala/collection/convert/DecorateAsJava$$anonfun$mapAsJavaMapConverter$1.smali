.class public final Lscala/collection/convert/DecorateAsJava$$anonfun$mapAsJavaMapConverter$1;
.super Lscala/runtime/AbstractFunction0;
.source "DecorateAsJava.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/convert/DecorateAsJava;->mapAsJavaMapConverter(Lscala/collection/Map;)Lscala/collection/convert/Decorators$AsJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Ljava/util/Map<",
        "TA;TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final m$2:Lscala/collection/Map;


# direct methods
.method public constructor <init>(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Map;)V
    .locals 0

    .line 279
    iput-object p2, p0, Lscala/collection/convert/DecorateAsJava$$anonfun$mapAsJavaMapConverter$1;->m$2:Lscala/collection/Map;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lscala/collection/convert/DecorateAsJava$$anonfun$mapAsJavaMapConverter$1;->apply()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 279
    sget-object v0, Lscala/collection/convert/WrapAsJava$;->MODULE$:Lscala/collection/convert/WrapAsJava$;

    iget-object v1, p0, Lscala/collection/convert/DecorateAsJava$$anonfun$mapAsJavaMapConverter$1;->m$2:Lscala/collection/Map;

    invoke-virtual {v0, v1}, Lscala/collection/convert/WrapAsJava$;->mapAsJavaMap(Lscala/collection/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
