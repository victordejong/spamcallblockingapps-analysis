.class public final Lscala/concurrent/duration/Duration$$anonfun$4$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "Duration.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/duration/Duration$$anonfun$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/String;",
        "Lscala/Tuple2<",
        "Ljava/lang/String;",
        "Ljava/util/concurrent/TimeUnit;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final x1$1:Lscala/Tuple2;


# direct methods
.method public constructor <init>(Lscala/concurrent/duration/Duration$$anonfun$4;Lscala/Tuple2;)V
    .locals 0

    .line 94
    iput-object p2, p0, Lscala/concurrent/duration/Duration$$anonfun$4$$anonfun$apply$1;->x1$1:Lscala/Tuple2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Duration$$anonfun$4$$anonfun$apply$1;->apply(Ljava/lang/String;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/String;)Lscala/Tuple2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Tuple2<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/TimeUnit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 94
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0, p1}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lscala/concurrent/duration/Duration$$anonfun$4$$anonfun$apply$1;->x1$1:Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/Tuple2;

    invoke-direct {v1, p1, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
