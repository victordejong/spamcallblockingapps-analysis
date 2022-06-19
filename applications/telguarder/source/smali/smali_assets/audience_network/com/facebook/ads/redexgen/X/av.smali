.class public final Lcom/facebook/ads/redexgen/X/av;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/42;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/3e;,
        Lcom/facebook/ads/redexgen/X/3f;
    }
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/2V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/2V<",
            "Lcom/facebook/ads/redexgen/X/3f;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/3e;

.field public final A03:Lcom/facebook/ads/redexgen/X/43;

.field public final A04:Ljava/lang/Runnable;

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/3f;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/3f;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/av;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/av;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3e;)V
    .locals 1

    .line 68691
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/av;-><init>(Lcom/facebook/ads/redexgen/X/3e;Z)V

    .line 68692
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3e;Z)V
    .locals 2

    .line 68693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68694
    const/16 v1, 0x1e

    new-instance v0, Lcom/facebook/ads/redexgen/X/bB;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/bB;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A01:Lcom/facebook/ads/redexgen/X/2V;

    .line 68695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A05:Ljava/util/ArrayList;

    .line 68696
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A06:Ljava/util/ArrayList;

    .line 68697
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/av;->A00:I

    .line 68698
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Lcom/facebook/ads/redexgen/X/3e;

    .line 68699
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/av;->A07:Z

    .line 68700
    new-instance v0, Lcom/facebook/ads/redexgen/X/43;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/43;-><init>(Lcom/facebook/ads/redexgen/X/42;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A03:Lcom/facebook/ads/redexgen/X/43;

    .line 68701
    return-void
.end method

.method private A00(II)I
    .locals 9

    .line 68702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 68703
    .local p0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local p1, "i":I
    :goto_0
    const/16 v4, 0x8

    const/4 v2, 0x1

    if-ltz v1, :cond_10

    .line 68704
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/av;->A06:Ljava/util/ArrayList;

    sget-object v3, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v3, v3, v0

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x48

    if-eq v3, v0, :cond_f

    sget-object v5, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const-string v3, "RXwmqEJjkFOvlDzyVMWLxAnZbshuBghF"

    const/4 v0, 0x2

    aput-object v3, v5, v0

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/3f;

    .line 68705
    .local v0, "postponed":Lcom/facebook/ads/redexgen/X/3f;
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v5, 0x2

    if-ne v0, v4, :cond_9

    .line 68706
    iget v4, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-ge v4, v0, :cond_8

    .line 68707
    iget v8, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 68708
    .local p2, "start":I
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    .line 68709
    .local v1, "end":I
    .restart local v1    # "end":I
    :goto_1
    if-lt p1, v8, :cond_6

    if-gt p1, v0, :cond_6

    .line 68710
    iget v7, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    sget-object v4, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v4, v4, v0

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v0, 0x48

    if-eq v4, v0, :cond_e

    sget-object v6, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const-string v4, "tnymTduNNqj5gbMZiiLndM7j16AYLWHo"

    const/4 v0, 0x5

    aput-object v4, v6, v0

    const-string v4, "d35FQsLKKcSnGpGEDgac3rYEP8rpjxfb"

    const/4 v0, 0x6

    aput-object v4, v6, v0

    if-ne v8, v7, :cond_3

    .line 68711
    if-ne p2, v2, :cond_2

    .line 68712
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v0, v2

    iput v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    .line 68713
    :cond_0
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 68714
    .end local v0    # "postponed":Lcom/facebook/ads/redexgen/X/3f;
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 68715
    :cond_2
    if-ne p2, v5, :cond_0

    .line 68716
    iget v5, v3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr v5, v2

    sget-object v4, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v2, v4, v0

    const/4 v0, 0x6

    aget-object v4, v4, v0

    const/16 v0, 0x1f

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_d

    sget-object v4, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const-string v2, "lGqfini7Viy3P3TCsMZX3kLQeRO4bKJd"

    const/4 v0, 0x2

    aput-object v2, v4, v0

    iput v5, v3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    goto :goto_2

    .line 68717
    :cond_3
    if-ne p2, v2, :cond_5

    .line 68718
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    add-int/2addr v0, v2

    iput v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 68719
    :cond_4
    :goto_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 68720
    :cond_5
    if-ne p2, v5, :cond_4

    .line 68721
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    sub-int/2addr v0, v2

    iput v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    goto :goto_4

    .line 68722
    :cond_6
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-ge p1, v0, :cond_1

    .line 68723
    if-ne p2, v2, :cond_7

    .line 68724
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    add-int/2addr v0, v2

    iput v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 68725
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v0, v2

    iput v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    goto :goto_3

    .line 68726
    :cond_7
    if-ne p2, v5, :cond_1

    .line 68727
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    sub-int/2addr v0, v2

    iput v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 68728
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr v0, v2

    iput v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    goto :goto_3

    .line 68729
    .end local p2    # "start":I
    .end local v1    # "end":I
    :cond_8
    iget v8, v3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    .line 68730
    .restart local p2    # "start":I
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    goto/16 :goto_1

    .line 68731
    :cond_9
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-gt v0, p1, :cond_b

    .line 68732
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    if-ne v0, v2, :cond_a

    .line 68733
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr p1, v0

    goto :goto_3

    .line 68734
    :cond_a
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    if-ne v0, v5, :cond_1

    .line 68735
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr p1, v0

    goto :goto_3

    .line 68736
    :cond_b
    if-ne p2, v2, :cond_c

    .line 68737
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    add-int/2addr v0, v2

    iput v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    goto :goto_3

    .line 68738
    :cond_c
    if-ne p2, v5, :cond_1

    .line 68739
    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    sub-int/2addr v0, v2

    iput v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    goto :goto_3

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68740
    .end local p1    # "i":I
    :cond_10
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .restart local p1    # "i":I
    :goto_5
    if-ltz v3, :cond_14

    .line 68741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/3f;

    .line 68742
    .local v0, "op":Lcom/facebook/ads/redexgen/X/3f;
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    if-ne v0, v4, :cond_13

    .line 68743
    iget v1, v2, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-eq v1, v0, :cond_11

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-gez v0, :cond_12

    .line 68744
    :cond_11
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 68745
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/av;->ACu(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68746
    .end local v0    # "op":Lcom/facebook/ads/redexgen/X/3f;
    :cond_12
    :goto_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 68747
    :cond_13
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-gtz v0, :cond_12

    .line 68748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 68749
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/av;->ACu(Lcom/facebook/ads/redexgen/X/3f;)V

    goto :goto_6

    .line 68750
    .end local p1    # "i":I
    :cond_14
    return p1
.end method

.method private final A01(II)I
    .locals 6

    .line 68751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 68752
    .local p0, "count":I
    .local p1, "i":I
    :goto_0
    if-ge p2, v3, :cond_7

    .line 68753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/3f;

    .line 68754
    .local p2, "op":Lcom/facebook/ads/redexgen/X/3f;
    iget v1, v4, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_3

    .line 68755
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-ne v0, p1, :cond_1

    .line 68756
    iget p1, v4, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    .line 68757
    .end local p2    # "op":Lcom/facebook/ads/redexgen/X/3f;
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 68758
    :cond_1
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-ge v0, p1, :cond_2

    .line 68759
    add-int/lit8 p1, p1, -0x1

    .line 68760
    :cond_2
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-gt v0, p1, :cond_0

    .line 68761
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 68762
    :cond_3
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-gt v0, p1, :cond_0

    .line 68763
    iget v1, v4, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_6

    .line 68764
    iget v5, v4, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v5, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const-string v1, "qM6qvpRRS"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Q6"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p1, v5, :cond_5

    .line 68765
    const/4 v0, -0x1

    return v0

    .line 68766
    :cond_5
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr p1, v0

    goto :goto_1

    .line 68767
    :cond_6
    iget v1, v4, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 68768
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr p1, v0

    goto :goto_1

    .line 68769
    .end local p1    # "i":I
    :cond_7
    return p1
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/av;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xa1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/av;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x21t
        0x1at
        0x1ft
        0x1at
        0x1bt
        0x3t
        0x1at
        0x54t
        0x1t
        0x4t
        0x10t
        0x15t
        0x0t
        0x11t
        0x54t
        0x1bt
        0x4t
        0x54t
        0x0t
        0xdt
        0x4t
        0x11t
        0x54t
        0x12t
        0x1bt
        0x6t
        0x54t
        0xct
        0xdt
        0xft
        0x1at
        0x43t
        0x11t
        0x6t
        0xet
        0xct
        0x15t
        0x6t
        0x43t
        0x2t
        0xdt
        0x7t
        0x43t
        0x16t
        0x13t
        0x7t
        0x2t
        0x17t
        0x6t
        0x43t
        0xct
        0x13t
        0x10t
        0x43t
        0x0t
        0x2t
        0xdt
        0x43t
        0x1t
        0x6t
        0x43t
        0x7t
        0xat
        0x10t
        0x13t
        0x2t
        0x17t
        0x0t
        0xbt
        0x6t
        0x7t
        0x43t
        0xat
        0xdt
        0x43t
        0x5t
        0xat
        0x11t
        0x10t
        0x17t
        0x43t
        0x13t
        0x2t
        0x10t
        0x10t
        0x4t
        0x1bt
        0x4bt
        0x18t
        0x3t
        0x4t
        0x1et
        0x7t
        0xft
        0x4bt
        0x9t
        0xet
        0x4bt
        0x19t
        0xet
        0x6t
        0x4t
        0x1dt
        0xet
        0x4bt
        0x4t
        0x19t
        0x4bt
        0x1et
        0x1bt
        0xft
        0xat
        0x1ft
        0xet
        0x45t
        0x5at
        0x41t
        0x46t
        0x5ct
        0x45t
        0x4dt
        0x9t
        0x47t
        0x46t
        0x5dt
        0x9t
        0x4dt
        0x40t
        0x5at
        0x59t
        0x48t
        0x5dt
        0x4at
        0x41t
        0x9t
        0x48t
        0x4dt
        0x4dt
        0x9t
        0x46t
        0x5bt
        0x9t
        0x44t
        0x46t
        0x5ft
        0x4ct
        0x9t
        0x4ft
        0x46t
        0x5bt
        0x9t
        0x59t
        0x5bt
        0x4ct
        0x9t
        0x45t
        0x48t
        0x50t
        0x46t
        0x5ct
        0x5dt
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "t5607oHfL2MNwmRFcsOr1jnyxzutumg5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jNVCF7hNBx7qTlxJtSxtZf62y0YMH9ti"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vdh53KDEVDvYPF4U9zJ9CmemLfeqkfcW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xmowDJGre"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZTG0qcJaBRai17vkpDLZ7jbeFwjjrIPL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kzc7Q54viT3CLivIFTQawvhHzc5bSJU6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6m9Kb2lg4QS4P0ZcGJ2XwsRwfv4UyCAv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "gH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 0

    .line 68770
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/av;->A0A(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68771
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 0

    .line 68772
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/av;->A0A(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68773
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 10

    .line 68774
    iget v8, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 68775
    .local p0, "tmpStart":I
    const/4 v7, 0x0

    .line 68776
    .local p1, "tmpCount":I
    iget v9, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v9, v0

    .line 68777
    .local v8, "tmpEnd":I
    const/4 v6, -0x1

    .line 68778
    .local v7, "type":I
    iget v5, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .local v9, "position":I
    :goto_0
    const/4 v4, 0x0

    const/4 v3, 0x2

    if-ge v5, v9, :cond_5

    .line 68779
    const/4 v2, 0x0

    .line 68780
    .local v6, "typeChanged":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Lcom/facebook/ads/redexgen/X/3e;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/3e;->A5K(I)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v0

    .line 68781
    .local v5, "vh":Lcom/facebook/ads/redexgen/X/4c;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/av;->A0D(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68782
    :cond_0
    if-nez v6, :cond_1

    .line 68783
    invoke-virtual {p0, v3, v8, v7, v4}, Lcom/facebook/ads/redexgen/X/av;->A9F(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object v0

    .line 68784
    .restart local v0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/av;->A09(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68785
    const/4 v2, 0x1

    .line 68786
    .end local v0
    :cond_1
    const/4 v6, 0x1

    .line 68787
    :goto_1
    if-eqz v2, :cond_2

    .line 68788
    sub-int/2addr v5, v7

    .line 68789
    sub-int/2addr v9, v7

    .line 68790
    const/4 v7, 0x1

    .line 68791
    .end local v6    # "typeChanged":Z
    .end local v5    # "vh":Lcom/facebook/ads/redexgen/X/4c;
    :goto_2
    add-int/2addr v5, v1

    goto :goto_0

    .line 68792
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 68793
    :cond_3
    if-ne v6, v1, :cond_4

    .line 68794
    invoke-virtual {p0, v3, v8, v7, v4}, Lcom/facebook/ads/redexgen/X/av;->A9F(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object v0

    .line 68795
    .local v0, "newOp":Lcom/facebook/ads/redexgen/X/3f;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/av;->A0A(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68796
    const/4 v2, 0x1

    .line 68797
    .end local v0    # "newOp":Lcom/facebook/ads/redexgen/X/3f;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 68798
    .end local v9    # "position":I
    :cond_5
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-eq v7, v0, :cond_6

    .line 68799
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/av;->ACu(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68800
    invoke-virtual {p0, v3, v8, v7, v4}, Lcom/facebook/ads/redexgen/X/av;->A9F(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object p1

    .line 68801
    :cond_6
    if-nez v6, :cond_7

    .line 68802
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/av;->A09(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68803
    :goto_3
    return-void

    .line 68804
    :cond_7
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/av;->A0A(Lcom/facebook/ads/redexgen/X/3f;)V

    goto :goto_3
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 8

    .line 68805
    iget v7, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 68806
    .local p0, "tmpStart":I
    const/4 v3, 0x0

    .line 68807
    .local p1, "tmpCount":I
    iget v6, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v6, v0

    .line 68808
    .local v7, "tmpEnd":I
    const/4 v2, -0x1

    .line 68809
    .local v3, "type":I
    iget v5, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .local v6, "position":I
    :goto_0
    const/4 v1, 0x4

    if-ge v5, v6, :cond_5

    .line 68810
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Lcom/facebook/ads/redexgen/X/3e;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/3e;->A5K(I)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v0

    .line 68811
    .local v6, "vh":Lcom/facebook/ads/redexgen/X/4c;
    const/4 v4, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/av;->A0D(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68812
    :cond_0
    if-nez v2, :cond_1

    .line 68813
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    invoke-virtual {p0, v1, v7, v3, v0}, Lcom/facebook/ads/redexgen/X/av;->A9F(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object v0

    .line 68814
    .restart local v0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/av;->A09(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68815
    const/4 v3, 0x0

    .line 68816
    move v7, v5

    .line 68817
    .end local v0
    :cond_1
    const/4 v2, 0x1

    .line 68818
    .end local v6    # "vh":Lcom/facebook/ads/redexgen/X/4c;
    :goto_1
    add-int/2addr v3, v4

    .line 68819
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 68820
    :cond_2
    if-ne v2, v4, :cond_4

    .line 68821
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    invoke-virtual {p0, v1, v7, v3, v0}, Lcom/facebook/ads/redexgen/X/av;->A9F(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68822
    .local v0, "newOp":Lcom/facebook/ads/redexgen/X/3f;
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const-string v1, "ThYjYDciT"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "z3"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/av;->A0A(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68823
    const/4 v3, 0x0

    .line 68824
    move v7, v5

    .line 68825
    .end local v0    # "newOp":Lcom/facebook/ads/redexgen/X/3f;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 68826
    .end local v6
    :cond_5
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-eq v3, v0, :cond_6

    .line 68827
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    .line 68828
    .local v6, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/av;->ACu(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68829
    invoke-virtual {p0, v1, v7, v3, v0}, Lcom/facebook/ads/redexgen/X/av;->A9F(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object p1

    .line 68830
    .end local v6    # "payload":Ljava/lang/Object;
    :cond_6
    if-nez v2, :cond_7

    .line 68831
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/av;->A09(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68832
    :goto_2
    return-void

    .line 68833
    :cond_7
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/av;->A0A(Lcom/facebook/ads/redexgen/X/3f;)V

    goto :goto_2
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 11

    .line 68834
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_b

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/16 v0, 0x8

    if-eq v1, v0, :cond_b

    .line 68835
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/av;->A00(II)I

    move-result v6

    .line 68836
    .local p0, "tmpStart":I
    const/4 v5, 0x1

    .line 68837
    .local v1, "tmpCnt":I
    iget v4, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 68838
    .local v0, "offsetPositionForPartial":I
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v8, 0x2

    const/4 v7, 0x4

    if-eq v0, v8, :cond_6

    if-ne v0, v7, :cond_a

    .line 68839
    const/4 v10, 0x1

    .line 68840
    .local v1, "positionMultiplier":I
    :goto_0
    const/4 v3, 0x1

    .local v0, "p":I
    :goto_1
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-ge v3, v0, :cond_7

    .line 68841
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    mul-int v0, v10, v3

    add-int/2addr v1, v0

    .line 68842
    .local v6, "pos":I
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/av;->A00(II)I

    move-result v2

    .line 68843
    .local v5, "updatedPos":I
    const/4 v9, 0x0

    .line 68844
    .local v4, "continuous":Z
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v1, 0x0

    if-eq v0, v8, :cond_4

    if-eq v0, v7, :cond_2

    .line 68845
    :goto_2
    if-eqz v9, :cond_0

    .line 68846
    add-int/lit8 v5, v5, 0x1

    .line 68847
    .end local v6    # "pos":I
    .end local v5    # "updatedPos":I
    .end local v4    # "continuous":Z
    .end local v0    # "p":I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 68848
    :cond_0
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    invoke-virtual {p0, v1, v6, v5, v0}, Lcom/facebook/ads/redexgen/X/av;->A9F(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object v0

    .line 68849
    .local v0, "tmp":Lcom/facebook/ads/redexgen/X/3f;
    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/av;->A0B(Lcom/facebook/ads/redexgen/X/3f;I)V

    .line 68850
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/av;->ACu(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68851
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    if-ne v0, v7, :cond_1

    .line 68852
    add-int/2addr v4, v5

    .line 68853
    :cond_1
    move v6, v2

    .line 68854
    const/4 v5, 0x1

    goto :goto_3

    .line 68855
    :cond_2
    add-int/lit8 v0, v6, 0x1

    if-ne v2, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    move v9, v1

    .line 68856
    goto :goto_2

    .line 68857
    :cond_4
    if-ne v2, v6, :cond_5

    const/4 v1, 0x1

    :cond_5
    move v9, v1

    goto :goto_2

    .line 68858
    :cond_6
    const/4 v10, 0x0

    .line 68859
    .restart local v1    # "positionMultiplier":I
    goto :goto_0

    .line 68860
    .end local v0    # "tmp":Lcom/facebook/ads/redexgen/X/3f;
    :cond_7
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    .line 68861
    .local p1, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/av;->ACu(Lcom/facebook/ads/redexgen/X/3f;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68862
    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const-string v1, "AzvBDLIVy"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "8W"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-lez v5, :cond_9

    .line 68863
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    invoke-virtual {p0, v0, v6, v5, v3}, Lcom/facebook/ads/redexgen/X/av;->A9F(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object v0

    .line 68864
    .local v0, "tmp":Lcom/facebook/ads/redexgen/X/3f;
    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/av;->A0B(Lcom/facebook/ads/redexgen/X/3f;I)V

    .line 68865
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/av;->ACu(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68866
    .end local v0    # "tmp":Lcom/facebook/ads/redexgen/X/3f;
    :cond_9
    return-void

    .line 68867
    .end local v1    # "positionMultiplier":I
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x55

    const/16 v1, 0x1e

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/av;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68868
    .end local p0    # "tmpStart":I
    .end local p1    # "payload":Ljava/lang/Object;
    .end local v1
    .end local v0
    .end local v1
    :cond_b
    const/16 v2, 0x73

    const/16 v1, 0x2e

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/av;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 5

    .line 68869
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68870
    iget v4, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v0, 0x1

    if-eq v4, v0, :cond_2

    const/4 v0, 0x2

    if-eq v4, v0, :cond_1

    const/4 v0, 0x4

    if-eq v4, v0, :cond_0

    const/16 v3, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const-string v1, "UjSN15OIQodUplqoZSzrxDqyLg5tI9zT"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_3

    .line 68871
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3e;->A9H(II)V

    .line 68872
    :goto_0
    return-void

    .line 68873
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v2, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3e;->A8z(IILjava/lang/Object;)V

    .line 68874
    goto :goto_0

    .line 68875
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3e;->A9J(II)V

    .line 68876
    goto :goto_0

    .line 68877
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3e;->A9G(II)V

    .line 68878
    goto :goto_0

    .line 68879
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/av;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0B(Lcom/facebook/ads/redexgen/X/3f;I)V
    .locals 5

    .line 68880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Lcom/facebook/ads/redexgen/X/3e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3e;->A9t(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68881
    iget v4, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v0, 0x2

    if-eq v4, v0, :cond_2

    const/4 v3, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const-string v1, "0TVpFT6s5"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "qD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_1

    .line 68882
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    invoke-interface {v2, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/3e;->A8z(IILjava/lang/Object;)V

    .line 68883
    goto :goto_0

    .line 68884
    :cond_1
    const/16 v2, 0x1b

    const/16 v1, 0x3a

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/av;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68885
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-interface {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/3e;->A9I(II)V

    .line 68886
    :goto_0
    return-void
.end method

.method private final A0C(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3f;",
            ">;)V"
        }
    .end annotation

    .line 68887
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 68888
    .local p0, "count":I
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 68889
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3f;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/av;->ACu(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68890
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68891
    .end local p1    # "i":I
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68892
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const-string v1, "ayjYK9F9Z6sDhNCNS52R1Qcr5XRGx639"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void
.end method

.method private A0D(I)Z
    .locals 7

    .line 68893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 68894
    .local p0, "count":I
    const/4 v4, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 68895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/3f;

    .line 68896
    .local v0, "op":Lcom/facebook/ads/redexgen/X/3f;
    iget v1, v6, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/16 v0, 0x8

    const/4 v3, 0x1

    if-ne v1, v0, :cond_0

    .line 68897
    iget v1, v6, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/lit8 v0, v4, 0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/av;->A01(II)I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 68898
    return v3

    .line 68899
    :cond_0
    iget v0, v6, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    if-ne v0, v3, :cond_2

    .line 68900
    iget v2, v6, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v2, v0

    .line 68901
    .local v5, "end":I
    iget v1, v6, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .local v4, "pos":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 68902
    add-int/lit8 v0, v4, 0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/av;->A01(II)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 68903
    return v3

    .line 68904
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68905
    .end local v0    # "op":Lcom/facebook/ads/redexgen/X/3f;
    .end local v5    # "end":I
    .end local v4    # "pos":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68906
    .end local p1    # "i":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A0E(I)I
    .locals 1

    .line 68907
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/av;->A01(II)I

    move-result v0

    return v0
.end method

.method public final A0F(I)I
    .locals 8

    .line 68908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 68909
    .local p0, "size":I
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v2, v3, :cond_8

    .line 68910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/3f;

    .line 68911
    .local v0, "op":Lcom/facebook/ads/redexgen/X/3f;
    iget v6, v4, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v0, 0x1

    if-eq v6, v0, :cond_6

    const/4 v7, 0x2

    sget-object v5, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v5, v0

    const/4 v0, 0x4

    aget-object v5, v5, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v5, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const-string v1, "gZM0tmw7TY8Fc2hKKmBvExpsk1vQzGm1"

    const/4 v0, 0x0

    aput-object v1, v5, v0

    const-string v1, "6mU07SGB9ffO39gTeuhJvEbbHTovdDt1"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    if-eq v6, v7, :cond_4

    const/16 v0, 0x8

    if-eq v6, v0, :cond_1

    goto :goto_1

    .line 68912
    :cond_1
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-ne v0, p1, :cond_2

    .line 68913
    iget p1, v4, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    goto :goto_1

    .line 68914
    :cond_2
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-ge v0, p1, :cond_3

    .line 68915
    add-int/lit8 p1, p1, -0x1

    .line 68916
    :cond_3
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-gt v0, p1, :cond_7

    .line 68917
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 68918
    :cond_4
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-gt v0, p1, :cond_7

    .line 68919
    iget v1, v4, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v1, v0

    .line 68920
    .local v3, "end":I
    if-le v1, p1, :cond_5

    .line 68921
    const/4 v0, -0x1

    return v0

    .line 68922
    :cond_5
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr p1, v0

    .line 68923
    .end local v3    # "end":I
    goto :goto_1

    .line 68924
    :cond_6
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-gt v0, p1, :cond_7

    .line 68925
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr p1, v0

    .line 68926
    .end local v0    # "op":Lcom/facebook/ads/redexgen/X/3f;
    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68927
    .end local p1    # "i":I
    :cond_8
    return p1
.end method

.method public final A0G()V
    .locals 7

    .line 68928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 68929
    .local p0, "count":I
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 68930
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const-string v1, "hlU0Qrdp33aIQ4Nx5XRCxKVlJRMQ99kt"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "e8W0Wrb7iKuE4ta48s0tNKQ3kiAwVCDy"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/3f;

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/3e;->A9v(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68931
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 68932
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A06:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/av;->A0C(Ljava/util/List;)V

    .line 68933
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/av;->A00:I

    .line 68934
    return-void
.end method

.method public final A0H()V
    .locals 8

    .line 68935
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/av;->A0G()V

    .line 68936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 68937
    .local p0, "count":I
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v4, v5, :cond_6

    .line 68938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/3f;

    .line 68939
    .local v5, "op":Lcom/facebook/ads/redexgen/X/3f;
    iget v3, v6, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v0, 0x1

    if-eq v3, v0, :cond_4

    const/4 v0, 0x2

    if-eq v3, v0, :cond_3

    const/4 v7, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/av;->A09:[Ljava/lang/String;

    const-string v1, "vBuikNkKhZOg3TZJhpFFPZZjFvQ3Rdus"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "6NxHKkjx7LBR9NWiNh40XMfgjRwqWH51"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq v3, v7, :cond_2

    const/16 v0, 0x8

    if-eq v3, v0, :cond_1

    .line 68940
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A04:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 68941
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 68942
    .end local v5    # "op":Lcom/facebook/ads/redexgen/X/3f;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68943
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Lcom/facebook/ads/redexgen/X/3e;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/3e;->A9v(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68944
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v1, v6, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3e;->A9H(II)V

    goto :goto_1

    .line 68945
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Lcom/facebook/ads/redexgen/X/3e;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/3e;->A9v(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68946
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v2, v6, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v1, v6, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3e;->A8z(IILjava/lang/Object;)V

    .line 68947
    goto :goto_1

    .line 68948
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Lcom/facebook/ads/redexgen/X/3e;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/3e;->A9v(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68949
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v1, v6, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3e;->A9I(II)V

    .line 68950
    goto :goto_1

    .line 68951
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Lcom/facebook/ads/redexgen/X/3e;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/3e;->A9v(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68952
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/av;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v1, v6, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3e;->A9G(II)V

    .line 68953
    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 68954
    .end local v0    # "i":I
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A05:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/av;->A0C(Ljava/util/List;)V

    .line 68955
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/av;->A00:I

    .line 68956
    return-void
.end method

.method public final A0I()V
    .locals 5

    .line 68957
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/av;->A03:Lcom/facebook/ads/redexgen/X/43;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A05:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/43;->A06(Ljava/util/List;)V

    .line 68958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 68959
    .local p0, "count":I
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v3, v4, :cond_5

    .line 68960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/3f;

    .line 68961
    .local v0, "op":Lcom/facebook/ads/redexgen/X/3f;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    .line 68962
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A04:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 68963
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 68964
    .end local v0    # "op":Lcom/facebook/ads/redexgen/X/3f;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68965
    :cond_1
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/av;->A06(Lcom/facebook/ads/redexgen/X/3f;)V

    goto :goto_1

    .line 68966
    :cond_2
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/av;->A08(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68967
    goto :goto_1

    .line 68968
    :cond_3
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/av;->A07(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68969
    goto :goto_1

    .line 68970
    :cond_4
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/av;->A05(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 68971
    goto :goto_1

    .line 68972
    .end local v1    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68973
    return-void
.end method

.method public final A0J()V
    .locals 1

    .line 68974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A05:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/av;->A0C(Ljava/util/List;)V

    .line 68975
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A06:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/av;->A0C(Ljava/util/List;)V

    .line 68976
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/av;->A00:I

    .line 68977
    return-void
.end method

.method public final A0K()Z
    .locals 1

    .line 68978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0L()Z
    .locals 1

    .line 68979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0M(I)Z
    .locals 1

    .line 68980
    iget v0, p0, Lcom/facebook/ads/redexgen/X/av;->A00:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A9F(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;
    .locals 1

    .line 68981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A01:Lcom/facebook/ads/redexgen/X/2V;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2V;->A2P()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3f;

    .line 68982
    .local p0, "op":Lcom/facebook/ads/redexgen/X/3f;
    if-nez v0, :cond_0

    .line 68983
    new-instance v0, Lcom/facebook/ads/redexgen/X/3f;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/3f;-><init>(IIILjava/lang/Object;)V

    .line 68984
    :goto_0
    return-object v0

    .line 68985
    :cond_0
    iput p1, v0, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    .line 68986
    iput p2, v0, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 68987
    iput p3, v0, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    .line 68988
    iput-object p4, v0, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final ACu(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 1

    .line 68989
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/av;->A07:Z

    if-nez v0, :cond_0

    .line 68990
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    .line 68991
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/av;->A01:Lcom/facebook/ads/redexgen/X/2V;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/2V;->AD2(Ljava/lang/Object;)Z

    .line 68992
    :cond_0
    return-void
.end method
