.class public final Lscala/sys/SystemProperties$$anonfun$$minus$eq$1;
.super Lscala/runtime/AbstractFunction0;
.source "SystemProperties.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/SystemProperties;->$minus$eq(Ljava/lang/String;)Lscala/sys/SystemProperties;
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
.field private final key$3:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lscala/sys/SystemProperties;Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p2, p0, Lscala/sys/SystemProperties$$anonfun$$minus$eq$1;->key$3:Ljava/lang/String;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/sys/SystemProperties$$anonfun$$minus$eq$1;->apply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lscala/sys/SystemProperties$$anonfun$$minus$eq$1;->key$3:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
