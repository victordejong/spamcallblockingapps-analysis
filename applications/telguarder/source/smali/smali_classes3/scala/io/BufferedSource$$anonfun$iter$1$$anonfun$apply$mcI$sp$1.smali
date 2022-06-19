.class public final Lscala/io/BufferedSource$$anonfun$iter$1$$anonfun$apply$mcI$sp$1;
.super Lscala/runtime/AbstractFunction0$mcI$sp;
.source "BufferedSource.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/io/BufferedSource$$anonfun$iter$1;->apply()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/io/BufferedSource$$anonfun$iter$1;


# direct methods
.method public constructor <init>(Lscala/io/BufferedSource$$anonfun$iter$1;)V
    .locals 0

    .line 40
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/io/BufferedSource$$anonfun$iter$1$$anonfun$apply$mcI$sp$1;->$outer:Lscala/io/BufferedSource$$anonfun$iter$1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()I
    .locals 1

    .line 40
    iget-object v0, p0, Lscala/io/BufferedSource$$anonfun$iter$1$$anonfun$apply$mcI$sp$1;->$outer:Lscala/io/BufferedSource$$anonfun$iter$1;

    iget-object v0, v0, Lscala/io/BufferedSource$$anonfun$iter$1;->$outer:Lscala/io/BufferedSource;

    invoke-virtual {v0}, Lscala/io/BufferedSource;->scala$io$BufferedSource$$charReader()Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lscala/io/BufferedSource$$anonfun$iter$1$$anonfun$apply$mcI$sp$1;->apply()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcI$sp()I
    .locals 1

    .line 40
    iget-object v0, p0, Lscala/io/BufferedSource$$anonfun$iter$1$$anonfun$apply$mcI$sp$1;->$outer:Lscala/io/BufferedSource$$anonfun$iter$1;

    iget-object v0, v0, Lscala/io/BufferedSource$$anonfun$iter$1;->$outer:Lscala/io/BufferedSource;

    invoke-virtual {v0}, Lscala/io/BufferedSource;->scala$io$BufferedSource$$charReader()Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    return v0
.end method
