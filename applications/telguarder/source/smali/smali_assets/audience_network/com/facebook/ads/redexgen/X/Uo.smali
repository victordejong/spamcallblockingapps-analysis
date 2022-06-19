.class public final Lcom/facebook/ads/redexgen/X/Uo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DU;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Um;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PatReader"
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/IL;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Um;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uo;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Um;)V
    .locals 2

    .line 57354
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uo;->A01:Lcom/facebook/ads/redexgen/X/Um;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57355
    const/4 v0, 0x4

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uo;->A00:Lcom/facebook/ads/redexgen/X/IL;

    .line 57356
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "msPWexOSiEWaQH2Pd0cjiAK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CPmILoN5ia3epKv9AccMUcYSebYptVrw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MOB9ANIEIAnSL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Qr8XRKteVfDvljvmt0IBRFdBzVYml49e"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "099AT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "o9gNBLSVvohWohj0whX435TwFdKuhOEH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "igORwqJdVpNyva2Qs4o2eNy20qrISnR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pmUMQ8mFy6jdqpeLaQPD0IS6n5huQe7n"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Uo;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A45(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 7

    .line 57357
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    .line 57358
    .local p0, "tableId":I
    if-eqz v0, :cond_0

    .line 57359
    return-void

    .line 57360
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 57361
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v6

    const/4 v5, 0x4

    div-int/2addr v6, v5

    .line 57362
    .local p1, "programCount":I
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 57363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uo;->A00:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {p1, v0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0b(Lcom/facebook/ads/redexgen/X/IL;I)V

    .line 57364
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uo;->A00:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 57365
    .local v6, "programNumber":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uo;->A00:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57366
    const/16 v1, 0xd

    if-nez v2, :cond_1

    .line 57367
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uo;->A00:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57368
    .end local v6    # "programNumber":I
    .end local v5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57369
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uo;->A00:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 57370
    .local v5, "pid":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uo;->A01:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A07(Lcom/facebook/ads/redexgen/X/Um;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uo;->A01:Lcom/facebook/ads/redexgen/X/Um;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Un;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Un;-><init>(Lcom/facebook/ads/redexgen/X/Um;I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ur;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ur;-><init>(Lcom/facebook/ads/redexgen/X/DU;)V

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uo;->A01:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A01(Lcom/facebook/ads/redexgen/X/Um;)I

    goto :goto_1

    .line 57372
    .end local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Uo;->A01:Lcom/facebook/ads/redexgen/X/Um;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uo;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x54

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uo;->A02:[Ljava/lang/String;

    const-string v1, "qAFjj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Um;->A02(Lcom/facebook/ads/redexgen/X/Um;)I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    .line 57373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uo;->A01:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A07(Lcom/facebook/ads/redexgen/X/Um;)Landroid/util/SparseArray;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uo;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uo;->A02:[Ljava/lang/String;

    const-string v1, "QSjQKGsKMSwP5djpzzl1YAcUWEwARnT1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "z06mLGTO85FFdPv8iE79pDlfIyXNpvL9"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 57374
    :cond_3
    :goto_2
    return-void

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Uo;->A02:[Ljava/lang/String;

    const-string v1, "0J7L7"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A7u(Lcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 0

    .line 57375
    return-void
.end method
