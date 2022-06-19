.class public Lscala/runtime/VolatileIntRef;
.super Ljava/lang/Object;
.source "VolatileIntRef.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x14a7236821fa7b38L


# instance fields
.field public volatile elem:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lscala/runtime/VolatileIntRef;->elem:I

    return-void
.end method

.method public static create(I)Lscala/runtime/VolatileIntRef;
    .locals 1

    .line 20
    new-instance v0, Lscala/runtime/VolatileIntRef;

    invoke-direct {v0, p0}, Lscala/runtime/VolatileIntRef;-><init>(I)V

    return-object v0
.end method

.method public static zero()Lscala/runtime/VolatileIntRef;
    .locals 2

    .line 21
    new-instance v0, Lscala/runtime/VolatileIntRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lscala/runtime/VolatileIntRef;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 18
    iget v0, p0, Lscala/runtime/VolatileIntRef;->elem:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
