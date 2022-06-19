.class public final Lscala/Function$$anonfun$uncurried$4;
.super Lscala/runtime/AbstractFunction5;
.source "Function.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Function$;->uncurried(Lscala/Function1;)Lscala/Function5;
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
.field private final f$4:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/Function1;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lscala/Function$$anonfun$uncurried$4;->f$4:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction5;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ta1;Ta2;Ta3;Ta4;Ta5;)Tb;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lscala/Function$$anonfun$uncurried$4;->f$4:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Function1;

    invoke-interface {p1, p2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Function1;

    invoke-interface {p1, p3}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Function1;

    invoke-interface {p1, p4}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Function1;

    invoke-interface {p1, p5}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
