.class public Lscala/util/hashing/ByteswapHashing$Chained;
.super Ljava/lang/Object;
.source "ByteswapHashing.scala"

# interfaces
.implements Lscala/util/hashing/Hashing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/hashing/ByteswapHashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chained"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/util/hashing/Hashing<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final h:Lscala/util/hashing/Hashing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/util/hashing/Hashing<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/util/hashing/Hashing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/hashing/Hashing<",
            "TT;>;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lscala/util/hashing/ByteswapHashing$Chained;->h:Lscala/util/hashing/Hashing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hash(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 29
    sget-object v0, Lscala/util/hashing/package$;->MODULE$:Lscala/util/hashing/package$;

    iget-object v1, p0, Lscala/util/hashing/ByteswapHashing$Chained;->h:Lscala/util/hashing/Hashing;

    invoke-interface {v1, p1}, Lscala/util/hashing/Hashing;->hash(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lscala/util/hashing/package$;->byteswap32(I)I

    move-result p1

    return p1
.end method
