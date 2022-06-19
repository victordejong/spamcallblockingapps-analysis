.class public final Lscala/annotation/elidable$;
.super Ljava/lang/Object;
.source "elidable.scala"


# static fields
.field public static final MODULE$:Lscala/annotation/elidable$;


# instance fields
.field private final ALL:I

.field private final ASSERTION:I

.field private final CONFIG:I

.field private final FINE:I

.field private final FINER:I

.field private final FINEST:I

.field private final INFO:I

.field private final MAXIMUM:I

.field private final MINIMUM:I

.field private final OFF:I

.field private final SEVERE:I

.field private final WARNING:I

.field private final byName:Lscala/collection/immutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/annotation/elidable$;

    invoke-direct {v0}, Lscala/annotation/elidable$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/annotation/elidable$;->MODULE$:Lscala/annotation/elidable$;

    .line 107
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0}, Lscala/Predef$;->Map()Lscala/collection/immutable/Map$;

    move-result-object v0

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v2, 0xc

    new-array v2, v2, [Lscala/Tuple2;

    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 108
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v4, "FINEST"

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x12c

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lscala/Tuple2;

    invoke-direct {v5, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v5, v2, v3

    .line 107
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 109
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v4, "FINER"

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x190

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lscala/Tuple2;

    invoke-direct {v5, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v5, v2, v3

    .line 107
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 110
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v4, "FINE"

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x1f4

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lscala/Tuple2;

    invoke-direct {v5, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v5, v2, v3

    .line 107
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 111
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v4, "CONFIG"

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x2bc

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lscala/Tuple2;

    invoke-direct {v5, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x3

    aput-object v5, v2, v3

    .line 107
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 112
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v4, "INFO"

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x320

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lscala/Tuple2;

    invoke-direct {v5, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x4

    aput-object v5, v2, v3

    .line 107
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 113
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v4, "WARNING"

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x384

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lscala/Tuple2;

    invoke-direct {v5, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x5

    aput-object v5, v2, v3

    .line 107
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 114
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v4, "SEVERE"

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lscala/Tuple2;

    invoke-direct {v5, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x6

    aput-object v5, v2, v3

    .line 107
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 115
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v4, "ASSERTION"

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x7d0

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lscala/Tuple2;

    invoke-direct {v5, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x7

    aput-object v5, v2, v3

    .line 107
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 116
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v4, "ALL"

    invoke-virtual {v3, v4}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lscala/Tuple2;

    invoke-direct {v6, v3, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x8

    aput-object v6, v2, v3

    .line 107
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 117
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v5, "OFF"

    invoke-virtual {v3, v5}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const v5, 0x7fffffff

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lscala/Tuple2;

    invoke-direct {v7, v3, v6}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x9

    aput-object v7, v2, v3

    .line 107
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 118
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v6, "MAXIMUM"

    invoke-virtual {v3, v6}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lscala/Tuple2;

    invoke-direct {v6, v3, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0xa

    aput-object v6, v2, v3

    .line 107
    sget-object v3, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    .line 119
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v5, "MINIMUM"

    invoke-virtual {v3, v5}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lscala/Tuple2;

    invoke-direct {v5, v3, v4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0xb

    aput-object v5, v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 107
    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Map$;->apply(Lscala/collection/Seq;)Lscala/collection/GenMap;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Map;

    iput-object v0, p0, Lscala/annotation/elidable$;->byName:Lscala/collection/immutable/Map;

    return-void
.end method


# virtual methods
.method public final ALL()I
    .locals 1

    const/high16 v0, -0x80000000

    return v0
.end method

.method public final ASSERTION()I
    .locals 1

    const/16 v0, 0x7d0

    return v0
.end method

.method public final CONFIG()I
    .locals 1

    const/16 v0, 0x2bc

    return v0
.end method

.method public final FINE()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public final FINER()I
    .locals 1

    const/16 v0, 0x190

    return v0
.end method

.method public final FINEST()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method public final INFO()I
    .locals 1

    const/16 v0, 0x320

    return v0
.end method

.method public final MAXIMUM()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public final MINIMUM()I
    .locals 1

    const/high16 v0, -0x80000000

    return v0
.end method

.method public final OFF()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public final SEVERE()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public final WARNING()I
    .locals 1

    const/16 v0, 0x384

    return v0
.end method

.method public byName()Lscala/collection/immutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lscala/annotation/elidable$;->byName:Lscala/collection/immutable/Map;

    return-object v0
.end method
