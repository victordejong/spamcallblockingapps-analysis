.class public final Lscala/io/BufferedSource$$anonfun$iter$1;
.super Lscala/runtime/AbstractFunction0$mcI$sp;
.source "BufferedSource.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/io/BufferedSource;->iter()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/io/BufferedSource;


# direct methods
.method public constructor <init>(Lscala/io/BufferedSource;)V
    .locals 0

    .line 40
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/io/BufferedSource$$anonfun$iter$1;->$outer:Lscala/io/BufferedSource;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()I
    .locals 2

    .line 40
    iget-object v0, p0, Lscala/io/BufferedSource$$anonfun$iter$1;->$outer:Lscala/io/BufferedSource;

    invoke-virtual {v0}, Lscala/io/BufferedSource;->codec()Lscala/io/Codec;

    move-result-object v0

    new-instance v1, Lscala/io/BufferedSource$$anonfun$iter$1$$anonfun$apply$mcI$sp$1;

    invoke-direct {v1, p0}, Lscala/io/BufferedSource$$anonfun$iter$1$$anonfun$apply$mcI$sp$1;-><init>(Lscala/io/BufferedSource$$anonfun$iter$1;)V

    invoke-virtual {v0, v1}, Lscala/io/Codec;->wrap(Lscala/Function0;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/io/BufferedSource$$anonfun$iter$1;->apply()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcI$sp()I
    .locals 2

    .line 40
    iget-object v0, p0, Lscala/io/BufferedSource$$anonfun$iter$1;->$outer:Lscala/io/BufferedSource;

    invoke-virtual {v0}, Lscala/io/BufferedSource;->codec()Lscala/io/Codec;

    move-result-object v0

    new-instance v1, Lscala/io/BufferedSource$$anonfun$iter$1$$anonfun$apply$mcI$sp$1;

    invoke-direct {v1, p0}, Lscala/io/BufferedSource$$anonfun$iter$1$$anonfun$apply$mcI$sp$1;-><init>(Lscala/io/BufferedSource$$anonfun$iter$1;)V

    invoke-virtual {v0, v1}, Lscala/io/Codec;->wrap(Lscala/Function0;)I

    move-result v0

    return v0
.end method

.method public synthetic scala$io$BufferedSource$$anonfun$$$outer()Lscala/io/BufferedSource;
    .locals 1

    .line 40
    iget-object v0, p0, Lscala/io/BufferedSource$$anonfun$iter$1;->$outer:Lscala/io/BufferedSource;

    return-object v0
.end method
