.class final Lkotlin/reflect/jvm/internal/impl/b/b/b$b;
.super Lkotlin/reflect/jvm/internal/impl/b/b/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;",
        ">",
        "Lkotlin/reflect/jvm/internal/impl/b/b/b$c<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final c:[Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I[Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TE;)V"
        }
    .end annotation

    .line 289
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/b/b/b$b;->a([Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;-><init>(IILkotlin/reflect/jvm/internal/impl/b/b/b$1;)V

    .line 290
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/b/b$b;->c:[Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;

    return-void
.end method

.method private static a([Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)I"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    .line 294
    array-length v1, p0

    sub-int/2addr v1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/16 v2, 0x1f

    :goto_0
    if-ltz v2, :cond_2

    shl-int v3, v0, v2

    and-int/2addr v3, v1

    if-eqz v3, :cond_1

    add-int/2addr v2, v0

    return v2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 299
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Empty enum: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "enumEntries"

    aput-object v2, p0, v1

    const-string v1, "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const-string v1, "bitWidth"

    aput-object v1, p0, v0

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 1000
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 1

    .line 285
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;

    .line 1318
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;->getNumber()I

    move-result p1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/b$b;->a:I

    shl-int/2addr p1, v0

    return p1
.end method

.method public final synthetic b(I)Ljava/lang/Object;
    .locals 5

    .line 2305
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/b$b;->b:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    .line 2306
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/b/b$b;->a:I

    shl-int/2addr v0, v1

    and-int/2addr p1, v0

    .line 2307
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/b$b;->a:I

    shr-int/2addr p1, v0

    .line 2308
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/b/b$b;->c:[Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2309
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;->getNumber()I

    move-result v4

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
