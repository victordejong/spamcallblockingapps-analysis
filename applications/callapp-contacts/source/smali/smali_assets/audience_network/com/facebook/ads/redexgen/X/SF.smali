.class public final Lcom/facebook/ads/redexgen/X/SF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/FB;->A0Q(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/8w;Lcom/facebook/ads/redexgen/X/8u;Lcom/facebook/ads/redexgen/X/1n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FB;

.field public final synthetic A01:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SF;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SF;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FB;Ljava/lang/Runnable;)V
    .locals 0

    .line 52077
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/SF;->A01:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/SF;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x10

    int-to-byte v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/SF;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/SF;->A03:[Ljava/lang/String;

    const-string v1, "2VG06oAYTcRzKBDE7gWFCU36hzL5px1b"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "j1xG2z3v9jq0UO66H2WqYNbpklLAu6IG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SF;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x73t
        0x6ft
        0x6ft
        0x72t
        0x73t
        -0x5ct
        -0x5et
        -0x5ft
        -0x7ct
        -0x5dt
        -0x50t
        -0x50t
        -0x59t
        -0x4ct
        0x62t
        -0x55t
        -0x51t
        -0x4et
        -0x4ct
        -0x59t
        -0x4bt
        -0x4bt
        -0x55t
        -0x4ft
        -0x50t
        0x62t
        -0x58t
        -0x55t
        -0x4ct
        -0x59t
        -0x5at
        -0x76t
        -0x77t
        0x5dt
        0x7ct
        -0x77t
        -0x77t
        -0x80t
        -0x73t
        0x67t
        -0x76t
        -0x7et
        -0x7et
        -0x7ct
        -0x77t
        -0x7et
        0x64t
        -0x78t
        -0x75t
        -0x73t
        -0x80t
        -0x72t
        -0x72t
        -0x7ct
        -0x76t
        -0x77t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7FIKHU9lgq27"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AgQqvAltXhi1bYF8zppFCZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CRAmwsbXNtyv0vmCJJ9qOPCwxUiND3E6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ItQqdqoRYHMWKQzbVRTeHzNwEAi"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "W2szVhKnaW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HNVKE5hkEvipBMdeuLWXlSQ07SgK2Jmi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9NOG2BA2dnlUEqMWgY53wMXC47FXKBrl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EneshuO9jiHnlHF2bjWwp7WA0EKVaMOF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SF;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A9a(Lcom/facebook/ads/redexgen/X/Rm;)V
    .locals 1

    .line 52078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FB;->A00(Lcom/facebook/ads/redexgen/X/FB;)Lcom/facebook/ads/redexgen/X/ES;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/RY;->A3l()V

    .line 52079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A0B()V

    .line 52080
    return-void
.end method

.method public final A9b(Lcom/facebook/ads/redexgen/X/Rm;Landroid/view/View;)V
    .locals 2

    .line 52081
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FB;->A00(Lcom/facebook/ads/redexgen/X/FB;)Lcom/facebook/ads/redexgen/X/ES;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A01:Lcom/facebook/ads/redexgen/X/0n;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/RY;->A3k(Z)V

    .line 52082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A01:Lcom/facebook/ads/redexgen/X/0n;

    if-eq p1, v0, :cond_1

    .line 52083
    return-void

    .line 52084
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 52085
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0G()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A01:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52086
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/SJ;->A02:Lcom/facebook/ads/redexgen/X/0n;

    .line 52087
    .local p0, "tempAdapter":Lcom/facebook/ads/redexgen/X/0n;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/SJ;->A02:Lcom/facebook/ads/redexgen/X/0n;

    .line 52088
    iput-object p2, v0, Lcom/facebook/ads/redexgen/X/SJ;->A00:Landroid/view/View;

    .line 52089
    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A0D:Z

    if-nez v0, :cond_2

    .line 52090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/0o;->A0E(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 52091
    :goto_1
    return-void

    .line 52092
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/0o;->A0D(Landroid/view/View;)V

    .line 52093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/SJ;->A0P(Lcom/facebook/ads/redexgen/X/0n;)V

    goto :goto_1
.end method

.method public final A9c(Lcom/facebook/ads/redexgen/X/Rm;Lcom/facebook/ads/AdError;)V
    .locals 3

    .line 52094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FB;->A00(Lcom/facebook/ads/redexgen/X/FB;)Lcom/facebook/ads/redexgen/X/ES;

    move-result-object v0

    .line 52095
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A01:Lcom/facebook/ads/redexgen/X/0n;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    .line 52096
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RY;->A3m(ZI)V

    .line 52097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A01:Lcom/facebook/ads/redexgen/X/0n;

    if-eq p1, v0, :cond_1

    .line 52098
    return-void

    .line 52099
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 52100
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0G()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A01:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SJ;->A0P(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 52102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0O()V

    .line 52103
    return-void
.end method

.method public final A9d(Lcom/facebook/ads/redexgen/X/Rm;)V
    .locals 5

    const/16 v2, 0x1f

    const/16 v1, 0x19

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A00(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x8

    const/16 v1, 0x17

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FB;->A00(Lcom/facebook/ads/redexgen/X/FB;)Lcom/facebook/ads/redexgen/X/ES;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A0F()Lcom/facebook/ads/redexgen/X/RY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/RY;->A3n()V

    .line 52105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SJ;->A07:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0o;->A0C()V

    .line 52106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->A0M()V

    .line 52107
    return-void
.end method
