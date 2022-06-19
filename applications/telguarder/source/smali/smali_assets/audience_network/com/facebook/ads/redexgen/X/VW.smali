.class public final Lcom/facebook/ads/redexgen/X/VW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/VV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InnerEbmlReaderOutput"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/VV;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VW;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VV;)V
    .locals 0

    .line 61013
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VW;->A00:Lcom/facebook/ads/redexgen/X/VV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/VV;Lcom/facebook/ads/redexgen/X/VX;)V
    .locals 0

    .line 61014
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VW;-><init>(Lcom/facebook/ads/redexgen/X/VV;)V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "z5F"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "RpS7DDB0drxdWrt2VHcxWXvwqmYUhO1v"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "kl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "erO1jDiIwH9o8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Esb1gdhTUQeVpl84e3v2f3JRXmU7Qxe5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mdxlfhLbIZTE6ddVynUUsrby3zAPakR8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Sf3AMcRSlWeCH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "80rEMZI7PSV1S"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VW;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A3o(IILcom/facebook/ads/redexgen/X/CH;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VW;->A00:Lcom/facebook/ads/redexgen/X/VV;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/VV;->A0L(IILcom/facebook/ads/redexgen/X/CH;)V

    .line 61016
    return-void
.end method

.method public final A58(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 61017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VW;->A00:Lcom/facebook/ads/redexgen/X/VV;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/VV;->A0J(I)V

    .line 61018
    return-void
.end method

.method public final A5L(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 61019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VW;->A00:Lcom/facebook/ads/redexgen/X/VV;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/VV;->A0K(ID)V

    .line 61020
    return-void
.end method

.method public final A6K(I)I
    .locals 4

    .line 61021
    sparse-switch p1, :sswitch_data_0

    .line 61022
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/VW;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61023
    :sswitch_0
    const/4 v3, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/VW;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/VW;->A01:[Ljava/lang/String;

    const-string v1, "KieZbaLG8zVUgaQcX5gsVl1tglBFyXET"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    .line 61024
    :sswitch_1
    const/4 v0, 0x5

    return v0

    .line 61025
    :sswitch_2
    const/4 v0, 0x4

    return v0

    .line 61026
    :sswitch_3
    const/4 v0, 0x1

    return v0

    .line 61027
    :sswitch_4
    const/4 v0, 0x3

    return v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/VW;->A01:[Ljava/lang/String;

    const-string v1, "qyLNPMnN6IpIc"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "cFgjNox2SvUWB"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_0
        0x86 -> :sswitch_4
        0x88 -> :sswitch_0
        0x9b -> :sswitch_0
        0x9f -> :sswitch_0
        0xa0 -> :sswitch_3
        0xa1 -> :sswitch_2
        0xa3 -> :sswitch_2
        0xae -> :sswitch_3
        0xb0 -> :sswitch_0
        0xb3 -> :sswitch_0
        0xb5 -> :sswitch_1
        0xb7 -> :sswitch_3
        0xba -> :sswitch_0
        0xbb -> :sswitch_3
        0xd7 -> :sswitch_0
        0xe0 -> :sswitch_3
        0xe1 -> :sswitch_3
        0xe7 -> :sswitch_0
        0xf1 -> :sswitch_0
        0xfb -> :sswitch_0
        0x4254 -> :sswitch_0
        0x4255 -> :sswitch_2
        0x4282 -> :sswitch_4
        0x4285 -> :sswitch_0
        0x42f7 -> :sswitch_0
        0x4489 -> :sswitch_1
        0x47e1 -> :sswitch_0
        0x47e2 -> :sswitch_2
        0x47e7 -> :sswitch_3
        0x47e8 -> :sswitch_0
        0x4dbb -> :sswitch_3
        0x5031 -> :sswitch_0
        0x5032 -> :sswitch_0
        0x5034 -> :sswitch_3
        0x5035 -> :sswitch_3
        0x53ab -> :sswitch_2
        0x53ac -> :sswitch_0
        0x53b8 -> :sswitch_0
        0x54b0 -> :sswitch_0
        0x54b2 -> :sswitch_0
        0x54ba -> :sswitch_0
        0x55aa -> :sswitch_0
        0x55b0 -> :sswitch_3
        0x55b9 -> :sswitch_0
        0x55ba -> :sswitch_0
        0x55bb -> :sswitch_0
        0x55bc -> :sswitch_0
        0x55bd -> :sswitch_0
        0x55d0 -> :sswitch_3
        0x55d1 -> :sswitch_1
        0x55d2 -> :sswitch_1
        0x55d3 -> :sswitch_1
        0x55d4 -> :sswitch_1
        0x55d5 -> :sswitch_1
        0x55d6 -> :sswitch_1
        0x55d7 -> :sswitch_1
        0x55d8 -> :sswitch_1
        0x55d9 -> :sswitch_1
        0x55da -> :sswitch_1
        0x56aa -> :sswitch_0
        0x56bb -> :sswitch_0
        0x6240 -> :sswitch_3
        0x6264 -> :sswitch_0
        0x63a2 -> :sswitch_2
        0x6d80 -> :sswitch_3
        0x7670 -> :sswitch_3
        0x7672 -> :sswitch_2
        0x22b59c -> :sswitch_4
        0x23e383 -> :sswitch_0
        0x2ad7b1 -> :sswitch_0
        0x114d9b74 -> :sswitch_3
        0x1549a966 -> :sswitch_3
        0x1654ae6b -> :sswitch_3
        0x18538067 -> :sswitch_3
        0x1a45dfa3 -> :sswitch_3
        0x1c53bb6b -> :sswitch_3
        0x1f43b675 -> :sswitch_3
    .end sparse-switch
.end method

.method public final A7v(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 61028
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VW;->A00:Lcom/facebook/ads/redexgen/X/VV;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/VV;->A0M(IJ)V

    .line 61029
    return-void
.end method

.method public final A87(I)Z
    .locals 1

    .line 61030
    const v0, 0x1549a966

    if-eq p1, v0, :cond_0

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_0

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_0

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AE9(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 61031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VW;->A00:Lcom/facebook/ads/redexgen/X/VV;

    move-wide v4, p4

    move-wide v2, p2

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/VV;->A0N(IJJ)V

    .line 61032
    return-void
.end method

.method public final AEH(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 61033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VW;->A00:Lcom/facebook/ads/redexgen/X/VV;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/VV;->A0O(ILjava/lang/String;)V

    .line 61034
    return-void
.end method
