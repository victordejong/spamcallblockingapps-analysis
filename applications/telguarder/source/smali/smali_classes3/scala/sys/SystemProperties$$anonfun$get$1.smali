.class public final Lscala/sys/SystemProperties$$anonfun$get$1;
.super Lscala/runtime/AbstractFunction0;
.source "SystemProperties.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/SystemProperties;->get(Ljava/lang/String;)Lscala/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/Option<",
        "Ljava/lang/String;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final key$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lscala/sys/SystemProperties;Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p2, p0, Lscala/sys/SystemProperties$$anonfun$get$1;->key$1:Ljava/lang/String;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lscala/sys/SystemProperties$$anonfun$get$1;->apply()Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    sget-object v0, Lscala/Option$;->MODULE$:Lscala/Option$;

    iget-object v1, p0, Lscala/sys/SystemProperties$$anonfun$get$1;->key$1:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Option$;->apply(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method
