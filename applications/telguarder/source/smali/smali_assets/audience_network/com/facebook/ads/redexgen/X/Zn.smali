.class public final Lcom/facebook/ads/redexgen/X/Zn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Zh;->A0K()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Zh;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zn;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Zh;)V
    .locals 0

    .line 66484
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zn;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "neQ4Z6u80724aO0Tm0kQEhD0ouVBtBka"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Ppolz54LzRJ3R3KmpPdzEDk2BgA9Trr2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jlppPd3Z9RXcXEdVyZCvIdC2nnojHux3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CBuoZ8zgTzxEnAzh2scdvcPe8omIYl3p"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Jgr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ZkKDc43m9qYEObQ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lLxE7e3EpPFHSmztiEfTcDwKCLlP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DzFr82j52TqQu0QghU9Bwq2Nh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zn;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 4

    .line 66485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zh;->A03(Lcom/facebook/ads/redexgen/X/Zh;)Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66486
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Zn;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zn;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zn;->A01:[Ljava/lang/String;

    const-string v1, "DYw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "3lxlCNvSxs6z5uc"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Zh;->A03(Lcom/facebook/ads/redexgen/X/Zh;)Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6V;->A05(I)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 66487
    :goto_0
    return-object v0

    .line 66488
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zn;->A00:Lcom/facebook/ads/redexgen/X/Zh;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
