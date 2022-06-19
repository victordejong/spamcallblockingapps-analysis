.class public final Lorg/apache/commons/lang3/builder/d;
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
            "Lorg/apache/commons/lang3/builder/e;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/d;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 540
    iput v0, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    const/16 v0, 0x25

    .line 548
    iput v0, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    const/16 v0, 0x11

    .line 549
    iput v0, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 540
    iput v0, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    .line 570
    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "HashCodeBuilder requires an odd initial value"

    invoke-static {v1, v4, v3}, Lorg/apache/commons/lang3/h;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 571
    rem-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "HashCodeBuilder requires an odd multiplier"

    invoke-static {v2, v1, v0}, Lorg/apache/commons/lang3/h;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 572
    iput p2, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    .line 573
    iput p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    return-void
.end method

.method private a(J)Lorg/apache/commons/lang3/builder/d;
    .locals 3

    .line 809
    iget v0, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    mul-int v0, v0, v1

    const/16 v1, 0x20

    shr-long v1, p1, v1

    xor-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr v0, p2

    iput v0, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    return-object p0
.end method

.method private a(S)Lorg/apache/commons/lang3/builder/d;
    .locals 2

    .line 921
    iget v0, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    return-object p0
.end method

.method private a([B)Lorg/apache/commons/lang3/builder/d;
    .locals 5

    if-nez p1, :cond_0

    .line 651
    iget p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    goto :goto_1

    .line 653
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p1, v1

    .line 1634
    iget v3, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    iget v4, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    mul-int v3, v3, v4

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method private a([C)Lorg/apache/commons/lang3/builder/d;
    .locals 5

    if-nez p1, :cond_0

    .line 685
    iget p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    goto :goto_1

    .line 687
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-char v2, p1, v1

    .line 1670
    iget v3, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    iget v4, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    mul-int v3, v3, v4

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method private a([D)Lorg/apache/commons/lang3/builder/d;
    .locals 4

    if-nez p1, :cond_0

    .line 718
    iget p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    goto :goto_1

    .line 720
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v2, p1, v1

    .line 1704
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/lang3/builder/d;->a(J)Lorg/apache/commons/lang3/builder/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method private a([F)Lorg/apache/commons/lang3/builder/d;
    .locals 5

    if-nez p1, :cond_0

    .line 752
    iget p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    goto :goto_1

    .line 754
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 1737
    iget v3, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    iget v4, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    mul-int v3, v3, v4

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method private a([I)Lorg/apache/commons/lang3/builder/d;
    .locals 5

    if-nez p1, :cond_0

    .line 786
    iget p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    goto :goto_1

    .line 788
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 1771
    iget v3, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    iget v4, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    mul-int v3, v3, v4

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method private a([J)Lorg/apache/commons/lang3/builder/d;
    .locals 4

    if-nez p1, :cond_0

    .line 824
    iget p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    goto :goto_1

    .line 826
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v2, p1, v1

    .line 827
    invoke-direct {p0, v2, v3}, Lorg/apache/commons/lang3/builder/d;->a(J)Lorg/apache/commons/lang3/builder/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method private a([Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/d;
    .locals 3

    if-nez p1, :cond_0

    .line 902
    iget p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    goto :goto_1

    .line 904
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 905
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/d;->a(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method private a([S)Lorg/apache/commons/lang3/builder/d;
    .locals 3

    if-nez p1, :cond_0

    .line 936
    iget p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    goto :goto_1

    .line 938
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-short v2, p1, v1

    .line 939
    invoke-direct {p0, v2}, Lorg/apache/commons/lang3/builder/d;->a(S)Lorg/apache/commons/lang3/builder/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method private a([Z)Lorg/apache/commons/lang3/builder/d;
    .locals 5

    if-nez p1, :cond_0

    .line 613
    iget p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    goto :goto_1

    .line 615
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-boolean v2, p1, v1

    .line 1598
    iget v3, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    iget v4, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    mul-int v3, v3, v4

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method private b(Ljava/lang/Object;)V
    .locals 1

    .line 869
    instance-of v0, p1, [J

    if-eqz v0, :cond_0

    .line 870
    check-cast p1, [J

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/d;->a([J)Lorg/apache/commons/lang3/builder/d;

    return-void

    .line 871
    :cond_0
    instance-of v0, p1, [I

    if-eqz v0, :cond_1

    .line 872
    check-cast p1, [I

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/d;->a([I)Lorg/apache/commons/lang3/builder/d;

    return-void

    .line 873
    :cond_1
    instance-of v0, p1, [S

    if-eqz v0, :cond_2

    .line 874
    check-cast p1, [S

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/d;->a([S)Lorg/apache/commons/lang3/builder/d;

    return-void

    .line 875
    :cond_2
    instance-of v0, p1, [C

    if-eqz v0, :cond_3

    .line 876
    check-cast p1, [C

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/d;->a([C)Lorg/apache/commons/lang3/builder/d;

    return-void

    .line 877
    :cond_3
    instance-of v0, p1, [B

    if-eqz v0, :cond_4

    .line 878
    check-cast p1, [B

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/d;->a([B)Lorg/apache/commons/lang3/builder/d;

    return-void

    .line 879
    :cond_4
    instance-of v0, p1, [D

    if-eqz v0, :cond_5

    .line 880
    check-cast p1, [D

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/d;->a([D)Lorg/apache/commons/lang3/builder/d;

    return-void

    .line 881
    :cond_5
    instance-of v0, p1, [F

    if-eqz v0, :cond_6

    .line 882
    check-cast p1, [F

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/d;->a([F)Lorg/apache/commons/lang3/builder/d;

    return-void

    .line 883
    :cond_6
    instance-of v0, p1, [Z

    if-eqz v0, :cond_7

    .line 884
    check-cast p1, [Z

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/d;->a([Z)Lorg/apache/commons/lang3/builder/d;

    return-void

    .line 887
    :cond_7
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/d;->a([Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/d;
    .locals 2

    if-nez p1, :cond_0

    .line 844
    iget p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    iget v0, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    goto :goto_0

    .line 847
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/d;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 852
    :cond_1
    iget v0, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/d;->c:I

    mul-int v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1968
    iget v0, p0, Lorg/apache/commons/lang3/builder/d;->a:I

    return v0
.end method
