.class public final Lcom/facebook/ads/redexgen/X/SM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/L7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/SK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameCountdownTimerListener"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/SK;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 52240
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SM;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SK;)V
    .locals 0

    .line 52241
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/SK;Lcom/facebook/ads/redexgen/X/SQ;)V
    .locals 0

    .line 52242
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/SM;-><init>(Lcom/facebook/ads/redexgen/X/SK;)V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RKj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "UN15gotjq8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ajoBiEUEQKFJNLqm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ifgUnXqkKiJSPGKzKRtyUVwCV1ynqJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MgNPOwYKG3krpOkrgoqalUsb7GIlLECG"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4d5pH5OlBXd1RidH0kkNXmSukCNaNWUQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ZdfTYbLhRFsUmKvgir0oysIbzYx0fUOP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SM;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A9m()V
    .locals 5

    .line 52243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A0R(Lcom/facebook/ads/redexgen/X/SK;)V

    .line 52244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A0a(Lcom/facebook/ads/redexgen/X/SK;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A0b(Lcom/facebook/ads/redexgen/X/SK;)Z

    move-result v4

    sget-object v3, Lcom/facebook/ads/redexgen/X/SM;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v3, v0

    const/4 v0, 0x7

    aget-object v3, v3, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v3, Lcom/facebook/ads/redexgen/X/SM;->A01:[Ljava/lang/String;

    const-string v1, "QDC88FCswtzFK8CArK72WEL9jXMBl5"

    const/4 v0, 0x4

    aput-object v1, v3, v0

    if-eqz v4, :cond_1

    .line 52245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/SK;->A0P:Lcom/facebook/ads/redexgen/X/M6;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setToolbarActionMode(I)V

    .line 52246
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A0Z(Lcom/facebook/ads/redexgen/X/SK;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52247
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    const/16 v0, 0x1f4

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0W(Landroid/view/ViewGroup;I)V

    .line 52248
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A09(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/Ry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A09(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/Ry;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Lj;->A0P(Landroid/view/View;I)V

    .line 52250
    :cond_0
    return-void

    .line 52251
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SK;->A0P:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/M6;->setToolbarActionMode(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ABH(F)V
    .locals 3

    .line 52252
    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A01(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A07()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    sub-float/2addr v2, v0

    .line 52253
    .local p0, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/SK;->A0P:Lcom/facebook/ads/redexgen/X/M6;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setProgress(F)V

    .line 52254
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    float-to-int v0, p1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/SK;->A0U(Lcom/facebook/ads/redexgen/X/SK;I)V

    .line 52255
    return-void
.end method
