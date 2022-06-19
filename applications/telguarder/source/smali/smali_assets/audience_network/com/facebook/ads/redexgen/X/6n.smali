.class public final synthetic Lcom/facebook/ads/redexgen/X/6n;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Wv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic A00:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 15638
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6s;->values()[Lcom/facebook/ads/redexgen/X/6s;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/6n;->A00:[I

    :try_start_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/6n;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/6s;->A07:Lcom/facebook/ads/redexgen/X/6s;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6s;->ordinal()I

    move-result v1

    const/4 v0, 0x1

    aput v0, v2, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/6n;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/6s;->A0D:Lcom/facebook/ads/redexgen/X/6s;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6s;->ordinal()I

    move-result v1

    const/4 v0, 0x2

    aput v0, v2, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
