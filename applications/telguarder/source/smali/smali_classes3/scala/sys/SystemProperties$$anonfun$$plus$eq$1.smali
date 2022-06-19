.class public final Lscala/sys/SystemProperties$$anonfun$$plus$eq$1;
.super Lscala/runtime/AbstractFunction0;
.source "SystemProperties.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/SystemProperties;->$plus$eq(Lscala/Tuple2;)Lscala/sys/SystemProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final kv$1:Lscala/Tuple2;


# direct methods
.method public constructor <init>(Lscala/sys/SystemProperties;Lscala/Tuple2;)V
    .locals 0

    .line 46
    iput-object p2, p0, Lscala/sys/SystemProperties$$anonfun$$plus$eq$1;->kv$1:Lscala/Tuple2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/sys/SystemProperties$$anonfun$$plus$eq$1;->apply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/lang/String;
    .locals 2

    .line 46
    iget-object v0, p0, Lscala/sys/SystemProperties$$anonfun$$plus$eq$1;->kv$1:Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lscala/sys/SystemProperties$$anonfun$$plus$eq$1;->kv$1:Lscala/Tuple2;

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
