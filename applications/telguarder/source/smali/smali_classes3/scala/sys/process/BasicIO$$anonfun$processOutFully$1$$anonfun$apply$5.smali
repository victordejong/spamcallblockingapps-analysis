.class public final Lscala/sys/process/BasicIO$$anonfun$processOutFully$1$$anonfun$apply$5;
.super Lscala/runtime/AbstractFunction0;
.source "BasicIO.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/BasicIO$$anonfun$processOutFully$1;->apply(Ljava/lang/String;)V
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
.field private final x$2$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lscala/sys/process/BasicIO$$anonfun$processOutFully$1;Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p2, p0, Lscala/sys/process/BasicIO$$anonfun$processOutFully$1$$anonfun$apply$5;->x$2$1:Ljava/lang/String;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lscala/sys/process/BasicIO$$anonfun$processOutFully$1$$anonfun$apply$5;->apply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lscala/sys/process/BasicIO$$anonfun$processOutFully$1$$anonfun$apply$5;->x$2$1:Ljava/lang/String;

    return-object v0
.end method
