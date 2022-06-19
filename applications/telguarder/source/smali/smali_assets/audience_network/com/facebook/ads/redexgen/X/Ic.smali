.class public final Lcom/facebook/ads/redexgen/X/Ic;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:I

.field public static final A03:Ljava/lang/String;

.field public static final A04:Ljava/lang/String;

.field public static final A05:Ljava/lang/String;

.field public static final A06:Ljava/lang/String;

.field public static final A07:Ljava/util/regex/Pattern;

.field public static final A08:Ljava/util/regex/Pattern;

.field public static final A09:Ljava/util/regex/Pattern;

.field public static final A0A:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 38713
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ic;->A0V()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ic;->A0U()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-ne v1, v0, :cond_0

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-ne v1, v0, :cond_0

    .line 38714
    const/16 v0, 0x1a

    .line 38715
    :goto_0
    sput v0, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    .line 38716
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A03:Ljava/lang/String;

    .line 38717
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A05:Ljava/lang/String;

    .line 38718
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A06:Ljava/lang/String;

    .line 38719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A03:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x82

    const/4 v1, 0x2

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0J(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A06:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A05:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A04:Ljava/lang/String;

    .line 38720
    const/16 v2, 0x21

    const/16 v1, 0x5f

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A08:Ljava/util/regex/Pattern;

    .line 38721
    const/16 v2, 0x9d

    const/16 v1, 0x54

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A09:Ljava/util/regex/Pattern;

    .line 38722
    const/16 v2, 0x10

    const/16 v1, 0x11

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A07:Ljava/util/regex/Pattern;

    .line 38723
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A0A:[I

    return-void

    .line 38724
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x4c11db7
        0x9823b6e
        0xd4326d9
        0x130476dc
        0x17c56b6b
        0x1a864db2
        0x1e475005
        0x2608edb8
        0x22c9f00f
        0x2f8ad6d6
        0x2b4bcb61
        0x350c9b64
        0x31cd86d3
        0x3c8ea00a
        0x384fbdbd
        0x4c11db70    # 3.8235584E7f
        0x48d0c6c7
        0x4593e01e
        0x4152fda9
        0x5f15adac
        0x5bd4b01b
        0x569796c2
        0x52568b75
        0x6a1936c8
        0x6ed82b7f
        0x639b0da6
        0x675a1011
        0x791d4014
        0x7ddc5da3
        0x709f7b7a
        0x745e66cd
        -0x67dc4920
        -0x631d54a9    # -1.4999716E-21f
        -0x6e5e7272
        -0x6a9f6fc7
        -0x74d83fc4
        -0x70192275
        -0x7d5a04ae
        -0x799b191b
        -0x41d4a4a8
        -0x4515b911
        -0x48569fca
        -0x4c97827f
        -0x52d0d27c
        -0x5611cfcd
        -0x5b52e916
        -0x5f93f4a3    # -1.9993737E-19f
        -0x2bcd9270
        -0x2f0c8fd9
        -0x224fa902
        -0x268eb4b7
        -0x38c9e4b4
        -0x3c08f905
        -0x314bdfde
        -0x358ac26b
        -0xdc57fd8
        -0x9046261
        -0x44744ba
        -0x86590f
        -0x1ec1090c
        -0x1a0014bd
        -0x17433266
        -0x13822fd3
        0x34867077
        0x30476dc0
        0x3d044b19
        0x39c556ae
        0x278206ab
        0x23431b1c
        0x2e003dc5
        0x2ac12072
        0x128e9dcf    # 9.000363E-28f
        0x164f8078
        0x1b0ca6a1
        0x1fcdbb16
        0x18aeb13
        0x54bf6a4
        0x808d07d
        0xcc9cdca
        0x7897ab07
        0x7c56b6b0
        0x71159069
        0x75d48dde
        0x6b93dddb
        0x6f52c06c
        0x6211e6b5
        0x66d0fb02
        0x5e9f46bf
        0x5a5e5b08
        0x571d7dd1
        0x53dc6066
        0x4d9b3063    # 3.25454944E8f
        0x495a2dd4    # 893661.25f
        0x44190b0d
        0x40d816ba
        -0x535a3969
        -0x579b24e0
        -0x5ad80207
        -0x5e191fb2
        -0x405e4fb5
        -0x449f5204
        -0x49dc74db
        -0x4d1d696e
        -0x7552d4d1
        -0x7193c968
        -0x7cd0efbf
        -0x7811f20a
        -0x6656a20d
        -0x6297bfbc
        -0x6fd49963
        -0x6b1584d6
        -0x1f4be219
        -0x1b8affb0
        -0x16c9d977
        -0x1208c4c2
        -0xc4f94c5
        -0x88e8974
        -0x5cdafab
        -0x10cb21e
        -0x39430fa1
        -0x3d821218
        -0x30c134cf
        -0x3400297a
        -0x2a47797d
        -0x2e8664cc
        -0x23c54213
        -0x27045fa6
        0x690ce0ee
        0x6dcdfd59
        0x608edb80
        0x644fc637
        0x7a089632
        0x7ec98b85
        0x738aad5c
        0x774bb0eb
        0x4f040d56
        0x4bc510e1    # 2.5829826E7f
        0x46863638
        0x42472b8f
        0x5c007b8a
        0x58c1663d
        0x558240e4
        0x51435d53
        0x251d3b9e
        0x21dc2629
        0x2c9f00f0
        0x285e1d47
        0x36194d42
        0x32d850f5
        0x3f9b762c
        0x3b5a6b9b
        0x315d626
        0x7d4cb91
        0xa97ed48
        0xe56f0ff
        0x1011a0fa
        0x14d0bd4d
        0x19939b94
        0x1d528623
        -0xed0a9f2
        -0xa11b447
        -0x75292a0
        -0x3938f29
        -0x1dd4df2e
        -0x1915c29b
        -0x1456e444
        -0x1097f9f5
        -0x28d8444a
        -0x2c1959ff
        -0x215a7f28
        -0x259b6291
        -0x3bdc3296
        -0x3f1d2f23
        -0x325e09fc
        -0x369f144d
        -0x42c17282
        -0x46006f37
        -0x4b4349f0
        -0x4f825459
        -0x51c5045e
        -0x550419eb
        -0x58473f34
        -0x5c862285
        -0x64c99f3a
        -0x6008828f
        -0x6d4ba458
        -0x698ab9e1
        -0x77cde9e6
        -0x730cf453
        -0x7e4fd28c
        -0x7a8ecf3d
        0x5d8a9099
        0x594b8d2e
        0x5408abf7
        0x50c9b640
        0x4e8ee645
        0x4a4ffbf2    # 3407612.5f
        0x470cdd2b
        0x43cdc09c
        0x7b827d21
        0x7f436096
        0x7200464f
        0x76c15bf8
        0x68860bfd
        0x6c47164a
        0x61043093
        0x65c52d24
        0x119b4be9
        0x155a565e
        0x18197087
        0x1cd86d30
        0x29f3d35
        0x65e2082
        0xb1d065b
        0xfdc1bec
        0x3793a651
        0x3352bbe6
        0x3e119d3f
        0x3ad08088
        0x2497d08d
        0x2056cd3a
        0x2d15ebe3
        0x29d4f654
        -0x3a56d987
        -0x3e97c432
        -0x33d4e2e9    # -4.4856412E7f
        -0x3715ff60    # -479237.0f
        -0x2952af5b
        -0x2d93b2ee
        -0x20d09435
        -0x24118984
        -0x1c5e343f
        -0x189f298a
        -0x15dc0f51
        -0x111d12e8
        -0xf5a42e3
        -0xb9b5f56
        -0x6d8798d
        -0x219643c
        -0x764702f7
        -0x72861f42    # -7.6999573E-31f
        -0x7fc53999
        -0x7b042430
        -0x6543742b
        -0x6182699e
        -0x6cc14f45
        -0x680052f4
        -0x504fef4f
        -0x548ef2fa
        -0x59cdd421
        -0x5d0cc998
        -0x434b9993
        -0x478a8426
        -0x4ac9a2fd
        -0x4e08bf4c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 38725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(FFF)F
    .locals 0

    .line 38726
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static A01(I)I
    .locals 2

    .line 38727
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    const/high16 v1, 0x20000

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 38728
    return v1

    .line 38729
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 38730
    :cond_1
    return v1

    .line 38731
    :cond_2
    const/high16 v0, 0xc80000

    return v0

    .line 38732
    :cond_3
    const/high16 v0, 0x360000

    return v0

    .line 38733
    :cond_4
    const/high16 v0, 0x1000000

    return v0
.end method

.method public static A02(I)I
    .locals 1

    .line 38734
    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x18

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    .line 38735
    const/4 v0, 0x0

    return v0

    .line 38736
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    return v0

    .line 38737
    :cond_1
    const/high16 v0, -0x80000000

    return v0

    .line 38738
    :cond_2
    const/4 v0, 0x2

    return v0

    .line 38739
    :cond_3
    const/4 v0, 0x3

    return v0
.end method

.method public static A03(I)I
    .locals 1

    .line 38740
    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    .line 38741
    :pswitch_0
    return v0

    .line 38742
    :pswitch_1
    return v0

    .line 38743
    :pswitch_2
    const/4 v0, 0x0

    return v0

    .line 38744
    :pswitch_3
    const/16 v0, 0x8

    return v0

    .line 38745
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 38746
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 38747
    :pswitch_6
    const/4 v0, 0x2

    return v0

    .line 38748
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method public static A04(II)I
    .locals 0

    .line 38749
    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, p1

    return p0
.end method

.method public static A05(II)I
    .locals 2

    .line 38750
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_5

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 38751
    :cond_0
    mul-int/lit8 v0, p1, 0x4

    return v0

    .line 38752
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 38753
    :cond_2
    return p1

    .line 38754
    :cond_3
    mul-int/lit8 p1, p1, 0x2

    sget-object p0, Lcom/facebook/ads/redexgen/X/Ic;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object p0, Lcom/facebook/ads/redexgen/X/Ic;->A01:[Ljava/lang/String;

    const-string v1, "d1W5zPxTgvHABPOSwjIee7hNwp22iYae"

    const/4 v0, 0x6

    aput-object v1, p0, v0

    return p1

    .line 38755
    :cond_5
    mul-int/lit8 v0, p1, 0x3

    return v0
.end method

.method public static A06(III)I
    .locals 0

    .line 38756
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static A07(JJ)I
    .locals 1

    .line 38757
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static A08(Ljava/lang/String;)I
    .locals 4

    .line 38758
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 38759
    .local p0, "length":I
    const/4 v0, 0x4

    if-gt v3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 38760
    const/4 v1, 0x0

    .line 38761
    .local v3, "result":I
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 38762
    shl-int/lit8 v1, v1, 0x8

    .line 38763
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    or-int/2addr v1, v0

    .line 38764
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 38765
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 38766
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public static A09([BIII)I
    .locals 4

    .line 38767
    .local p0, "i":I
    :goto_0
    if-ge p1, p2, :cond_0

    .line 38768
    shl-int/lit8 v3, p3, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ic;->A0A:[I

    ushr-int/lit8 v1, p3, 0x18

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    xor-int/2addr v1, v0

    and-int/lit16 v0, v1, 0xff

    aget v0, v2, v0

    xor-int p3, v3, v0

    .line 38769
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 38770
    .end local p0    # "i":I
    :cond_0
    return p3
.end method

.method public static A0A([JJZZ)I
    .locals 4

    .line 38771
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    .line 38772
    .local p0, "index":I
    if-gez v3, :cond_2

    .line 38773
    xor-int/lit8 v3, v3, -0x1

    .line 38774
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_1
    return v3

    .line 38775
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    array-length v0, p0

    if-ge v3, v0, :cond_3

    aget-wide v1, p0, v3

    cmp-long v0, v1, p1

    if-nez v0, :cond_3

    goto :goto_1

    .line 38776
    :cond_3
    if-eqz p3, :cond_0

    .line 38777
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method public static A0B([JJZZ)I
    .locals 4

    .line 38778
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    .line 38779
    .local p0, "index":I
    if-gez v3, :cond_2

    .line 38780
    add-int/lit8 v0, v3, 0x2

    neg-int v3, v0

    .line 38781
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    const/4 p0, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ic;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ic;->A01:[Ljava/lang/String;

    const-string v1, "GDsuqUnNVG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_1
    return v3

    .line 38782
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    aget-wide v1, p0, v3

    cmp-long v0, v1, p1

    if-nez v0, :cond_3

    goto :goto_1

    .line 38783
    :cond_3
    if-eqz p3, :cond_0

    .line 38784
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0C(JF)J
    .locals 4

    .line 38785
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 38786
    return-wide p0

    .line 38787
    :cond_0
    long-to-double v2, p0

    float-to-double v0, p2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static A0D(JF)J
    .locals 4

    .line 38788
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 38789
    return-wide p0

    .line 38790
    :cond_0
    long-to-double v2, p0

    float-to-double v0, p2

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static A0E(JJJ)J
    .locals 0

    .line 38791
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static A0F(JJJ)J
    .locals 6

    .line 38792
    const-wide/16 v3, 0x0

    cmp-long v0, p4, p2

    if-ltz v0, :cond_0

    rem-long v1, p4, p2

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 38793
    div-long/2addr p4, p2

    .line 38794
    .local p0, "divisionFactor":J
    div-long/2addr p0, p4

    return-wide p0

    .line 38795
    .end local p0    # "divisionFactor":J
    :cond_0
    cmp-long v0, p4, p2

    if-gez v0, :cond_1

    rem-long v1, p2, p4

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 38796
    div-long/2addr p2, p4

    .line 38797
    .local p0, "multiplicationFactor":J
    mul-long/2addr p0, p2

    return-wide p0

    .line 38798
    .end local p0    # "multiplicationFactor":J
    :cond_1
    long-to-double v4, p2

    long-to-double v0, p4

    div-double/2addr v4, v0

    .line 38799
    .local p0, "multiplicationFactor":D
    long-to-double v2, p0

    mul-double/2addr v2, v4

    double-to-long v0, v2

    return-wide v0
.end method

.method public static A0G(JJJ)J
    .locals 5

    .line 38800
    add-long v3, p0, p2

    .line 38801
    .local p0, "result":J
    xor-long/2addr p0, v3

    xor-long/2addr p2, v3

    and-long/2addr p0, p2

    const-wide/16 v1, 0x0

    cmp-long v0, p0, v1

    if-gez v0, :cond_0

    .line 38802
    return-wide p4

    .line 38803
    :cond_0
    return-wide v3
.end method

.method public static A0H(JJJ)J
    .locals 7

    .line 38804
    sub-long v5, p0, p2

    .line 38805
    .local p0, "result":J
    xor-long v3, p0, p2

    xor-long/2addr p0, v5

    and-long/2addr v3, p0

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 38806
    return-wide p4

    .line 38807
    :cond_0
    return-wide v5
.end method

.method public static A0I(JLcom/facebook/ads/redexgen/X/Ab;JJ)J
    .locals 11

    .line 38808
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ab;->A05:Lcom/facebook/ads/redexgen/X/Ab;

    move-object v1, p2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ab;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-wide v8, p0

    if-eqz v0, :cond_0

    .line 38809
    return-wide v8

    .line 38810
    :cond_0
    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/Ab;->A01:J

    const-wide/high16 p1, -0x8000000000000000L

    .line 38811
    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/Ic;->A0H(JJJ)J

    move-result-wide v6

    .line 38812
    .local v1, "minPositionUs":J
    iget-wide v10, v1, Lcom/facebook/ads/redexgen/X/Ab;->A00:J

    const-wide p1, 0x7fffffffffffffffL

    .line 38813
    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/Ic;->A0G(JJJ)J

    move-result-wide v1

    .line 38814
    .local v8, "maxPositionUs":J
    const/4 v5, 0x1

    cmp-long v0, v6, p3

    if-gtz v0, :cond_1

    cmp-long v0, p3, v1

    if-gtz v0, :cond_1

    const/4 v4, 0x1

    .line 38815
    .local v4, "firstSyncPositionValid":Z
    :goto_0
    cmp-long v0, v6, p5

    if-gtz v0, :cond_3

    cmp-long v3, p5, v1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ic;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 38816
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ic;->A01:[Ljava/lang/String;

    const-string v1, "sgrUzz204ujN3HpRseRawA36pDmeDRAp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "AqTQdLYJBikBN25NgSqfBIVMtvu6EG5F"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-gtz v3, :cond_3

    goto :goto_1

    .line 38817
    :cond_3
    const/4 v5, 0x0

    .line 38818
    .local v1, "secondSyncPositionValid":Z
    :goto_1
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    .line 38819
    sub-long v0, p3, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sub-long v0, p5, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-gtz v0, :cond_4

    .line 38820
    return-wide p3

    .line 38821
    :cond_4
    return-wide p5

    .line 38822
    :cond_5
    if-eqz v4, :cond_6

    .line 38823
    return-wide p3

    .line 38824
    :cond_6
    if-eqz v5, :cond_7

    .line 38825
    return-wide p5

    .line 38826
    :cond_7
    return-wide v6
.end method

.method public static A0J(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ic;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0K(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 38827
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 38828
    .local p0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 38829
    .local p1, "info":Landroid/content/pm/PackageInfo;
    iget-object p0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 38830
    .end local p1    # "info":Landroid/content/pm/PackageInfo;
    .local p0, "versionName":Ljava/lang/String;
    goto :goto_0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38831
    .end local p0    # "versionName":Ljava/lang/String;
    .local p0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_0
    const/16 v2, 0x85

    const/4 v1, 0x1

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0J(III)Ljava/lang/String;

    move-result-object p0

    .line 38832
    .local p0, "versionName":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x84

    const/4 v1, 0x1

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    const/4 v1, 0x2

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x86

    const/16 v1, 0x12

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A0L(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 38833
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38834
    .local p0, "e":Ljava/util/MissingResourceException;
    :catch_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ic;->A0M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A0M(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 38835
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static A0N(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 38836
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static A0O(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 38837
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 38838
    .local p0, "length":I
    const/4 v9, 0x0

    .line 38839
    .local v7, "percentCharacterCount":I
    const/4 v2, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 38840
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x25

    if-ne v1, v0, :cond_0

    .line 38841
    add-int/lit8 v9, v9, 0x1

    .line 38842
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38843
    .end local v9    # "i":I
    :cond_1
    if-nez v9, :cond_2

    .line 38844
    return-object p0

    .line 38845
    :cond_2
    mul-int/lit8 v0, v9, 0x2

    sub-int v6, v7, v0

    .line 38846
    .local v9, "expectedLength":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 38847
    .local v2, "builder":Ljava/lang/StringBuilder;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A07:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 38848
    .local v1, "matcher":Ljava/util/regex/Matcher;
    const/4 v3, 0x0

    .line 38849
    .local v0, "startOfNotEscaped":I
    :goto_1
    if-lez v9, :cond_4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ic;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ic;->A01:[Ljava/lang/String;

    const-string v1, "WmqylZkCkk7KL4FLS"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v8, :cond_4

    .line 38850
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x10

    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v1, v0

    .line 38851
    .local v0, "unescapedCharacter":C
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {v5, p0, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38852
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 38853
    .end local v0    # "unescapedCharacter":C
    add-int/lit8 v9, v9, -0x1

    .line 38854
    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 38855
    :cond_4
    if-ge v3, v7, :cond_5

    .line 38856
    invoke-virtual {v5, p0, v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 38857
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eq v0, v6, :cond_6

    .line 38858
    const/4 v0, 0x0

    return-object v0

    .line 38859
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs A0P(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 38860
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A0Q([B)Ljava/lang/String;
    .locals 3

    .line 38861
    const/16 v2, 0x98

    const/4 v1, 0x5

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static A0R([BII)Ljava/lang/String;
    .locals 3

    .line 38862
    const/16 v2, 0x98

    const/4 v1, 0x5

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static A0S([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 38863
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38864
    .local p0, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v4, "i":I
    :goto_0
    array-length v0, p0

    if-ge v3, v0, :cond_1

    .line 38865
    aget-object v0, p0, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38866
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_0

    .line 38867
    const/16 v2, 0x82

    const/4 v1, 0x2

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38868
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38869
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A0T(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 38870
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ib;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ib;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static A0U()V
    .locals 1

    const/16 v0, 0xf5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ic;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x13t
        0x1bt
        0x7ft
        0x5at
        0x5dt
        0x46t
        0x4bt
        0x8t
        0x72t
        0x5dt
        0x57t
        0x41t
        0x5ct
        0x5at
        0x57t
        0x13t
        0x2at
        0x27t
        0x54t
        0x4et
        0x22t
        0x49t
        0x6et
        0x22t
        0x69t
        0x3ft
        0x22t
        0x36t
        0x52t
        0x74t
        0x3dt
        0x72t
        0x26t
        0x8t
        0x7ct
        0x44t
        0x7ct
        0x44t
        0x7ct
        0x44t
        0x7ct
        0x44t
        0x9t
        0x7ct
        0xdt
        0x8t
        0x7ct
        0x44t
        0x7ct
        0x44t
        0x9t
        0x7ct
        0xdt
        0x8t
        0x7ct
        0x44t
        0x7ct
        0x44t
        0x9t
        0x7bt
        0x74t
        0x54t
        0x7dt
        0x8t
        0x7ct
        0x44t
        0x7ct
        0x44t
        0x9t
        0x1at
        0x8t
        0x7ct
        0x44t
        0x7ct
        0x44t
        0x9t
        0x1at
        0x8t
        0x7ct
        0x44t
        0x7ct
        0x44t
        0x9t
        0x8t
        0x7bt
        0x7ct
        0xet
        0xct
        0x7dt
        0x8t
        0x7ct
        0x44t
        0xbt
        0x9t
        0x9t
        0x1ft
        0x8t
        0x7bt
        0x7at
        0x5at
        0x7dt
        0x5ct
        0x8t
        0x8t
        0x7ct
        0xbt
        0x5ct
        0x7ct
        0xdt
        0x9t
        0x8t
        0x7ct
        0x44t
        0x1ft
        0x7ct
        0x44t
        0x9t
        0x1at
        0x1ft
        0x8t
        0x7ct
        0x44t
        0x7ct
        0x44t
        0x9t
        0x9t
        0x9t
        0x1ft
        0x6at
        0x63t
        0x52t
        0x5et
        0x6ft
        0x73t
        0x53t
        0x6et
        0x79t
        0x46t
        0x7at
        0x77t
        0x6ft
        0x73t
        0x64t
        0x5at
        0x7ft
        0x74t
        0x39t
        0x24t
        0x38t
        0x2et
        0x38t
        0x22t
        0x54t
        0x55t
        0x47t
        0x2ct
        0x39t
        0x0t
        0x76t
        0x73t
        0x77t
        0x61t
        0xet
        0x76t
        0x76t
        0x5t
        0x6et
        0x73t
        0x67t
        0x3t
        0x74t
        0x77t
        0x7t
        0x77t
        0x61t
        0x76t
        0x76t
        0x5t
        0x6et
        0x73t
        0x67t
        0x3t
        0x74t
        0x77t
        0x13t
        0x77t
        0x61t
        0x76t
        0x76t
        0x5t
        0x6et
        0x73t
        0x67t
        0x3t
        0x74t
        0x77t
        0x1at
        0x77t
        0x61t
        0x76t
        0xat
        0x76t
        0x76t
        0x5t
        0x6et
        0x73t
        0x67t
        0x3t
        0x74t
        0x77t
        0x16t
        0x77t
        0x61t
        0x76t
        0x76t
        0x5t
        0x6et
        0x73t
        0x67t
        0x3t
        0x74t
        0x77t
        0x13t
        0x77t
        0x61t
        0x76t
        0x76t
        0x5t
        0x6et
        0x73t
        0x67t
        0x70t
        0x3t
        0x74t
        0x77t
        0xdt
        0x77t
        0x61t
        0x77t
        0x61t
        0x7at
        0x2et
        0x21t
        0x24t
        0x2dt
    .end array-data
.end method

.method public static A0V()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zgkmx4GNC4nHq4fIMo4VUD2yY5JiZNaz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jPCI1wkD1p0T0ZxHMs6RYwA7uMdiyqCf"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7r4gQx2ApupoCg9pXYkGal8fdoLZK4rN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TFL8ofln9MYyciR1hZHzOrUvUSvjwDSy"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rYaKbQPIVLDBz9u7JX96bq8bBTo3kTqr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dVH7lsTTVlpZb90D580d1j0hTKbyzJoG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "05Lc1tnJqh8NJzVccxz1HdYBrU5Oig3r"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xQuePbpfaxUCUcOqIUamreF2CB4NQZ55"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ic;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A0W(Landroid/os/Parcel;Z)V
    .locals 0

    .line 38871
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38872
    return-void
.end method

.method public static A0X(Lcom/facebook/ads/redexgen/X/HI;)V
    .locals 0

    .line 38873
    if-eqz p0, :cond_0

    .line 38874
    :try_start_0
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/HI;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38875
    :catch_0
    :cond_0
    return-void
.end method

.method public static A0Y(Ljava/io/Closeable;)V
    .locals 0
    .param p0    # Ljava/io/Closeable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 38876
    if-eqz p0, :cond_0

    .line 38877
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38878
    :catch_0
    :cond_0
    return-void
.end method

.method public static A0Z(Ljava/lang/Throwable;)V
    .locals 0

    .line 38879
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ic;->A0a(Ljava/lang/Throwable;)V

    .line 38880
    return-void
.end method

.method public static A0a(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38881
    throw p0
.end method

.method public static A0b([JJJ)V
    .locals 7

    .line 38882
    const-wide/16 v5, 0x0

    cmp-long v0, p3, p1

    if-ltz v0, :cond_0

    rem-long v1, p3, p1

    cmp-long v0, v1, v5

    if-nez v0, :cond_0

    .line 38883
    div-long/2addr p3, p1

    .line 38884
    .local p0, "divisionFactor":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_3

    .line 38885
    aget-wide v0, p0, v2

    div-long/2addr v0, p3

    aput-wide v0, p0, v2

    .line 38886
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38887
    :cond_0
    cmp-long v0, p3, p1

    if-gez v0, :cond_2

    rem-long v3, p1, p3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ic;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ic;->A01:[Ljava/lang/String;

    const-string v1, "VzHSaJdK5ZXYxszvYwG2zdFjKxzBTqdy"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Cnz90EOoUsSlsj3F6WVTFM071gS34Hit"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 38888
    div-long/2addr p1, p3

    .line 38889
    .local p0, "multiplicationFactor":J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_3

    .line 38890
    aget-wide v0, p0, v2

    mul-long/2addr v0, p1

    aput-wide v0, p0, v2

    .line 38891
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 38892
    :cond_2
    long-to-double v4, p1

    long-to-double v0, p3

    div-double/2addr v4, v0

    .line 38893
    .local p0, "multiplicationFactor":D
    const/4 v6, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v0, p0

    if-ge v6, v0, :cond_3

    .line 38894
    aget-wide v0, p0, v6

    long-to-double v2, v0

    mul-double/2addr v2, v4

    double-to-long v0, v2

    aput-wide v0, p0, v6

    .line 38895
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 38896
    .end local p0    # "multiplicationFactor":D
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public static A0c(I)Z
    .locals 1

    .line 38897
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0d(I)Z
    .locals 4

    .line 38898
    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ic;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ic;->A01:[Ljava/lang/String;

    const-string v1, "9i05HxAs3DowP9jjBobiAi4BehE34wMj"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_2

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_2

    const/high16 v3, 0x40000000    # 2.0f

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ic;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ic;->A01:[Ljava/lang/String;

    const-string v1, "rcuobSShmMXieMS9IK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_2

    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0e(I)Z
    .locals 1

    .line 38899
    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0f(Landroid/net/Uri;)Z
    .locals 3

    .line 38900
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    .line 38901
    .local p0, "scheme":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0xf1

    const/4 v1, 0x4

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0g(Landroid/os/Parcel;)Z
    .locals 0

    .line 38902
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static A0h(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 38903
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0
.end method

.method public static A0i(Ljava/lang/String;)[B
    .locals 6

    .line 38904
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v5, v0, [B

    .line 38905
    .local p0, "data":[B
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    array-length v0, v5

    if-ge v4, v0, :cond_0

    .line 38906
    mul-int/lit8 v3, v4, 0x2

    .line 38907
    .local v0, "stringOffset":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    shl-int/lit8 v1, v0, 0x4

    add-int/lit8 v0, v3, 0x1

    .line 38908
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    add-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, v5, v4

    .line 38909
    .end local v0    # "stringOffset":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 38910
    .end local v0
    :cond_0
    return-object v5
.end method

.method public static A0j(Ljava/lang/String;)[B
    .locals 3

    .line 38911
    const/16 v2, 0x98

    const/4 v1, 0x5

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static A0k(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 38912
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    .line 38913
    const/4 v0, 0x0

    return-object v0

    .line 38914
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 38915
    .local p0, "length":I
    new-array v2, v3, [I

    .line 38916
    .local v0, "intArray":[I
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 38917
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    .line 38918
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38919
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public static A0l([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 38920
    .local p1, "input":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 38921
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 38922
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0m(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 38923
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A0n(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 38924
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
