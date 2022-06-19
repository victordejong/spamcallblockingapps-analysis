.class public final Lcom/facebook/ads/redexgen/X/b2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/M3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ah;->A0M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ah;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/b2;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ah;)V
    .locals 0

    .line 68930
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b2;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "6N"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "smQA5TSxp7vjrWoIt3G8gqRI7vuv9Mo2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "nC2JCQuxt461FEwUH0osGyRmdjA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Hvedh13CT0GkY3JhzOxajNH8XlaZQpLN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5Odrxu44jwGQpLwu9LnTSanJ4TNopF0a"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7krTPzdKMYjdejqNC8FU3CrmbwWia7OA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "A91WiRAFiXbxe3egNbtfICOYy0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PiGZqdHGAPhzlIXS2UC0uVxfbNyiCcLD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/b2;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A9k()V
    .locals 4

    .line 68931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A07(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/JJ;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/JI;->A07:Lcom/facebook/ads/redexgen/X/JI;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03(Lcom/facebook/ads/redexgen/X/JI;Ljava/util/Map;)V

    .line 68932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A05(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Z()V

    .line 68933
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A08(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ah;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/La;->A0A(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68934
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nc;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nc;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A00:Lcom/facebook/ads/redexgen/X/ah;

    .line 68935
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0D(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A04(Lcom/facebook/ads/redexgen/X/QE;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A00:Lcom/facebook/ads/redexgen/X/ah;

    .line 68936
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A08(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/La;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A03(Lcom/facebook/ads/redexgen/X/La;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    .line 68937
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A06()Ljava/util/Map;

    move-result-object v2

    .line 68938
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A06(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A04(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/S5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/JC;->A8R(Ljava/lang/String;Ljava/util/Map;)V

    .line 68939
    return-void

    .line 68940
    .end local p0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0h(Lcom/facebook/ads/redexgen/X/ah;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0A(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/b2;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/b2;->A01:[Ljava/lang/String;

    const-string v1, "5zrYwBRwluqa1cGxPZZJZEcv5DdOFBPm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "gq390Wd0Yu1IJshZC9Clpt7tVnhSzLar"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 68941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0k(Lcom/facebook/ads/redexgen/X/ah;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68942
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0A(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/PK;->A09:Lcom/facebook/ads/redexgen/X/PK;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0X(Lcom/facebook/ads/redexgen/X/PK;)V

    goto :goto_1

    .line 68943
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0X(Lcom/facebook/ads/redexgen/X/ah;)V

    goto :goto_1

    .line 68944
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0h(Lcom/facebook/ads/redexgen/X/ah;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/b2;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_5

    if-eqz v3, :cond_4

    .line 68945
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b2;->A00:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0Y(Lcom/facebook/ads/redexgen/X/ah;)V

    .line 68946
    :cond_4
    :goto_1
    return-void

    .line 68947
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/b2;->A01:[Ljava/lang/String;

    const-string v1, "Zcc8pzIQVtObnEDs8jyH13QzYMXIQUWE"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_4

    goto :goto_0
.end method
