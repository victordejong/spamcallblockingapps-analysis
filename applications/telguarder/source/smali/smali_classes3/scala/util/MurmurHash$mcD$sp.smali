.class public Lscala/util/MurmurHash$mcD$sp;
.super Lscala/util/MurmurHash;
.source "MurmurHash.scala"

# interfaces
.implements Lscala/Function1$mcVD$sp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/util/MurmurHash<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Function1$mcVD$sp;"
    }
.end annotation


# instance fields
.field private final seed:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 32
    iput p1, p0, Lscala/util/MurmurHash$mcD$sp;->seed:I

    invoke-direct {p0, p1}, Lscala/util/MurmurHash;-><init>(I)V

    invoke-static {p0}, Lscala/Function1$mcVD$sp$class;->$init$(Lscala/Function1$mcVD$sp;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 32
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/util/MurmurHash$mcD$sp;->apply(D)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public apply(D)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lscala/util/MurmurHash$mcD$sp;->apply$mcD$sp(D)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 2

    .line 32
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/util/MurmurHash$mcD$sp;->apply(D)V

    return-void
.end method

.method public apply$mcD$sp(D)V
    .locals 3

    .line 51
    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {p0}, Lscala/util/MurmurHash$mcD$sp;->scala$util$MurmurHash$$h()I

    move-result v1

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v2, p1}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0}, Lscala/util/MurmurHash$mcD$sp;->scala$util$MurmurHash$$c()I

    move-result p2

    invoke-virtual {p0}, Lscala/util/MurmurHash$mcD$sp;->scala$util$MurmurHash$$k()I

    move-result v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/util/MurmurHash$mcD$sp;->scala$util$MurmurHash$$h_$eq(I)V

    .line 52
    sget-object p1, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {p0}, Lscala/util/MurmurHash$mcD$sp;->scala$util$MurmurHash$$c()I

    move-result p2

    invoke-virtual {p1, p2}, Lscala/util/MurmurHash$;->nextMagicA(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/util/MurmurHash$mcD$sp;->scala$util$MurmurHash$$c_$eq(I)V

    .line 53
    sget-object p1, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {p0}, Lscala/util/MurmurHash$mcD$sp;->scala$util$MurmurHash$$k()I

    move-result p2

    invoke-virtual {p1, p2}, Lscala/util/MurmurHash$;->nextMagicB(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/util/MurmurHash$mcD$sp;->scala$util$MurmurHash$$k_$eq(I)V

    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p1}, Lscala/util/MurmurHash$mcD$sp;->scala$util$MurmurHash$$hashed_$eq(Z)V

    return-void
.end method
