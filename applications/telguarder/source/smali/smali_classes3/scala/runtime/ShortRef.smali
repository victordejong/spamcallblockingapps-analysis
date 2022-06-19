.class public Lscala/runtime/ShortRef;
.super Ljava/lang/Object;
.source "ShortRef.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3a8aea010d8c8bb9L


# instance fields
.field public elem:S


# direct methods
.method public constructor <init>(S)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lscala/runtime/ShortRef;->elem:S

    return-void
.end method

.method public static create(S)Lscala/runtime/ShortRef;
    .locals 1

    .line 21
    new-instance v0, Lscala/runtime/ShortRef;

    invoke-direct {v0, p0}, Lscala/runtime/ShortRef;-><init>(S)V

    return-object v0
.end method

.method public static zero()Lscala/runtime/ShortRef;
    .locals 2

    .line 22
    new-instance v0, Lscala/runtime/ShortRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lscala/runtime/ShortRef;-><init>(S)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 19
    iget-short v0, p0, Lscala/runtime/ShortRef;->elem:S

    invoke-static {v0}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
