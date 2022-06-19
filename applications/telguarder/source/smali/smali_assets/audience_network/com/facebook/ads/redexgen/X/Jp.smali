.class public final synthetic Lcom/facebook/ads/redexgen/X/Jp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Jq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic A00:[I

.field public static final synthetic A01:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 40465
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jq;->values()[Lcom/facebook/ads/redexgen/X/Jq;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jp;->A00:[I

    const/4 v5, 0x1

    :try_start_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A04:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jq;->ordinal()I

    move-result v0

    aput v5, v1, v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v4, 0x2

    :try_start_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A03:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jq;->ordinal()I

    move-result v0

    aput v4, v1, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A05:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jq;->ordinal()I

    move-result v0

    aput v3, v1, v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v2, 0x4

    :try_start_3
    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A06:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jq;->ordinal()I

    move-result v0

    aput v2, v1, v0
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 40466
    :catch_3
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jt;->values()[Lcom/facebook/ads/redexgen/X/Jt;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jp;->A01:[I

    :try_start_4
    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A05:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jt;->ordinal()I

    move-result v0

    aput v5, v1, v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A09:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jt;->ordinal()I

    move-result v0

    aput v4, v1, v0
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A0A:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jt;->ordinal()I

    move-result v0

    aput v3, v1, v0
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/facebook/ads/redexgen/X/Jp;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A0B:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jt;->ordinal()I

    move-result v0

    aput v2, v1, v0
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A08:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jt;->ordinal()I

    move-result v1

    const/4 v0, 0x5

    aput v0, v2, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A0C:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jt;->ordinal()I

    move-result v1

    const/4 v0, 0x6

    aput v0, v2, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A0F:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jt;->ordinal()I

    move-result v1

    const/4 v0, 0x7

    aput v0, v2, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A0D:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jt;->ordinal()I

    move-result v1

    const/16 v0, 0x8

    aput v0, v2, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A0E:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jt;->ordinal()I

    move-result v1

    const/16 v0, 0x9

    aput v0, v2, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jp;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A06:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jt;->ordinal()I

    move-result v1

    const/16 v0, 0xa

    aput v0, v2, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
