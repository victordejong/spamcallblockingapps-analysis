.class public Lscala/runtime/BooleanRef;
.super Ljava/lang/Object;
.source "BooleanRef.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4f86e9ba7b3245e6L


# instance fields
.field public elem:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lscala/runtime/BooleanRef;->elem:Z

    return-void
.end method

.method public static create(Z)Lscala/runtime/BooleanRef;
    .locals 1

    .line 21
    new-instance v0, Lscala/runtime/BooleanRef;

    invoke-direct {v0, p0}, Lscala/runtime/BooleanRef;-><init>(Z)V

    return-object v0
.end method

.method public static zero()Lscala/runtime/BooleanRef;
    .locals 2

    .line 22
    new-instance v0, Lscala/runtime/BooleanRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lscala/runtime/BooleanRef;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 19
    iget-boolean v0, p0, Lscala/runtime/BooleanRef;->elem:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
