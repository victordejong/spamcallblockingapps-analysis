.class public final Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParHashTable.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/mutable/HashEntry<",
        "TK;TEntry;>;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashTable<",
            "TK;TEntry;>.EntryIterator<TT;TIterRepr;>.$anonfun$debugInformation$1;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 69
    check-cast p1, Lscala/collection/mutable/HashEntry;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1$$anonfun$apply$1;->apply(Lscala/collection/mutable/HashEntry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/HashEntry;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/HashEntry<",
            "TK;TEntry;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "n/a"

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
