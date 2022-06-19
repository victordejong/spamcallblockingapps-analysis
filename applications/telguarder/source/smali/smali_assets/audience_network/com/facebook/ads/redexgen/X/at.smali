.class public Lcom/facebook/ads/redexgen/X/at;
.super Lcom/facebook/ads/redexgen/X/4K;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4W;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/3y;,
        Lcom/facebook/ads/redexgen/X/3x;,
        Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;,
        Lcom/facebook/ads/redexgen/X/3z;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

.field public A04:Lcom/facebook/ads/redexgen/X/44;

.field public A05:Z

.field public A06:I

.field public A07:Lcom/facebook/ads/redexgen/X/3z;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Lcom/facebook/ads/redexgen/X/3x;

.field public final A0E:Lcom/facebook/ads/redexgen/X/3y;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/at;->A0X()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/at;->A0W()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 67896
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/at;-><init>(Landroid/content/Context;IZ)V

    .line 67897
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    .line 67898
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4K;-><init>()V

    .line 67899
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0A:Z

    .line 67900
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    .line 67901
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0C:Z

    .line 67902
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/at;->A0B:Z

    .line 67903
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/at;->A01:I

    .line 67904
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/at;->A02:I

    .line 67905
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    .line 67906
    new-instance v0, Lcom/facebook/ads/redexgen/X/3x;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3x;-><init>(Lcom/facebook/ads/redexgen/X/at;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    .line 67907
    new-instance v0, Lcom/facebook/ads/redexgen/X/3y;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3y;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0E:Lcom/facebook/ads/redexgen/X/3y;

    .line 67908
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/at;->A06:I

    .line 67909
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/at;->A2F(I)V

    .line 67910
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/at;->A0j(Z)V

    .line 67911
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4K;->A1W(Z)V

    .line 67912
    return-void
.end method

.method private final A05(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 5

    .line 67913
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 67914
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/at;
    .end local p1    # null:I
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/4S;
    .end local p3    # null:Lcom/facebook/ads/redexgen/X/4Z;
    :cond_0
    return v4

    .line 67915
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A0B:Z

    .line 67916
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2E()V

    .line 67917
    if-lez p1, :cond_2

    const/4 v3, 0x1

    .line 67918
    .local p0, "layoutDirection":I
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 67919
    .local p3, "absDy":I
    invoke-direct {p0, v3, v2, v0, p3}, Lcom/facebook/ads/redexgen/X/at;->A0a(IIZLcom/facebook/ads/redexgen/X/4Z;)V

    .line 67920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    .line 67921
    invoke-direct {p0, p2, v0, p3, v4}, Lcom/facebook/ads/redexgen/X/at;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 67922
    .local p2, "consumed":I
    if-gez v1, :cond_3

    .line 67923
    return v4

    .line 67924
    :cond_2
    const/4 v3, -0x1

    goto :goto_0

    .line 67925
    :cond_3
    if-le v2, v1, :cond_4

    mul-int/2addr v3, v1

    .line 67926
    .local p1, "scrolled":I
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    neg-int v0, v3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A0J(I)V

    .line 67927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v3, v0, Lcom/facebook/ads/redexgen/X/3z;->A04:I

    .line 67928
    return v3

    .line 67929
    :cond_4
    move v3, p1

    goto :goto_1
.end method

.method private A06(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Z)I
    .locals 3

    .line 67930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v0

    sub-int/2addr v0, p1

    .line 67931
    .local p0, "gap":I
    .local p1, "fixOffset":I
    if-lez v0, :cond_1

    .line 67932
    neg-int v0, v0

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/at;->A05(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    neg-int v2, v0

    .line 67933
    add-int/2addr p1, v2

    .line 67934
    if-eqz p4, :cond_0

    .line 67935
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v1

    sub-int/2addr v1, p1

    .line 67936
    if-lez v1, :cond_0

    .line 67937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0J(I)V

    .line 67938
    add-int/2addr v1, v2

    return v1

    .line 67939
    :cond_0
    return v2

    .line 67940
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private A08(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Z)I
    .locals 3

    .line 67941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    sub-int v0, p1, v0

    .line 67942
    .local p0, "gap":I
    .local p1, "fixOffset":I
    if-lez v0, :cond_1

    .line 67943
    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/at;->A05(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    neg-int v2, v0

    .line 67944
    add-int/2addr p1, v2

    .line 67945
    if-eqz p4, :cond_0

    .line 67946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    sub-int/2addr p1, v0

    .line 67947
    if-lez p1, :cond_0

    .line 67948
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    neg-int v0, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A0J(I)V

    .line 67949
    sub-int/2addr v2, p1

    return v2

    .line 67950
    :cond_0
    return v2

    .line 67951
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I
    .locals 7

    .line 67952
    iget v5, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 67953
    .local p0, "start":I
    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_1

    .line 67954
    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    if-gez v0, :cond_0

    .line 67955
    iget v1, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    .line 67956
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/at;->A0g(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;)V

    .line 67957
    :cond_1
    iget v3, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    add-int/2addr v3, v0

    .line 67958
    .local p1, "remainingSpace":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/at;->A0E:Lcom/facebook/ads/redexgen/X/3y;

    .line 67959
    .local p3, "layoutChunkResult":Lcom/facebook/ads/redexgen/X/3y;
    :cond_2
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A09:Z

    if-nez v0, :cond_3

    if-lez v3, :cond_4

    :cond_3
    invoke-virtual {p2, p3}, Lcom/facebook/ads/redexgen/X/3z;->A06(Lcom/facebook/ads/redexgen/X/4Z;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67960
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/3y;->A00()V

    .line 67961
    invoke-virtual {p0, p1, p3, p2, v2}, Lcom/facebook/ads/redexgen/X/at;->A2I(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/3y;)V

    .line 67962
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/3y;->A01:Z

    if-eqz v0, :cond_5

    .line 67963
    :cond_4
    :goto_0
    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    sub-int/2addr v5, v0

    return v5

    .line 67964
    :cond_5
    iget v6, p2, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    iget v1, v2, Lcom/facebook/ads/redexgen/X/3y;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A05:I

    mul-int/2addr v1, v0

    add-int/2addr v6, v1

    iput v6, p2, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 67965
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/3y;->A03:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A08:Ljava/util/List;

    if-nez v0, :cond_6

    .line 67966
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-nez v0, :cond_7

    .line 67967
    :cond_6
    iget v1, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3y;->A00:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 67968
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3y;->A00:I

    sub-int/2addr v3, v0

    .line 67969
    :cond_7
    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    if-eq v0, v4, :cond_9

    .line 67970
    iget v1, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3y;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    .line 67971
    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    if-gez v0, :cond_8

    .line 67972
    iget v1, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    .line 67973
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/at;->A0g(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;)V

    .line 67974
    :cond_9
    if-eqz p4, :cond_2

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/3y;->A02:Z

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 7

    .line 67975
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-nez v0, :cond_0

    .line 67976
    const/4 v0, 0x0

    return v0

    .line 67977
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2E()V

    .line 67978
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 67979
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/at;->A0S(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0B:Z

    xor-int/2addr v0, v1

    .line 67980
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/at;->A0R(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/at;->A0B:Z

    .line 67981
    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/4d;->A00(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/44;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4K;Z)I

    move-result v0

    return v0
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 8

    .line 67982
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-nez v0, :cond_1

    .line 67983
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const-string v1, "J9JFedtgHh7lzsKv2wGVe5URJzbGPRgH"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    .line 67984
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2E()V

    .line 67985
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 67986
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/at;->A0S(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0B:Z

    xor-int/2addr v0, v1

    .line 67987
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/at;->A0R(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/at;->A0B:Z

    iget-boolean v7, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    .line 67988
    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/4d;->A02(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/44;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4K;ZZ)I

    move-result v0

    return v0
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 7

    .line 67989
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-nez v0, :cond_0

    .line 67990
    const/4 v0, 0x0

    return v0

    .line 67991
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2E()V

    .line 67992
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 67993
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/at;->A0S(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0B:Z

    xor-int/2addr v0, v1

    .line 67994
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/at;->A0R(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/at;->A0B:Z

    .line 67995
    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/4d;->A01(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/44;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4K;Z)I

    move-result v0

    return v0
.end method

.method private final A0D(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 67996
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0B()I

    move-result v0

    return v0

    .line 67998
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private A0E()Landroid/view/View;
    .locals 1

    .line 67999
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private A0F()Landroid/view/View;
    .locals 1

    .line 68000
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0G(II)Landroid/view/View;
    .locals 3

    .line 68001
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2E()V

    .line 68002
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    .line 68003
    .local p0, "next":I
    :goto_0
    if-nez v0, :cond_2

    .line 68004
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 68005
    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 68006
    .local p1, "preferredBoundsFlag":I
    .local p2, "acceptableBoundsFlag":I
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68007
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 68008
    const/16 v2, 0x4104

    .line 68009
    const/16 v1, 0x4004

    .line 68010
    :goto_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A00:I

    if-nez v0, :cond_3

    .line 68011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A04:Lcom/facebook/ads/redexgen/X/4h;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/4h;->A00(IIII)Landroid/view/View;

    move-result-object v0

    .line 68012
    :goto_2
    return-object v0

    .line 68013
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A05:Lcom/facebook/ads/redexgen/X/4h;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/4h;->A00(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 68014
    :cond_4
    const/16 v2, 0x1041

    .line 68015
    const/16 v1, 0x1001

    goto :goto_1
.end method

.method private final A0H(IIZZ)Landroid/view/View;
    .locals 6

    .line 68016
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2E()V

    .line 68017
    .local p0, "preferredBoundsFlag":I
    const/4 v3, 0x0

    .line 68018
    .local p1, "acceptableBoundsFlag":I
    if-eqz p3, :cond_1

    .line 68019
    const/16 v4, 0x6003

    .line 68020
    :goto_0
    if-eqz p4, :cond_0

    .line 68021
    const/16 v3, 0x140

    .line 68022
    :cond_0
    iget v5, p0, Lcom/facebook/ads/redexgen/X/at;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68023
    :cond_1
    const/16 v4, 0x140

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const-string v1, "CO2lCdhiUyNnJNyVLVKK7uQ85cne8EHP"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v5, :cond_3

    .line 68024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A04:Lcom/facebook/ads/redexgen/X/4h;

    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/facebook/ads/redexgen/X/4h;->A00(IIII)Landroid/view/View;

    move-result-object v0

    .line 68025
    :goto_1
    return-object v0

    .line 68026
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4K;->A05:Lcom/facebook/ads/redexgen/X/4h;

    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/facebook/ads/redexgen/X/4h;->A00(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private A0I(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 2

    .line 68027
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/at;->A0G(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 6

    .line 68028
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v4

    move-object v2, p2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/at;->A2D(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 2

    .line 68029
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/at;->A0G(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 6

    .line 68030
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    move-object v2, p2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v5

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/at;->A2D(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0N(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 1

    .line 68031
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/at;->A0I(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 68032
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/at;->A0L(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 1

    .line 68033
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/at;->A0L(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 68034
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/at;->A0I(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 1

    .line 68035
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/at;->A0K(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 68036
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/at;->A0M(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0Q(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 1

    .line 68037
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/at;->A0M(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 68038
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/at;->A0K(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private A0R(ZZ)Landroid/view/View;
    .locals 2

    .line 68039
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    if-eqz v0, :cond_0

    .line 68040
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/at;->A0H(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 68041
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/at;->A0H(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0S(ZZ)Landroid/view/View;
    .locals 2

    .line 68042
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    if-eqz v0, :cond_0

    .line 68043
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/at;->A0H(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 68044
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/at;->A0H(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final A0T()Lcom/facebook/ads/redexgen/X/3z;
    .locals 1

    .line 68045
    new-instance v0, Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3z;-><init>()V

    return-object v0
.end method

.method public static A0U(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/at;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0V()V
    .locals 2

    .line 68046
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A00:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2K()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68047
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0A:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    .line 68048
    :goto_0
    return-void

    .line 68049
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0A:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    goto :goto_0
.end method

.method public static A0W()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/at;->A0F:[B

    return-void

    :array_0
    .array-data 1
        0x1ft
        0x18t
        0x0t
        0x17t
        0x1at
        0x1ft
        0x12t
        0x56t
        0x19t
        0x4t
        0x1ft
        0x13t
        0x18t
        0x2t
        0x17t
        0x2t
        0x1ft
        0x19t
        0x18t
        0x4ct
    .end array-data
.end method

.method public static A0X()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZTDwmEtle1avZIcEXO6Ngzge8j05pfT9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "s1YfUPq4amp3sGXTr0KOnMWCCCkrB2x5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "RLSriKm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hA4l3MFFurEjuKvfb479JjwTp2cnC09n"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5GFF521rSn4TdhEStccPhauxYrt7NMVp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XQN2s9DMc1xKucEpv2CitIAcNHBR8E7y"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8ubGCSX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EFysGv6XChRnXfWxG2n7d2ksHTdYT6om"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    return-void
.end method

.method private A0Y(II)V
    .locals 3

    .line 68050
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 68051
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 68052
    :goto_0
    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    .line 68053
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput p1, v1, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 68054
    iput v2, v1, Lcom/facebook/ads/redexgen/X/3z;->A05:I

    .line 68055
    iput p2, v1, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 68056
    const/high16 v0, -0x80000000

    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    .line 68057
    return-void

    .line 68058
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private A0Z(II)V
    .locals 3

    .line 68059
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    sub-int v0, p2, v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 68060
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput p1, v1, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 68061
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 68062
    :goto_0
    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    .line 68063
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v2, v1, Lcom/facebook/ads/redexgen/X/3z;->A05:I

    .line 68064
    iput p2, v1, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 68065
    const/high16 v0, -0x80000000

    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    .line 68066
    return-void

    .line 68067
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private A0a(IIZLcom/facebook/ads/redexgen/X/4Z;)V
    .locals 5

    .line 68068
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/at;->A0k()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A09:Z

    .line 68069
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/at;->A0D(Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 68070
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput p1, v2, Lcom/facebook/ads/redexgen/X/3z;->A05:I

    .line 68071
    const/4 v4, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 68072
    iget v1, v2, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A08()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 68073
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/at;->A0E()Landroid/view/View;

    move-result-object v3

    .line 68074
    .local p0, "child":Landroid/view/View;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    if-eqz v0, :cond_1

    .line 68075
    :goto_0
    iput v4, v1, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    .line 68076
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 68077
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 68078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68079
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v0

    sub-int/2addr v2, v0

    .line 68080
    .end local p0    # "child":Landroid/view/View;
    .local p1, "scrollingOffset":I
    .end local p0
    .restart local p1    # "scrollingOffset":I
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput p2, v1, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 68081
    if-eqz p3, :cond_0

    .line 68082
    iget v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 68083
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v2, v0, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    .line 68084
    return-void

    .line 68085
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 68086
    .end local p1    # "scrollingOffset":I
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/at;->A0F()Landroid/view/View;

    move-result-object v3

    .line 68087
    .restart local p0    # "child":Landroid/view/View;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 68088
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    .line 68089
    :cond_3
    iput v4, v1, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    .line 68090
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 68091
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 68092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v0

    neg-int v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68093
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1
.end method

.method private A0b(Lcom/facebook/ads/redexgen/X/3x;)V
    .locals 2

    .line 68094
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/at;->A0Y(II)V

    .line 68095
    return-void
.end method

.method private A0c(Lcom/facebook/ads/redexgen/X/3x;)V
    .locals 2

    .line 68096
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/at;->A0Z(II)V

    .line 68097
    return-void
.end method

.method private A0d(Lcom/facebook/ads/redexgen/X/4S;I)V
    .locals 6

    .line 68098
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v5

    .line 68099
    .local p0, "childCount":I
    if-gez p2, :cond_0

    .line 68100
    return-void

    .line 68101
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A06()I

    move-result v3

    sub-int/2addr v3, p2

    .line 68102
    .local p1, "limit":I
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const-string v1, "5eQap7viEGWOuRbzagNYDGjkAWEMIhVp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v4, :cond_5

    .line 68103
    const/4 v4, 0x0

    .local p2, "i":I
    :goto_0
    if-ge v4, v5, :cond_8

    .line 68104
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v1

    .line 68105
    .local v5, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v0

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68106
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0H(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_3

    .line 68107
    .restart local v5    # "child":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const-string v1, "EiwXPaP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "4OvxlWI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-direct {p0, p1, v3, v4}, Lcom/facebook/ads/redexgen/X/at;->A0f(Lcom/facebook/ads/redexgen/X/4S;II)V

    .line 68108
    return-void

    .line 68109
    .end local v5    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, v3, v4}, Lcom/facebook/ads/redexgen/X/at;->A0f(Lcom/facebook/ads/redexgen/X/4S;II)V

    .line 68110
    return-void

    .line 68111
    :cond_5
    add-int/lit8 v2, v5, -0x1

    .restart local p2    # "i":I
    :goto_1
    if-ltz v2, :cond_8

    .line 68112
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v1

    .line 68113
    .restart local v5    # "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v0

    if-lt v0, v3, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68114
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0H(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_7

    .line 68115
    .restart local v5    # "child":Landroid/view/View;
    :cond_6
    add-int/lit8 v0, v5, -0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/at;->A0f(Lcom/facebook/ads/redexgen/X/4S;II)V

    .line 68116
    return-void

    .line 68117
    .end local v5    # "child":Landroid/view/View;
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 68118
    .end local p2    # "i":I
    .end local v5
    :cond_8
    return-void
.end method

.method private A0e(Lcom/facebook/ads/redexgen/X/4S;I)V
    .locals 7

    .line 68119
    if-gez p2, :cond_0

    .line 68120
    return-void

    .line 68121
    .local p0, "limit":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v3

    .line 68122
    .local p1, "childCount":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    if-eqz v0, :cond_4

    .line 68123
    add-int/lit8 v4, v3, -0x1

    .local p2, "i":I
    :goto_0
    if-ltz v4, :cond_7

    .line 68124
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v5

    .line 68125
    .local p2, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    sget-object v1, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const-string v1, "CCkneFsBnjHsOQTiipl2DNgji2H70UcR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68126
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/44;->A0G(Landroid/view/View;)I

    move-result v0

    if-le v0, p2, :cond_3

    .line 68127
    .restart local p2    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v3, -0x1

    invoke-direct {p0, p1, v0, v4}, Lcom/facebook/ads/redexgen/X/at;->A0f(Lcom/facebook/ads/redexgen/X/4S;II)V

    .line 68128
    return-void

    .line 68129
    .end local p2    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 68130
    :cond_4
    const/4 v2, 0x0

    .restart local p2    # "child":Landroid/view/View;
    :goto_1
    if-ge v2, v3, :cond_7

    .line 68131
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v1

    .line 68132
    .restart local p2    # "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68133
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0G(Landroid/view/View;)I

    move-result v0

    if-le v0, p2, :cond_6

    .line 68134
    .restart local p2    # "child":Landroid/view/View;
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/at;->A0f(Lcom/facebook/ads/redexgen/X/4S;II)V

    .line 68135
    return-void

    .line 68136
    .end local p2    # "child":Landroid/view/View;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 68137
    .end local p2
    .end local p2
    :cond_7
    return-void
.end method

.method private A0f(Lcom/facebook/ads/redexgen/X/4S;II)V
    .locals 1

    .line 68138
    if-ne p2, p3, :cond_0

    .line 68139
    return-void

    .line 68140
    :cond_0
    if-le p3, p2, :cond_1

    .line 68141
    add-int/lit8 v0, p3, -0x1

    .local p0, "i":I
    :goto_0
    if-lt v0, p2, :cond_2

    .line 68142
    invoke-virtual {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A15(ILcom/facebook/ads/redexgen/X/4S;)V

    .line 68143
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 68144
    .restart local p0    # "i":I
    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    .line 68145
    invoke-virtual {p0, p2, p1}, Lcom/facebook/ads/redexgen/X/4K;->A15(ILcom/facebook/ads/redexgen/X/4S;)V

    .line 68146
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 68147
    .end local p0    # "i":I
    :cond_2
    return-void
.end method

.method private A0g(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;)V
    .locals 2

    .line 68148
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A0B:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A09:Z

    if-eqz v0, :cond_1

    .line 68149
    :cond_0
    return-void

    .line 68150
    :cond_1
    iget v1, p2, Lcom/facebook/ads/redexgen/X/3z;->A05:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 68151
    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/at;->A0d(Lcom/facebook/ads/redexgen/X/4S;I)V

    .line 68152
    :goto_0
    return-void

    .line 68153
    :cond_2
    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/at;->A0e(Lcom/facebook/ads/redexgen/X/4S;I)V

    goto :goto_0
.end method

.method private A0h(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;II)V
    .locals 13

    .line 68154
    move-object v3, p0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4Z;->A08()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68155
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A27()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68156
    :cond_0
    return-void

    .line 68157
    :cond_1
    const/4 v5, 0x0

    .local v1, "scrapExtraStart":I
    const/4 v4, 0x0

    .line 68158
    .local v1, "scrapExtraEnd":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4S;->A0K()Ljava/util/List;

    move-result-object v8

    .line 68159
    .local v3, "scrapList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 68160
    .local p1, "scrapSize":I
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v7

    .line 68161
    .local v0, "firstChildPos":I
    const/4 v6, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v6, v9, :cond_6

    .line 68162
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/ads/redexgen/X/4c;

    .line 68163
    .local v0, "scrap":Lcom/facebook/ads/redexgen/X/4c;
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68164
    .end local v0    # "scrap":Lcom/facebook/ads/redexgen/X/4c;
    .end local v0
    .end local v5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 68165
    :cond_2
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4c;->A0J()I

    move-result v0

    .line 68166
    .local v0, "position":I
    const/4 v12, 0x1

    if-ge v0, v7, :cond_4

    const/4 v10, 0x1

    :goto_2
    iget-boolean v1, v3, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    const/4 v0, -0x1

    if-eq v10, v1, :cond_3

    .line 68167
    const/4 v12, -0x1

    .line 68168
    .local v5, "direction":I
    :cond_3
    if-ne v12, v0, :cond_5

    .line 68169
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A0D(Landroid/view/View;)I

    move-result v0

    add-int/2addr v5, v0

    goto :goto_1

    .line 68170
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 68171
    :cond_5
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4c;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/44;->A0D(Landroid/view/View;)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_1

    .line 68172
    .end local v0    # "position":I
    :cond_6
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput-object v8, v0, Lcom/facebook/ads/redexgen/X/3z;->A08:Ljava/util/List;

    .line 68173
    if-lez v5, :cond_7

    .line 68174
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/at;->A0F()Landroid/view/View;

    move-result-object v0

    .line 68175
    .local v0, "anchor":Landroid/view/View;
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    move/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/at;->A0Z(II)V

    .line 68176
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v5, v0, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 68177
    iput v2, v0, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 68178
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3z;->A05()V

    .line 68179
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {v3, p1, v0, p2, v2}, Lcom/facebook/ads/redexgen/X/at;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    .line 68180
    :cond_7
    if-lez v4, :cond_8

    .line 68181
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/at;->A0E()Landroid/view/View;

    move-result-object v0

    .line 68182
    .restart local v0    # "anchor":Landroid/view/View;
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    move/from16 v1, p4

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/at;->A0Y(II)V

    .line 68183
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v4, v0, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 68184
    iput v2, v0, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 68185
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3z;->A05()V

    .line 68186
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {v3, p1, v0, p2, v2}, Lcom/facebook/ads/redexgen/X/at;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    .line 68187
    :cond_8
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A08:Ljava/util/List;

    .line 68188
    return-void
.end method

.method private A0i(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3x;)V
    .locals 1

    .line 68189
    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/at;->A0m(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3x;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68190
    return-void

    .line 68191
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/at;->A0l(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3x;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68192
    return-void

    .line 68193
    :cond_1
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/3x;->A03()V

    .line 68194
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0C:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    .line 68195
    return-void

    .line 68196
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0j(Z)V
    .locals 1

    .line 68197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/at;->A23(Ljava/lang/String;)V

    .line 68198
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0A:Z

    if-ne p1, v0, :cond_0

    .line 68199
    return-void

    .line 68200
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/at;->A0A:Z

    .line 68201
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0z()V

    .line 68202
    return-void
.end method

.method private final A0k()Z
    .locals 1

    .line 68203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A09()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68204
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A06()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 68205
    :goto_0
    return v0

    .line 68206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0l(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3x;)Z
    .locals 5

    .line 68207
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 68208
    return v4

    .line 68209
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0t()Landroid/view/View;

    move-result-object v1

    .line 68210
    .local p0, "focused":Landroid/view/View;
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p3, v1, p2}, Lcom/facebook/ads/redexgen/X/3x;->A07(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4Z;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68211
    invoke-virtual {p3, v1}, Lcom/facebook/ads/redexgen/X/3x;->A06(Landroid/view/View;)V

    .line 68212
    return v3

    .line 68213
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/at;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0C:Z

    if-eq v1, v0, :cond_2

    .line 68214
    return v4

    .line 68215
    :cond_2
    iget-boolean v0, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    if-eqz v0, :cond_7

    .line 68216
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/at;->A0P(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v2

    .line 68217
    .local p3, "referenceChild":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_8

    .line 68218
    invoke-virtual {p3, v2}, Lcom/facebook/ads/redexgen/X/3x;->A05(Landroid/view/View;)V

    .line 68219
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A27()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68221
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68222
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68223
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68224
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    if-ge v1, v0, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 68225
    .local p1, "notVisible":Z
    :cond_4
    if-eqz v4, :cond_5

    .line 68226
    iget-boolean v0, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    if-eqz v0, :cond_6

    .line 68227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v0

    .line 68228
    :goto_1
    iput v0, p3, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    .line 68229
    .end local p1    # "notVisible":Z
    :cond_5
    return v3

    .line 68230
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    goto :goto_1

    .line 68231
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/at;->A0Q(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 68232
    :cond_8
    return v4
.end method

.method private A0m(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3x;)Z
    .locals 7

    .line 68233
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v6, p0, Lcom/facebook/ads/redexgen/X/at;->A01:I

    const/4 v5, -0x1

    if-ne v6, v5, :cond_1

    .line 68234
    :cond_0
    return v2

    .line 68235
    :cond_1
    const/high16 v4, -0x80000000

    sget-object v1, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_12

    sget-object v3, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const-string v1, "iFmIDoufW7PPC7ZEj7Y5tPHllsDSURNN"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    if-ltz v6, :cond_2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    if-lt v6, v0, :cond_3

    .line 68236
    :cond_2
    iput v5, p0, Lcom/facebook/ads/redexgen/X/at;->A01:I

    .line 68237
    iput v4, p0, Lcom/facebook/ads/redexgen/X/at;->A02:I

    .line 68238
    return v2

    .line 68239
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A01:I

    iput v0, p2, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    .line 68240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    iput-boolean v0, p2, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    .line 68242
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    if-eqz v0, :cond_4

    .line 68243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    .line 68244
    :goto_0
    return v3

    .line 68245
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    goto :goto_0

    .line 68246
    :cond_5
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A02:I

    if-ne v0, v4, :cond_f

    .line 68247
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A01:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/at;->A1r(I)Landroid/view/View;

    move-result-object v4

    .line 68248
    .local p0, "child":Landroid/view/View;
    if-eqz v4, :cond_9

    .line 68249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/44;->A0D(Landroid/view/View;)I

    move-result v1

    .line 68250
    .local v0, "childSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0B()I

    move-result v0

    if-le v1, v0, :cond_6

    .line 68251
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/3x;->A03()V

    .line 68252
    return v3

    .line 68253
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68254
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    sub-int/2addr v1, v0

    .line 68255
    .local v2, "startGap":I
    if-gez v1, :cond_8

    .line 68256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    iput v0, p2, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    .line 68257
    iput-boolean v2, p2, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_7

    .line 68258
    sget-object v2, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const-string v1, "BfWLqmz6tLXTBl9sOf8GvQUpsUyqil7O"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const-string v1, "F1yYn32nqotC7GL2fjmWFlYeH2UBHhCV"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 68259
    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68260
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 68261
    .local p1, "endGap":I
    if-gez v1, :cond_d

    .line 68262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v0

    iput v0, p2, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    .line 68263
    iput-boolean v3, p2, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    .line 68264
    return v3

    .line 68265
    :cond_9
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-lez v0, :cond_b

    .line 68266
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v1

    .line 68267
    .local v0, "pos":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A01:I

    if-ge v0, v1, :cond_c

    const/4 v1, 0x1

    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    if-ne v1, v0, :cond_a

    const/4 v2, 0x1

    :cond_a
    iput-boolean v2, p2, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    .line 68268
    .end local v0    # "pos":I
    :cond_b
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/3x;->A03()V

    goto :goto_3

    .line 68269
    :cond_c
    const/4 v1, 0x0

    goto :goto_1

    .line 68270
    :cond_d
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    if-eqz v0, :cond_e

    .line 68271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68272
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A05()I

    move-result v0

    add-int/2addr v1, v0

    .line 68273
    :goto_2
    iput v1, p2, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    .line 68274
    .end local p1    # "endGap":I
    .end local v0
    .end local v2    # "startGap":I
    :goto_3
    return v3

    .line 68275
    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v1

    goto :goto_2

    .line 68276
    .end local p0    # "child":Landroid/view/View;
    :cond_f
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    iput-boolean v0, p2, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    .line 68277
    if-eqz v0, :cond_11

    .line 68278
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    sget-object v1, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const-string v1, "6FIelR57229tmCeHfVqBadRckpOvBeMr"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A02:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    goto :goto_4

    .line 68279
    :cond_11
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A02:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    .line 68280
    :goto_4
    return v3

    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public A1i(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 2

    .line 68281
    iget v1, p0, Lcom/facebook/ads/redexgen/X/at;->A00:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 68282
    const/4 v0, 0x0

    return v0

    .line 68283
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/at;->A05(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    return v0
.end method

.method public A1j(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 68284
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A00:I

    if-nez v0, :cond_0

    .line 68285
    const/4 v0, 0x0

    return v0

    .line 68286
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/at;->A05(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    return v0
.end method

.method public final A1k(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 68287
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/at;->A0A(Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    return v0
.end method

.method public final A1l(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 68288
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/at;->A0B(Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    return v0
.end method

.method public final A1m(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 68289
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/at;->A0C(Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    return v0
.end method

.method public final A1n(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 68290
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/at;->A0A(Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    return v0
.end method

.method public final A1o(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 68291
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/at;->A0B(Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    return v0
.end method

.method public final A1p(Lcom/facebook/ads/redexgen/X/4Z;)I
    .locals 1

    .line 68292
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/at;->A0C(Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v0

    return v0
.end method

.method public final A1q()Landroid/os/Parcelable;
    .locals 4

    .line 68293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 68294
    new-instance v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v1, v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;)V

    new-instance v0, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;-><init>(Landroid/os/Parcelable;)V

    return-object v0

    .line 68295
    :cond_0
    new-instance v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v3}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 68296
    .local p0, "state":Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-lez v0, :cond_2

    .line 68297
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2E()V

    .line 68298
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/at;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    xor-int/2addr v1, v0

    .line 68299
    .local v0, "didLayoutFromEnd":Z
    iput-boolean v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    .line 68300
    if-eqz v1, :cond_1

    .line 68301
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/at;->A0E()Landroid/view/View;

    move-result-object v2

    .line 68302
    .local v1, "refChild":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68303
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    .line 68304
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    .line 68305
    .end local v1    # "refChild":Landroid/view/View;
    :goto_0
    new-instance v0, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-direct {v0, v3}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;-><init>(Landroid/os/Parcelable;)V

    return-object v0

    .line 68306
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/at;->A0F()Landroid/view/View;

    move-result-object v1

    .line 68307
    .restart local v1    # "refChild":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    .line 68308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68309
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    goto :goto_0

    .line 68310
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    goto :goto_0
.end method

.method public final A1r(I)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 68311
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v1

    .line 68312
    .local p0, "childCount":I
    if-nez v1, :cond_0

    .line 68313
    const/4 v0, 0x0

    return-object v0

    .line 68314
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    .line 68315
    .local p1, "firstChild":I
    sub-int v0, p1, v0

    .line 68316
    .local v1, "viewPosition":I
    if-ltz v0, :cond_1

    if-ge v0, v1, :cond_1

    .line 68317
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v1

    .line 68318
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 68319
    return-object v1

    .line 68320
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A1r(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public A1s(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;
    .locals 5

    .line 68321
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/at;->A0V()V

    .line 68322
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 68323
    return-object v4

    .line 68324
    :cond_0
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/at;->A2C(I)I

    move-result v3

    .line 68325
    .local p0, "layoutDir":I
    const/high16 v2, -0x80000000

    if-ne v3, v2, :cond_1

    .line 68326
    return-object v4

    .line 68327
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2E()V

    .line 68328
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2E()V

    .line 68329
    const v1, 0x3eaaaaab

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0B()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 68330
    .local p3, "maxScroll":I
    const/4 v0, 0x0

    invoke-direct {p0, v3, v1, v0, p4}, Lcom/facebook/ads/redexgen/X/at;->A0a(IIZLcom/facebook/ads/redexgen/X/4Z;)V

    .line 68331
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v2, v1, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    .line 68332
    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A0B:Z

    .line 68333
    const/4 v0, 0x1

    invoke-direct {p0, p3, v1, p4, v0}, Lcom/facebook/ads/redexgen/X/at;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    .line 68334
    const/4 v0, -0x1

    if-ne v3, v0, :cond_3

    .line 68335
    invoke-direct {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/at;->A0O(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v2

    .line 68336
    .local p4, "nextCandidate":Landroid/view/View;
    .restart local p4    # "nextCandidate":Landroid/view/View;
    :goto_0
    if-ne v3, v0, :cond_2

    .line 68337
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/at;->A0F()Landroid/view/View;

    move-result-object v1

    .line 68338
    .local p2, "nextFocus":Landroid/view/View;
    .restart local p2    # "nextFocus":Landroid/view/View;
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68339
    if-nez v2, :cond_4

    .line 68340
    return-object v4

    .line 68341
    .end local p2    # "nextFocus":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/at;->A0E()Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 68342
    .end local p4    # "nextCandidate":Landroid/view/View;
    :cond_3
    invoke-direct {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/at;->A0N(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 68343
    :cond_4
    return-object v1

    .line 68344
    :cond_5
    return-object v2
.end method

.method public A1t()Lcom/facebook/ads/redexgen/X/4L;
    .locals 2

    .line 68345
    const/4 v1, -0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/4L;-><init>(II)V

    return-object v0
.end method

.method public A1u(I)V
    .locals 1

    .line 68346
    iput p1, p0, Lcom/facebook/ads/redexgen/X/at;->A01:I

    .line 68347
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/at;->A02:I

    .line 68348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 68349
    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    .line 68350
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0z()V

    .line 68351
    return-void
.end method

.method public final A1v(IILcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/4I;)V
    .locals 3

    .line 68352
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A00:I

    if-nez v0, :cond_1

    .line 68353
    .local p0, "delta":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 68354
    .end local p2    # null:I
    .end local p3    # null:Lcom/facebook/ads/redexgen/X/4Z;
    :cond_0
    return-void

    .line 68355
    :cond_1
    move p1, p2

    goto :goto_0

    .line 68356
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2E()V

    .line 68357
    const/4 v2, 0x1

    if-lez p1, :cond_3

    const/4 v1, 0x1

    .line 68358
    .local p2, "layoutDirection":I
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 68359
    .local p3, "absDy":I
    invoke-direct {p0, v1, v0, v2, p3}, Lcom/facebook/ads/redexgen/X/at;->A0a(IIZLcom/facebook/ads/redexgen/X/4Z;)V

    .line 68360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-virtual {p0, p3, v0, p4}, Lcom/facebook/ads/redexgen/X/at;->A2J(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4I;)V

    .line 68361
    return-void

    .line 68362
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public final A1w(ILcom/facebook/ads/redexgen/X/4I;)V
    .locals 5

    .line 68363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v4, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68364
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v1, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    .line 68365
    .local p0, "fromEnd":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v2, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    .line 68366
    .local v0, "anchorPos":I
    .restart local v0    # "anchorPos":I
    :goto_0
    if-eqz v1, :cond_0

    .line 68367
    .local p2, "direction":I
    .local v4, "targetPos":I
    :goto_1
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A06:I

    if-ge v1, v0, :cond_4

    .line 68368
    if-ltz v2, :cond_4

    if-ge v2, p1, :cond_4

    .line 68369
    invoke-interface {p2, v2, v4}, Lcom/facebook/ads/redexgen/X/4I;->A3G(II)V

    .line 68370
    add-int/2addr v2, v3

    .line 68371
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 68372
    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 68373
    .end local p0    # "fromEnd":Z
    .end local v0    # "anchorPos":I
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/at;->A0V()V

    .line 68374
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    .line 68375
    .restart local p0    # "fromEnd":Z
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A01:I

    if-ne v0, v3, :cond_3

    .line 68376
    if-eqz v1, :cond_2

    add-int/lit8 v2, p1, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 68377
    .end local v0
    :cond_3
    iget v2, p0, Lcom/facebook/ads/redexgen/X/at;->A01:I

    goto :goto_0

    .line 68378
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method public final A1x(Landroid/os/Parcelable;)V
    .locals 2

    .line 68379
    instance-of v0, p1, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    if-nez v0, :cond_0

    .line 68380
    return-void

    .line 68381
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 68382
    .local p0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_1

    .line 68383
    return-void

    .line 68384
    :cond_1
    check-cast p1, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;->unwrap(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    .line 68385
    .local p1, "state":Landroid/os/Parcelable;
    instance-of v0, v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    .line 68386
    check-cast v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    .line 68387
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0z()V

    .line 68388
    :cond_2
    return-void
.end method

.method public final A1y(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 68389
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A1y(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 68390
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-lez v0, :cond_0

    .line 68391
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A29()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_1

    .line 68392
    sget-object v2, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const-string v1, "JM0e54P"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "62qYDCA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2A()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 68393
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1z(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 9

    .line 68394
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v4, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A01:I

    if-eq v0, v4, :cond_1

    .line 68395
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    if-nez v0, :cond_1

    .line 68396
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A1J(Lcom/facebook/ads/redexgen/X/4S;)V

    .line 68397
    return-void

    .line 68398
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/at;->A01:I

    .line 68400
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2E()V

    .line 68401
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    sget-object v1, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_17

    sget-object v2, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const-string v1, "TEU8GGg"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "lg12FnG"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v5, Lcom/facebook/ads/redexgen/X/3z;->A0B:Z

    .line 68402
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/at;->A0V()V

    .line 68403
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0t()Landroid/view/View;

    move-result-object v5

    .line 68404
    .local p0, "focused":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/3x;->A03:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A01:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_15

    .line 68405
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3x;->A04()V

    .line 68406
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/at;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0C:Z

    xor-int/2addr v1, v0

    iput-boolean v1, v5, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    .line 68407
    invoke-direct {p0, p1, p2, v5}, Lcom/facebook/ads/redexgen/X/at;->A0i(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3x;)V

    .line 68408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/3x;->A03:Z

    .line 68409
    :cond_4
    :goto_0
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/at;->A0D(Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v6

    .line 68410
    .local v0, "extra":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A04:I

    if-ltz v0, :cond_14

    .line 68411
    .local v0, "extraForEnd":I
    const/4 v7, 0x0

    .line 68412
    .local v0, "extraForStart":I
    .restart local v0    # "extraForStart":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    add-int/2addr v7, v0

    .line 68413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A08()I

    move-result v0

    add-int/2addr v6, v0

    .line 68414
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v5, p0, Lcom/facebook/ads/redexgen/X/at;->A01:I

    if-eq v5, v4, :cond_5

    iget v1, p0, Lcom/facebook/ads/redexgen/X/at;->A02:I

    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_5

    .line 68415
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/at;->A1r(I)Landroid/view/View;

    move-result-object v1

    .line 68416
    .local v0, "existing":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 68417
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    if-eqz v0, :cond_13

    .line 68418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68419
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v5, v0

    .line 68420
    .local v0, "current":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A02:I

    sub-int/2addr v5, v0

    .line 68421
    .local v0, "upcomingOffset":I
    .restart local v0    # "upcomingOffset":I
    :goto_2
    if-lez v5, :cond_12

    .line 68422
    add-int/2addr v7, v5

    .line 68423
    .end local v0    # "upcomingOffset":I
    .end local v0
    .end local v0
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    if-eqz v0, :cond_10

    .line 68424
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    if-eqz v0, :cond_6

    const/4 v4, 0x1

    .line 68425
    .restart local p1    # null:Lcom/facebook/ads/redexgen/X/4S;
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/facebook/ads/redexgen/X/at;->A2H(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3x;I)V

    .line 68426
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A1I(Lcom/facebook/ads/redexgen/X/4S;)V

    .line 68427
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/at;->A0k()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A09:Z

    .line 68428
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/3z;->A0A:Z

    .line 68429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/3x;->A02:Z

    if-eqz v0, :cond_d

    .line 68430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/at;->A0c(Lcom/facebook/ads/redexgen/X/3x;)V

    .line 68431
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v7, v0, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 68432
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/at;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    .line 68433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 68434
    .local v0, "startOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v7, v0, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 68435
    .local v0, "firstElement":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    if-lez v0, :cond_7

    .line 68436
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    sget-object v1, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_c

    sget-object v4, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const-string v1, "MJWLhmn"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    const-string v1, "Xdeja1C"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    iget v0, v8, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    add-int/2addr v6, v0

    .line 68437
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/at;->A0b(Lcom/facebook/ads/redexgen/X/3x;)V

    .line 68438
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v6, v4, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 68439
    iget v1, v4, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    add-int/2addr v1, v0

    iput v1, v4, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 68440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/at;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    .line 68441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 68442
    .local v0, "endOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    if-lez v0, :cond_8

    .line 68443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 68444
    invoke-direct {p0, v7, v5}, Lcom/facebook/ads/redexgen/X/at;->A0Z(II)V

    .line 68445
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 68446
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/at;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    .line 68447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 68448
    .end local v0    # "endOffset":I
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-lez v0, :cond_9

    .line 68449
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0C:Z

    xor-int/2addr v1, v0

    if-eqz v1, :cond_b

    .line 68450
    invoke-direct {p0, v6, p1, p2, v2}, Lcom/facebook/ads/redexgen/X/at;->A06(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    move-result v0

    .line 68451
    .local v4, "fixOffset":I
    add-int/2addr v5, v0

    .line 68452
    add-int/2addr v6, v0

    .line 68453
    invoke-direct {p0, v5, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/at;->A08(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    move-result v0

    .line 68454
    .end local v4    # "fixOffset":I
    .local p2, "fixOffset":I
    add-int/2addr v5, v0

    .line 68455
    add-int/2addr v6, v0

    .line 68456
    .end local p2    # "fixOffset":I
    .end local p2
    :cond_9
    :goto_7
    invoke-direct {p0, p1, p2, v5, v6}, Lcom/facebook/ads/redexgen/X/at;->A0h(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;II)V

    .line 68457
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4Z;->A07()Z

    move-result v0

    if-nez v0, :cond_a

    .line 68458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0I()V

    .line 68459
    :goto_8
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0C:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A08:Z

    .line 68460
    return-void

    .line 68461
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3x;->A04()V

    goto :goto_8

    .line 68462
    :cond_b
    invoke-direct {p0, v5, p1, p2, v2}, Lcom/facebook/ads/redexgen/X/at;->A08(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    move-result v0

    .line 68463
    .restart local v4    # "fixOffset":I
    add-int/2addr v5, v0

    .line 68464
    add-int/2addr v6, v0

    .line 68465
    invoke-direct {p0, v6, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/at;->A06(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    move-result v0

    .line 68466
    .end local v4    # "fixOffset":I
    .restart local p2    # "fixOffset":I
    add-int/2addr v5, v0

    .line 68467
    add-int/2addr v6, v0

    goto :goto_7

    :cond_c
    sget-object v4, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const-string v1, "HkWuM96xU0ciNRE25G4cwktgC29lbS6I"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    iget v0, v8, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    add-int/2addr v6, v0

    goto :goto_5

    .line 68468
    .end local v0
    .end local v0
    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/at;->A0b(Lcom/facebook/ads/redexgen/X/3x;)V

    .line 68469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v6, v0, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 68470
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/at;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    .line 68471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 68472
    .restart local v0    # "endOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 68473
    .local v0, "lastElement":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    if-lez v0, :cond_e

    .line 68474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    add-int/2addr v7, v0

    .line 68475
    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/at;->A0c(Lcom/facebook/ads/redexgen/X/3x;)V

    .line 68476
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v7, v5, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 68477
    iget v1, v5, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A03:I

    add-int/2addr v1, v0

    iput v1, v5, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 68478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/at;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    .line 68479
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 68480
    .local v0, "startOffset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    if-lez v0, :cond_8

    .line 68481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/3z;->A00:I

    .line 68482
    invoke-direct {p0, v4, v6}, Lcom/facebook/ads/redexgen/X/at;->A0Y(II)V

    .line 68483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/3z;->A02:I

    .line 68484
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/at;->A09(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4Z;Z)I

    sget-object v4, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v4, v0

    const/4 v0, 0x2

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_f

    .line 68485
    sget-object v4, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const-string v1, "fXJAp3Q"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    const-string v1, "F0cu8BB"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    goto/16 :goto_6

    :cond_f
    sget-object v4, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const-string v1, "v0k6hBg"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    const-string v1, "aqZsr0V"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    goto/16 :goto_6

    .line 68486
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/4S;
    :cond_10
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    if-eqz v0, :cond_11

    goto/16 :goto_4

    .line 68487
    :cond_11
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 68488
    :cond_12
    sub-int/2addr v6, v5

    goto/16 :goto_3

    .line 68489
    .end local v0    # "startOffset":I
    .end local v0
    :cond_13
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68490
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    sub-int/2addr v1, v0

    .line 68491
    .restart local v0    # "startOffset":I
    iget v5, p0, Lcom/facebook/ads/redexgen/X/at;->A02:I

    sub-int/2addr v5, v1

    goto/16 :goto_2

    .line 68492
    .end local v0    # "startOffset":I
    .end local v0
    :cond_14
    move v7, v6

    .line 68493
    .restart local v0    # "startOffset":I
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 68494
    :cond_15
    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68495
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v0

    if-ge v1, v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68496
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68497
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v0

    if-gt v1, v0, :cond_4

    .line 68498
    :cond_16
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/3x;->A06(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A20(Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 1

    .line 68499
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A20(Lcom/facebook/ads/redexgen/X/4Z;)V

    .line 68500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    .line 68501
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/at;->A01:I

    .line 68502
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/at;->A02:I

    .line 68503
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0D:Lcom/facebook/ads/redexgen/X/3x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3x;->A04()V

    .line 68504
    return-void
.end method

.method public final A21(Lcom/facebook/ads/redexgen/X/El;Lcom/facebook/ads/redexgen/X/4S;)V
    .locals 1

    .line 68505
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4K;->A21(Lcom/facebook/ads/redexgen/X/El;Lcom/facebook/ads/redexgen/X/4S;)V

    .line 68506
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A09:Z

    if-eqz v0, :cond_0

    .line 68507
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/4K;->A1J(Lcom/facebook/ads/redexgen/X/4S;)V

    .line 68508
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4S;->A0Q()V

    .line 68509
    :cond_0
    return-void
.end method

.method public A22(Lcom/facebook/ads/redexgen/X/El;Lcom/facebook/ads/redexgen/X/4Z;I)V
    .locals 2

    .line 68510
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/El;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/as;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/as;-><init>(Landroid/content/Context;)V

    .line 68511
    .local p0, "linearSmoothScroller":Lcom/facebook/ads/redexgen/X/as;
    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/4X;->A0A(I)V

    .line 68512
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1M(Lcom/facebook/ads/redexgen/X/4X;)V

    .line 68513
    return-void
.end method

.method public final A23(Ljava/lang/String;)V
    .locals 1

    .line 68514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 68515
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A23(Ljava/lang/String;)V

    .line 68516
    :cond_0
    return-void
.end method

.method public final A24()Z
    .locals 2

    .line 68517
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0Z()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 68518
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0j()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 68519
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A1X()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 68520
    :goto_0
    return v0

    .line 68521
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A25()Z
    .locals 1

    .line 68522
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A00:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A26()Z
    .locals 2

    .line 68523
    iget v1, p0, Lcom/facebook/ads/redexgen/X/at;->A00:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public A27()Z
    .locals 2

    .line 68524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/at;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/at;->A0C:Z

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A28()I
    .locals 3

    .line 68525
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/at;->A0H(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 68526
    .local p0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public final A29()I
    .locals 3

    .line 68527
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/at;->A0H(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 68528
    .local p0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public final A2A()I
    .locals 4

    .line 68529
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v3

    const/4 v2, 0x1

    sub-int/2addr v3, v2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/at;->A0H(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 68530
    .local p0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public final A2B()I
    .locals 1

    .line 68531
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A00:I

    return v0
.end method

.method public final A2C(I)I
    .locals 7

    .line 68532
    const/4 v6, -0x1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    const/high16 v5, -0x80000000

    if-eq p1, v0, :cond_a

    const/16 v0, 0x21

    if-eq p1, v0, :cond_8

    const/16 v0, 0x42

    if-eq p1, v0, :cond_6

    const/16 v4, 0x82

    sget-object v2, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68533
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A00:I

    if-ne v0, v3, :cond_2

    .line 68534
    return v3

    .line 68535
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2K()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const-string v1, "JFBGAdvw0W46p1IiHd184rfjlhxsbjRk"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v4, :cond_c

    .line 68536
    return v6

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const-string v1, "A4gNOGqmCbgTlyYHXDAs3UqrHjABAhAn"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eq p1, v4, :cond_4

    .line 68537
    return v5

    .line 68538
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A00:I

    if-ne v0, v3, :cond_5

    :goto_0
    return v3

    .line 68539
    :cond_5
    const/high16 v3, -0x80000000

    goto :goto_0

    .line 68540
    :cond_6
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A00:I

    if-nez v0, :cond_7

    :goto_1
    return v3

    .line 68541
    :cond_7
    const/high16 v3, -0x80000000

    goto :goto_1

    .line 68542
    :cond_8
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A00:I

    if-ne v0, v3, :cond_9

    :goto_2
    return v6

    .line 68543
    :cond_9
    const/high16 v6, -0x80000000

    goto :goto_2

    .line 68544
    :cond_a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A00:I

    if-nez v0, :cond_b

    :goto_3
    return v6

    .line 68545
    :cond_b
    const/high16 v6, -0x80000000

    goto :goto_3

    .line 68546
    :cond_c
    return v3

    .line 68547
    :cond_d
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A00:I

    if-ne v0, v3, :cond_e

    .line 68548
    return v6

    .line 68549
    :cond_e
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2K()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 68550
    return v3

    .line 68551
    :cond_f
    return v6
.end method

.method public A2D(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;III)Landroid/view/View;
    .locals 7

    .line 68552
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2E()V

    .line 68553
    const/4 v6, 0x0

    .line 68554
    .local p0, "invalidMatch":Landroid/view/View;
    const/4 v5, 0x0

    .line 68555
    .local p1, "outOfBoundsMatch":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A0A()I

    move-result v4

    .line 68556
    .local p2, "boundsStart":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/44;->A07()I

    move-result v3

    .line 68557
    .local p3, "boundsEnd":I
    if-le p4, p3, :cond_3

    const/4 v2, 0x1

    .line 68558
    .local p5, "i":I
    :goto_0
    if-eq p3, p4, :cond_5

    .line 68559
    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v1

    .line 68560
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    .line 68561
    .local v5, "position":I
    if-ltz v0, :cond_0

    if-ge v0, p5, :cond_0

    .line 68562
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4L;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4L;->A02()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68563
    if-nez v6, :cond_0

    .line 68564
    move-object v6, v1

    .line 68565
    .end local v6    # "view":Landroid/view/View;
    .end local v5    # "position":I
    :cond_0
    :goto_1
    add-int/2addr p3, v2

    goto :goto_0

    .line 68566
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0F(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68567
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A0C(Landroid/view/View;)I

    move-result v0

    if-ge v0, v4, :cond_4

    .line 68568
    :cond_2
    if-nez v5, :cond_0

    .line 68569
    move-object v5, v1

    goto :goto_1

    .line 68570
    :cond_3
    const/4 v2, -0x1

    goto :goto_0

    .line 68571
    :cond_4
    return-object v1

    .line 68572
    .end local p5    # "i":I
    :cond_5
    if-eqz v5, :cond_6

    :goto_2
    return-object v5

    :cond_6
    move-object v5, v6

    goto :goto_2
.end method

.method public final A2E()V
    .locals 4

    .line 68573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    if-nez v0, :cond_1

    .line 68574
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/at;->A0T()Lcom/facebook/ads/redexgen/X/3z;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const-string v1, "6FRvOBuqOIFmnj4QgnBJgNDOjl7oudHL"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/at;->A07:Lcom/facebook/ads/redexgen/X/3z;

    .line 68575
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    if-nez v0, :cond_2

    .line 68576
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A00:I

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/44;->A02(Lcom/facebook/ads/redexgen/X/4K;I)Lcom/facebook/ads/redexgen/X/44;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68577
    :cond_2
    return-void
.end method

.method public final A2F(I)V
    .locals 4

    .line 68578
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 68579
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/at;->A23(Ljava/lang/String;)V

    .line 68580
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A00:I

    if-ne p1, v0, :cond_1

    .line 68581
    return-void

    .line 68582
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/at;->A00:I

    .line 68583
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    .line 68584
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0z()V

    .line 68585
    return-void

    .line 68586
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/at;->A0U(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A2G(II)V
    .locals 1

    .line 68587
    iput p1, p0, Lcom/facebook/ads/redexgen/X/at;->A01:I

    .line 68588
    iput p2, p0, Lcom/facebook/ads/redexgen/X/at;->A02:I

    .line 68589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/at;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 68590
    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    .line 68591
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0z()V

    .line 68592
    return-void
.end method

.method public A2H(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3x;I)V
    .locals 0

    .line 68593
    return-void
.end method

.method public A2I(Lcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/3y;)V
    .locals 14

    .line 68594
    move-object v7, p0

    move-object/from16 v5, p3

    invoke-virtual {v5, p1}, Lcom/facebook/ads/redexgen/X/3z;->A04(Lcom/facebook/ads/redexgen/X/4S;)Landroid/view/View;

    move-result-object v9

    .line 68595
    .local v3, "view":Landroid/view/View;
    const/4 v3, 0x1

    move-object/from16 v4, p4

    if-nez v9, :cond_0

    .line 68596
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/3y;->A01:Z

    .line 68597
    return-void

    .line 68598
    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4L;

    .line 68599
    .local v2, "params":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3z;->A08:Ljava/util/List;

    const/4 v6, -0x1

    const/4 v8, 0x0

    if-nez v0, :cond_9

    .line 68600
    iget-boolean v1, v7, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    iget v0, v5, Lcom/facebook/ads/redexgen/X/3z;->A05:I

    if-ne v0, v6, :cond_8

    const/4 v0, 0x1

    :goto_0
    if-ne v1, v0, :cond_7

    .line 68601
    invoke-virtual {v7, v9}, Lcom/facebook/ads/redexgen/X/4K;->A18(Landroid/view/View;)V

    .line 68602
    :goto_1
    invoke-virtual {v7, v9, v8, v8}, Lcom/facebook/ads/redexgen/X/4K;->A1B(Landroid/view/View;II)V

    .line 68603
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/44;->A0D(Landroid/view/View;)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/3y;->A00:I

    .line 68604
    iget v0, v7, Lcom/facebook/ads/redexgen/X/at;->A00:I

    if-ne v0, v3, :cond_5

    .line 68605
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/at;->A2K()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68606
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0i()I

    move-result v12

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    sub-int/2addr v12, v0

    .line 68607
    .local p0, "right":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/44;->A0E(Landroid/view/View;)I

    move-result v0

    sub-int v10, v12, v0

    .line 68608
    .local p2, "left":I
    .restart local p0    # "right":I
    :goto_2
    iget v0, v5, Lcom/facebook/ads/redexgen/X/3z;->A05:I

    if-ne v0, v6, :cond_3

    .line 68609
    iget v13, v5, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 68610
    .local p1, "bottom":I
    iget v11, v5, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3y;->A00:I

    sub-int/2addr v11, v0

    .line 68611
    .local v5, "top":I
    .end local p0    # "right":I
    .end local p1    # "bottom":I
    .end local p2    # "left":I
    .local v2, "left":I
    .local v0, "top":I
    .local v6, "right":I
    .local v8, "bottom":I
    :goto_3
    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/4K;->A1C(Landroid/view/View;IIII)V

    .line 68612
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4L;->A02()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4L;->A01()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68613
    :cond_1
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/3y;->A03:Z

    .line 68614
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/3y;->A02:Z

    .line 68615
    return-void

    .line 68616
    .end local p1
    .end local v5    # "top":I
    :cond_3
    iget v11, v5, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 68617
    .local p1, "top":I
    iget v13, v5, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3y;->A00:I

    add-int/2addr v13, v0

    .local v5, "bottom":I
    goto :goto_3

    .line 68618
    .end local p0
    .end local p2
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v10

    .line 68619
    .restart local p2    # "left":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/44;->A0E(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v10

    goto :goto_2

    .line 68620
    .end local p0
    .end local p1    # "top":I
    .end local p2    # "left":I
    .end local v5    # "bottom":I
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0h()I

    move-result v11

    .line 68621
    .local p0, "top":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/at;->A04:Lcom/facebook/ads/redexgen/X/44;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/44;->A0E(Landroid/view/View;)I

    move-result v13

    add-int/2addr v13, v11

    .line 68622
    .local p2, "bottom":I
    iget v0, v5, Lcom/facebook/ads/redexgen/X/3z;->A05:I

    if-ne v0, v6, :cond_6

    .line 68623
    iget v12, v5, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 68624
    .local p1, "right":I
    iget v10, v5, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3y;->A00:I

    sub-int/2addr v10, v0

    .local v5, "left":I
    goto :goto_3

    .line 68625
    .end local p1    # "right":I
    .end local v5    # "left":I
    :cond_6
    iget v10, v5, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    .line 68626
    .local p1, "left":I
    iget v12, v5, Lcom/facebook/ads/redexgen/X/3z;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3y;->A00:I

    add-int/2addr v12, v0

    goto :goto_3

    .line 68627
    :cond_7
    invoke-virtual {v7, v9, v8}, Lcom/facebook/ads/redexgen/X/4K;->A1A(Landroid/view/View;I)V

    goto :goto_1

    .line 68628
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 68629
    :cond_9
    iget-boolean v1, v7, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    iget v0, v5, Lcom/facebook/ads/redexgen/X/3z;->A05:I

    if-ne v0, v6, :cond_a

    const/4 v0, 0x1

    :goto_4
    if-ne v1, v0, :cond_b

    .line 68630
    invoke-virtual {v7, v9}, Lcom/facebook/ads/redexgen/X/4K;->A17(Landroid/view/View;)V

    goto/16 :goto_1

    .line 68631
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    .line 68632
    :cond_b
    invoke-virtual {v7, v9, v8}, Lcom/facebook/ads/redexgen/X/4K;->A19(Landroid/view/View;I)V

    goto/16 :goto_1
.end method

.method public A2J(Lcom/facebook/ads/redexgen/X/4Z;Lcom/facebook/ads/redexgen/X/3z;Lcom/facebook/ads/redexgen/X/4I;)V
    .locals 3

    .line 68633
    iget v2, p2, Lcom/facebook/ads/redexgen/X/3z;->A01:I

    .line 68634
    .local p0, "pos":I
    if-ltz v2, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 68635
    const/4 v1, 0x0

    iget v0, p2, Lcom/facebook/ads/redexgen/X/3z;->A07:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p3, v2, v0}, Lcom/facebook/ads/redexgen/X/4I;->A3G(II)V

    .line 68636
    :cond_0
    return-void
.end method

.method public final A2K()Z
    .locals 2

    .line 68637
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0b()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A42(I)Landroid/graphics/PointF;
    .locals 6

    .line 68638
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4K;->A0X()I

    move-result v0

    if-nez v0, :cond_0

    .line 68639
    const/4 v0, 0x0

    return-object v0

    .line 68640
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4K;->A0q(Landroid/view/View;)I

    move-result v0

    .line 68641
    .local p1, "firstChildPos":I
    const/4 v4, 0x1

    if-ge p1, v0, :cond_1

    const/4 v5, 0x1

    :cond_1
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/at;->A05:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/at;->A0G:[Ljava/lang/String;

    const-string v1, "FFnbbIQmxzlcCB5QJgqtb02Njm6aLfkX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq v5, v3, :cond_2

    const/4 v4, -0x1

    .line 68642
    .local p0, "direction":I
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/at;->A00:I

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 68643
    int-to-float v1, v4

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 68644
    :cond_3
    int-to-float v1, v4

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
