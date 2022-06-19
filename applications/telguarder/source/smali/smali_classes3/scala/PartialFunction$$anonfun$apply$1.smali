.class public final Lscala/PartialFunction$$anonfun$apply$1;
.super Lscala/runtime/AbstractPartialFunction;
.source "PartialFunction.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/PartialFunction$;->apply(Lscala/Function1;)Lscala/PartialFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractPartialFunction<",
        "TA;TB;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final f$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/Function1;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lscala/PartialFunction$$anonfun$apply$1;->f$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractPartialFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:TA;B1:",
            "Ljava/lang/Object;",
            ">(TA1;",
            "Lscala/Function1<",
            "TA1;TB1;>;)TB1;"
        }
    .end annotation

    .line 247
    iget-object p2, p0, Lscala/PartialFunction$$anonfun$apply$1;->f$1:Lscala/Function1;

    invoke-interface {p2, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isDefinedAt(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
