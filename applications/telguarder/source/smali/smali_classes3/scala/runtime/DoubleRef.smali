.class public Lscala/runtime/DoubleRef;
.super Ljava/lang/Object;
.source "DoubleRef.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x733f29bc7a1addeeL


# instance fields
.field public elem:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lscala/runtime/DoubleRef;->elem:D

    return-void
.end method

.method public static create(D)Lscala/runtime/DoubleRef;
    .locals 1

    .line 21
    new-instance v0, Lscala/runtime/DoubleRef;

    invoke-direct {v0, p0, p1}, Lscala/runtime/DoubleRef;-><init>(D)V

    return-object v0
.end method

.method public static zero()Lscala/runtime/DoubleRef;
    .locals 3

    .line 22
    new-instance v0, Lscala/runtime/DoubleRef;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lscala/runtime/DoubleRef;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 19
    iget-wide v0, p0, Lscala/runtime/DoubleRef;->elem:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
