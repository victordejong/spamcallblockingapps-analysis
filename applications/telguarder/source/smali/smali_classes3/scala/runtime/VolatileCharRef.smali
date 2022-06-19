.class public Lscala/runtime/VolatileCharRef;
.super Ljava/lang/Object;
.source "VolatileCharRef.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5ab8da59c7d77546L


# instance fields
.field public volatile elem:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lscala/runtime/VolatileCharRef;->elem:C

    return-void
.end method

.method public static create(C)Lscala/runtime/VolatileCharRef;
    .locals 1

    .line 21
    new-instance v0, Lscala/runtime/VolatileCharRef;

    invoke-direct {v0, p0}, Lscala/runtime/VolatileCharRef;-><init>(C)V

    return-object v0
.end method

.method public static zero()Lscala/runtime/VolatileCharRef;
    .locals 2

    .line 22
    new-instance v0, Lscala/runtime/VolatileCharRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lscala/runtime/VolatileCharRef;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 19
    iget-char v0, p0, Lscala/runtime/VolatileCharRef;->elem:C

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
