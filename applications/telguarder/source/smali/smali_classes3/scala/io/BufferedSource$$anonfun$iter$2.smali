.class public final Lscala/io/BufferedSource$$anonfun$iter$2;
.super Lscala/runtime/AbstractFunction1$mcZI$sp;
.source "BufferedSource.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/io/BufferedSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/io/BufferedSource;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcZI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/io/BufferedSource$$anonfun$iter$2;->apply(I)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)Z
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lscala/io/BufferedSource$$anonfun$iter$2;->apply$mcZI$sp(I)Z

    move-result p1

    return p1
.end method

.method public apply$mcZI$sp(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
