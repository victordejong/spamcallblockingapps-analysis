.class public final Lcom/facebook/ads/redexgen/X/DQ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Uz;
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

    .line 26967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26968
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0E:Lcom/facebook/ads/redexgen/X/CS;

    .line 26969
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0G:Z

    .line 26970
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0H:Z

    .line 26971
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0D:Landroid/util/SparseArray;

    .line 26972
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0C:Landroid/util/SparseArray;

    .line 26973
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/DP;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/DP;-><init>(Lcom/facebook/ads/redexgen/X/DO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A06:Lcom/facebook/ads/redexgen/X/DP;

    .line 26974
    new-instance v0, Lcom/facebook/ads/redexgen/X/DP;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/DP;-><init>(Lcom/facebook/ads/redexgen/X/DO;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A07:Lcom/facebook/ads/redexgen/X/DP;

    .line 26975
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0B:[B

    .line 26976
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0B:[B

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/IN;

    invoke-direct {v0, v2, v1, v1}, Lcom/facebook/ads/redexgen/X/IN;-><init>([BII)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    .line 26977
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/DQ;->A02()V

    .line 26978
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "c4RmQEznjieYCkYh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "cbmTR7fi1PqMrP04NnlLq4Aswvzxc6is"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "OC26Fpg5eGhJSOw7i6mr9NspzgSnvwRG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GAswAOCZdZIsV6xME74AYBIFI3g63YOv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zPmB1DVavJHf8vo4urlPlarLWBSFebSg"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jhvxQbEzpnbJZ7Tqwz4V4GFLs81GvWuA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ItCr4TIUaohbFdykKDDom53Bh1xmrb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "P507Q0Q351"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/DQ;->A0I:[Ljava/lang/String;

    return-void
.end method

.method private A01(I)V
    .locals 8

    .line 26979
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0A:Z

    .line 26980
    .local v2, "flags":I
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/DQ;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A04:J

    sub-long/2addr v2, v0

    long-to-int v5, v2

    .line 26981
    .local v2, "size":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0E:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/DQ;->A05:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 26982
    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 26983
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A08:Z

    .line 26984
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A09:Z

    .line 26985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A07:Lcom/facebook/ads/redexgen/X/DP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DP;->A03()V

    .line 26986
    return-void
.end method

.method public final A03(JI)V
    .locals 6

    .line 26987
    iget v1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A01:I

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0H:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A07:Lcom/facebook/ads/redexgen/X/DP;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A06:Lcom/facebook/ads/redexgen/X/DP;

    .line 26988
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/DP;->A02(Lcom/facebook/ads/redexgen/X/DP;Lcom/facebook/ads/redexgen/X/DP;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26989
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A09:Z

    if-eqz v0, :cond_1

    .line 26990
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A02:J

    sub-long/2addr p1, v0

    long-to-int v0, p1

    .line 26991
    .local p0, "nalUnitLength":I
    add-int/2addr p3, v0

    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/DQ;->A01(I)V

    .line 26992
    .end local p0    # "nalUnitLength":I
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A04:J

    .line 26993
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A05:J

    .line 26994
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0A:Z

    .line 26995
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/DQ;->A09:Z

    .line 26996
    :cond_2
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0A:Z

    iget v1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A01:I

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0G:Z

    if-eqz v0, :cond_5

    if-ne v1, v2, :cond_5

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/DQ;->A07:Lcom/facebook/ads/redexgen/X/DP;

    sget-object v2, Lcom/facebook/ads/redexgen/X/DQ;->A0I:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 26997
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/DQ;->A0I:[Ljava/lang/String;

    const-string v1, "7bAYRnhhveDmFDw3GeevIrcgk6hgXC"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/DP;->A06()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v4, 0x1

    :cond_5
    or-int/2addr v3, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/DQ;->A0I:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/DQ;->A0I:[Ljava/lang/String;

    const-string v1, "zKyNtUjqfOJnFmHaV59EdFmH9I9a9LLW"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0A:Z

    .line 26998
    return-void

    :cond_6
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0A:Z

    return-void
.end method

.method public final A04(JIJ)V
    .locals 3

    .line 26999
    iput p3, p0, Lcom/facebook/ads/redexgen/X/DQ;->A01:I

    .line 27000
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/DQ;->A03:J

    .line 27001
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A02:J

    .line 27002
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

    .line 27003
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A06:Lcom/facebook/ads/redexgen/X/DP;

    .line 27004
    .local p0, "newSliceHeader":Lcom/facebook/ads/redexgen/X/DP;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A07:Lcom/facebook/ads/redexgen/X/DP;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A06:Lcom/facebook/ads/redexgen/X/DP;

    .line 27005
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A07:Lcom/facebook/ads/redexgen/X/DP;

    .line 27006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A07:Lcom/facebook/ads/redexgen/X/DP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DP;->A03()V

    .line 27007
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A00:I

    .line 27008
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/DQ;->A08:Z

    .line 27009
    .end local p0    # "newSliceHeader":Lcom/facebook/ads/redexgen/X/DP;
    :cond_2
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/IG;)V
    .locals 2

    .line 27010
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0C:Landroid/util/SparseArray;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/IG;->A00:I

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 27011
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/IH;)V
    .locals 2

    .line 27012
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0D:Landroid/util/SparseArray;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/IH;->A05:I

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 27013
    return-void
.end method

.method public final A07([BII)V
    .locals 20

    move/from16 v6, p3

    .line 27014
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A08:Z

    if-nez v1, :cond_0

    .line 27015
    return-void

    .line 27016
    :cond_0
    move/from16 v7, p2

    sub-int/2addr v6, v7

    .line 27017
    .local v7, "readLength":I
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0B:[B

    array-length v3, v4

    iget v2, v0, Lcom/facebook/ads/redexgen/X/DQ;->A00:I

    add-int v1, v2, v6

    const/4 v5, 0x2

    if-ge v3, v1, :cond_1

    .line 27018
    add-int/2addr v2, v6

    mul-int/lit8 v1, v2, 0x2

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0B:[B

    .line 27019
    :cond_1
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0B:[B

    iget v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A00:I

    move-object/from16 v3, p1

    invoke-static {v3, v7, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27020
    iget v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A00:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A00:I

    .line 27021
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0B:[B

    iget v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A00:I

    const/4 v2, 0x0

    invoke-virtual {v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/IN;->A09([BII)V

    .line 27022
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/IN;->A0C(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 27023
    return-void

    .line 27024
    :cond_2
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A07()V

    .line 27025
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1, v5}, Lcom/facebook/ads/redexgen/X/IN;->A06(I)I

    move-result v7

    .line 27026
    .local v6, "nalRefIdc":I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/facebook/ads/redexgen/X/IN;->A08(I)V

    .line 27027
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A0A()Z

    move-result v1

    if-nez v1, :cond_3

    .line 27028
    return-void

    .line 27029
    :cond_3
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    .line 27030
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A0A()Z

    move-result v1

    if-nez v1, :cond_4

    .line 27031
    return-void

    .line 27032
    :cond_4
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v8

    .line 27033
    .local v0, "sliceType":I
    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0H:Z

    if-nez v1, :cond_5

    .line 27034
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/DQ;->A08:Z

    .line 27035
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DQ;->A07:Lcom/facebook/ads/redexgen/X/DP;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/DP;->A04(I)V

    .line 27036
    return-void

    .line 27037
    :cond_5
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A0A()Z

    move-result v1

    if-nez v1, :cond_6

    .line 27038
    return-void

    .line 27039
    :cond_6
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v10

    .line 27040
    .local v1, "picParameterSetId":I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0C:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_7

    .line 27041
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/DQ;->A08:Z

    .line 27042
    return-void

    .line 27043
    :cond_7
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0C:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/IG;

    .line 27044
    .local v1, "ppsData":Lcom/facebook/ads/redexgen/X/IG;
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0D:Landroid/util/SparseArray;

    iget v2, v1, Lcom/facebook/ads/redexgen/X/IG;->A01:I

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/IH;

    .line 27045
    .local v2, "spsData":Lcom/facebook/ads/redexgen/X/IH;
    iget-boolean v2, v6, Lcom/facebook/ads/redexgen/X/IH;->A09:Z

    if-eqz v2, :cond_9

    .line 27046
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/IN;->A0C(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 27047
    return-void

    .line 27048
    :cond_8
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/IN;->A08(I)V

    .line 27049
    :cond_9
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    iget v2, v6, Lcom/facebook/ads/redexgen/X/IH;->A01:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/IN;->A0C(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 27050
    return-void

    .line 27051
    :cond_a
    const/4 v11, 0x0

    .line 27052
    .local v6, "fieldPicFlag":Z
    const/4 v12, 0x0

    .line 27053
    .local v3, "bottomFieldFlagPresent":Z
    const/4 v13, 0x0

    .line 27054
    .local v2, "bottomFieldFlag":Z
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    iget v2, v6, Lcom/facebook/ads/redexgen/X/IH;->A01:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/IN;->A06(I)I

    move-result v9

    .line 27055
    .local v2, "frameNum":I
    iget-boolean v3, v6, Lcom/facebook/ads/redexgen/X/IH;->A08:Z

    const/4 v2, 0x1

    if-nez v3, :cond_d

    .line 27056
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/IN;->A0C(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 27057
    return-void

    .line 27058
    :cond_b
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v11

    .line 27059
    if-eqz v11, :cond_d

    .line 27060
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/IN;->A0C(I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 27061
    return-void

    .line 27062
    :cond_c
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IN;->A0B()Z

    move-result v13

    .line 27063
    const/4 v12, 0x1

    .line 27064
    .end local v3    # "bottomFieldFlagPresent":Z
    .end local v2    # "frameNum":I
    .local v3, "bottomFieldFlagPresent":Z
    .local v1, "bottomFieldFlag":Z
    :cond_d
    iget v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A01:I

    if-ne v3, v4, :cond_e

    const/4 v14, 0x1

    .line 27065
    .local v1, "idrPicFlag":Z
    :goto_0
    const/4 v15, 0x0

    .line 27066
    .local v3, "idrPicId":I
    if-eqz v14, :cond_10

    .line 27067
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IN;->A0A()Z

    move-result v3

    if-nez v3, :cond_f

    .line 27068
    return-void

    .line 27069
    :cond_e
    const/4 v14, 0x0

    goto :goto_0

    .line 27070
    :cond_f
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/IN;->A05()I

    move-result v15

    .line 27071
    .end local v3    # "idrPicId":I
    .local v1, "idrPicId":I
    :cond_10
    const/16 v16, 0x0

    .line 27072
    .local v3, "picOrderCntLsb":I
    const/16 v17, 0x0

    .line 27073
    .local v2, "deltaPicOrderCntBottom":I
    const/16 v18, 0x0

    .line 27074
    .local v1, "deltaPicOrderCnt0":I
    const/16 v19, 0x0

    .line 27075
    .local v2, "deltaPicOrderCnt1":I
    iget v3, v6, Lcom/facebook/ads/redexgen/X/IH;->A04:I

    if-nez v3, :cond_13

    .line 27076
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    iget v2, v6, Lcom/facebook/ads/redexgen/X/IH;->A03:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/IN;->A0C(I)Z

    move-result v2

    if-nez v2, :cond_11

    .line 27077
    return-void

    .line 27078
    :cond_11
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    iget v2, v6, Lcom/facebook/ads/redexgen/X/IH;->A03:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/IN;->A06(I)I

    move-result v16

    .line 27079
    .end local v3    # "picOrderCntLsb":I
    .local v4, "picOrderCntLsb":I
    iget-boolean v1, v1, Lcom/facebook/ads/redexgen/X/IG;->A02:Z

    if-eqz v1, :cond_16

    if-nez v11, :cond_16

    .line 27080
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A0A()Z

    move-result v1

    if-nez v1, :cond_12

    .line 27081
    return-void

    .line 27082
    :cond_12
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A04()I

    move-result v17

    .end local v2    # "deltaPicOrderCnt1":I
    .local v3, "deltaPicOrderCntBottom":I
    goto :goto_1

    .line 27083
    .end local v4    # "picOrderCntLsb":I
    .local v3, "picOrderCntLsb":I
    :cond_13
    iget v3, v6, Lcom/facebook/ads/redexgen/X/IH;->A04:I

    if-ne v3, v2, :cond_16

    iget-boolean v2, v6, Lcom/facebook/ads/redexgen/X/IH;->A07:Z

    if-nez v2, :cond_16

    .line 27084
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A0A()Z

    move-result v2

    if-nez v2, :cond_14

    .line 27085
    return-void

    .line 27086
    :cond_14
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IN;->A04()I

    move-result v18

    .line 27087
    .end local v1    # "deltaPicOrderCnt0":I
    .local v4, "deltaPicOrderCnt0":I
    iget-boolean v1, v1, Lcom/facebook/ads/redexgen/X/IG;->A02:Z

    if-eqz v1, :cond_16

    if-nez v11, :cond_16

    .line 27088
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A0A()Z

    move-result v1

    if-nez v1, :cond_15

    .line 27089
    return-void

    .line 27090
    :cond_15
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A0F:Lcom/facebook/ads/redexgen/X/IN;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IN;->A04()I

    move-result v19

    .line 27091
    .end local v2
    .local v1, "deltaPicOrderCnt1":I
    .end local v3    # "picOrderCntLsb":I
    .end local v2
    .end local v1    # "deltaPicOrderCnt1":I
    .end local v2
    .local v4, "picOrderCntLsb":I
    .local v1, "deltaPicOrderCntBottom":I
    .local v1, "deltaPicOrderCnt0":I
    .local v7, "deltaPicOrderCnt1":I
    :cond_16
    :goto_1
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/DQ;->A07:Lcom/facebook/ads/redexgen/X/DP;

    .end local v2
    .local v1, "spsData":Lcom/facebook/ads/redexgen/X/IH;
    .end local v1    # "spsData":Lcom/facebook/ads/redexgen/X/IH;
    .local v4, "ppsData":Lcom/facebook/ads/redexgen/X/IG;
    .end local v1
    .local v1, "picParameterSetId":I
    invoke-virtual/range {v5 .. v19}, Lcom/facebook/ads/redexgen/X/DP;->A05(Lcom/facebook/ads/redexgen/X/IH;IIIIZZZZIIIII)V

    .line 27092
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/DQ;->A08:Z

    .line 27093
    return-void
.end method

.method public final A08()Z
    .locals 1

    .line 27094
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/DQ;->A0H:Z

    return v0
.end method
