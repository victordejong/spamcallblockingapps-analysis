.class public final Lscala/Function$$anonfun$chain$1;
.super Lscala/runtime/AbstractFunction1;
.source "Function.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Function$;->chain(Lscala/collection/Seq;)Lscala/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ta;Ta;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final fs$1:Lscala/collection/Seq;


# direct methods
.method public constructor <init>(Lscala/collection/Seq;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lscala/Function$$anonfun$chain$1;->fs$1:Lscala/collection/Seq;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ta;)Ta;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lscala/Function$$anonfun$chain$1;->fs$1:Lscala/collection/Seq;

    new-instance v1, Lscala/Function$$anonfun$chain$1$$anonfun$apply$1;

    invoke-direct {v1, p0}, Lscala/Function$$anonfun$chain$1$$anonfun$apply$1;-><init>(Lscala/Function$$anonfun$chain$1;)V

    invoke-interface {v0, p1, v1}, Lscala/collection/Seq;->$div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
