.class public Lscala/util/hashing/MurmurHash3$ArrayHashing$mcZ$sp;
.super Lscala/util/hashing/MurmurHash3$ArrayHashing;
.source "MurmurHash3.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/util/hashing/MurmurHash3$ArrayHashing<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Lscala/util/hashing/MurmurHash3$ArrayHashing;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic hash(Ljava/lang/Object;)I
    .locals 0

    .line 225
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcZ$sp;->hash([Z)I

    move-result p1

    return p1
.end method

.method public hash([Z)I
    .locals 0

    .line 226
    invoke-virtual {p0, p1}, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcZ$sp;->hash$mcZ$sp([Z)I

    move-result p1

    return p1
.end method

.method public hash$mcZ$sp([Z)I
    .locals 1

    .line 226
    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0, p1}, Lscala/util/hashing/MurmurHash3$;->arrayHash$mZc$sp([Z)I

    move-result p1

    return p1
.end method
