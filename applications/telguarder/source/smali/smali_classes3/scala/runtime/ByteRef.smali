.class public Lscala/runtime/ByteRef;
.super Ljava/lang/Object;
.source "ByteRef.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x165a409beb4ad90L


# instance fields
.field public elem:B


# direct methods
.method public constructor <init>(B)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lscala/runtime/ByteRef;->elem:B

    return-void
.end method

.method public static create(B)Lscala/runtime/ByteRef;
    .locals 1

    .line 21
    new-instance v0, Lscala/runtime/ByteRef;

    invoke-direct {v0, p0}, Lscala/runtime/ByteRef;-><init>(B)V

    return-object v0
.end method

.method public static zero()Lscala/runtime/ByteRef;
    .locals 2

    .line 22
    new-instance v0, Lscala/runtime/ByteRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lscala/runtime/ByteRef;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 19
    iget-byte v0, p0, Lscala/runtime/ByteRef;->elem:B

    invoke-static {v0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
