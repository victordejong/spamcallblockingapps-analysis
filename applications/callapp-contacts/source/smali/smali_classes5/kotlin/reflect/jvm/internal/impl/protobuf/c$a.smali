.class final Lkotlin/reflect/jvm/internal/impl/protobuf/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/protobuf/c;

.field private b:I

.field private final c:I


# direct methods
.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/c;)V
    .locals 1

    .line 138
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1112
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a:I

    .line 139
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c$a;->b:I

    .line 140
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->a()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/c;Lkotlin/reflect/jvm/internal/impl/protobuf/c$1;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/c;)V

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 3

    .line 153
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c$a;->b:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c$a;->c:I

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/c;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/c;->d:[B

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c$a;->b:I

    aget-byte v0, v0, v1

    return v0

    .line 154
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 144
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c$a;->b:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/c$a;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1149
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/c$a;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 160
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
