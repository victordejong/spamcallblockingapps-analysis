.class public final Lcom/facebook/ads/redexgen/X/Uc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Uj;->A0S()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Uj;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uc;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Uj;)V
    .locals 0

    .line 56014
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uc;->A00:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CyYconlRA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Z99FvxWAH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "r"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "I6nMbGSwO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "f1HEaIkkO6UN2Wyn2K6t6YhOL5YQHMub"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "q7TOnFp8MDH9pVcAi7q7X5O"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kHDnEbJrZHu3VwOwnck16fHaeHzzt8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "W41og5bN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Uc;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 4

    .line 56015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uc;->A00:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Uj;->A02(Lcom/facebook/ads/redexgen/X/Uj;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56016
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Uc;->A00:Lcom/facebook/ads/redexgen/X/Uj;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uc;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Uc;->A01:[Ljava/lang/String;

    const-string v1, "ZWV"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Uj;->A02(Lcom/facebook/ads/redexgen/X/Uj;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0

    .line 56017
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Uc;->A00:Lcom/facebook/ads/redexgen/X/Uj;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uc;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xe

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uc;->A01:[Ljava/lang/String;

    const-string v1, "1VAENbmq7tYIb9ZQI0D0jEbiw3q"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 56018
    :goto_0
    return-object v0

    .line 56019
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
