.class public final Lcom/allinone/callerid/util/t9/e;
.super Ljava/lang/Object;
.source "T9Utils.java"


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:Lcom/allinone/callerid/util/t9/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/allinone/callerid/util/t9/b<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/allinone/callerid/util/t9/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/allinone/callerid/util/t9/b<",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xe

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/allinone/callerid/util/t9/e;->a:[C

    const/16 v0, 0x1a

    new-array v0, v0, [C

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/allinone/callerid/util/t9/e;->b:[C

    .line 3
    new-instance v0, Lcom/allinone/callerid/util/t9/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/allinone/callerid/util/t9/b;-><init>(I)V

    sput-object v0, Lcom/allinone/callerid/util/t9/e;->c:Lcom/allinone/callerid/util/t9/b;

    .line 4
    new-instance v0, Lcom/allinone/callerid/util/t9/b;

    invoke-direct {v0, v1}, Lcom/allinone/callerid/util/t9/b;-><init>(I)V

    sput-object v0, Lcom/allinone/callerid/util/t9/e;->d:Lcom/allinone/callerid/util/t9/b;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2cs
        0x2as
        0x23s
    .end array-data

    :array_1
    .array-data 2
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data
.end method

.method public static a(Ljava/lang/String;Lcom/allinone/callerid/util/t9/a;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/t9/e;->f()Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_6

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-lt v5, v6, :cond_5

    const/16 v6, 0x250

    if-lt v5, v6, :cond_5

    const/16 v6, 0x1e00

    if-gt v6, v5, :cond_0

    const/16 v6, 0x1eff

    if-ge v5, v6, :cond_0

    goto :goto_3

    .line 5
    :cond_0
    invoke-interface {p1, v5}, Lcom/allinone/callerid/util/t9/a;->a(C)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 6
    array-length v6, v5

    if-nez v6, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    array-length v6, v5

    if-ne v6, v4, :cond_2

    .line 8
    aget-object v4, v5, v2

    invoke-static {v4}, Lcom/allinone/callerid/util/t9/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/allinone/callerid/util/t9/e;->h(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_4

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/t9/e;->f()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 12
    array-length v7, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v5, v8

    .line 13
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 14
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {v9}, Lcom/allinone/callerid/util/t9/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/allinone/callerid/util/t9/e;->h(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 17
    :cond_3
    invoke-static {v6}, Lcom/allinone/callerid/util/t9/e;->l(Ljava/lang/StringBuilder;)V

    goto :goto_4

    :cond_4
    :goto_2
    const-string v4, " "

    .line 18
    invoke-static {v0, v4}, Lcom/allinone/callerid/util/t9/e;->h(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_4

    .line 19
    :cond_5
    :goto_3
    invoke-static {v5}, Lcom/allinone/callerid/util/t9/e;->d(C)C

    move-result v4

    invoke-static {v4}, Lcom/allinone/callerid/util/t9/e;->b(C)C

    move-result v4

    .line 20
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/allinone/callerid/util/t9/e;->h(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 21
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-static {v0}, Lcom/allinone/callerid/util/t9/e;->l(Ljava/lang/StringBuilder;)V

    return-object p0
.end method

.method static b(C)C
    .locals 0

    add-int/lit8 p0, p0, -0x23

    add-int/lit8 p0, p0, 0x43

    int-to-char p0, p0

    return p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/t9/e;->f()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-gt v4, v3, :cond_1

    const/16 v4, 0x5a

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0x61

    if-gt v4, v3, :cond_4

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_4

    .line 5
    :cond_2
    invoke-static {v3}, Lcom/allinone/callerid/util/t9/e;->d(C)C

    move-result v3

    if-nez v2, :cond_3

    .line 6
    invoke-static {v3}, Lcom/allinone/callerid/util/t9/e;->b(C)C

    move-result v3

    .line 7
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 p0, 0x20

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {v0}, Lcom/allinone/callerid/util/t9/e;->l(Ljava/lang/StringBuilder;)V

    return-object p0

    :cond_6
    :goto_1
    const-string p0, " "

    return-object p0
.end method

.method public static d(C)C
    .locals 2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_0

    .line 1
    sget-object v1, Lcom/allinone/callerid/util/t9/e;->b:[C

    sub-int/2addr p0, v0

    aget-char p0, v1, p0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_1

    .line 2
    sget-object v1, Lcom/allinone/callerid/util/t9/e;->b:[C

    sub-int/2addr p0, v0

    aget-char p0, v1, p0

    return p0

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/allinone/callerid/util/t9/e;->j(C)Z

    move-result v0

    if-eqz v0, :cond_2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static e()Ljava/util/BitSet;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/t9/e;->d:Lcom/allinone/callerid/util/t9/b;

    invoke-virtual {v0}, Lcom/allinone/callerid/util/t9/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    :goto_0
    return-object v0
.end method

.method static f()Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/t9/e;->c:Lcom/allinone/callerid/util/t9/b;

    invoke-virtual {v0}, Lcom/allinone/callerid/util/t9/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    return-object v0
.end method

.method static g(Ljava/lang/String;II)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    add-int/lit8 p2, v0, -0x1

    :cond_0
    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_3

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, p1, :cond_1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    .line 3
    invoke-static {v2}, Lcom/allinone/callerid/util/t9/e;->i(C)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private static h(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/16 v1, 0x3b

    .line 2
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 3
    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static i(C)Z
    .locals 1

    const/16 v0, 0x43

    if-lt p0, v0, :cond_0

    const/16 v0, 0x59

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static k(Ljava/util/BitSet;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/BitSet;->clear()V

    .line 2
    sget-object v0, Lcom/allinone/callerid/util/t9/e;->d:Lcom/allinone/callerid/util/t9/b;

    invoke-virtual {v0, p0}, Lcom/allinone/callerid/util/t9/b;->c(Ljava/lang/Object;)Z

    return-void
.end method

.method static l(Ljava/lang/StringBuilder;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2
    sget-object v0, Lcom/allinone/callerid/util/t9/e;->c:Lcom/allinone/callerid/util/t9/b;

    invoke-virtual {v0, p0}, Lcom/allinone/callerid/util/t9/b;->c(Ljava/lang/Object;)Z

    return-void
.end method
