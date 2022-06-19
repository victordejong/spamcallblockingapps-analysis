.class public final Lcom/facebook/ads/redexgen/X/HL;
.super Landroid/view/TextureView;
.source ""

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/facebook/ads/redexgen/X/Pq;
.implements Lcom/facebook/ads/redexgen/X/Q4;
.implements Lcom/facebook/ads/redexgen/X/Ps;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static A0N:[B

.field public static A0O:[Ljava/lang/String;

.field public static final A0P:Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:Landroid/net/Uri;

.field public A07:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A08:Landroid/view/View;

.field public A09:Landroid/widget/MediaController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0A:Lcom/facebook/ads/redexgen/X/Wm;

.field public A0B:Lcom/facebook/ads/redexgen/X/PJ;

.field public A0C:Lcom/facebook/ads/redexgen/X/Pt;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0D:Lcom/facebook/ads/redexgen/X/Q6;

.field public A0E:Lcom/facebook/ads/redexgen/X/Q6;

.field public A0F:Lcom/facebook/ads/redexgen/X/Q7;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0G:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public A0L:Z

.field public A0M:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 36189
    invoke-static {}, Lcom/facebook/ads/redexgen/X/HL;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/HL;->A07()V

    const-class v0, Lcom/facebook/ads/redexgen/X/HL;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HL;->A0P:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 2

    .line 36190
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 36191
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    .line 36192
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0E:Lcom/facebook/ads/redexgen/X/Q6;

    .line 36193
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0L:Z

    .line 36194
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0M:Z

    .line 36195
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0J:Z

    .line 36196
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A03:I

    .line 36197
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A02:I

    .line 36198
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A00:F

    .line 36199
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A01:I

    .line 36200
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0I:Z

    .line 36201
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0H:Z

    .line 36202
    sget-object v0, Lcom/facebook/ads/redexgen/X/PJ;->A04:Lcom/facebook/ads/redexgen/X/PJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0B:Lcom/facebook/ads/redexgen/X/PJ;

    .line 36203
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0K:Z

    .line 36204
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    .line 36205
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;)V
    .locals 2

    .line 36206
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36207
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    .line 36208
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0E:Lcom/facebook/ads/redexgen/X/Q6;

    .line 36209
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0L:Z

    .line 36210
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0M:Z

    .line 36211
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0J:Z

    .line 36212
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A03:I

    .line 36213
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A02:I

    .line 36214
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A00:F

    .line 36215
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A01:I

    .line 36216
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0I:Z

    .line 36217
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0H:Z

    .line 36218
    sget-object v0, Lcom/facebook/ads/redexgen/X/PJ;->A04:Lcom/facebook/ads/redexgen/X/PJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0B:Lcom/facebook/ads/redexgen/X/PJ;

    .line 36219
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0K:Z

    .line 36220
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    .line 36221
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 36222
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36223
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    .line 36224
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0E:Lcom/facebook/ads/redexgen/X/Q6;

    .line 36225
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0L:Z

    .line 36226
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0M:Z

    .line 36227
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0J:Z

    .line 36228
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A03:I

    .line 36229
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A02:I

    .line 36230
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A00:F

    .line 36231
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A01:I

    .line 36232
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0I:Z

    .line 36233
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0H:Z

    .line 36234
    sget-object v0, Lcom/facebook/ads/redexgen/X/PJ;->A04:Lcom/facebook/ads/redexgen/X/PJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0B:Lcom/facebook/ads/redexgen/X/PJ;

    .line 36235
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0K:Z

    .line 36236
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    .line 36237
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/HL;)Landroid/widget/MediaController;
    .locals 0

    .line 36238
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/HL;->A09:Landroid/widget/MediaController;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/HL;)Lcom/facebook/ads/redexgen/X/Pt;
    .locals 0

    .line 36239
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/HL;)Lcom/facebook/ads/redexgen/X/Q7;
    .locals 0

    .line 36240
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0F:Lcom/facebook/ads/redexgen/X/Q7;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/HL;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 5

    .line 36241
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pt;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Pt;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    .line 36242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Pt;->A0H(Lcom/facebook/ads/redexgen/X/Ps;)V

    .line 36243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Pt;->A0G(Lcom/facebook/ads/redexgen/X/Pq;)V

    .line 36244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Pt;->A0I(Z)V

    .line 36245
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0J:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0I:Z

    if-nez v0, :cond_1

    .line 36246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0A()Landroid/app/Activity;

    move-result-object v1

    .line 36247
    .local p0, "activityContext":Landroid/app/Activity;
    if-eqz v1, :cond_2

    .line 36248
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A09:Landroid/widget/MediaController;

    .line 36249
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A09:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A08:Landroid/view/View;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 36250
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A09:Landroid/widget/MediaController;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Py;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Py;-><init>(Lcom/facebook/ads/redexgen/X/HL;)V

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 36251
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A09:Landroid/widget/MediaController;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 36252
    .end local p0    # "activityContext":Landroid/app/Activity;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0G:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/HL;->A0O:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 36253
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A09:Landroid/widget/MediaController;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/HL;->A0O:[Ljava/lang/String;

    const-string v1, "TcWPgvuP6PLaWw0aR3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_4

    .line 36254
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0K:Z

    if-eqz v0, :cond_5

    .line 36255
    :cond_4
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HL;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A06:Landroid/net/Uri;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pt;->A0E(Landroid/content/Context;Landroid/net/Uri;)V

    .line 36256
    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A08:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HL;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 36257
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HL;->isAvailable()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/HL;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/HL;->A0O:[Ljava/lang/String;

    const-string v1, "ZW"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "p6"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v4, :cond_6

    .line 36258
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HL;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Lcom/facebook/ads/redexgen/X/HL;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 36259
    :cond_6
    return-void

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/HL;->A0O:[Ljava/lang/String;

    const-string v1, "ojZWmfS9dzOOFQ3TtX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_6

    goto :goto_1
.end method

.method private A05()V
    .locals 2

    .line 36260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    if-nez v0, :cond_0

    .line 36261
    return-void

    .line 36262
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pt;->A08()Lcom/facebook/ads/redexgen/X/Pr;

    move-result-object v0

    .line 36263
    .local p0, "videoFormat":Lcom/facebook/ads/redexgen/X/Pr;
    if-eqz v0, :cond_1

    .line 36264
    iget v1, v0, Lcom/facebook/ads/redexgen/X/Pr;->A01:I

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Pr;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HL;->A09(II)V

    .line 36265
    :cond_1
    return-void
.end method

.method private A06()V
    .locals 2

    .line 36266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A07:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 36267
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 36268
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A07:Landroid/view/Surface;

    .line 36269
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    if-eqz v0, :cond_1

    .line 36270
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pt;->A09()V

    .line 36271
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    .line 36272
    :cond_1
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A09:Landroid/widget/MediaController;

    .line 36273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0M:Z

    .line 36274
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HL;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 36275
    return-void
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0xe2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HL;->A0N:[B

    return-void

    :array_0
    .array-data 1
        -0x36t
        -0xet
        -0xet
        -0x16t
        -0x11t
        -0x18t
        -0x5dt
        -0x1ct
        -0x11t
        -0x6t
        -0x1ct
        -0x4t
        -0xat
        -0x5dt
        -0x9t
        -0x15t
        -0xbt
        -0xet
        -0x6t
        -0x5dt
        -0x1ct
        -0xft
        -0x5dt
        -0x18t
        -0x5t
        -0x1at
        -0x18t
        -0xdt
        -0x9t
        -0x14t
        -0xet
        -0xft
        -0x5dt
        -0x6t
        -0x14t
        -0x9t
        -0x15t
        -0x5dt
        -0xat
        -0x18t
        -0x9t
        -0x3bt
        -0x1ct
        -0x1at
        -0x12t
        -0x16t
        -0xbt
        -0xet
        -0x8t
        -0xft
        -0x19t
        -0x39t
        -0xbt
        -0x1ct
        -0x6t
        -0x1ct
        -0x1bt
        -0x11t
        -0x18t
        -0x5dt
        -0xet
        -0xft
        -0x5dt
        -0x2ft
        -0xet
        -0x8t
        -0x16t
        -0x1ct
        -0x9t
        -0x5dt
        -0x1ct
        -0x1bt
        -0xet
        -0x7t
        -0x18t
        -0x4ft
        -0x5dt
        -0xat
        -0xet
        -0x5dt
        -0x6t
        -0x18t
        -0x5dt
        -0xat
        -0x14t
        -0x11t
        -0x18t
        -0xft
        -0x9t
        -0x11t
        -0x4t
        -0x5dt
        -0x14t
        -0x16t
        -0xft
        -0xet
        -0xbt
        -0x18t
        -0x5dt
        -0x14t
        -0x9t
        -0x4ft
        -0x16t
        0x12t
        0x12t
        0xat
        0xft
        0x8t
        -0x3dt
        0x4t
        0xft
        0x1at
        0x4t
        0x1ct
        0x16t
        -0x3dt
        0x17t
        0xbt
        0x15t
        0x12t
        0x1at
        -0x3dt
        0x4t
        0x11t
        -0x3dt
        0x8t
        0x1bt
        0x6t
        0x8t
        0x13t
        0x17t
        0xct
        0x12t
        0x11t
        -0x3dt
        0x1at
        0xct
        0x17t
        0xbt
        -0x3dt
        0x16t
        0x8t
        0x17t
        -0x17t
        0x12t
        0x15t
        0x8t
        0xat
        0x15t
        0x12t
        0x18t
        0x11t
        0x7t
        -0x3dt
        0x12t
        0x11t
        -0x3dt
        -0xft
        0x12t
        0x18t
        0xat
        0x4t
        0x17t
        -0x3dt
        0x4t
        0x5t
        0x12t
        0x19t
        0x8t
        -0x2ft
        -0x3dt
        0x16t
        0x12t
        -0x3dt
        0x1at
        0x8t
        -0x3dt
        0x16t
        0xct
        0xft
        0x8t
        0x11t
        0x17t
        0xft
        0x1ct
        -0x3dt
        0xct
        0xat
        0x11t
        0x12t
        0x15t
        0x8t
        -0x3dt
        0xct
        0x17t
        -0x2ft
        -0xbt
        0x8t
        0x3t
        0x4t
        0xet
        -0x41t
        0x12t
        0x13t
        0x0t
        0x13t
        0x4t
        -0x41t
        0x2t
        0x7t
        0x0t
        0xdt
        0x6t
        0x4t
        0x3t
        -0x41t
        0x13t
        0xet
        -0x41t
        -0x3ct
        -0x3et
        -0x35t
        -0x3et
        -0x31t
        -0x3at
        -0x40t
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "IkPvJjq0d6kyiPKTTS2lCNhYTces79dt"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hRUerIi7AJ3jOkGNT2UiHpaxkSFge2bW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Avvx3DFr2S27"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gmbQyyKnf6LsZqIL76N8lXPSt8AAYSbH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tA8cc29oavr4xgkZce"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dMNAf6LzALyzJxRA4XpvvVCIX8V0s"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HL;->A0O:[Ljava/lang/String;

    return-void
.end method

.method private A09(II)V
    .locals 1

    .line 36276
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A03:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A02:I

    if-eq p2, v0, :cond_1

    .line 36277
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/HL;->A03:I

    .line 36278
    iput p2, p0, Lcom/facebook/ads/redexgen/X/HL;->A02:I

    .line 36279
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A03:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A02:I

    if-eqz v0, :cond_1

    .line 36280
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HL;->requestLayout()V

    .line 36281
    :cond_1
    return-void
.end method

.method public static A0A()Z
    .locals 1

    .line 36282
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pt;->A03()Z

    move-result v0

    return v0
.end method

.method private setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V
    .locals 4

    .line 36444
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq p1, v0, :cond_2

    .line 36445
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc4

    const/16 v1, 0x17

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HL;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36447
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    .line 36448
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A0A:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_1

    .line 36449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0M:Z

    .line 36450
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0F:Lcom/facebook/ads/redexgen/X/Q7;

    if-eqz v0, :cond_2

    .line 36451
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q7;->AC8(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 36452
    :cond_2
    return-void
.end method


# virtual methods
.method public final A7V()V
    .locals 2

    .line 36283
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0H:Z

    if-nez v0, :cond_0

    .line 36284
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HL;->ACK(ZI)V

    .line 36285
    :cond_0
    return-void
.end method

.method public final A7f()Z
    .locals 1

    .line 36286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pt;->A0K()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A7g()Z
    .locals 1

    .line 36287
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0M:Z

    return v0
.end method

.method public final A8A()Z
    .locals 1

    .line 36288
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0L:Z

    return v0
.end method

.method public final ABA(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6

    .line 36289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A95(Ljava/lang/String;)V

    .line 36290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    .line 36291
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    .line 36292
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2v(I)V

    .line 36293
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A03:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HL;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 36294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    .line 36295
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A17:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, p2}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 36296
    const/16 v2, 0xdb

    const/4 v1, 0x7

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HL;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 36297
    return-void
.end method

.method public final ABB(ZI)V
    .locals 7

    .line 36298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    if-nez v0, :cond_0

    .line 36299
    return-void

    .line 36300
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_b

    const/4 v0, 0x3

    if-eq p2, v0, :cond_5

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    .line 36301
    :cond_1
    :goto_0
    return-void

    .line 36302
    :cond_2
    if-eqz p1, :cond_3

    .line 36303
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A06:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HL;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 36304
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 36305
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Pt;->A0I(Z)V

    .line 36306
    if-nez p1, :cond_4

    .line 36307
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    sget-object v2, Lcom/facebook/ads/redexgen/X/HL;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_d

    sget-object v2, Lcom/facebook/ads/redexgen/X/HL;->A0O:[Ljava/lang/String;

    const-string v1, "np"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "ep"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Pt;->A0A()V

    .line 36308
    :cond_4
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/HL;->A0M:Z

    goto :goto_0

    .line 36309
    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HL;->A05()V

    .line 36310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A04:J

    .line 36311
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A00:F

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HL;->setRequestedVolume(F)V

    .line 36312
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/HL;->A05:J

    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pt;->A07()J

    move-result-wide v1

    cmp-long v0, v5, v1

    if-gez v0, :cond_7

    .line 36313
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A05:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Pt;->A0D(J)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/HL;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 36314
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/HL;->A0O:[Ljava/lang/String;

    const-string v1, "c2zzHXCQiIz3oIHQTifgBERQJOyaY37y"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "B1T7dswaxt6nrXidTLCysunwDPvSX4Ru"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/HL;->A05:J

    .line 36315
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pt;->A06()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0M:Z

    if-eqz v0, :cond_9

    .line 36316
    sget-object v3, Lcom/facebook/ads/redexgen/X/Q6;->A05:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v1, Lcom/facebook/ads/redexgen/X/HL;->A0O:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/HL;->A0O:[Ljava/lang/String;

    const-string v1, "aeS0Nfv6aNfoZkiJnj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/HL;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    goto/16 :goto_0

    .line 36317
    :cond_9
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/HL;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v3, Lcom/facebook/ads/redexgen/X/Q6;->A06:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v1, Lcom/facebook/ads/redexgen/X/HL;->A0O:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/HL;->A0O:[Ljava/lang/String;

    const-string v1, "a3r7l0S1P0Mh4AObuD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_1

    .line 36318
    :goto_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A07:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HL;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 36319
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0E:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A0A:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_1

    .line 36320
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0B:Lcom/facebook/ads/redexgen/X/PJ;

    const/16 v0, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HL;->AE7(Lcom/facebook/ads/redexgen/X/PJ;I)V

    .line 36321
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0E:Lcom/facebook/ads/redexgen/X/Q6;

    goto/16 :goto_0

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/HL;->A0O:[Ljava/lang/String;

    const-string v1, "Z0ieyAfx5hfrSx3loq3dNFvbzP2EYglZ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_1

    goto :goto_1

    .line 36322
    :cond_b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HL;->A05()V

    .line 36323
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A01:I

    if-ltz v0, :cond_1

    .line 36324
    iget v2, p0, Lcom/facebook/ads/redexgen/X/HL;->A01:I

    .line 36325
    .local p0, "seekFrom":I
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A01:I

    .line 36326
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0F:Lcom/facebook/ads/redexgen/X/Q7;

    if-eqz v1, :cond_1

    .line 36327
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HL;->getCurrentPosition()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Q7;->ABZ(II)V

    goto/16 :goto_0

    .line 36328
    :cond_c
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HL;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 36329
    goto/16 :goto_0

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AC7(IIIF)V
    .locals 0

    .line 36330
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/HL;->A09(II)V

    .line 36331
    return-void
.end method

.method public final ACK(ZI)V
    .locals 2

    .line 36332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A2r(I)V

    .line 36333
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A05:Lcom/facebook/ads/redexgen/X/Q6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0E:Lcom/facebook/ads/redexgen/X/Q6;

    .line 36334
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0L:Z

    .line 36335
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    if-eqz v1, :cond_0

    .line 36336
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pt;->A0I(Z)V

    .line 36337
    :goto_0
    return-void

    .line 36338
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HL;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    goto :goto_0
.end method

.method public final AE2(I)V
    .locals 2

    .line 36339
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A96(I)V

    .line 36340
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A09:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HL;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 36341
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HL;->AEE(I)V

    .line 36342
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A05:J

    .line 36343
    return-void
.end method

.method public final AE7(Lcom/facebook/ads/redexgen/X/PJ;I)V
    .locals 4

    .line 36344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A32(I)V

    .line 36345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0L:Z

    .line 36346
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A0A:Lcom/facebook/ads/redexgen/X/Q6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0E:Lcom/facebook/ads/redexgen/X/Q6;

    .line 36347
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0B:Lcom/facebook/ads/redexgen/X/PJ;

    .line 36348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    if-nez v0, :cond_1

    .line 36349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A06:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HL;->setup(Landroid/net/Uri;)V

    .line 36350
    :cond_0
    :goto_0
    return-void

    .line 36351
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A07:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A05:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A06:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_0

    .line 36352
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pt;->A0I(Z)V

    .line 36353
    sget-object v3, Lcom/facebook/ads/redexgen/X/Q6;->A0A:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v2, Lcom/facebook/ads/redexgen/X/HL;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/HL;->A0O:[Ljava/lang/String;

    const-string v1, "Wi"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "9L"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/HL;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEE(I)V
    .locals 1

    .line 36354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A34(I)V

    .line 36355
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0E:Lcom/facebook/ads/redexgen/X/Q6;

    .line 36356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    if-eqz v0, :cond_0

    .line 36357
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pt;->A0B()V

    .line 36358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pt;->A09()V

    .line 36359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    .line 36360
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HL;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 36361
    return-void
.end method

.method public final destroy()V
    .locals 0

    .line 36362
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HL;->A06()V

    .line 36363
    return-void
.end method

.method public getCurrentPosition()I
    .locals 3

    .line 36364
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pt;->A06()J

    move-result-wide v1

    long-to-int v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 3

    .line 36365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    if-nez v0, :cond_0

    .line 36366
    const/4 v0, 0x0

    return v0

    .line 36367
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pt;->A07()J

    move-result-wide v1

    long-to-int v0, v1

    return v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    .line 36368
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A04:J

    return-wide v0
.end method

.method public getStartReason()Lcom/facebook/ads/redexgen/X/PJ;
    .locals 1

    .line 36369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0B:Lcom/facebook/ads/redexgen/X/PJ;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/redexgen/X/Q6;
    .locals 1

    .line 36370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    return-object v0
.end method

.method public getTargetState()Lcom/facebook/ads/redexgen/X/Q6;
    .locals 1

    .line 36371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0E:Lcom/facebook/ads/redexgen/X/Q6;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 36372
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A02:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 36373
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A03:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 36374
    return-object p0
.end method

.method public getVolume()F
    .locals 1

    .line 36375
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A00:F

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 36376
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 36377
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HL;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36378
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HL;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36379
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A03:Lcom/facebook/ads/redexgen/X/Q6;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HL;->setVideoState(Lcom/facebook/ads/redexgen/X/Q6;)V

    .line 36380
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HL;->AEE(I)V

    .line 36381
    :cond_0
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 36382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A07:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 36383
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 36384
    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A07:Landroid/view/Surface;

    .line 36385
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    if-nez v1, :cond_1

    .line 36386
    return-void

    .line 36387
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A07:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pt;->A0F(Landroid/view/Surface;)V

    .line 36388
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A05:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0L:Z

    if-nez v0, :cond_2

    .line 36389
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0B:Lcom/facebook/ads/redexgen/X/PJ;

    const/4 v0, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HL;->AE7(Lcom/facebook/ads/redexgen/X/PJ;I)V

    .line 36390
    :cond_2
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 36391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A07:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 36392
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 36393
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A07:Landroid/view/Surface;

    .line 36394
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    if-eqz v0, :cond_0

    .line 36395
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Pt;->A0F(Landroid/view/Surface;)V

    .line 36396
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A05:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_1

    .line 36397
    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HL;->ACK(ZI)V

    .line 36398
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 36399
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 36400
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 36401
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    .line 36402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    if-nez v0, :cond_0

    .line 36403
    return-void

    .line 36404
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A09:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36405
    return-void

    .line 36406
    :cond_1
    if-nez p1, :cond_3

    .line 36407
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A05:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_2

    .line 36408
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HL;->A7V()V

    .line 36409
    :cond_2
    :goto_0
    return-void

    .line 36410
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A05:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0L:Z

    if-nez v0, :cond_2

    .line 36411
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0B:Lcom/facebook/ads/redexgen/X/PJ;

    const/16 v0, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HL;->AE7(Lcom/facebook/ads/redexgen/X/PJ;I)V

    goto :goto_0
.end method

.method public final seekTo(I)V
    .locals 3

    .line 36412
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    if-eqz v0, :cond_0

    .line 36413
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HL;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A01:I

    .line 36414
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    int-to-long v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Pt;->A0D(J)V

    .line 36415
    :goto_0
    return-void

    .line 36416
    :cond_0
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A05:J

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 36417
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 36418
    invoke-super {p0, p1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36419
    :cond_0
    :goto_0
    return-void

    .line 36420
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36421
    sget-object v3, Lcom/facebook/ads/redexgen/X/HL;->A0P:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x66

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HL;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackgroundPlaybackEnabled(Z)V
    .locals 0

    .line 36422
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0H:Z

    .line 36423
    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    .line 36424
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HL;->A08:Landroid/view/View;

    .line 36425
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q0;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q0;-><init>(Lcom/facebook/ads/redexgen/X/HL;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36426
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 36427
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 36428
    invoke-super {p0, p1}, Landroid/view/TextureView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 36429
    :cond_0
    :goto_0
    return-void

    .line 36430
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36431
    sget-object v3, Lcom/facebook/ads/redexgen/X/HL;->A0P:Ljava/lang/String;

    const/16 v2, 0x66

    const/16 v1, 0x5e

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HL;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFullScreen(Z)V
    .locals 1

    .line 36432
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0J:Z

    .line 36433
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0I:Z

    if-nez v0, :cond_0

    .line 36434
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pz;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pz;-><init>(Lcom/facebook/ads/redexgen/X/HL;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HL;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36435
    :cond_0
    return-void
.end method

.method public setRequestedVolume(F)V
    .locals 2

    .line 36436
    iput p1, p0, Lcom/facebook/ads/redexgen/X/HL;->A00:F

    .line 36437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A08:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0D:Lcom/facebook/ads/redexgen/X/Q6;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A04:Lcom/facebook/ads/redexgen/X/Q6;

    if-eq v1, v0, :cond_0

    .line 36438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Pt;->A0C(F)V

    .line 36439
    :cond_0
    return-void
.end method

.method public setTestMode(Z)V
    .locals 0

    .line 36440
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0K:Z

    .line 36441
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36442
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0G:Ljava/lang/String;

    .line 36443
    return-void
.end method

.method public setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/Q7;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/Q7;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36453
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HL;->A0F:Lcom/facebook/ads/redexgen/X/Q7;

    .line 36454
    return-void
.end method

.method public setup(Landroid/net/Uri;)V
    .locals 1

    .line 36455
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2u()V

    .line 36456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HL;->A0C:Lcom/facebook/ads/redexgen/X/Pt;

    if-eqz v0, :cond_0

    .line 36457
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HL;->A06()V

    .line 36458
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HL;->A06:Landroid/net/Uri;

    .line 36459
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/HL;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 36460
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HL;->A04()V

    .line 36461
    return-void
.end method
