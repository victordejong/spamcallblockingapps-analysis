.class public final Lcom/facebook/ads/redexgen/X/DQ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Zc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SampleReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/DP;
    }
.end annotation


# static fields
.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/redexgen/X/DP;

.field public A07:Lcom/facebook/ads/redexgen/X/DP;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:[B

.field public final A0C:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/IG;",
            ">;"
        }
    .end annotation
.end field

.field public final A0D:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/IH;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:Lcom/facebook/ads/redexgen/X/CS;

.field public final A0F:Lcom/facebook/ads/redexgen/X/IN;

.field public final A0G:Z

.field public final A0H:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/DQ;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CS;ZZ)V
    .locals 3

    .line 26682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26683
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0E:Lcom/facebook/ads/redexgen/X/CS;

    .line 26684
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0G:Z

    .line 26685
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0H:Z

    .line 26686
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0D:Landroid/util/SparseArray;

    .line 26687
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0C:Landroid/util/SparseArray;

    .line 26688
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/DP;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/DP;-><init>(Lcom/facebook/ads/redexgen/X/DO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A06:Lcom/facebook/ads/redexgen/X/DP;

    .line 26689
    new-instance v0, Lcom/facebook/ads/redexgen/X/DP;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/DP;-><init>(Lcom/facebook/ads/redexgen/X/DO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A07:Lcom/facebook/ads/redexgen/X/DP;

    .line 26690
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0B:[B

    .line 26691
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0B:[B

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/IN;

    invoke-direct {v0, v2, v1, v1}, Lcom/facebook/ads/redexgen/X/IN;-><init>([BII)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    .line 26692
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DQ;->A02()V

    .line 26693
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4oBn500ONSa7zUcj69ZejwliI7fNkQe9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sao3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "S05M"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dUQbnZGK3vs92wXndxl51oc8w6Wzg5UK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "r2dYBwwJ6wCRp20YpqJDniAkemsUTuNE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fcxFuh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wirhT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "AIyirGzN48rHG0XGibSi5d9zNx7vdYO1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DQ;->A0I:[Ljava/lang/String;

    return-void
.end method

.method private A01(I)V
    .locals 8

    .line 26694
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0A:Z

    .line 26695
    .local v2, "flags":I
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/DQ;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A04:J

    sub-long/2addr v2, v0

    long-to-int v5, v2

    .line 26696
    .local v2, "size":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0E:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/DQ;->A05:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/CS;->ADS(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 26697
    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 26698
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A08:Z

    .line 26699
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A09:Z

    .line 26700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A07:Lcom/facebook/ads/redexgen/X/DP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DP;->A03()V

    .line 26701
    return-void
.end method

.method public final A03(JI)V
    .locals 5

    .line 26702
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A01:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0H:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A07:Lcom/facebook/ads/redexgen/X/DP;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A06:Lcom/facebook/ads/redexgen/X/DP;

    .line 26703
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DP;->A02(Lcom/facebook/ads/redexgen/X/DP;Lcom/facebook/ads/redexgen/X/DP;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26704
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A09:Z

    if-eqz v0, :cond_1

    .line 26705
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A02:J

    sub-long/2addr p1, v0

    long-to-int v0, p1

    .line 26706
    .local p0, "nalUnitLength":I
    add-int/2addr p3, v0

    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/DQ;->A01(I)V

    .line 26707
    .end local p0    # "nalUnitLength":I
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A04:J

    .line 26708
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A05:J

    .line 26709
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0A:Z

    .line 26710
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/DQ;->A09:Z

    .line 26711
    :cond_2
    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0A:Z

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A01:I

    const/4 v0, 0x5

    if-eq v1, v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0G:Z

    if-eqz v0, :cond_4

    if-ne v1, v4, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A07:Lcom/facebook/ads/redexgen/X/DP;

    .line 26712
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DP;->A06()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v3, 0x1

    :cond_4
    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0A:Z

    .line 26713
    return-void
.end method

.method public final A04(JIJ)V
    .locals 3

    .line 26714
    iput p3, p0, Lcom/facebook/ads/redexgen/X/DQ;->A01:I

    .line 26715
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/DQ;->A03:J

    .line 26716
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A02:J

    .line 26717
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0G:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A01:I

    if-eq v0, v2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0H:Z

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A01:I

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 26718
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A06:Lcom/facebook/ads/redexgen/X/DP;

    .line 26719
    .local p0, "newSliceHeader":Lcom/facebook/ads/redexgen/X/DP;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A07:Lcom/facebook/ads/redexgen/X/DP;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A06:Lcom/facebook/ads/redexgen/X/DP;

    .line 26720
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A07:Lcom/facebook/ads/redexgen/X/DP;

    .line 26721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A07:Lcom/facebook/ads/redexgen/X/DP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DP;->A03()V

    .line 26722
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A00:I

    .line 26723
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/DQ;->A08:Z

    .line 26724
    .end local p0    # "newSliceHeader":Lcom/facebook/ads/redexgen/X/DP;
    :cond_2
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/IG;)V
    .locals 2

    .line 26725
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0C:Landroid/util/SparseArray;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/IG;->A00:I

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 26726
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/IH;)V
    .locals 2

    .line 26727
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0D:Landroid/util/SparseArray;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/IH;->A05:I

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 26728
    return-void
.end method

.method public final A07([BII)V
    .locals 21

    move/from16 v6, p3

    .line 26729
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A08:Z

    if-nez v1, :cond_0

    .line 26730
    return-void

    .line 26731
    :cond_0
    move/from16 v7, p2

    sub-int/2addr v6, v7

    .line 26732
    .local v7, "readLength":I
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0B:[B

    array-length v3, v5

    iget v2, v0, Lcom/facebook/ads/redexgen/X/DQ;->A00:I

    add-int v1, v2, v6

    const/4 v4, 0x2

    if-ge v3, v1, :cond_1

    .line 26733
    add-int/2addr v2, v6

    mul-int/lit8 v1, v2, 0x2

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0B:[B

    .line 26734
    :cond_1
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0B:[B

    iget v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A00:I

    move-object/from16 v3, p1

    invoke-static {v3, v7, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26735
    iget v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A00:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A00:I

    .line 26736
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0B:[B

    iget v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A00:I

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v1}, Lcom/facebook/ads/redexgen/X/IN;->A09([BII)V

    .line 26737
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/IN;->A0C(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 26738
    return-void

    .line 26739
    :cond_2
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A07()V

    .line 26740
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1, v4}, Lcom/facebook/ads/redexgen/X/IN;->A06(I)I

    move-result v8

    .line 26741
    .local v6, "nalRefIdc":I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Lcom/facebook/ads/redexgen/X/IN;->A08(I)V

    .line 26742
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A0A()Z

    move-result v1

    if-nez v1, :cond_3

    .line 26743
    return-void

    .line 26744
    :cond_3
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 26745
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A0A()Z

    move-result v1

    if-nez v1, :cond_4

    .line 26746
    return-void

    .line 26747
    :cond_4
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v9

    .line 26748
    .local v0, "sliceType":I
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0H:Z

    if-nez v1, :cond_5

    .line 26749
    iput-boolean v5, v0, Lcom/facebook/ads/redexgen/X/DQ;->A08:Z

    .line 26750
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DQ;->A07:Lcom/facebook/ads/redexgen/X/DP;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/DP;->A04(I)V

    .line 26751
    return-void

    .line 26752
    :cond_5
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A0A()Z

    move-result v1

    if-nez v1, :cond_6

    .line 26753
    return-void

    .line 26754
    :cond_6
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v11

    sget-object v3, Lcom/facebook/ads/redexgen/X/DQ;->A0I:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v3, v1

    const/4 v1, 0x3

    aget-object v3, v3, v1

    const/4 v1, 0x5

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_1b

    .line 26755
    .local v1, "picParameterSetId":I
    sget-object v3, Lcom/facebook/ads/redexgen/X/DQ;->A0I:[Ljava/lang/String;

    const-string v2, "2v7XO"

    const/4 v1, 0x6

    aput-object v2, v3, v1

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0C:Landroid/util/SparseArray;

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_7

    .line 26756
    iput-boolean v5, v0, Lcom/facebook/ads/redexgen/X/DQ;->A08:Z

    .line 26757
    return-void

    .line 26758
    :cond_7
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0C:Landroid/util/SparseArray;

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/IG;

    .line 26759
    .local v1, "ppsData":Lcom/facebook/ads/redexgen/X/IG;
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0D:Landroid/util/SparseArray;

    iget v2, v1, Lcom/facebook/ads/redexgen/X/IG;->A01:I

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/IH;

    .line 26760
    .local v2, "spsData":Lcom/facebook/ads/redexgen/X/IH;
    iget-boolean v2, v7, Lcom/facebook/ads/redexgen/X/IH;->A09:Z

    if-eqz v2, :cond_9

    .line 26761
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v2, v4}, Lcom/facebook/ads/redexgen/X/IN;->A0C(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 26762
    return-void

    .line 26763
    :cond_8
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v2, v4}, Lcom/facebook/ads/redexgen/X/IN;->A08(I)V

    .line 26764
    :cond_9
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    iget v2, v7, Lcom/facebook/ads/redexgen/X/IH;->A01:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/IN;->A0C(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 26765
    return-void

    .line 26766
    :cond_a
    const/4 v12, 0x0

    .line 26767
    .local v6, "fieldPicFlag":Z
    const/4 v13, 0x0

    .line 26768
    .local v3, "bottomFieldFlagPresent":Z
    const/4 v14, 0x0

    .line 26769
    .local v2, "bottomFieldFlag":Z
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    iget v2, v7, Lcom/facebook/ads/redexgen/X/IH;->A01:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/IN;->A06(I)I

    move-result v10

    .line 26770
    .local v5, "frameNum":I
    iget-boolean v3, v7, Lcom/facebook/ads/redexgen/X/IH;->A08:Z

    const/4 v2, 0x1

    if-nez v3, :cond_e

    .line 26771
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/IN;->A0C(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 26772
    return-void

    .line 26773
    :cond_b
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v12

    .line 26774
    if-eqz v12, :cond_d

    .line 26775
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/IN;->A0C(I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 26776
    return-void

    .line 26777
    :cond_c
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v14

    .line 26778
    const/4 v13, 0x1

    goto :goto_0

    .line 26779
    :cond_d
    sget-object v5, Lcom/facebook/ads/redexgen/X/DQ;->A0I:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v4, v5, v3

    const/4 v3, 0x1

    aget-object v3, v5, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v4, v3, :cond_10

    .line 26780
    .end local v3    # "bottomFieldFlagPresent":Z
    .end local v2    # "bottomFieldFlag":Z
    .local v2, "bottomFieldFlagPresent":Z
    .local v1, "bottomFieldFlag":Z
    :cond_e
    :goto_0
    iget v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A01:I

    if-ne v3, v6, :cond_f

    const/4 v15, 0x1

    .line 26781
    .local v1, "idrPicFlag":Z
    :goto_1
    const/16 v16, 0x0

    .line 26782
    .local v3, "idrPicId":I
    if-eqz v15, :cond_12

    .line 26783
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IN;->A0A()Z

    move-result v3

    if-nez v3, :cond_11

    .line 26784
    return-void

    .line 26785
    :cond_f
    const/4 v15, 0x0

    goto :goto_1

    :cond_10
    sget-object v5, Lcom/facebook/ads/redexgen/X/DQ;->A0I:[Ljava/lang/String;

    const-string v4, "qwcYbvbtciQlsge07t8jnpQbFFEGYRzL"

    const/4 v3, 0x4

    aput-object v4, v5, v3

    goto :goto_0

    .line 26786
    :cond_11
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    sget-object v4, Lcom/facebook/ads/redexgen/X/DQ;->A0I:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x20

    if-eq v4, v3, :cond_1a

    sget-object v6, Lcom/facebook/ads/redexgen/X/DQ;->A0I:[Ljava/lang/String;

    const-string v4, "CUn0EGRMZuaxcZmcWt6bm8g2eSLscmSu"

    const/4 v3, 0x0

    aput-object v4, v6, v3

    const-string v4, "AO4oaRrhS9J5INJLsqTeqW6rWo7URvM3"

    const/4 v3, 0x3

    aput-object v4, v6, v3

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v16

    .line 26787
    .end local v3    # "idrPicId":I
    .local v1, "idrPicId":I
    :cond_12
    const/16 v17, 0x0

    .line 26788
    .local v3, "picOrderCntLsb":I
    const/16 v18, 0x0

    .line 26789
    .local v2, "deltaPicOrderCntBottom":I
    const/16 v19, 0x0

    .line 26790
    .local v1, "deltaPicOrderCnt0":I
    const/16 v20, 0x0

    .line 26791
    .local v2, "deltaPicOrderCnt1":I
    iget v3, v7, Lcom/facebook/ads/redexgen/X/IH;->A04:I

    if-nez v3, :cond_15

    .line 26792
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    iget v2, v7, Lcom/facebook/ads/redexgen/X/IH;->A03:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/IN;->A0C(I)Z

    move-result v2

    if-nez v2, :cond_13

    .line 26793
    return-void

    .line 26794
    :cond_13
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    iget v4, v7, Lcom/facebook/ads/redexgen/X/IH;->A03:I

    sget-object v3, Lcom/facebook/ads/redexgen/X/DQ;->A0I:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v3, v3, v2

    const/16 v2, 0x1c

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x6c

    if-eq v3, v2, :cond_1b

    sget-object v6, Lcom/facebook/ads/redexgen/X/DQ;->A0I:[Ljava/lang/String;

    const-string v3, "13MW05H83xonKdXxuFb2nSy24rNhSBqM"

    const/4 v2, 0x4

    aput-object v3, v6, v2

    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/IN;->A06(I)I

    move-result v17

    .line 26795
    .end local v3    # "picOrderCntLsb":I
    .local v5, "picOrderCntLsb":I
    iget-boolean v1, v1, Lcom/facebook/ads/redexgen/X/IG;->A02:Z

    if-eqz v1, :cond_18

    if-nez v12, :cond_18

    .line 26796
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A0A()Z

    move-result v1

    if-nez v1, :cond_14

    .line 26797
    return-void

    .line 26798
    :cond_14
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A04()I

    move-result v18

    .end local v2    # "deltaPicOrderCnt1":I
    .local v3, "deltaPicOrderCntBottom":I
    goto :goto_2

    .line 26799
    .end local v5    # "picOrderCntLsb":I
    .local v3, "picOrderCntLsb":I
    :cond_15
    iget v5, v7, Lcom/facebook/ads/redexgen/X/IH;->A04:I

    sget-object v4, Lcom/facebook/ads/redexgen/X/DQ;->A0I:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v4, v4, v3

    const/16 v3, 0x1c

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x6c

    if-eq v4, v3, :cond_19

    sget-object v6, Lcom/facebook/ads/redexgen/X/DQ;->A0I:[Ljava/lang/String;

    const-string v4, "MOrewcskpOrth27AIRJiHCsaXTOPbZzW"

    const/4 v3, 0x7

    aput-object v4, v6, v3

    if-ne v5, v2, :cond_18

    iget-boolean v2, v7, Lcom/facebook/ads/redexgen/X/IH;->A07:Z

    if-nez v2, :cond_18

    .line 26800
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A0A()Z

    move-result v2

    if-nez v2, :cond_16

    .line 26801
    return-void

    .line 26802
    :cond_16
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A04()I

    move-result v19

    .line 26803
    .end local v1    # "deltaPicOrderCnt0":I
    .local v5, "deltaPicOrderCnt0":I
    iget-boolean v1, v1, Lcom/facebook/ads/redexgen/X/IG;->A02:Z

    if-eqz v1, :cond_18

    if-nez v12, :cond_18

    .line 26804
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A0A()Z

    move-result v1

    if-nez v1, :cond_17

    .line 26805
    return-void

    .line 26806
    :cond_17
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A04()I

    move-result v20

    .line 26807
    .end local v2
    .local v1, "deltaPicOrderCnt1":I
    .end local v3    # "picOrderCntLsb":I
    .end local v2
    .end local v1    # "deltaPicOrderCnt1":I
    .end local v2
    .local v5, "picOrderCntLsb":I
    .local v1, "deltaPicOrderCntBottom":I
    .local v1, "deltaPicOrderCnt0":I
    .local v8, "deltaPicOrderCnt1":I
    :cond_18
    :goto_2
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/DQ;->A07:Lcom/facebook/ads/redexgen/X/DP;

    .end local v2
    .local v1, "spsData":Lcom/facebook/ads/redexgen/X/IH;
    .end local v1    # "spsData":Lcom/facebook/ads/redexgen/X/IH;
    .local v6, "ppsData":Lcom/facebook/ads/redexgen/X/IG;
    .end local v1
    .local v1, "picParameterSetId":I
    invoke-virtual/range {v6 .. v20}, Lcom/facebook/ads/redexgen/X/DP;->A05(Lcom/facebook/ads/redexgen/X/IH;IIIIZZZZIIIII)V

    .line 26808
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A08:Z

    .line 26809
    return-void

    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 26810
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 26811
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A08()Z
    .locals 1

    .line 26812
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0H:Z

    return v0
.end method
