.class public final Lorg/jsoup/nodes/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Iterable<",
        "Lorg/jsoup/nodes/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field public a:I

.field public b:[Ljava/lang/String;

.field public c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 43
    sput-object v0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lorg/jsoup/nodes/b;->a:I

    .line 48
    sget-object v0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 53
    iget v0, p0, Lorg/jsoup/nodes/b;->a:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/jsoup/a/c;->a(Z)V

    .line 54
    iget-object v0, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    array-length v1, v0

    if-lt v1, p1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 58
    iget v1, p0, Lorg/jsoup/nodes/b;->a:I

    mul-int/lit8 v2, v1, 0x2

    :cond_2
    if-le p1, v2, :cond_3

    goto :goto_1

    :cond_3
    move p1, v2

    .line 62
    :goto_1
    invoke-static {v0, p1}, Lorg/jsoup/nodes/b;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/jsoup/nodes/b;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lorg/jsoup/nodes/b;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/b;->b(I)V

    return-void
.end method

.method private static a([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2

    .line 68
    new-array v0, p1, [Ljava/lang/String;

    .line 69
    array-length v1, p0

    .line 70
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    .line 69
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static synthetic b(Lorg/jsoup/nodes/b;)I
    .locals 0

    .line 34
    iget p0, p0, Lorg/jsoup/nodes/b;->a:I

    return p0
.end method

.method private b(I)V
    .locals 4

    .line 185
    iget v0, p0, Lorg/jsoup/nodes/b;->a:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/jsoup/a/c;->b(Z)V

    .line 186
    iget v0, p0, Lorg/jsoup/nodes/b;->a:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 188
    iget-object v2, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    iget-object v2, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    :cond_1
    iget p1, p0, Lorg/jsoup/nodes/b;->a:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/jsoup/nodes/b;->a:I

    .line 192
    iget-object v0, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 193
    iget-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aput-object v1, v0, p1

    return-void
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .line 349
    invoke-static {}, Lorg/jsoup/b/c;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 351
    :try_start_0
    new-instance v1, Lorg/jsoup/nodes/f;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/jsoup/nodes/f;-><init>(Ljava/lang/String;)V

    .line 1568
    iget-object v1, v1, Lorg/jsoup/nodes/f;->a:Lorg/jsoup/nodes/f$a;

    .line 351
    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/b;->a(Ljava/lang/Appendable;Lorg/jsoup/nodes/f$a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    invoke-static {v0}, Lorg/jsoup/b/c;->a(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 353
    new-instance v1, Lorg/jsoup/SerializationException;

    invoke-direct {v1, v0}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 522
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 526
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x2f

    if-ne p0, v1, :cond_0

    return v2

    :cond_0
    return v0
.end method

.method static synthetic j(Ljava/lang/String;)Z
    .locals 0

    .line 34
    invoke-static {p0}, Lorg/jsoup/nodes/b;->i(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 260
    :goto_0
    iget v2, p0, Lorg/jsoup/nodes/b;->a:I

    if-ge v0, v2, :cond_1

    .line 261
    iget-object v2, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/jsoup/nodes/b;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method final a(Ljava/lang/String;)I
    .locals 2

    .line 75
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 76
    :goto_0
    iget v1, p0, Lorg/jsoup/nodes/b;->a:I

    if-ge v0, v1, :cond_1

    .line 77
    iget-object v1, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final a(Lorg/jsoup/c/f;)I
    .locals 6

    .line 441
    invoke-virtual {p0}, Lorg/jsoup/nodes/b;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2039
    :cond_0
    iget-boolean p1, p1, Lorg/jsoup/c/f;->d:Z

    const/4 v0, 0x0

    .line 445
    :goto_0
    iget-object v2, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    .line 446
    :goto_1
    iget-object v4, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 447
    aget-object v5, v4, v3

    if-eqz v5, :cond_4

    if-eqz p1, :cond_1

    .line 449
    aget-object v5, v4, v1

    aget-object v4, v4, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget-object v4, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object v5, v4, v1

    aget-object v4, v4, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 451
    invoke-direct {p0, v3}, Lorg/jsoup/nodes/b;->b(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;
    .locals 2

    .line 123
    iget v0, p0, Lorg/jsoup/nodes/b;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/b;->a(I)V

    .line 124
    iget-object v0, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/nodes/b;->a:I

    aput-object p1, v0, v1

    .line 125
    iget-object p1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 126
    iput v1, p0, Lorg/jsoup/nodes/b;->a:I

    return-object p0
.end method

.method public final a(Lorg/jsoup/nodes/a;)Lorg/jsoup/nodes/b;
    .locals 2

    .line 177
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 1056
    iget-object v0, p1, Lorg/jsoup/nodes/a;->a:Ljava/lang/String;

    .line 1080
    iget-object v1, p1, Lorg/jsoup/nodes/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lorg/jsoup/nodes/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-virtual {p0, v0, v1}, Lorg/jsoup/nodes/b;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    .line 179
    iput-object p0, p1, Lorg/jsoup/nodes/a;->c:Lorg/jsoup/nodes/b;

    return-object p0
.end method

.method final a(Ljava/lang/Appendable;Lorg/jsoup/nodes/f$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    iget v0, p0, Lorg/jsoup/nodes/b;->a:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 361
    iget-object v2, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/jsoup/nodes/b;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 365
    iget-object v2, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 366
    iget-object v3, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    const/16 v4, 0x20

    .line 367
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 370
    invoke-static {v2, v3, p2}, Lorg/jsoup/nodes/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/f$a;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "=\""

    .line 371
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    move-object v5, v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move-object v6, p2

    .line 372
    invoke-static/range {v4 .. v9}, Lorg/jsoup/nodes/i;->a(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/f$a;ZZZ)V

    const/16 v2, 0x22

    .line 373
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lorg/jsoup/nodes/b;)V
    .locals 2

    .line 279
    invoke-virtual {p1}, Lorg/jsoup/nodes/b;->a()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget v0, p0, Lorg/jsoup/nodes/b;->a:I

    iget v1, p1, Lorg/jsoup/nodes/b;->a:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/b;->a(I)V

    .line 283
    invoke-virtual {p1}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/a;

    .line 285
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/b;->a(Lorg/jsoup/nodes/a;)Lorg/jsoup/nodes/b;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final b(Ljava/lang/String;)I
    .locals 2

    .line 84
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 85
    :goto_0
    iget v1, p0, Lorg/jsoup/nodes/b;->a:I

    if-ge v0, v1, :cond_1

    .line 86
    iget-object v1, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;
    .locals 2

    .line 137
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 140
    iget-object p1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aput-object p2, p1, v0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    :goto_0
    return-object p0
.end method

.method public final b()Z
    .locals 1

    .line 271
    iget v0, p0, Lorg/jsoup/nodes/b;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lorg/jsoup/nodes/b;
    .locals 3

    .line 416
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/b;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    iget v1, p0, Lorg/jsoup/nodes/b;->a:I

    iput v1, v0, Lorg/jsoup/nodes/b;->a:I

    .line 421
    iget-object v1, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/nodes/b;->a:I

    invoke-static {v1, v2}, Lorg/jsoup/nodes/b;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    .line 422
    iget-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/nodes/b;->a:I

    invoke-static {v1, v2}, Lorg/jsoup/nodes/b;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    .line 418
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lorg/jsoup/nodes/b;->c()Lorg/jsoup/nodes/b;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 104
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lorg/jsoup/nodes/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    .line 430
    :goto_0
    iget v1, p0, Lorg/jsoup/nodes/b;->a:I

    if-ge v0, v1, :cond_0

    .line 431
    iget-object v1, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-static {v2}, Lorg/jsoup/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 114
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->b(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lorg/jsoup/nodes/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 391
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 393
    :cond_1
    check-cast p1, Lorg/jsoup/nodes/b;

    .line 395
    iget v1, p0, Lorg/jsoup/nodes/b;->a:I

    iget v2, p1, Lorg/jsoup/nodes/b;->a:I

    if-eq v1, v2, :cond_2

    return v0

    .line 396
    :cond_2
    iget-object v1, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    iget-object v2, p1, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 397
    :cond_3
    iget-object v0, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    iget-object p1, p1, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 1

    .line 222
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 1

    .line 231
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->b(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 406
    iget v0, p0, Lorg/jsoup/nodes/b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 407
    iget-object v1, p0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 408
    iget-object v1, p0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jsoup/nodes/a;",
            ">;"
        }
    .end annotation

    .line 291
    new-instance v0, Lorg/jsoup/nodes/b$1;

    invoke-direct {v0, p0}, Lorg/jsoup/nodes/b$1;-><init>(Lorg/jsoup/nodes/b;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 380
    invoke-direct {p0}, Lorg/jsoup/nodes/b;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
