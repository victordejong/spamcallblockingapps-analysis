.class public final Lorg/apache/commons/lang3/builder/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lorg/apache/commons/lang3/d/b<",
            "Lorg/apache/commons/lang3/builder/e;",
            "Lorg/apache/commons/lang3/builder/e;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/b;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->c:Z

    .line 217
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->d:Z

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/b;->f:Ljava/lang/Class;

    .line 220
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/b;->g:[Ljava/lang/String;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/b;->e:Ljava/util/List;

    .line 231
    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/commons/lang3/d/b<",
            "Lorg/apache/commons/lang3/builder/e;",
            "Lorg/apache/commons/lang3/builder/e;",
            ">;>;"
        }
    .end annotation

    .line 127
    sget-object v0, Lorg/apache/commons/lang3/builder/b;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private a(BB)Lorg/apache/commons/lang3/builder/b;
    .locals 1

    .line 765
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 768
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0
.end method

.method private a(CC)Lorg/apache/commons/lang3/builder/b;
    .locals 1

    .line 750
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 753
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0
.end method

.method private a(DD)Lorg/apache/commons/lang3/builder/b;
    .locals 1

    .line 786
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-nez v0, :cond_0

    return-object p0

    .line 789
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/b;->a(JJ)Lorg/apache/commons/lang3/builder/b;

    move-result-object p1

    return-object p1
.end method

.method private a(FF)Lorg/apache/commons/lang3/builder/b;
    .locals 1

    .line 806
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-nez v0, :cond_0

    return-object p0

    .line 809
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/b;->a(II)Lorg/apache/commons/lang3/builder/b;

    move-result-object p1

    return-object p1
.end method

.method private a(II)Lorg/apache/commons/lang3/builder/b;
    .locals 1

    .line 720
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 723
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0
.end method

.method private a(JJ)Lorg/apache/commons/lang3/builder/b;
    .locals 1

    .line 705
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 708
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0
.end method

.method private a(SS)Lorg/apache/commons/lang3/builder/b;
    .locals 1

    .line 735
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 738
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0
.end method

.method private a(ZZ)Lorg/apache/commons/lang3/builder/b;
    .locals 1

    .line 820
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 823
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0
.end method

