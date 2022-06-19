.class public Lscala/runtime/FloatRef;
.super Ljava/lang/Object;
.source "FloatRef.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x50685b034e738815L


# instance fields
.field public elem:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lscala/runtime/FloatRef;->elem:F

    return-void
.end method

.method public static create(F)Lscala/runtime/FloatRef;
    .locals 1

    .line 21
    new-instance v0, Lscala/runtime/FloatRef;

    invoke-direct {v0, p0}, Lscala/runtime/FloatRef;-><init>(F)V

    return-object v0
.end method

.method public static zero()Lscala/runtime/FloatRef;
    .locals 2

    .line 22
    new-instance v0, Lscala/runtime/FloatRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lscala/runtime/FloatRef;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 19
    iget v0, p0, Lscala/runtime/FloatRef;->elem:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
