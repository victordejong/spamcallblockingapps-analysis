.class public final Lscala/Function$$anonfun$untupled$3;
.super Lscala/runtime/AbstractFunction4;
.source "Function.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Function$;->untupled(Lscala/Function1;)Lscala/Function4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction4<",
        "Ta1;Ta2;Ta3;Ta4;Tb;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final f$11:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/Function1;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lscala/Function$$anonfun$untupled$3;->f$11:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction4;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ta1;Ta2;Ta3;Ta4;)Tb;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lscala/Function$$anonfun$untupled$3;->f$11:Lscala/Function1;

    new-instance v1, Lscala/Tuple4;

    invoke-direct {v1, p1, p2, p3, p4}, Lscala/Tuple4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
