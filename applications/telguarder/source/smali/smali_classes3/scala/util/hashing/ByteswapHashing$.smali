.class public final Lscala/util/hashing/ByteswapHashing$;
.super Ljava/lang/Object;
.source "ByteswapHashing.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/util/hashing/ByteswapHashing$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/hashing/ByteswapHashing$;

    invoke-direct {v0}, Lscala/util/hashing/ByteswapHashing$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/hashing/ByteswapHashing$;->MODULE$:Lscala/util/hashing/ByteswapHashing$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 26
    sget-object v0, Lscala/util/hashing/ByteswapHashing$;->MODULE$:Lscala/util/hashing/ByteswapHashing$;

    return-object v0
.end method


# virtual methods
.method public chain(Lscala/util/hashing/Hashing;)Lscala/util/hashing/Hashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/hashing/Hashing<",
            "TT;>;)",
            "Lscala/util/hashing/Hashing<",
            "TT;>;"
        }
    .end annotation

    .line 34
    new-instance v0, Lscala/util/hashing/ByteswapHashing$Chained;

    invoke-direct {v0, p1}, Lscala/util/hashing/ByteswapHashing$Chained;-><init>(Lscala/util/hashing/Hashing;)V

    return-object v0
.end method
