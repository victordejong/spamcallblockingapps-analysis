.class public final Lcom/facebook/ads/redexgen/X/EI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:J

.field public final A04:J

.field public final A05:J

.field public final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/EH;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Z

.field public final A08:Z

.field public final A09:Z

.field public final A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/EI;->A04()V

    return-void
.end method

.method public constructor <init>(JZZZLjava/util/List;JZJIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZ",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/EH;",
            ">;JZJIII)V"
        }
    .end annotation

    .line 28799
    .local p7, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28800
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/EI;->A04:J

    .line 28801
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/EI;->A0A:Z

    .line 28802
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/EI;->A08:Z

    .line 28803
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/EI;->A09:Z

    .line 28804
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A06:Ljava/util/List;

    .line 28805
    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/EI;->A05:J

    .line 28806
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/EI;->A07:Z

    .line 28807
    iput-wide p10, p0, Lcom/facebook/ads/redexgen/X/EI;->A03:J

    .line 28808
    iput p12, p0, Lcom/facebook/ads/redexgen/X/EI;->A02:I

    .line 28809
    iput p13, p0, Lcom/facebook/ads/redexgen/X/EI;->A00:I

    .line 28810
    iput p14, p0, Lcom/facebook/ads/redexgen/X/EI;->A01:I

    .line 28811
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 28812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28813
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A04:J

    .line 28814
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A0A:Z

    .line 28815
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A08:Z

    .line 28816
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A09:Z

    .line 28817
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 28818
    .local p0, "componentSpliceListLength":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 28819
    .local v3, "componentSpliceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v1, v3, :cond_3

    .line 28820
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/EH;->A01(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/EH;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28821
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 28822
    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    .line 28823
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 28824
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 28825
    .end local v0    # "i":I
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A06:Ljava/util/List;

    .line 28826
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A05:J

    .line 28827
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_4

    const/4 v5, 0x1

    :cond_4
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/EI;->A07:Z

    .line 28828
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A03:J

    .line 28829
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A02:I

    .line 28830
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A00:I

    .line 28831
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A01:I

    .line 28832
    return-void
.end method

.method public static A00(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/EI;
    .locals 1

    .line 28833
    new-instance v0, Lcom/facebook/ads/redexgen/X/EI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/EI;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static synthetic A01(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/EI;
    .locals 0

    .line 28834
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/EI;->A00(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/EI;

    move-result-object p0

    return-object p0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/EI;
    .locals 22

    .line 28835
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v8

    .line 28836
    .local v16, "spliceEventId":J
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    .line 28837
    .local v17, "spliceEventCancelIndicator":Z
    :goto_0
    const/4 v11, 0x0

    .line 28838
    .local p0, "outOfNetworkIndicator":Z
    const/4 v12, 0x0

    .line 28839
    .local v0, "programSpliceFlag":Z
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 28840
    .local v0, "utcSpliceTime":J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 28841
    .local v10, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    const/16 v19, 0x0

    .line 28842
    .local v11, "uniqueProgramId":I
    const/16 v20, 0x0

    .line 28843
    .local v12, "availNum":I
    const/16 v21, 0x0

    .line 28844
    .local v14, "availsExpected":I
    const/16 v16, 0x0

    .line 28845
    .local v10, "autoReturn":Z
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 28846
    .local v13, "breakDurationUs":J
    if-nez v10, :cond_8

    .line 28847
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/EI;->A0B:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 28848
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 28849
    .local v20, "headerByte":I
    :cond_1
    sget-object v3, Lcom/facebook/ads/redexgen/X/EI;->A0B:[Ljava/lang/String;

    const-string v1, "oYMFgXMCdR9ldlOsYeO"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_5

    const/4 v11, 0x1

    .line 28850
    :goto_1
    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_4

    const/4 v12, 0x1

    .line 28851
    :goto_2
    and-int/lit8 v0, v2, 0x20

    if-eqz v0, :cond_3

    const/4 v7, 0x1

    .line 28852
    .local v21, "durationFlag":Z
    :goto_3
    if-eqz v12, :cond_2

    .line 28853
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v14

    .line 28854
    :cond_2
    if-nez v12, :cond_6

    .line 28855
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v4

    .line 28856
    .local v8, "componentCount":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 28857
    const/4 v3, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v3, v4, :cond_6

    .line 28858
    .end local p0    # "outOfNetworkIndicator":Z
    .local v0, "outOfNetworkIndicator":Z
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v6

    .line 28859
    .local p0, "componentTag":I
    .end local v0    # "outOfNetworkIndicator":Z
    .end local v0
    .local v0, "programSpliceFlag":Z
    .local v1, "utcSpliceTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v0

    .line 28860
    .local v0, "componentUtcSpliceTime":J
    .end local v8    # "componentCount":I
    .local v0, "componentCount":I
    const/4 v5, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/EH;

    invoke-direct {v2, v6, v0, v1, v5}, Lcom/facebook/ads/redexgen/X/EH;-><init>(IJLcom/facebook/ads/redexgen/X/EG;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28861
    .end local p0    # "componentTag":I
    .end local v0    # "componentCount":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 28862
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 28863
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 28864
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 28865
    .end local p0
    .end local v0
    .end local v0
    .restart local v0    # "componentCount":I
    .restart local v0    # "componentCount":I
    .restart local v1    # "utcSpliceTime":J
    :cond_6
    if-eqz v7, :cond_7

    .line 28866
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    int-to-long v0, v0

    .line 28867
    .local p0, "firstByte":J
    const-wide/16 v5, 0x80

    and-long/2addr v5, v0

    const-wide/16 v3, 0x0

    cmp-long v2, v5, v3

    if-eqz v2, :cond_9

    const/16 v16, 0x1

    .line 28868
    :goto_5
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v0

    or-long/2addr v2, v0

    .line 28869
    .local v2, "breakDuration90khz":J
    const-wide/16 v17, 0x3e8

    mul-long v17, v17, v2

    const-wide/16 v0, 0x5a

    div-long v17, v17, v0

    .line 28870
    .end local p0    # "firstByte":J
    .end local v2    # "breakDuration90khz":J
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v19

    .line 28871
    .end local v11    # "uniqueProgramId":I
    .local p0, "uniqueProgramId":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v20

    .line 28872
    .end local v12    # "availNum":I
    .local v8, "availNum":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v21

    .line 28873
    .end local v14    # "availsExpected":I
    .local v2, "availsExpected":I
    .end local p0    # "uniqueProgramId":I
    .end local v0    # "componentCount":I
    .end local v0
    .end local v10    # "autoReturn":Z
    .end local v11
    .end local v12
    .end local v14
    .end local v10
    .end local v13    # "breakDurationUs":J
    .local v2, "componentSplices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;>;"
    .local v1, "autoReturn":Z
    .restart local v0    # "componentCount":I
    .restart local v0    # "componentCount":I
    .restart local v1    # "autoReturn":Z
    .local v0, "breakDurationUs":J
    .local v1, "uniqueProgramId":I
    .local v0, "availNum":I
    .local v0, "availsExpected":I
    :cond_8
    new-instance v7, Lcom/facebook/ads/redexgen/X/EI;

    invoke-direct/range {v7 .. v21}, Lcom/facebook/ads/redexgen/X/EI;-><init>(JZZZLjava/util/List;JZJIII)V

    return-object v7

    .line 28874
    :cond_9
    const/16 v16, 0x0

    goto :goto_5
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/EI;
    .locals 0

    .line 28875
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/EI;->A02(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/EI;

    move-result-object p0

    return-object p0
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "s27kRN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "abG5pKADna"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "w2jztrB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "I7geUVX8H5XW4NGFgS7QGYJa3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "W37aGUNVZO5G"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "W3qhVhIXcY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2nbP2bKsNJFzfOABHc993I7Qj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6HcftuEFFeXx4hy"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/EI;->A0B:[Ljava/lang/String;

    return-void
.end method

.method private A05(Landroid/os/Parcel;)V
    .locals 3

    .line 28876
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A04:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 28877
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A0A:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 28878
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A08:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 28879
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A09:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 28880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 28881
    .local p0, "componentSpliceListSize":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28882
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 28883
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A06:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/EH;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/EH;->A03(Lcom/facebook/ads/redexgen/X/EH;Landroid/os/Parcel;)V

    .line 28884
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28885
    .end local p1    # "i":I
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A05:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 28886
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A07:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 28887
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A03:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 28888
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A02:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28889
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28890
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EI;->A01:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28891
    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/EI;Landroid/os/Parcel;)V
    .locals 0

    .line 28892
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EI;->A05(Landroid/os/Parcel;)V

    return-void
.end method
