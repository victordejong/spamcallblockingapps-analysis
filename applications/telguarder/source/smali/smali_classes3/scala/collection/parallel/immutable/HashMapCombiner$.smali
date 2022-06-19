.class public final Lscala/collection/parallel/immutable/HashMapCombiner$;
.super Ljava/lang/Object;
.source "ParHashMap.scala"


# static fields
.field public static final MODULE$:Lscala/collection/parallel/immutable/HashMapCombiner$;


# instance fields
.field private final rootbits:I

.field private final rootsize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/immutable/HashMapCombiner$;

    invoke-direct {v0}, Lscala/collection/parallel/immutable/HashMapCombiner$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/parallel/immutable/HashMapCombiner$;->MODULE$:Lscala/collection/parallel/immutable/HashMapCombiner$;

    const/4 v0, 0x5

    .line 332
    iput v0, p0, Lscala/collection/parallel/immutable/HashMapCombiner$;->rootbits:I

    const/16 v0, 0x20

    .line 333
    iput v0, p0, Lscala/collection/parallel/immutable/HashMapCombiner$;->rootsize:I

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/parallel/immutable/HashMapCombiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/immutable/HashMapCombiner<",
            "TK;TV;>;"
        }
    .end annotation

    .line 330
    new-instance v0, Lscala/collection/parallel/immutable/HashMapCombiner$$anon$1;

    invoke-direct {v0}, Lscala/collection/parallel/immutable/HashMapCombiner$$anon$1;-><init>()V

    return-object v0
.end method

.method public rootbits()I
    .locals 1

    .line 332
    iget v0, p0, Lscala/collection/parallel/immutable/HashMapCombiner$;->rootbits:I

    return v0
.end method

.method public rootsize()I
    .locals 1

    .line 333
    iget v0, p0, Lscala/collection/parallel/immutable/HashMapCombiner$;->rootsize:I

    return v0
.end method
