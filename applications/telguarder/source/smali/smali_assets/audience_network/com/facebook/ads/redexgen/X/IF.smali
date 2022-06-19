.class public final Lcom/facebook/ads/redexgen/X/IF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/IE;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/IE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 37775
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IF;->A09()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/IF;->A08()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/IF;->A02:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37777
    return-void
.end method

.method public static A00(Ljava/lang/String;)I
    .locals 10

    .line 37778
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v9, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x5

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v5, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v7, :cond_2

    if-eq v0, v3, :cond_1

    .line 37779
    return v9

    .line 37780
    :sswitch_0
    const/16 v2, 0x15e

    const/16 v1, 0xe

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x19c

    const/16 v1, 0xd

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    sget-object v1, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const-string v1, "dNBtfVxQUj9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "c1UOTp0BnuD"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v8, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x14b

    const/16 v1, 0x9

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x154

    const/16 v1, 0xa

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x1a9

    const/16 v1, 0x10

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const/16 v8, 0x18f

    sget-object v1, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const-string v1, "ViSK5n9AnyRcQnFiBlSGEqSxk7dkyrni"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "N2jnMDweGMmo9TClx314HQwa92dT7G9i"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v1, 0xd

    const/16 v0, 0x65

    invoke-static {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_0

    .line 37781
    :cond_1
    const/16 v0, 0xe

    return v0

    .line 37782
    :cond_2
    const/16 v0, 0x8

    return v0

    .line 37783
    :cond_3
    const/4 v0, 0x7

    return v0

    .line 37784
    :cond_4
    const/4 v0, 0x6

    return v0

    .line 37785
    :cond_5
    return v3

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_0
        -0x41455b98 -> :sswitch_1
        0xb269698 -> :sswitch_2
        0x59ae0c65 -> :sswitch_3
        0x59c2dc42 -> :sswitch_4
        0x5cc95062 -> :sswitch_5
    .end sparse-switch
.end method

.method public static A01(Ljava/lang/String;)I
    .locals 4

    .line 37786
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37787
    const/4 v0, -0x1

    return v0

    .line 37788
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IF;->A0A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37789
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const-string v1, "0Pp4vhtWsu4GDDPnKC58"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    .line 37790
    :cond_2
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IF;->A0C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37791
    const/4 v0, 0x2

    return v0

    .line 37792
    :cond_3
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IF;->A0B(Ljava/lang/String;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    if-nez v3, :cond_4

    .line 37793
    :goto_0
    const/16 v2, 0x17

    const/16 v1, 0x13

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 37794
    const/16 v2, 0x2a

    const/16 v1, 0x13

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 37795
    const/16 v2, 0xc1

    const/16 v1, 0x19

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 37796
    const/16 v2, 0x132

    const/16 v1, 0x14

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 37797
    const/16 v2, 0x6e

    const/16 v1, 0x14

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 37798
    const/16 v2, 0xef

    const/16 v1, 0x1c

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 37799
    const/16 v2, 0xda

    const/16 v1, 0x15

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 37800
    const/16 v2, 0x10b

    const/16 v1, 0x13

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 37801
    const/16 v2, 0x82

    const/16 v1, 0x12

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 37802
    const/16 v2, 0x5f

    const/16 v1, 0xf

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 37803
    const/16 v2, 0x3d

    const/16 v1, 0x13

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37804
    :cond_4
    const/4 v0, 0x3

    return v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const-string v1, "VUDD1aQFfqxUa2UMhDnXVnRZS1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_4

    goto/16 :goto_0

    .line 37805
    :cond_6
    const/16 v2, 0x50

    const/16 v1, 0xf

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 37806
    const/16 v2, 0xaf

    const/16 v1, 0x12

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 37807
    const/16 v2, 0x11e

    const/16 v1, 0x14

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_8

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 37808
    :goto_1
    const/16 v2, 0x94

    const/16 v1, 0x1b

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 37809
    :cond_7
    const/4 v3, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const-string v1, "UCcyqQeVI96"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "sBgMOb6sC8U"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const-string v1, "ZaRyw7kahfH"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const-string v1, "zGuacTUjwLO8Z8mJnHseuY1BkDqv0JzY"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    .line 37810
    :cond_a
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IF;->A02(Ljava/lang/String;)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const-string v1, "mjjF3TTKwjcMp3p3lkrcV9mTxEd1XEPE"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "b18EWZog7d0gu2ditkKCOCJdlado6gsZ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(Ljava/lang/String;)I
    .locals 4

    .line 37811
    sget-object v0, Lcom/facebook/ads/redexgen/X/IF;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 37812
    .local p0, "customMimeTypeCount":I
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 37813
    sget-object v0, Lcom/facebook/ads/redexgen/X/IF;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/IE;

    .line 37814
    .local v3, "customMimeType":Lcom/facebook/ads/redexgen/X/IE;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/IE;->A02:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37815
    iget v0, v1, Lcom/facebook/ads/redexgen/X/IE;->A00:I

    return v0

    .line 37816
    .end local v3    # "customMimeType":Lcom/facebook/ads/redexgen/X/IE;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37817
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static A03(I)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 37818
    const/16 v0, 0x20

    if-eq p0, v0, :cond_a

    const/16 v0, 0x21

    if-eq p0, v0, :cond_9

    const/16 v0, 0x23

    if-eq p0, v0, :cond_8

    const/16 v0, 0x40

    if-eq p0, v0, :cond_7

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb1

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa5

    if-eq p0, v0, :cond_5

    const/16 v0, 0xa6

    if-eq p0, v0, :cond_4

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 37819
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_3

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 37820
    :cond_1
    const/16 v3, 0x25d

    sget-object v1, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_6

    goto :goto_0

    .line 37821
    :cond_2
    const/16 p0, 0x240

    const/16 v3, 0xa

    sget-object v1, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const-string v1, "wRxFw1tViutCQebo3397"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x3a

    invoke-static {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const-string v1, "YEm559F1qEYoyaHqB5pHlwV"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    .line 37822
    :pswitch_0
    const/16 v2, 0x19c

    const/16 v1, 0xd

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37823
    :pswitch_1
    const/16 v2, 0x1a9

    const/16 v1, 0x10

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37824
    :pswitch_2
    const/16 v2, 0x185

    const/16 v1, 0xa

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37825
    :pswitch_3
    const/16 v2, 0x235

    const/16 v1, 0xb

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37826
    :pswitch_4
    const/16 v2, 0x17b

    const/16 v1, 0xa

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37827
    :pswitch_5
    const/16 v2, 0x22b

    const/16 v1, 0xa

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37828
    :cond_4
    const/16 v2, 0x154

    const/16 v1, 0xa

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37829
    :cond_5
    const/16 v2, 0x14b

    const/16 v1, 0x9

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const-string v1, "JaNUNscmkWqPqR8kMRdLMVeqbxdWTxy1"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "EVvdKLQVXxp9jOWSGP9TyrOKI2d5xg76"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v1, 0x13

    const/16 v0, 0x77

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37830
    :cond_7
    :pswitch_6
    const/16 v2, 0x16c

    const/16 v1, 0xf

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37831
    :cond_8
    const/16 v2, 0x214

    const/16 v1, 0xa

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37832
    :cond_9
    const/16 v2, 0x20b

    const/16 v1, 0x9

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37833
    :cond_a
    const/16 v2, 0x21e

    const/16 v1, 0xd

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa9
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/IF;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x48

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 37834
    if-nez p0, :cond_0

    .line 37835
    const/4 v0, 0x0

    return-object v0

    .line 37836
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 37837
    const/16 v2, 0x1c5

    const/4 v1, 0x4

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v2, 0x1c9

    const/4 v1, 0x4

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37838
    :cond_1
    const/16 v2, 0x20b

    const/16 v1, 0x9

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37839
    :cond_2
    const/16 v2, 0x1ed

    const/4 v1, 0x4

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v2, 0x1f1

    const/4 v1, 0x4

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37840
    :cond_3
    const/16 v2, 0x214

    const/16 v1, 0xa

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37841
    :cond_4
    const/16 v2, 0x281

    const/4 v1, 0x3

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v2, 0x27a

    const/4 v1, 0x4

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37842
    :cond_5
    const/16 v2, 0x25d

    const/16 v1, 0x13

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37843
    :cond_6
    const/16 v2, 0x27e

    const/4 v1, 0x3

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v2, 0x276

    const/4 v1, 0x4

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 37844
    :cond_7
    const/16 v2, 0x24a

    const/16 v1, 0x13

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37845
    :cond_8
    const/16 v2, 0x1f5

    const/4 v1, 0x4

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 37846
    const/4 v0, 0x0

    .line 37847
    .local p0, "mimeType":Ljava/lang/String;
    const/16 v4, 0x1f9

    const/4 v2, 0x5

    const/16 v1, 0xe

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 37848
    const/4 v1, 0x5

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 37849
    .local v0, "objectTypeString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_9

    .line 37850
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Ic;->A0N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37851
    .local v3, "objectTypeHexString":Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 37852
    .local v2, "objectTypeInt":I
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IF;->A03(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37853
    .end local v3    # "objectTypeHexString":Ljava/lang/String;
    .end local v2    # "objectTypeInt":I
    .end local v0    # "objectTypeString":Ljava/lang/String;
    :catch_0
    :cond_9
    if-nez v0, :cond_a

    const/16 v2, 0x16c

    const/16 v1, 0xf

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    :cond_a
    return-object v0

    .line 37854
    .end local p0    # "mimeType":Ljava/lang/String;
    :cond_b
    const/16 v2, 0x13

    const/4 v1, 0x4

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v2, 0x1cd

    const/4 v1, 0x4

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37855
    :cond_c
    const/16 v2, 0x14b

    const/16 v1, 0x9

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37856
    :cond_d
    const/16 v2, 0x1e9

    const/4 v1, 0x4

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v2, 0x1d1

    const/4 v1, 0x4

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 37857
    :cond_e
    const/16 v2, 0x154

    const/16 v1, 0xa

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37858
    :cond_f
    const/16 v2, 0x1e5

    const/4 v1, 0x4

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 37859
    const/16 v2, 0x15e

    const/16 v1, 0xe

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37860
    :cond_10
    const/16 v2, 0x1d5

    const/4 v1, 0x4

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v2, 0x1d9

    const/4 v1, 0x4

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 37861
    :cond_11
    const/16 v2, 0x19c

    const/16 v1, 0xd

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37862
    :cond_12
    const/16 v2, 0x1dd

    const/4 v1, 0x4

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const/16 v2, 0x1e1

    const/4 v1, 0x4

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 37863
    :cond_13
    const/16 v2, 0x1a9

    const/16 v1, 0x10

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37864
    :cond_14
    const/16 p0, 0x1fe

    const/4 v4, 0x4

    sget-object v2, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_15

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_15
    sget-object v2, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const-string v1, "eGAw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v0, 0x64

    invoke-static {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 37865
    const/16 v2, 0x185

    const/16 v1, 0xa

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37866
    :cond_16
    const/16 v2, 0x270

    const/4 v1, 0x6

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 37867
    const/16 v2, 0x1b9

    const/16 v1, 0xc

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37868
    :cond_17
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/IF;->A06(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A06(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 37869
    sget-object v0, Lcom/facebook/ads/redexgen/X/IF;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 37870
    .local p0, "customMimeTypeCount":I
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 37871
    sget-object v0, Lcom/facebook/ads/redexgen/X/IF;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/IE;

    .line 37872
    .local v3, "customMimeType":Lcom/facebook/ads/redexgen/X/IE;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/IE;->A01:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37873
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/IE;->A02:Ljava/lang/String;

    return-object v0

    .line 37874
    .end local v3    # "customMimeType":Lcom/facebook/ads/redexgen/X/IE;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37875
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A07(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 37876
    if-nez p0, :cond_0

    .line 37877
    const/4 v0, 0x0

    return-object v0

    .line 37878
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 37879
    .local p0, "indexOfSlash":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 37880
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    const-string v1, "cmO1Srrt"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3

    .line 37881
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x284

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/IF;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x4t
        0x23t
        0x3bt
        0x2ct
        0x21t
        0x24t
        0x29t
        0x6dt
        0x20t
        0x24t
        0x20t
        0x28t
        0x6dt
        0x39t
        0x34t
        0x3dt
        0x28t
        0x77t
        0x6dt
        0x5ft
        0x5dt
        0x13t
        0xdt
        0x79t
        0x68t
        0x68t
        0x74t
        0x71t
        0x7bt
        0x79t
        0x6ct
        0x71t
        0x77t
        0x76t
        0x37t
        0x7bt
        0x7dt
        0x79t
        0x35t
        0x2et
        0x28t
        0x20t
        0x76t
        0x67t
        0x67t
        0x7bt
        0x7et
        0x74t
        0x76t
        0x63t
        0x7et
        0x78t
        0x79t
        0x38t
        0x74t
        0x72t
        0x76t
        0x3at
        0x20t
        0x27t
        0x2ft
        0x5at
        0x4bt
        0x4bt
        0x57t
        0x52t
        0x58t
        0x5at
        0x4ft
        0x52t
        0x54t
        0x55t
        0x14t
        0x5ft
        0x4dt
        0x59t
        0x48t
        0x4et
        0x59t
        0x48t
        0x20t
        0x31t
        0x31t
        0x2dt
        0x28t
        0x22t
        0x20t
        0x35t
        0x28t
        0x2et
        0x2ft
        0x6et
        0x28t
        0x25t
        0x72t
        0x73t
        0x62t
        0x62t
        0x7et
        0x7bt
        0x71t
        0x73t
        0x66t
        0x7bt
        0x7dt
        0x7ct
        0x3dt
        0x62t
        0x75t
        0x61t
        0x7t
        0x16t
        0x16t
        0xat
        0xft
        0x5t
        0x7t
        0x12t
        0xft
        0x9t
        0x8t
        0x49t
        0x12t
        0x12t
        0xbt
        0xat
        0x4dt
        0x1et
        0xbt
        0xat
        0x12t
        0x3t
        0x3t
        0x1ft
        0x1at
        0x10t
        0x12t
        0x7t
        0x1at
        0x1ct
        0x1dt
        0x5ct
        0x5t
        0x1ct
        0x11t
        0x0t
        0x6t
        0x11t
        0x19t
        0x8t
        0x8t
        0x14t
        0x11t
        0x1bt
        0x19t
        0xct
        0x11t
        0x17t
        0x16t
        0x57t
        0x0t
        0x55t
        0x1bt
        0x19t
        0x15t
        0x1dt
        0xat
        0x19t
        0x55t
        0x15t
        0x17t
        0xct
        0x11t
        0x17t
        0x16t
        0x22t
        0x33t
        0x33t
        0x2ft
        0x2at
        0x20t
        0x22t
        0x37t
        0x2at
        0x2ct
        0x2dt
        0x6ct
        0x3bt
        0x6et
        0x26t
        0x2et
        0x30t
        0x24t
        0x35t
        0x24t
        0x24t
        0x38t
        0x3dt
        0x37t
        0x35t
        0x20t
        0x3dt
        0x3bt
        0x3at
        0x7bt
        0x2ct
        0x79t
        0x39t
        0x24t
        0x60t
        0x79t
        0x37t
        0x31t
        0x35t
        0x79t
        0x62t
        0x64t
        0x6ct
        0x14t
        0x5t
        0x5t
        0x19t
        0x1ct
        0x16t
        0x14t
        0x1t
        0x1ct
        0x1at
        0x1bt
        0x5at
        0xdt
        0x58t
        0x18t
        0x5t
        0x41t
        0x58t
        0x3t
        0x1t
        0x1t
        0x41t
        0x50t
        0x50t
        0x4ct
        0x49t
        0x43t
        0x41t
        0x54t
        0x49t
        0x4ft
        0x4et
        0xft
        0x58t
        0xdt
        0x51t
        0x55t
        0x49t
        0x43t
        0x4bt
        0x54t
        0x49t
        0x4dt
        0x45t
        0xdt
        0x54t
        0x58t
        0x13t
        0x47t
        0x56t
        0x47t
        0x47t
        0x5bt
        0x5et
        0x54t
        0x56t
        0x43t
        0x5et
        0x58t
        0x59t
        0x18t
        0x4ft
        0x1at
        0x45t
        0x56t
        0x40t
        0x54t
        0x54t
        0x27t
        0x36t
        0x36t
        0x2at
        0x2ft
        0x25t
        0x27t
        0x32t
        0x2ft
        0x29t
        0x28t
        0x69t
        0x3et
        0x6bt
        0x35t
        0x25t
        0x32t
        0x23t
        0x75t
        0x73t
        0x3t
        0x12t
        0x12t
        0xet
        0xbt
        0x1t
        0x3t
        0x16t
        0xbt
        0xdt
        0xct
        0x4dt
        0x1at
        0x4ft
        0x11t
        0x17t
        0x0t
        0x10t
        0xbt
        0x12t
        0x23t
        0x37t
        0x26t
        0x2bt
        0x2dt
        0x64t
        0x70t
        0x61t
        0x6ct
        0x6at
        0x2at
        0x64t
        0x66t
        0x36t
        0x21t
        0x35t
        0x24t
        0x29t
        0x2ft
        0x6ft
        0x25t
        0x21t
        0x23t
        0x73t
        0x27t
        0x33t
        0x22t
        0x2ft
        0x29t
        0x69t
        0x23t
        0x27t
        0x25t
        0x75t
        0x6bt
        0x2ct
        0x29t
        0x25t
        0x24t
        0x30t
        0x21t
        0x2ct
        0x2at
        0x6at
        0x28t
        0x35t
        0x71t
        0x24t
        0x68t
        0x29t
        0x24t
        0x31t
        0x28t
        0x19t
        0xdt
        0x1ct
        0x11t
        0x17t
        0x57t
        0x15t
        0x8t
        0x1dt
        0x1ft
        0x14t
        0x0t
        0x11t
        0x1ct
        0x1at
        0x5at
        0x1at
        0x5t
        0x0t
        0x6t
        0x4ct
        0x58t
        0x49t
        0x44t
        0x42t
        0x2t
        0x59t
        0x5ft
        0x58t
        0x48t
        0x0t
        0x45t
        0x49t
        0xet
        0x1at
        0xbt
        0x6t
        0x0t
        0x40t
        0x19t
        0x1t
        0xbt
        0x41t
        0xbt
        0x1bt
        0x1ct
        0x74t
        0x60t
        0x71t
        0x7ct
        0x7at
        0x3at
        0x63t
        0x7bt
        0x71t
        0x3bt
        0x71t
        0x61t
        0x66t
        0x3bt
        0x7dt
        0x71t
        0x0t
        0x14t
        0x5t
        0x8t
        0xet
        0x4et
        0x17t
        0xet
        0x13t
        0x3t
        0x8t
        0x12t
        0x17t
        0x0t
        0x15t
        0x47t
        0x13t
        0x4t
        0x11t
        0x41t
        0xbt
        0xet
        0xct
        0x5ct
        0x12t
        0x13t
        0x15t
        0x45t
        0x73t
        0x63t
        0x64t
        0x74t
        0x3bt
        0x2bt
        0x2ct
        0x3at
        0x2at
        0x3at
        0x3dt
        0x26t
        0x53t
        0x43t
        0x44t
        0x5bt
        0x72t
        0x74t
        0x3ct
        0x24t
        0x40t
        0x46t
        0x8t
        0x16t
        0x7at
        0x77t
        0x64t
        0x23t
        0x32t
        0x2ct
        0x39t
        0x6bt
        0x66t
        0x7bt
        0x3ft
        0x6at
        0x2bt
        0x36t
        0x72t
        0x27t
        0x68t
        0x43t
        0x5ct
        0x59t
        0x5ft
        0x76t
        0x67t
        0x7at
        0x76t
        0x36t
        0x29t
        0x24t
        0x25t
        0x2ft
        0x71t
        0x6et
        0x63t
        0x62t
        0x68t
        0x28t
        0x66t
        0x71t
        0x64t
        0x33t
        0x2ct
        0x21t
        0x20t
        0x2at
        0x6at
        0x2dt
        0x20t
        0x33t
        0x26t
        0x74t
        0x6bt
        0x66t
        0x67t
        0x6dt
        0x2dt
        0x6ft
        0x72t
        0x36t
        0x74t
        0x2ft
        0x67t
        0x71t
        0x46t
        0x59t
        0x54t
        0x55t
        0x5ft
        0x1ft
        0x5dt
        0x40t
        0x55t
        0x57t
        0x3ct
        0x23t
        0x2et
        0x2ft
        0x25t
        0x65t
        0x27t
        0x3at
        0x2ft
        0x2dt
        0x78t
        0x4t
        0x1bt
        0x16t
        0x17t
        0x1dt
        0x5dt
        0x5t
        0x4t
        0x11t
        0x43t
        0x6ct
        0x73t
        0x7et
        0x7ft
        0x75t
        0x35t
        0x62t
        0x37t
        0x6ct
        0x74t
        0x7et
        0x34t
        0x75t
        0x74t
        0x28t
        0x34t
        0x6ct
        0x6at
        0x22t
        0x49t
        0x56t
        0x5bt
        0x5at
        0x50t
        0x10t
        0x47t
        0x12t
        0x49t
        0x51t
        0x5bt
        0x11t
        0x50t
        0x51t
        0xdt
        0x11t
        0x49t
        0x4ft
        0x6t
        0x8t
        0x11t
        0xct
        0x1ct
        0x17t
        0xdt
        0x66t
        0x60t
        0x20t
        0x28t
        0x4ft
        0x49t
        0x9t
        0x0t
        0x6ct
        0x6at
        0x22t
        0x49t
        0x4ft
        0x6t
    .end array-data
.end method

.method public static A09()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qpmMdDe90bzs1HvFwMMwGSudY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zmlihG9AqugpJtvFdnp9a4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "60qO90attFspcohogLRzBvUpI0dgseiH"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DAu2wItsOnI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6VjQI3EaA8F"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NBqNS1D8qroyd83bLaibfcFOUIP8Dq1g"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "L6lgcD2DY5JTJI1mdrI0O6yl0hdLuz32"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fY8JDhcNH3jJd9L4wtc9WkoP14KKpPkN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/IF;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A0A(Ljava/lang/String;)Z
    .locals 3

    .line 37882
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IF;->A07(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x146

    const/4 v1, 0x5

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static A0B(Ljava/lang/String;)Z
    .locals 3

    .line 37883
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IF;->A07(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x202

    const/4 v1, 0x4

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static A0C(Ljava/lang/String;)Z
    .locals 3

    .line 37884
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IF;->A07(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x206

    const/4 v1, 0x5

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IF;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
