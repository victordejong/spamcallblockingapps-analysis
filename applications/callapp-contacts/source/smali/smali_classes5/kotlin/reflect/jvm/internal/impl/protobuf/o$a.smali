.class final Lkotlin/reflect/jvm/internal/impl/protobuf/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/protobuf/o;

.field private b:I

.field private final c:I


# direct methods
.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/o;)V
    .locals 1

    .line 314
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 315
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o$a;->b:I

    .line 316
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a()I

    move-result p1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/o;Lkotlin/reflect/jvm/internal/impl/protobuf/o$1;)V
    .locals 0

    .line 310
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/o$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/o;)V

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 3

    .line 330
    :try_start_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->d:[B

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o$a;->b:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 332
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final hasNext()Z
    .locals 2

    .line 320
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o$a;->b:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o$a;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1325
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/o$a;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 337
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
