.class public final Lscala/sys/process/ProcessImpl$ProcessSequence$$anonfun$$lessinit$greater$3;
.super Lscala/runtime/AbstractFunction1$mcZI$sp;
.source "ProcessImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessImpl$ProcessSequence;-><init>(Lscala/sys/process/Process$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessIO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/sys/process/Process$;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcZI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/sys/process/ProcessImpl$ProcessSequence$$anonfun$$lessinit$greater$3;->apply(I)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public apply$mcZI$sp(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
