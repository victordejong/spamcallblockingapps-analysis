.class public final Lcom/facebook/ads/redexgen/X/O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Rk;->setUpBrowserControls(Lcom/facebook/ads/redexgen/X/SA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rk;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/O0;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rk;)V
    .locals 0

    .line 46141
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O0;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4VdIvN41Y1PsVRNy8ESV6AoT7JtY7mOo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vGZsWeBEeETYZXka8OpTZT4PAUyaEWLC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZifrZpEVZD1NZT6vTBKMmHLwYhavrsxY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xhv8Ad4viDbVMOakxYY45eRmoXdbT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CjSMy6xtOOPdgbSEsembUhaEaUJKa0Lu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MTCD2dHyMV6URhGaA2fkSnc4YleVO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2nwFRFeZ0ZLYrBLyNH9nDhJsl6BNDnvH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qIWsM75sM7F73Zb02aNoGv7H4tzM1zvK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/O0;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 46142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 46143
    .local p0, "action":I
    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_1

    .line 46144
    :cond_0
    :goto_0
    return v3

    .line 46145
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 46146
    .local p2, "browserFinalY":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O0;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rk;->A00(Lcom/facebook/ads/redexgen/X/Rk;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 46147
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/O0;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    sget-object v2, Lcom/facebook/ads/redexgen/X/O0;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/O0;->A01:[Ljava/lang/String;

    const-string v1, "VKPglSsWdI7EB0s2bdFPzSJy3YBuxkda"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "c6cu8NeYRt4ijgjw6vNa3QNJRdiCq95p"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/Rk;->A0O(Lcom/facebook/ads/redexgen/X/Rk;Z)V

    goto :goto_0

    .line 46148
    .end local p2    # "browserFinalY":F
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/O0;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Rk;->A01(Lcom/facebook/ads/redexgen/X/Rk;F)F

    .line 46149
    goto :goto_0
.end method
