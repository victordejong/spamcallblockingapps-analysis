.class public final Lscala/collection/BitSetLike$;
.super Ljava/lang/Object;
.source "BitSetLike.scala"


# static fields
.field public static final MODULE$:Lscala/collection/BitSetLike$;


# instance fields
.field private final LogWL:I

.field private final MaxSize:I

.field private final WordLength:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/BitSetLike$;

    invoke-direct {v0}, Lscala/collection/BitSetLike$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/BitSetLike$;->MODULE$:Lscala/collection/BitSetLike$;

    return-void
.end method

.method private final WordLength()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method


# virtual methods
.method public final LogWL()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final MaxSize()I
    .locals 1

    const/high16 v0, 0x2000000

    return v0
.end method

.method public updateArray([JIJ)[J
    .locals 10

    .line 233
    array-length v0, p1

    :cond_0
    :goto_0
    move v6, v0

    const-wide/16 v7, 0x0

    if-lez v6, :cond_1

    add-int/lit8 v0, v6, -0x1

    .line 234
    aget-wide v1, p1, v0

    cmp-long v3, v1, v7

    if-eqz v3, :cond_0

    cmp-long v1, p3, v7

    if-nez v1, :cond_1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    if-lt p2, v6, :cond_2

    cmp-long v0, p3, v7

    if-eqz v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    goto :goto_1

    :cond_2
    move v0, v6

    .line 237
    :goto_1
    new-array v9, v0, [J

    .line 238
    sget-object v1, Lscala/Array$;->MODULE$:Lscala/Array$;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v4, v9

    invoke-virtual/range {v1 .. v6}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge p2, v0, :cond_3

    .line 239
    aput-wide p3, v9, p2

    goto :goto_3

    .line 240
    :cond_3
    sget-object p1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    cmp-long p2, p3, v7

    if-nez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1, p2}, Lscala/Predef$;->assert(Z)V

    :goto_3
    return-object v9
.end method
