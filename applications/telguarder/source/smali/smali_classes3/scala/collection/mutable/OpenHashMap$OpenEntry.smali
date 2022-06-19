.class public final Lscala/collection/mutable/OpenHashMap$OpenEntry;
.super Ljava/lang/Object;
.source "OpenHashMap.scala"

# interfaces
.implements Lscala/collection/mutable/HashEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/OpenHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/HashEntry<",
        "TKey;",
        "Lscala/collection/mutable/OpenHashMap$OpenEntry<",
        "TKey;TValue;>;>;"
    }
.end annotation


# instance fields
.field private final hash:I

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TKey;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field private value:Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Option<",
            "TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILscala/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;I",
            "Lscala/Option<",
            "TValue;>;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lscala/collection/mutable/OpenHashMap$OpenEntry;->key:Ljava/lang/Object;

    .line 25
    iput p2, p0, Lscala/collection/mutable/OpenHashMap$OpenEntry;->hash:I

    .line 26
    iput-object p3, p0, Lscala/collection/mutable/OpenHashMap$OpenEntry;->value:Lscala/Option;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/HashEntry$class;->$init$(Lscala/collection/mutable/HashEntry;)V

    return-void
.end method


# virtual methods
.method public hash()I
    .locals 1

    .line 25
    iget v0, p0, Lscala/collection/mutable/OpenHashMap$OpenEntry;->hash:I

    return v0
.end method

.method public key()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TKey;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lscala/collection/mutable/OpenHashMap$OpenEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 24
    iget-object v0, p0, Lscala/collection/mutable/OpenHashMap$OpenEntry;->next:Ljava/lang/Object;

    return-object v0
.end method

.method public next_$eq(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 24
    iput-object p1, p0, Lscala/collection/mutable/OpenHashMap$OpenEntry;->next:Ljava/lang/Object;

    return-void
.end method

.method public value()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TValue;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lscala/collection/mutable/OpenHashMap$OpenEntry;->value:Lscala/Option;

    return-object v0
.end method

.method public value_$eq(Lscala/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TValue;>;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lscala/collection/mutable/OpenHashMap$OpenEntry;->value:Lscala/Option;

    return-void
.end method
