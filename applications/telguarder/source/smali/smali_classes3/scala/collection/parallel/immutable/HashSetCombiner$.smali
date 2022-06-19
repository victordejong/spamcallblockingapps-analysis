.class public final Lscala/collection/parallel/immutable/HashSetCombiner$;
.super Ljava/lang/Object;
.source "ParHashSet.scala"


# static fields
.field public static final MODULE$:Lscala/collection/parallel/immutable/HashSetCombiner$;


# instance fields
.field private final rootbits:I

.field private final rootsize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/immutable/HashSetCombiner$;

    invoke-direct {v0}, Lscala/collection/parallel/immutable/HashSetCombiner$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/parallel/immutable/HashSetCombiner$;->MODULE$:Lscala/collection/parallel/immutable/HashSetCombiner$;

    const/4 v0, 0x5

    .line 221
    iput v0, p0, Lscala/collection/parallel/immutable/HashSetCombiner$;->rootbits:I

    const/16 v0, 0x20

    .line 222
    iput v0, p0, Lscala/collection/parallel/immutable/HashSetCombiner$;->rootsize:I

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/parallel/immutable/HashSetCombiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/immutable/HashSetCombiner<",
            "TT;>;"
        }
    .end annotation

    .line 219
    new-instance v0, Lscala/collection/parallel/immutable/HashSetCombiner$$anon$1;

    invoke-direct {v0}, Lscala/collection/parallel/immutable/HashSetCombiner$$anon$1;-><init>()V

    return-object v0
.end method

.method public rootbits()I
    .locals 1

    .line 221
    iget v0, p0, Lscala/collection/parallel/immutable/HashSetCombiner$;->rootbits:I

    return v0
.end method

.method public rootsize()I
    .locals 1

    .line 222
    iget v0, p0, Lscala/collection/parallel/immutable/HashSetCombiner$;->rootsize:I

    return v0
.end method
