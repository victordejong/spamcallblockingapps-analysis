.class public final Lscala/Function1$$anonfun$compose$1;
.super Lscala/runtime/AbstractFunction1;
.source "Function1.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Function1;->compose(Lscala/Function1;)Lscala/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;TR;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/Function1;

.field private final g$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/Function1;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT1;TR;>;)V"
        }
    .end annotation

    .line 44
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Function1$$anonfun$compose$1;->$outer:Lscala/Function1;

    iput-object p2, p0, Lscala/Function1$$anonfun$compose$1;->g$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TR;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lscala/Function1$$anonfun$compose$1;->$outer:Lscala/Function1;

    iget-object v1, p0, Lscala/Function1$$anonfun$compose$1;->g$1:Lscala/Function1;

    invoke-interface {v1, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
