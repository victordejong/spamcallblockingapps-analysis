.class final Lio/a/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/a/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/a/c$d<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic c:Z


# instance fields
.field final a:I

.field final b:[Lio/a/c$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/a/c$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 202
    const-class v0, Lio/a/c;

    const/4 v0, 0x1

    sput-boolean v0, Lio/a/c$b;->c:Z

    return-void
.end method

.method private constructor <init>(I[Lio/a/c$d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lio/a/c$d<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput p1, p0, Lio/a/c$b;->a:I

    .line 212
    iput-object p2, p0, Lio/a/c$b;->b:[Lio/a/c$d;

    .line 213
    iput p3, p0, Lio/a/c$b;->d:I

    return-void
.end method

.method private a(I)I
    .locals 1

    .line 296
    iget v0, p0, Lio/a/c$b;->a:I

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    return p1
.end method

.method private static a(II)I
    .locals 0

    ushr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1f

    const/4 p1, 0x1

    shl-int p0, p1, p0

    return p0
.end method

.method static a(Lio/a/c$d;ILio/a/c$d;II)Lio/a/c$d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/a/c$d<",
            "TK;TV;>;I",
            "Lio/a/c$d<",
            "TK;TV;>;II)",
            "Lio/a/c$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 263
    sget-boolean v0, Lio/a/c$b;->c:Z

    if-nez v0, :cond_1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 264
    :cond_1
    :goto_0
    invoke-static {p1, p4}, Lio/a/c$b;->a(II)I

    move-result v0

    .line 265
    invoke-static {p3, p4}, Lio/a/c$b;->a(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    add-int/lit8 p4, p4, 0x5

    .line 267
    invoke-static {p0, p1, p2, p3, p4}, Lio/a/c$b;->a(Lio/a/c$d;ILio/a/c$d;II)Lio/a/c$d;

    move-result-object p0

    new-array p1, v3, [Lio/a/c$d;

    aput-object p0, p1, v2

    .line 270
    new-instance p2, Lio/a/c$b;

    invoke-interface {p0}, Lio/a/c$d;->a()I

    move-result p0

    invoke-direct {p2, v0, p1, p0}, Lio/a/c$b;-><init>(I[Lio/a/c$d;I)V

    return-object p2

    :cond_2
    ushr-int/2addr p1, p4

    and-int/lit8 p1, p1, 0x1f

    ushr-int/2addr p3, p4

    and-int/lit8 p3, p3, 0x1f

    if-le p1, p3, :cond_3

    move-object v4, p2

    move-object p2, p0

    move-object p0, v4

    :cond_3
    const/4 p1, 0x2

    new-array p1, p1, [Lio/a/c$d;

    aput-object p0, p1, v2

    aput-object p2, p1, v3

    .line 280
    new-instance p3, Lio/a/c$b;

    or-int p4, v0, v1

    invoke-interface {p0}, Lio/a/c$d;->a()I

    move-result p0

    invoke-interface {p2}, Lio/a/c$d;->a()I

    move-result p2

    add-int/2addr p0, p2

    invoke-direct {p3, p4, p1, p0}, Lio/a/c$b;-><init>(I[Lio/a/c$d;I)V

    return-object p3
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 218
    iget v0, p0, Lio/a/c$b;->d:I

    return v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;II)Lio/a/c$d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)",
            "Lio/a/c$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 233
    invoke-static {p3, p4}, Lio/a/c$b;->a(II)I

    move-result v0

    .line 234
    invoke-direct {p0, v0}, Lio/a/c$b;->a(I)I

    move-result v1

    .line 235
    iget v2, p0, Lio/a/c$b;->a:I

    and-int v3, v2, v0

    if-nez v3, :cond_0

    or-int p3, v2, v0

    .line 239
    iget-object p4, p0, Lio/a/c$b;->b:[Lio/a/c$d;

    array-length v0, p4

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lio/a/c$d;

    const/4 v2, 0x0

    .line 240
    invoke-static {p4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    new-instance p4, Lio/a/c$c;

    invoke-direct {p4, p1, p2}, Lio/a/c$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p4, v0, v1

    .line 242
    iget-object p1, p0, Lio/a/c$b;->b:[Lio/a/c$d;

    add-int/lit8 p2, v1, 0x1

    array-length p4, p1

    sub-int/2addr p4, v1

    invoke-static {p1, v1, v0, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    new-instance p1, Lio/a/c$b;

    .line 1218
    iget p2, p0, Lio/a/c$b;->d:I

    add-int/lit8 p2, p2, 0x1

    .line 248
    invoke-direct {p1, p3, v0, p2}, Lio/a/c$b;-><init>(I[Lio/a/c$d;I)V

    return-object p1

    .line 251
    :cond_0
    iget-object v0, p0, Lio/a/c$b;->b:[Lio/a/c$d;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/a/c$d;

    .line 252
    iget-object v2, p0, Lio/a/c$b;->b:[Lio/a/c$d;

    aget-object v2, v2, v1

    add-int/lit8 p4, p4, 0x5

    .line 253
    invoke-interface {v2, p1, p2, p3, p4}, Lio/a/c$d;->a(Ljava/lang/Object;Ljava/lang/Object;II)Lio/a/c$d;

    move-result-object p1

    aput-object p1, v0, v1

    .line 2218
    iget p1, p0, Lio/a/c$b;->d:I

    .line 255
    aget-object p2, v0, v1

    invoke-interface {p2}, Lio/a/c$d;->a()I

    move-result p2

    add-int/2addr p1, p2

    .line 256
    iget-object p2, p0, Lio/a/c$b;->b:[Lio/a/c$d;

    aget-object p2, p2, v1

    invoke-interface {p2}, Lio/a/c$d;->a()I

    move-result p2

    sub-int/2addr p1, p2

    .line 257
    new-instance p2, Lio/a/c$b;

    iget p3, p0, Lio/a/c$b;->a:I

    invoke-direct {p2, p3, v0, p1}, Lio/a/c$b;-><init>(I[Lio/a/c$d;I)V

    return-object p2
.end method

.method public final a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)TV;"
        }
    .end annotation

    .line 223
    invoke-static {p2, p3}, Lio/a/c$b;->a(II)I

    move-result v0

    .line 224
    iget v1, p0, Lio/a/c$b;->a:I

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 227
    :cond_0
    invoke-direct {p0, v0}, Lio/a/c$b;->a(I)I

    move-result v0

    .line 228
    iget-object v1, p0, Lio/a/c$b;->b:[Lio/a/c$d;

    aget-object v0, v1, v0

    add-int/lit8 p3, p3, 0x5

    invoke-interface {v0, p1, p2, p3}, Lio/a/c$d;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompressedIndex("

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lio/a/c$b;->a:I

    .line 288
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "bitmap=%s "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v1, p0, Lio/a/c$b;->b:[Lio/a/c$d;

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 290
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ")"

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
