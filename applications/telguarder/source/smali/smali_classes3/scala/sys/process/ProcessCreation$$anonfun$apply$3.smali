.class public final Lscala/sys/process/ProcessCreation$$anonfun$apply$3;
.super Lscala/runtime/AbstractFunction1;
.source "Process.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessCreation;->apply(Lscala/collection/Seq;Lscala/Option;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final jpb$1:Ljava/lang/ProcessBuilder;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessCreation;Ljava/lang/ProcessBuilder;)V
    .locals 0

    .line 106
    iput-object p2, p0, Lscala/sys/process/ProcessCreation$$anonfun$apply$3;->jpb$1:Ljava/lang/ProcessBuilder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 106
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/sys/process/ProcessCreation$$anonfun$apply$3;->apply(Lscala/Tuple2;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lscala/sys/process/ProcessCreation$$anonfun$apply$3;->jpb$1:Ljava/lang/ProcessBuilder;

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
