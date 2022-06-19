.class public Lscala/util/hashing/MurmurHash3$ArrayHashing;
.super Ljava/lang/Object;
.source "MurmurHash3.scala"

# interfaces
.implements Lscala/util/hashing/Hashing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/hashing/MurmurHash3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayHashing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/util/hashing/Hashing<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hash(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 226
    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0, p1}, Lscala/util/hashing/MurmurHash3$;->arrayHash(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public hash$mcB$sp([B)I
    .locals 0

    .line 226
    invoke-virtual {p0, p1}, Lscala/util/hashing/MurmurHash3$ArrayHashing;->hash(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public hash$mcC$sp([C)I
    .locals 0

    .line 226
    invoke-virtual {p0, p1}, Lscala/util/hashing/MurmurHash3$ArrayHashing;->hash(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public hash$mcD$sp([D)I
    .locals 0

    .line 226
    invoke-virtual {p0, p1}, Lscala/util/hashing/MurmurHash3$ArrayHashing;->hash(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public hash$mcF$sp([F)I
    .locals 0

    .line 226
    invoke-virtual {p0, p1}, Lscala/util/hashing/MurmurHash3$ArrayHashing;->hash(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public hash$mcI$sp([I)I
    .locals 0

    .line 226
    invoke-virtual {p0, p1}, Lscala/util/hashing/MurmurHash3$ArrayHashing;->hash(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public hash$mcJ$sp([J)I
    .locals 0

    .line 226
    invoke-virtual {p0, p1}, Lscala/util/hashing/MurmurHash3$ArrayHashing;->hash(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public hash$mcS$sp([S)I
    .locals 0

    .line 226
    invoke-virtual {p0, p1}, Lscala/util/hashing/MurmurHash3$ArrayHashing;->hash(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public hash$mcV$sp([Lscala/runtime/BoxedUnit;)I
    .locals 0

    .line 226
    invoke-virtual {p0, p1}, Lscala/util/hashing/MurmurHash3$ArrayHashing;->hash(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public hash$mcZ$sp([Z)I
    .locals 0

    .line 226
    invoke-virtual {p0, p1}, Lscala/util/hashing/MurmurHash3$ArrayHashing;->hash(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
