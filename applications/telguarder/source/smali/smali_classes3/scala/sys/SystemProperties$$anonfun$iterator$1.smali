.class public final Lscala/sys/SystemProperties$$anonfun$iterator$1;
.super Lscala/runtime/AbstractFunction0;
.source "SystemProperties.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/SystemProperties;->iterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/Iterator<",
        "Lscala/Tuple2<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/sys/SystemProperties;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lscala/sys/SystemProperties$$anonfun$iterator$1;->apply()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 39
    sget-object v0, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/JavaConverters$;->propertiesAsScalaMapConverter(Ljava/util/Properties;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/convert/Decorators$AsScala;->asScala()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/MapLike;

    invoke-interface {v0}, Lscala/collection/MapLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method
