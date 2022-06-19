.class public final Lscala/util/MurmurHash$$anonfun$1;
.super Lscala/runtime/AbstractFunction1$mcII$sp;
.source "MurmurHash.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/MurmurHash$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcII$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)I
    .locals 1

    .line 104
    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {v0, p1}, Lscala/util/MurmurHash$;->nextMagicA(I)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/util/MurmurHash$$anonfun$1;->apply(I)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public apply$mcII$sp(I)I
    .locals 1

    .line 104
    sget-object v0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    invoke-virtual {v0, p1}, Lscala/util/MurmurHash$;->nextMagicA(I)I

    move-result p1

    return p1
.end method
