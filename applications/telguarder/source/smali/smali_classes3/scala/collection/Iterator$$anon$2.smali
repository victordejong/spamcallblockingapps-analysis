.class public final Lscala/collection/Iterator$$anon$2;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/Iterator$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "Lscala/runtime/Nothing$;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lscala/collection/Iterator$$anon$2;->next()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public next()Lscala/runtime/Nothing$;
    .locals 2

    .line 39
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "next on empty iterator"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
