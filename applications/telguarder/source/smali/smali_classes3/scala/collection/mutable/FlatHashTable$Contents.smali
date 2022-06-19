.class public Lscala/collection/mutable/FlatHashTable$Contents;
.super Ljava/lang/Object;
.source "FlatHashTable.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/FlatHashTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final loadFactor:I

.field private final seedvalue:I

.field private final sizemap:[I

.field private final table:[Ljava/lang/Object;

.field private final tableSize:I

.field private final threshold:I


# direct methods
.method public constructor <init>(I[Ljava/lang/Object;III[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Object;",
            "III[I)V"
        }
    .end annotation

    .line 405
    iput p1, p0, Lscala/collection/mutable/FlatHashTable$Contents;->loadFactor:I

    .line 406
    iput-object p2, p0, Lscala/collection/mutable/FlatHashTable$Contents;->table:[Ljava/lang/Object;

    .line 407
    iput p3, p0, Lscala/collection/mutable/FlatHashTable$Contents;->tableSize:I

    .line 408
    iput p4, p0, Lscala/collection/mutable/FlatHashTable$Contents;->threshold:I

    .line 409
    iput p5, p0, Lscala/collection/mutable/FlatHashTable$Contents;->seedvalue:I

    .line 410
    iput-object p6, p0, Lscala/collection/mutable/FlatHashTable$Contents;->sizemap:[I

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadFactor()I
    .locals 1

    .line 405
    iget v0, p0, Lscala/collection/mutable/FlatHashTable$Contents;->loadFactor:I

    return v0
.end method

.method public seedvalue()I
    .locals 1

    .line 409
    iget v0, p0, Lscala/collection/mutable/FlatHashTable$Contents;->seedvalue:I

    return v0
.end method

.method public sizemap()[I
    .locals 1

    .line 410
    iget-object v0, p0, Lscala/collection/mutable/FlatHashTable$Contents;->sizemap:[I

    return-object v0
.end method

.method public table()[Ljava/lang/Object;
    .locals 1

    .line 406
    iget-object v0, p0, Lscala/collection/mutable/FlatHashTable$Contents;->table:[Ljava/lang/Object;

    return-object v0
.end method

.method public tableSize()I
    .locals 1

    .line 407
    iget v0, p0, Lscala/collection/mutable/FlatHashTable$Contents;->tableSize:I

    return v0
.end method

.method public threshold()I
    .locals 1

    .line 408
    iget v0, p0, Lscala/collection/mutable/FlatHashTable$Contents;->threshold:I

    return v0
.end method
