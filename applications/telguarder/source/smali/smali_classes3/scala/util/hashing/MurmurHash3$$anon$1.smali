.class public final Lscala/util/hashing/MurmurHash3$$anon$1;
.super Ljava/lang/Object;
.source "MurmurHash3.scala"

# interfaces
.implements Lscala/util/hashing/Hashing;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/hashing/MurmurHash3$;->bytesHashing()Lscala/util/hashing/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/util/hashing/Hashing<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic hash(Ljava/lang/Object;)I
    .locals 0

    .line 231
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lscala/util/hashing/MurmurHash3$$anon$1;->hash([B)I

    move-result p1

    return p1
.end method

.method public hash([B)I
    .locals 1

    .line 232
    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0, p1}, Lscala/util/hashing/MurmurHash3$;->bytesHash([B)I

    move-result p1

    return p1
.end method
