.class public final Lscala/sys/process/BasicIO$$anonfun$processFully$1$$anonfun$apply$6;
.super Lscala/runtime/AbstractFunction0;
.source "BasicIO.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/BasicIO$$anonfun$processFully$1;
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
.field private final reader$1:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Lscala/sys/process/BasicIO$$anonfun$processFully$1;Ljava/io/BufferedReader;)V
    .locals 0

    .line 165
    iput-object p2, p0, Lscala/sys/process/BasicIO$$anonfun$processFully$1$$anonfun$apply$6;->reader$1:Ljava/io/BufferedReader;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lscala/sys/process/BasicIO$$anonfun$processFully$1$$anonfun$apply$6;->apply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lscala/sys/process/BasicIO$$anonfun$processFully$1$$anonfun$apply$6;->reader$1:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
