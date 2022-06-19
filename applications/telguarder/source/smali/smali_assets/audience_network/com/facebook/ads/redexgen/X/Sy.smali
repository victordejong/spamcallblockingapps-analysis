.class public final Lcom/facebook/ads/redexgen/X/Sy;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KG;->A0P(Lcom/facebook/ads/redexgen/X/KD;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/KD;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/KG;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sy;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KG;Lcom/facebook/ads/redexgen/X/KD;)V
    .locals 0

    .line 52919
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Lcom/facebook/ads/redexgen/X/KG;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/KD;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sy;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x62

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sy;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x79t
        0x73t
        0x61t
        0x7ct
        0x7ft
        0x70t
        0x70t
        0x7bt
        0x6ct
        0x61t
        0x75t
        0x7bt
        0x67t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 9

    .line 52920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Lcom/facebook/ads/redexgen/X/KG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A01(Lcom/facebook/ads/redexgen/X/KG;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8n;->A09(Landroid/content/Context;)V

    .line 52921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Lcom/facebook/ads/redexgen/X/KG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A01(Lcom/facebook/ads/redexgen/X/KG;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5b;->A08(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 52922
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Lcom/facebook/ads/redexgen/X/KG;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/KD;

    .line 52923
    invoke-static {}, Lcom/facebook/ads/redexgen/X/98;->A00()Lcom/facebook/ads/redexgen/X/98;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Lcom/facebook/ads/redexgen/X/KG;

    .line 52924
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A01(Lcom/facebook/ads/redexgen/X/KG;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/98;->A01(Lcom/facebook/ads/redexgen/X/8D;Z)Lcom/facebook/ads/redexgen/X/97;

    move-result-object v0

    .line 52925
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/97;->A6N()Ljava/util/Map;

    move-result-object v0

    .line 52926
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/KD;->A09(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 52927
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/KG;->A0A(Lcom/facebook/ads/redexgen/X/KG;Ljava/util/Map;)Ljava/util/Map;

    .line 52928
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Lcom/facebook/ads/redexgen/X/KG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A09(Lcom/facebook/ads/redexgen/X/KG;)Ljava/util/Map;

    move-result-object v4

    const/4 v3, 0x1

    const/16 v1, 0xc

    const/16 v0, 0x5c

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A00(III)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Lcom/facebook/ads/redexgen/X/KG;

    .line 52929
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A01(Lcom/facebook/ads/redexgen/X/KG;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x3b

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Lcom/facebook/ads/redexgen/X/KG;

    .line 52930
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A01(Lcom/facebook/ads/redexgen/X/KG;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    .line 52931
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Lcom/facebook/ads/redexgen/X/KG;

    .line 52932
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A01(Lcom/facebook/ads/redexgen/X/KG;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52933
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v0, 0x2

    .line 52934
    invoke-static {v1, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 52935
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52936
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/KD;

    .line 52937
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KD;->A06()Lcom/facebook/ads/redexgen/X/Jt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A03:Lcom/facebook/ads/redexgen/X/Jt;

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/KD;

    .line 52938
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KD;->A06()Lcom/facebook/ads/redexgen/X/Jt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A05:Lcom/facebook/ads/redexgen/X/Jt;

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/KD;

    .line 52939
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KD;->A06()Lcom/facebook/ads/redexgen/X/Jt;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jt;->A04:Lcom/facebook/ads/redexgen/X/Jt;

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Lcom/facebook/ads/redexgen/X/KD;

    .line 52940
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KD;->A06()Lcom/facebook/ads/redexgen/X/Jt;

    move-result-object v0

    if-nez v0, :cond_1

    .line 52941
    .local p0, "shouldCheckSystemHttpAgent":Z
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Lcom/facebook/ads/redexgen/X/KG;

    .line 52942
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A01(Lcom/facebook/ads/redexgen/X/KG;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    .line 52943
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/QX;->A02(ZLcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QF;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Lcom/facebook/ads/redexgen/X/KG;

    .line 52944
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A07(Lcom/facebook/ads/redexgen/X/KG;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/facebook/ads/redexgen/X/QT;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/QT;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Lcom/facebook/ads/redexgen/X/KG;

    .line 52945
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A09(Lcom/facebook/ads/redexgen/X/KG;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QT;->A06(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/QT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QT;->A09()[B

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Lcom/facebook/ads/redexgen/X/KG;

    .line 52946
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lb;->A00()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/KG;->A05(Lcom/facebook/ads/redexgen/X/KG;J)Lcom/facebook/ads/redexgen/X/QG;

    move-result-object v0

    .line 52947
    invoke-interface {v5, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/QF;->ACR(Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/QG;)V

    goto :goto_1

    .line 52948
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 52949
    :catch_1
    move-exception v0

    .line 52950
    .local p0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_REQUEST_FAILED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 52951
    .local v0, "adRequestFailed":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 52952
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Lcom/facebook/ads/redexgen/X/KG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A01(Lcom/facebook/ads/redexgen/X/KG;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    .line 52953
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Lcom/facebook/ads/redexgen/X/KG;

    .line 52954
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KG;->A00(Lcom/facebook/ads/redexgen/X/KG;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v4

    .line 52955
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 52956
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 52957
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/0R;->A2k(JILjava/lang/String;Z)V

    .line 52958
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sy;->A01:Lcom/facebook/ads/redexgen/X/KG;

    invoke-static {v2, v7}, Lcom/facebook/ads/redexgen/X/Jn;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KG;->A0H(Lcom/facebook/ads/redexgen/X/KG;Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 52959
    .end local p0    # "e":Ljava/lang/Exception;
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v0
    :goto_1
    return-void
.end method
