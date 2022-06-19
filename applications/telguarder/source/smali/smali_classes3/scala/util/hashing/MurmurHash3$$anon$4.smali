.class public final Lscala/util/hashing/MurmurHash3$$anon$4;
.super Ljava/lang/Object;
.source "MurmurHash3.scala"

# interfaces
.implements Lscala/util/hashing/Hashing;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/hashing/MurmurHash3$;->stringHashing()Lscala/util/hashing/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/util/hashing/Hashing<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic hash(Ljava/lang/Object;)I
    .locals 0

    .line 243
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/util/hashing/MurmurHash3$$anon$4;->hash(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public hash(Ljava/lang/String;)I
    .locals 1

    .line 244
    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0, p1}, Lscala/util/hashing/MurmurHash3$;->stringHash(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
