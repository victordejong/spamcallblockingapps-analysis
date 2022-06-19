.class public Lscala/collection/mutable/HashTable$Contents;
.super Ljava/lang/Object;
.source "HashTable.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/HashTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Entry::",
        "Lscala/collection/mutable/HashEntry<",
        "TA;TEntry;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final loadFactor:I

.field private final seedvalue:I

.field private final sizemap:[I

.field private final table:[Lscala/collection/mutable/HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/mutable/HashEntry<",
            "TA;TEntry;>;"
        }
    .end annotation
.end field

.field private final tableSize:I

.field private final threshold:I


# direct methods
.method public constructor <init>(I[Lscala/collection/mutable/HashEntry;III[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lscala/collection/mutable/HashEntry<",
            "TA;TEntry;>;III[I)V"
        }
    .end annotation

    .line 481
    iput p1, p0, Lscala/collection/mutable/HashTable$Contents;->loadFactor:I

    .line 482
    iput-object p2, p0, Lscala/collection/mutable/HashTable$Contents;->table:[Lscala/collection/mutable/HashEntry;

    .line 483
    iput p3, p0, Lscala/collection/mutable/HashTable$Contents;->tableSize:I

    .line 484
    iput p4, p0, Lscala/collection/mutable/HashTable$Contents;->threshold:I

    .line 485
    iput p5, p0, Lscala/collection/mutable/HashTable$Contents;->seedvalue:I

    .line 486
    iput-object p6, p0, Lscala/collection/mutable/HashTable$Contents;->sizemap:[I

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debugInformation()Ljava/lang/String;
    .locals 2

    .line 489
    sget-object v0, Lscala/collection/DebugUtils$;->MODULE$:Lscala/collection/DebugUtils$;

    .line 490
    new-instance v1, Lscala/collection/mutable/HashTable$Contents$$anonfun$debugInformation$1;

    invoke-direct {v1, p0}, Lscala/collection/mutable/HashTable$Contents$$anonfun$debugInformation$1;-><init>(Lscala/collection/mutable/HashTable$Contents;)V

    .line 489
    invoke-virtual {v0, v1}, Lscala/collection/DebugUtils$;->buildString(Lscala/Function1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadFactor()I
    .locals 1

    .line 481
    iget v0, p0, Lscala/collection/mutable/HashTable$Contents;->loadFactor:I

    return v0
.end method

.method public seedvalue()I
    .locals 1

    .line 485
    iget v0, p0, Lscala/collection/mutable/HashTable$Contents;->seedvalue:I

    return v0
.end method

.method public sizemap()[I
    .locals 1

    .line 486
    iget-object v0, p0, Lscala/collection/mutable/HashTable$Contents;->sizemap:[I

    return-object v0
.end method

.method public table()[Lscala/collection/mutable/HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/collection/mutable/HashEntry<",
            "TA;TEntry;>;"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lscala/collection/mutable/HashTable$Contents;->table:[Lscala/collection/mutable/HashEntry;

    return-object v0
.end method

.method public tableSize()I
    .locals 1

    .line 483
    iget v0, p0, Lscala/collection/mutable/HashTable$Contents;->tableSize:I

    return v0
.end method

.method public threshold()I
    .locals 1

    .line 484
    iget v0, p0, Lscala/collection/mutable/HashTable$Contents;->threshold:I

    return v0
.end method
