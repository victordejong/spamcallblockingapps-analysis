.class public Lscala/util/hashing/MurmurHash3$ArrayHashing$mcF$sp;
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
    check-cast p1, [F

    invoke-virtual {p0, p1}, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcF$sp;->hash([F)I

    move-result p1

    return p1
.end method

.method public hash([F)I
    .locals 0

    .line 226
    invoke-virtual {p0, p1}, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcF$sp;->hash$mcF$sp([F)I

    move-result p1

    return p1
.end method

.method public hash$mcF$sp([F)I
    .locals 1

    .line 226
    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0, p1}, Lscala/util/hashing/MurmurHash3$;->arrayHash$mFc$sp([F)I

    move-result p1

    return p1
.end method
