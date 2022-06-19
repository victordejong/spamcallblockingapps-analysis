.class public Lscala/util/MurmurHash$mcI$sp;
.super Lscala/util/MurmurHash;
.source "MurmurHash.scala"

# interfaces
.implements Lscala/Function1$mcVI$sp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/util/MurmurHash<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Function1$mcVI$sp;"
    }
.end annotation


# instance fields
.field private final seed:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 32
    iput p1, p0, Lscala/util/MurmurHash$mcI$sp;->seed:I

    invoke-direct {p0, p1}, Lscala/util/MurmurHash;-><init>(I)V

    invoke-static {p0}, Lscala/Function1$mcVI$sp$class;->$init$(Lscala/Function1$mcVI$sp;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/util/MurmurHash$mcI$sp;->apply(I)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public apply(I)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lscala/util/MurmurHash$mcI$sp;->apply$mcI$sp(I)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0

    .line 32
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/util/MurmurHash$mcI$sp;->apply(I)V

    return-void
.end method

.method public apply$mcI$sp(I)V
    .locals 4

    .line 51
    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {p0}, Lscala/util/MurmurHash$mcI$sp;->scala$util$MurmurHash$$h()I

    move-result v1

    invoke-virtual {p0}, Lscala/util/MurmurHash$mcI$sp;->scala$util$MurmurHash$$c()I

    move-result v2

    invoke-virtual {p0}, Lscala/util/MurmurHash$mcI$sp;->scala$util$MurmurHash$$k()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/util/MurmurHash$mcI$sp;->scala$util$MurmurHash$$h_$eq(I)V

    .line 52
    sget-object p1, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {p0}, Lscala/util/MurmurHash$mcI$sp;->scala$util$MurmurHash$$c()I

    move-result v0

    invoke-virtual {p1, v0}, Lscala/util/MurmurHash$;->nextMagicA(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/util/MurmurHash$mcI$sp;->scala$util$MurmurHash$$c_$eq(I)V

    .line 53
    sget-object p1, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {p0}, Lscala/util/MurmurHash$mcI$sp;->scala$util$MurmurHash$$k()I

    move-result v0

    invoke-virtual {p1, v0}, Lscala/util/MurmurHash$;->nextMagicB(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/util/MurmurHash$mcI$sp;->scala$util$MurmurHash$$k_$eq(I)V

    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p1}, Lscala/util/MurmurHash$mcI$sp;->scala$util$MurmurHash$$hashed_$eq(Z)V

    return-void
.end method
