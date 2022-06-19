.class public final Lscala/Enumeration$$anonfun$withName$2;
.super Lscala/runtime/AbstractFunction0;
.source "Enumeration.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Enumeration;->withName(Ljava/lang/String;)Lscala/Enumeration$Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/runtime/Nothing$;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final s$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lscala/Enumeration;Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p2, p0, Lscala/Enumeration$$anonfun$withName$2;->s$1:Ljava/lang/String;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lscala/Enumeration$$anonfun$withName$2;->apply()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public final apply()Lscala/runtime/Nothing$;
    .locals 6

    .line 125
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Lscala/StringContext;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v3, "No value found for \'"

    const-string v4, "\'"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-direct {v1, v2}, Lscala/StringContext;-><init>(Lscala/collection/Seq;)V

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lscala/Enumeration$$anonfun$withName$2;->s$1:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/StringContext;->s(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
