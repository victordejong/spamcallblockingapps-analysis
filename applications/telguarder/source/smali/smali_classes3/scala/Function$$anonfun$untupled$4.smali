.class public final Lscala/Function$$anonfun$untupled$4;
.super Lscala/runtime/AbstractFunction5;
.source "Function.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Function$;->untupled(Lscala/Function1;)Lscala/Function5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction5<",
        "Ta1;Ta2;Ta3;Ta4;Ta5;Tb;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final f$12:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/Function1;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lscala/Function$$anonfun$untupled$4;->f$12:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction5;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ta1;Ta2;Ta3;Ta4;Ta5;)Tb;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lscala/Function$$anonfun$untupled$4;->f$12:Lscala/Function1;

    new-instance v7, Lscala/Tuple5;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lscala/Tuple5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
