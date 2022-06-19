.class final Lkotlin/reflect/jvm/internal/impl/protobuf/t;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/t$c;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;
    }
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private final d:I

.field private final e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private final f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private final g:I

.field private final h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-lez v1, :cond_0

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->a:[I

    const/4 v1, 0x0

    .line 108
    :goto_1
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->a:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V
    .locals 2

    .line 129
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;-><init>()V

    const/4 v0, 0x0

    .line 543
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->i:I

    .line 130
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 131
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 132
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v0

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->g:I

    .line 133
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->d:I

    .line 134
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->i()I

    move-result p1

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->i()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->h:I

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/t$1;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method static a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 6

    .line 153
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 155
    :goto_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 157
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v2

    if-eqz v2, :cond_3

    .line 160
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v2

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x80

    if-ge v2, v3, :cond_2

    .line 164
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    move-result-object p0

    goto/16 :goto_3

    :cond_2
    if-eqz v0, :cond_4

    .line 165
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v4

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v4, v3, :cond_4

    .line 177
    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    move-result-object p0

    .line 178
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-direct {p1, v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    :cond_3
    :goto_1
    move-object p0, p1

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    .line 179
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->i()I

    move-result v3

    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->i()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 1277
    iget v3, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->h:I

    .line 179
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->i()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 187
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-direct {p0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    .line 188
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-direct {p1, v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    goto :goto_1

    .line 192
    :cond_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->i()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->i()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 193
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->a:[I

    aget v0, v3, v0

    if-lt v2, v0, :cond_6

    .line 195
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    move-object p0, v0

    goto :goto_3

    .line 197
    :cond_6
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/t$1;)V

    .line 1609
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    .line 1610
    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    .line 1613
    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 1614
    :goto_2
    iget-object p1, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1615
    iget-object p1, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 1616
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/protobuf/t;

    invoke-direct {v2, p1, p0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/t$1;)V

    move-object p0, v2

    goto :goto_2

    :cond_7
    :goto_3
    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/t;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 70
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/protobuf/t;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 70
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method private static b(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/o;
    .locals 4

    .line 214
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v0

    .line 215
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v1

    add-int v2, v0, v1

    .line 216
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 217
    invoke-virtual {p0, v2, v3, v3, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b([BIII)V

    .line 218
    invoke-virtual {p1, v2, v3, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b([BIII)V

    .line 219
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;-><init>([B)V

    return-object p0
.end method

.method static synthetic b()[I
    .locals 1

    .line 70
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->a:[I

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 269
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->d:I

    return v0
.end method

.method protected final a(III)I
    .locals 2

    add-int v0, p2, p3

    .line 437
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->g:I

    if-gt v0, v1, :cond_0

    .line 438
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    .line 440
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v1, p2

    .line 443
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0, p1, p2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(III)I

    move-result p1

    .line 444
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(III)I

    move-result p1

    return p1
.end method

.method protected final a([BIII)V
    .locals 2

    add-int v0, p2, p4

    .line 360
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->g:I

    if-gt v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a([BIII)V

    return-void

    :cond_0
    if-lt p2, v1, :cond_1

    .line 363
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a([BIII)V

    return-void

    :cond_1
    sub-int/2addr v1, p2

    .line 367
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0, p1, p2, p3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a([BIII)V

    .line 368
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const/4 v0, 0x0

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-virtual {p2, p1, v0, p3, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a([BIII)V

    return-void
.end method

.method protected final b(III)I
    .locals 2

    add-int v0, p2, p3

    .line 568
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->g:I

    if-gt v0, v1, :cond_0

    .line 569
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    .line 571
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v1, p2

    .line 574
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0, p1, p2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b(III)I

    move-result p1

    .line 575
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b(III)I

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 421
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->d()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method final b(Ljava/io/OutputStream;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    .line 407
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->g:I

    if-gt v0, v1, :cond_0

    .line 408
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b(Ljava/io/OutputStream;II)V

    return-void

    :cond_0
    if-lt p2, v1, :cond_1

    .line 410
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b(Ljava/io/OutputStream;II)V

    return-void

    :cond_1
    sub-int/2addr v1, p2

    .line 413
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0, p1, p2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b(Ljava/io/OutputStream;II)V

    .line 414
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b(Ljava/io/OutputStream;II)V

    return-void
.end method

.method public final c()Lkotlin/reflect/jvm/internal/impl/protobuf/d$a;
    .locals 2

    .line 779
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/t;Lkotlin/reflect/jvm/internal/impl/protobuf/t$1;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 12

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 456
    :cond_0
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 460
    :cond_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 461
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->d:I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 464
    :cond_2
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->d:I

    if-nez v1, :cond_3

    return v0

    .line 473
    :cond_3
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->i:I

    if-eqz v1, :cond_4

    .line 474
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->k()I

    move-result v1

    if-eqz v1, :cond_4

    .line 475
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->i:I

    if-eq v3, v1, :cond_4

    return v2

    .line 2494
    :cond_4
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/t$1;)V

    .line 2495
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    .line 2498
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;

    invoke-direct {v5, p1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/d;Lkotlin/reflect/jvm/internal/impl/protobuf/t$1;)V

    .line 2499
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2503
    :goto_0
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a()I

    move-result v8

    sub-int/2addr v8, v3

    .line 2504
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a()I

    move-result v9

    sub-int/2addr v9, v6

    .line 2505
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-nez v3, :cond_5

    .line 2508
    invoke-virtual {v4, p1, v6, v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/o;II)Z

    move-result v11

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v4, v3, v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/o;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/o;II)Z

    move-result v11

    :goto_1
    if-nez v11, :cond_6

    return v2

    :cond_6
    add-int/2addr v7, v10

    .line 2516
    iget v11, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->d:I

    if-lt v7, v11, :cond_8

    if-ne v7, v11, :cond_7

    return v0

    .line 2520
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8
    if-ne v10, v8, :cond_9

    .line 2525
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    move-object v4, v3

    const/4 v3, 0x0

    goto :goto_2

    :cond_9
    add-int/2addr v3, v10

    :goto_2
    if-ne v10, v9, :cond_a

    .line 2531
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/o;

    const/4 v6, 0x0

    goto :goto_0

    :cond_a
    add-int/2addr v6, v10

    goto :goto_0
.end method

.method public final f()Z
    .locals 4

    .line 429
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->g:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(III)I

    move-result v0

    .line 430
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public final g()Lkotlin/reflect/jvm/internal/impl/protobuf/e;
    .locals 1

    .line 584
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$d;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/t;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Ljava/io/InputStream;)Lkotlin/reflect/jvm/internal/impl/protobuf/e;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 547
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->i:I

    if-nez v0, :cond_1

    .line 550
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->d:I

    const/4 v1, 0x0

    .line 551
    invoke-virtual {p0, v0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->b(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 555
    :cond_0
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->i:I

    :cond_1
    return v0
.end method

.method protected final i()I
    .locals 1

    .line 277
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->h:I

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/d$a;

    move-result-object v0

    return-object v0
.end method

.method protected final j()Z
    .locals 3

    .line 290
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->d:I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->a:[I

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->h:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final k()I
    .locals 1

    .line 562
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->i:I

    return v0
.end method
