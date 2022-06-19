.class public Lscala/runtime/VolatileObjectRef;
.super Ljava/lang/Object;
.source "VolatileObjectRef.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7dac68c7b044ebe3L


# instance fields
.field public volatile elem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lscala/runtime/VolatileObjectRef;->elem:Ljava/lang/Object;

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lscala/runtime/VolatileObjectRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Lscala/runtime/VolatileObjectRef<",
            "TU;>;"
        }
    .end annotation

    .line 22
    new-instance v0, Lscala/runtime/VolatileObjectRef;

    invoke-direct {v0, p0}, Lscala/runtime/VolatileObjectRef;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zero()Lscala/runtime/VolatileObjectRef;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/runtime/VolatileObjectRef<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lscala/runtime/VolatileObjectRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lscala/runtime/VolatileObjectRef;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lscala/runtime/VolatileObjectRef;->elem:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
