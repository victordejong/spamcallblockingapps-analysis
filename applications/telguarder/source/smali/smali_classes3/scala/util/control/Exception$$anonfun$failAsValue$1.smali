.class public final Lscala/util/control/Exception$$anonfun$failAsValue$1;
.super Lscala/runtime/AbstractFunction1;
.source "Exception.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/control/Exception$;->failAsValue(Lscala/collection/Seq;Lscala/Function0;)Lscala/util/control/Exception$Catch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Throwable;",
        "TT;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final value$1:Lscala/Function0;


# direct methods
.method public constructor <init>(Lscala/Function0;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lscala/util/control/Exception$$anonfun$failAsValue$1;->value$1:Lscala/Function0;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 193
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lscala/util/control/Exception$$anonfun$failAsValue$1;->apply(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TT;"
        }
    .end annotation

    .line 193
    iget-object p1, p0, Lscala/util/control/Exception$$anonfun$failAsValue$1;->value$1:Lscala/Function0;

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