.method private a([B[B)Lorg/apache/commons/lang3/builder/b;
    .locals 3

    .line 996
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 1006
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 16140
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0

    .line 1010
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-eqz v1, :cond_4

    .line 1011
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/lang3/builder/b;->a(BB)Lorg/apache/commons/lang3/builder/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 15140
    :cond_5
    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0
.end method

.method private a([C[C)Lorg/apache/commons/lang3/builder/b;
    .locals 3

    .line 965
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 975
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 14140
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0

    .line 979
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-eqz v1, :cond_4

    .line 980
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/lang3/builder/b;->a(CC)Lorg/apache/commons/lang3/builder/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 13140
    :cond_5
    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0
.end method

.method private a([D[D)Lorg/apache/commons/lang3/builder/b;
    .locals 5

    .line 1027
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 1037
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 18140
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0

    .line 1041
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-eqz v1, :cond_4

    .line 1042
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/builder/b;->a(DD)Lorg/apache/commons/lang3/builder/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 17140
    :cond_5
    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0
.end method

.method private a([F[F)Lorg/apache/commons/lang3/builder/b;
    .locals 3

    .line 1058
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 1068
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 20140
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0

    .line 1072
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-eqz v1, :cond_4

    .line 1073
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/lang3/builder/b;->a(FF)Lorg/apache/commons/lang3/builder/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 19140
    :cond_5
    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0
.end method

.method private a([I[I)Lorg/apache/commons/lang3/builder/b;
    .locals 3

    .line 903
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 913
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 10140
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0

    .line 917
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-eqz v1, :cond_4

    .line 918
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/lang3/builder/b;->a(II)Lorg/apache/commons/lang3/builder/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 9140
    :cond_5
    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0
.end method

.method private a([J[J)Lorg/apache/commons/lang3/builder/b;
    .locals 5

    .line 872
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 882
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 8140
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0

    .line 886
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-eqz v1, :cond_4

    .line 887
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/builder/b;->a(JJ)Lorg/apache/commons/lang3/builder/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 7140
    :cond_5
    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0
.end method

.method private a([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/b;
    .locals 3

    .line 841
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 851
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 6140
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0

    .line 855
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-eqz v1, :cond_4

    .line 856
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang3/builder/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 5140
    :cond_5
    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0
.end method

.method private a([S[S)Lorg/apache/commons/lang3/builder/b;
    .locals 3

    .line 934
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 944
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 12140
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0

    .line 948
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-eqz v1, :cond_4

    .line 949
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/lang3/builder/b;->a(SS)Lorg/apache/commons/lang3/builder/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 11140
    :cond_5
    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0
.end method

.method private a([Z[Z)Lorg/apache/commons/lang3/builder/b;
    .locals 3

    .line 1089
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 1099
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 22140
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0

    .line 1103
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-eqz v1, :cond_4

    .line 1104
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/lang3/builder/b;->a(ZZ)Lorg/apache/commons/lang3/builder/b;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 21140
    :cond_5
    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/lang3/d/b<",
            "Lorg/apache/commons/lang3/builder/e;",
            "Lorg/apache/commons/lang3/builder/e;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Lorg/apache/commons/lang3/builder/e;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/builder/e;-><init>(Ljava/lang/Object;)V

    .line 142
    new-instance p0, Lorg/apache/commons/lang3/builder/e;

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/e;-><init>(Ljava/lang/Object;)V

    .line 143
    invoke-static {v0, p0}, Lorg/apache/commons/lang3/d/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/d/b;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 200
    invoke-static {}, Lorg/apache/commons/lang3/builder/b;->a()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/d/b;

    move-result-object p0

    .line 203
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 204
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 205
    sget-object p0, Lorg/apache/commons/lang3/builder/b;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/b;
    .locals 7

    .line 496
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_12

    if-nez p2, :cond_2

    goto/16 :goto_8

    .line 511
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 512
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 514
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 516
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 520
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 522
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    move-object v3, v1

    goto :goto_1

    :cond_5
    :goto_0
    move-object v3, v2

    .line 533
    :goto_1
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 534
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/b;

    goto/16 :goto_7

    .line 537
    :cond_6
    iget-object v4, p0, Lorg/apache/commons/lang3/builder/b;->e:Ljava/util/List;

    if-eqz v4, :cond_8

    .line 538
    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/b;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 539
    :cond_7
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    goto/16 :goto_7

    .line 2160
    :cond_8
    :goto_2
    invoke-static {}, Lorg/apache/commons/lang3/builder/b;->a()Ljava/util/Set;

    move-result-object v1

    .line 2161
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/d/b;

    move-result-object v2

    .line 2162
    invoke-virtual {v2}, Lorg/apache/commons/lang3/d/b;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/commons/lang3/d/b;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/commons/lang3/d/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/d/b;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v1, :cond_a

    .line 2165
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_a

    :cond_9
    const/4 v1, 0x1

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_f

    .line 2178
    :try_start_1
    invoke-static {}, Lorg/apache/commons/lang3/builder/b;->a()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_b

    .line 2180
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2181
    sget-object v2, Lorg/apache/commons/lang3/builder/b;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2183
    :cond_b
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/d/b;

    move-result-object v2

    .line 2184
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1579
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1580
    invoke-static {v1, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v2, 0x0

    .line 1581
    :goto_4
    array-length v4, v1

    if-ge v2, v4, :cond_e

    iget-boolean v4, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-eqz v4, :cond_e

    .line 1582
    aget-object v4, v1, v2

    .line 1583
    iget-object v5, p0, Lorg/apache/commons/lang3/builder/b;->g:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1584
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-boolean v5, p0, Lorg/apache/commons/lang3/builder/b;->c:Z

    if-nez v5, :cond_c

    .line 1585
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1586
    :cond_c
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_d

    const-class v5, Lorg/apache/commons/lang3/builder/c;

    .line 1587
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_d

    .line 1589
    :try_start_2
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lorg/apache/commons/lang3/builder/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/b;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 1593
    :catch_0
    :try_start_3
    new-instance v1, Ljava/lang/InternalError;

    const-string v2, "Unexpected IllegalAccessException"

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_d
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1598
    :cond_e
    :try_start_4
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/b;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :catchall_0
    move-exception v1

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/builder/b;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1599
    throw v1

    .line 542
    :cond_f
    :goto_6
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/b;->f:Ljava/lang/Class;

    if-eq v3, v1, :cond_10

    .line 543
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :cond_10
    :goto_7
    return-object p0

    .line 554
    :catch_1
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0

    .line 528
    :cond_11
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0

    .line 503
    :cond_12
    :goto_8
    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0
.end method

.method private e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 669
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    .line 4140
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-void

    .line 671
    :cond_0
    instance-of v0, p1, [J

    if-eqz v0, :cond_1

    .line 672
    check-cast p1, [J

    check-cast p2, [J

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/b;->a([J[J)Lorg/apache/commons/lang3/builder/b;

    return-void

    .line 673
    :cond_1
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    .line 674
    check-cast p1, [I

    check-cast p2, [I

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/b;->a([I[I)Lorg/apache/commons/lang3/builder/b;

    return-void

    .line 675
    :cond_2
    instance-of v0, p1, [S

    if-eqz v0, :cond_3

    .line 676
    check-cast p1, [S

    check-cast p2, [S

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/b;->a([S[S)Lorg/apache/commons/lang3/builder/b;

    return-void

    .line 677
    :cond_3
    instance-of v0, p1, [C

    if-eqz v0, :cond_4

    .line 678
    check-cast p1, [C

    check-cast p2, [C

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/b;->a([C[C)Lorg/apache/commons/lang3/builder/b;

    return-void

    .line 679
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 680
    check-cast p1, [B

    check-cast p2, [B

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/b;->a([B[B)Lorg/apache/commons/lang3/builder/b;

    return-void

    .line 681
    :cond_5
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    .line 682
    check-cast p1, [D

    check-cast p2, [D

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/b;->a([D[D)Lorg/apache/commons/lang3/builder/b;

    return-void

    .line 683
    :cond_6
    instance-of v0, p1, [F

    if-eqz v0, :cond_7

    .line 684
    check-cast p1, [F

    check-cast p2, [F

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/b;->a([F[F)Lorg/apache/commons/lang3/builder/b;

    return-void

    .line 685
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    .line 686
    check-cast p1, [Z

    check-cast p2, [Z

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/b;->a([Z[Z)Lorg/apache/commons/lang3/builder/b;

    return-void

    .line 689
    :cond_8
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/b;->a([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/b;
    .locals 2

    .line 633
    iget-boolean v0, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 643
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 644
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 647
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 650
    :cond_3
    iget-boolean v1, p0, Lorg/apache/commons/lang3/builder/b;->d:Z

    if-eqz v1, :cond_4

    invoke-static {v0}, Lorg/apache/commons/lang3/d;->b(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 651
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/b;

    goto :goto_0

    .line 653
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    :goto_0
    return-object p0

    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 3140
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/b;->a:Z

    return-object p0
.end method
