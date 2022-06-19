.class public final Lscala/collection/mutable/FlatHashTable$$anon$2;
.super Ljava/lang/ThreadLocal;
.source "FlatHashTable.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/FlatHashTable$;->seedGenerator()Ljava/lang/ThreadLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lscala/util/Random;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 382
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lscala/collection/mutable/FlatHashTable$$anon$2;->initialValue()Lscala/util/Random;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Lscala/util/Random;
    .locals 1

    .line 383
    new-instance v0, Lscala/util/Random;

    invoke-direct {v0}, Lscala/util/Random;-><init>()V

    return-object v0
.end method
