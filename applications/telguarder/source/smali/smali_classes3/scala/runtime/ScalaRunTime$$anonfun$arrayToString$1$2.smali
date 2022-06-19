.class public final Lscala/runtime/ScalaRunTime$$anonfun$arrayToString$1$2;
.super Lscala/runtime/AbstractFunction1;
.source "ScalaRunTime.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/runtime/ScalaRunTime$;->arrayToString$1(Ljava/lang/Object;I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final maxElements$1:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 314
    iput p1, p0, Lscala/runtime/ScalaRunTime$$anonfun$arrayToString$1$2;->maxElements$1:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 314
    invoke-virtual {p0, p1}, Lscala/runtime/ScalaRunTime$$anonfun$arrayToString$1$2;->apply(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 314
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    iget v1, p0, Lscala/runtime/ScalaRunTime$$anonfun$arrayToString$1$2;->maxElements$1:I

    invoke-virtual {v0, p1, v1}, Lscala/runtime/ScalaRunTime$;->scala$runtime$ScalaRunTime$$inner$1(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
