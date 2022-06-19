.class public final Lcom/facebook/ads/redexgen/X/HQ;
.super Landroid/view/TextureView;
.source ""

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/facebook/ads/redexgen/X/Pv;
.implements Lcom/facebook/ads/redexgen/X/Q9;
.implements Lcom/facebook/ads/redexgen/X/Px;


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

.field public A0A:Lcom/facebook/ads/redexgen/X/XJ;

.field public A0B:Lcom/facebook/ads/redexgen/X/PO;

.field public A0C:Lcom/facebook/ads/redexgen/X/Py;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0D:Lcom/facebook/ads/redexgen/X/QB;

.field public A0E:Lcom/facebook/ads/redexgen/X/QB;

.field public A0F:Lcom/facebook/ads/redexgen/X/QC;

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

    .line 36136
    invoke-static {}, Lcom/facebook/ads/redexgen/X/HQ;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/HQ;->A07()V

    const-class v0, Lcom/facebook/ads/redexgen/X/HQ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HQ;->A0P:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 2

    .line 36137
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 36138
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    .line 36139
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0E:Lcom/facebook/ads/redexgen/X/QB;

    .line 36140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0L:Z

    .line 36141
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0M:Z

    .line 36142
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0J:Z

    .line 36143
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A03:I

    .line 36144
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A02:I

    .line 36145
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A00:F

    .line 36146
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A01:I

    .line 36147
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0I:Z

    .line 36148
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0H:Z

    .line 36149
    sget-object v0, Lcom/facebook/ads/redexgen/X/PO;->A04:Lcom/facebook/ads/redexgen/X/PO;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    .line 36150
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0K:Z

    .line 36151
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    .line 36152
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;)V
    .locals 2

    .line 36153
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36154
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    .line 36155
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0E:Lcom/facebook/ads/redexgen/X/QB;

    .line 36156
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0L:Z

    .line 36157
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0M:Z

    .line 36158
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0J:Z

    .line 36159
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A03:I

    .line 36160
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A02:I

    .line 36161
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A00:F

    .line 36162
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A01:I

    .line 36163
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0I:Z

    .line 36164
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0H:Z

    .line 36165
    sget-object v0, Lcom/facebook/ads/redexgen/X/PO;->A04:Lcom/facebook/ads/redexgen/X/PO;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    .line 36166
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0K:Z

    .line 36167
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    .line 36168
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 36169
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36170
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    .line 36171
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0E:Lcom/facebook/ads/redexgen/X/QB;

    .line 36172
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0L:Z

    .line 36173
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0M:Z

    .line 36174
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0J:Z

    .line 36175
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A03:I

    .line 36176
    iput v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A02:I

    .line 36177
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A00:F

    .line 36178
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A01:I

    .line 36179
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0I:Z

    .line 36180
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0H:Z

    .line 36181
    sget-object v0, Lcom/facebook/ads/redexgen/X/PO;->A04:Lcom/facebook/ads/redexgen/X/PO;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    .line 36182
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0K:Z

    .line 36183
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    .line 36184
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/HQ;)Landroid/widget/MediaController;
    .locals 0

    .line 36185
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A09:Landroid/widget/MediaController;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/HQ;)Lcom/facebook/ads/redexgen/X/Py;
    .locals 0

    .line 36186
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/HQ;)Lcom/facebook/ads/redexgen/X/QC;
    .locals 0

    .line 36187
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0F:Lcom/facebook/ads/redexgen/X/QC;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/HQ;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x44

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

    .line 36188
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Py;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Py;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    .line 36189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Py;->A0I(Lcom/facebook/ads/redexgen/X/Px;)V

    .line 36190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Py;->A0H(Lcom/facebook/ads/redexgen/X/Pv;)V

    .line 36191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Py;->A0J(Z)V

    .line 36192
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0J:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0I:Z

    if-nez v0, :cond_2

    .line 36193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A09()Landroid/app/Activity;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 36194
    .local p0, "activityContext":Landroid/app/Activity;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const-string v1, "kOzpobq3cn2ENPvO1dz11rE9gYrdsM2t"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "XeC6T5eSgweGxN3AGx0qK1AhpVQau6BW"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_7

    .line 36195
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, v4}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A09:Landroid/widget/MediaController;

    .line 36196
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A09:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A08:Landroid/view/View;

    if-nez v0, :cond_1

    move-object v0, p0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 36197
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A09:Landroid/widget/MediaController;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Q3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q3;-><init>(Lcom/facebook/ads/redexgen/X/HQ;)V

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 36198
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A09:Landroid/widget/MediaController;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 36199
    .end local p0    # "activityContext":Landroid/app/Activity;
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0G:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const-string v1, "7OzxCvlMe7OewOex"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0K:Z

    if-eqz v0, :cond_4

    .line 36200
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HQ;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A06:Landroid/net/Uri;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Py;->A0F(Landroid/content/Context;Landroid/net/Uri;)V

    .line 36201
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A08:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HQ;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 36202
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HQ;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 36203
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HQ;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Lcom/facebook/ads/redexgen/X/HQ;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 36204
    :cond_5
    return-void

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const-string v1, "NXAVCVHzJxAz58YH1UEgH4PHy83Kp8aQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "f1ODdwAOeVqSGvJpvEMDUKedn4FgojKu"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    goto :goto_1

    .line 36205
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A09:Landroid/widget/MediaController;

    goto :goto_0
.end method

.method private A05()V
    .locals 4

    .line 36206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    if-nez v0, :cond_0

    .line 36207
    return-void

    .line 36208
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Py;->A09()Lcom/facebook/ads/redexgen/X/Pw;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 36209
    .local p0, "videoFormat":Lcom/facebook/ads/redexgen/X/Pw;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const-string v1, "yniwio37QFCiL85s5GWvJngxgc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "95HbvmBBNGyB2bovEph22CE4vZ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 36210
    iget v1, v3, Lcom/facebook/ads/redexgen/X/Pw;->A01:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Pw;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HQ;->A09(II)V

    .line 36211
    :cond_2
    return-void
.end method

.method private A06()V
    .locals 4

    .line 36212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A07:Landroid/view/Surface;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 36213
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 36214
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/HQ;->A07:Landroid/view/Surface;

    .line 36215
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    if-eqz v0, :cond_2

    .line 36216
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Py;->A0A()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 36217
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const-string v1, "he0jjWxzFB8qDestWT3k7cDZmQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "YQusGxI3ZRGEiRLtvLIlZ3cCdg"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    .line 36218
    :cond_2
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/HQ;->A09:Landroid/widget/MediaController;

    .line 36219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0M:Z

    .line 36220
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HQ;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 36221
    return-void
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0xe2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HQ;->A0N:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const-string v1, "4Rjqxy3w03hT2rk3wOaPN94qCv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "J56YrdEaTg6GnpCj3tljjm9xxp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x56t
        0x7et
        0x7et
        0x76t
        0x7dt
        0x74t
        0x31t
        0x70t
        0x7dt
        0x66t
        0x70t
        0x68t
        0x62t
        0x31t
        0x65t
        0x79t
        0x63t
        0x7et
        0x66t
        0x31t
        0x70t
        0x7ft
        0x31t
        0x74t
        0x69t
        0x72t
        0x74t
        0x61t
        0x65t
        0x78t
        0x7et
        0x7ft
        0x31t
        0x66t
        0x78t
        0x65t
        0x79t
        0x31t
        0x62t
        0x74t
        0x65t
        0x53t
        0x70t
        0x72t
        0x7at
        0x76t
        0x63t
        0x7et
        0x64t
        0x7ft
        0x75t
        0x55t
        0x63t
        0x70t
        0x66t
        0x70t
        0x73t
        0x7dt
        0x74t
        0x31t
        0x7et
        0x7ft
        0x31t
        0x5ft
        0x7et
        0x64t
        0x76t
        0x70t
        0x65t
        0x31t
        0x70t
        0x73t
        0x7et
        0x67t
        0x74t
        0x3ft
        0x31t
        0x62t
        0x7et
        0x31t
        0x66t
        0x74t
        0x31t
        0x62t
        0x78t
        0x7dt
        0x74t
        0x7ft
        0x65t
        0x7dt
        0x68t
        0x31t
        0x78t
        0x76t
        0x7ft
        0x7et
        0x63t
        0x74t
        0x31t
        0x78t
        0x65t
        0x3ft
        0x4ct
        0x64t
        0x64t
        0x6ct
        0x67t
        0x6et
        0x2bt
        0x6at
        0x67t
        0x7ct
        0x6at
        0x72t
        0x78t
        0x2bt
        0x7ft
        0x63t
        0x79t
        0x64t
        0x7ct
        0x2bt
        0x6at
        0x65t
        0x2bt
        0x6et
        0x73t
        0x68t
        0x6et
        0x7bt
        0x7ft
        0x62t
        0x64t
        0x65t
        0x2bt
        0x7ct
        0x62t
        0x7ft
        0x63t
        0x2bt
        0x78t
        0x6et
        0x7ft
        0x4dt
        0x64t
        0x79t
        0x6et
        0x6ct
        0x79t
        0x64t
        0x7et
        0x65t
        0x6ft
        0x2bt
        0x64t
        0x65t
        0x2bt
        0x45t
        0x64t
        0x7et
        0x6ct
        0x6at
        0x7ft
        0x2bt
        0x6at
        0x69t
        0x64t
        0x7dt
        0x6et
        0x25t
        0x2bt
        0x78t
        0x64t
        0x2bt
        0x7ct
        0x6et
        0x2bt
        0x78t
        0x62t
        0x67t
        0x6et
        0x65t
        0x7ft
        0x67t
        0x72t
        0x2bt
        0x62t
        0x6ct
        0x65t
        0x64t
        0x79t
        0x6et
        0x2bt
        0x62t
        0x7ft
        0x25t
        0x21t
        0x1et
        0x13t
        0x12t
        0x18t
        0x57t
        0x4t
        0x3t
        0x16t
        0x3t
        0x12t
        0x57t
        0x14t
        0x1ft
        0x16t
        0x19t
        0x10t
        0x12t
        0x13t
        0x57t
        0x3t
        0x18t
        0x57t
        0x5ft
        0x5dt
        0x56t
        0x5dt
        0x4at
        0x51t
        0x5bt
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5i34yksohRV8hSvEB2dTOBGqhO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "V2RNkeamXobpzSRVkM4sjlG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1HR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8SLqGCa2wxiVkGjIaPVK9LXerY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SSmTkZgpl4jZsKBndOsNgmbhAq5FKejN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hgMiihLf1lx1lIiVFZ8jC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "euSTtDnbG06q2RqThlQcyR1Es6oMHQDw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iHXqYQoKvaPWKvo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    return-void
.end method

.method private A09(II)V
    .locals 1

    .line 36222
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A03:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A02:I

    if-eq p2, v0, :cond_1

    .line 36223
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A03:I

    .line 36224
    iput p2, p0, Lcom/facebook/ads/redexgen/X/HQ;->A02:I

    .line 36225
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A03:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A02:I

    if-eqz v0, :cond_1

    .line 36226
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HQ;->requestLayout()V

    .line 36227
    :cond_1
    return-void
.end method

.method public static A0A()Z
    .locals 1

    .line 36228
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Py;->A04()Z

    move-result v0

    return v0
.end method

.method private setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V
    .locals 4

    .line 36390
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    if-eq p1, v0, :cond_2

    .line 36391
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc4

    const/16 v1, 0x17

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HQ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36393
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    .line 36394
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A0A:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_1

    .line 36395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0M:Z

    .line 36396
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0F:Lcom/facebook/ads/redexgen/X/QC;

    if-eqz v0, :cond_2

    .line 36397
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QC;->AC8(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 36398
    :cond_2
    return-void
.end method


# virtual methods
.method public final A7T()V
    .locals 2

    .line 36229
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0H:Z

    if-nez v0, :cond_0

    .line 36230
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HQ;->ACK(ZI)V

    .line 36231
    :cond_0
    return-void
.end method

.method public final A7d()Z
    .locals 1

    .line 36232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Py;->A0L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A7e()Z
    .locals 1

    .line 36233
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0M:Z

    return v0
.end method

.method public final A88()Z
    .locals 1

    .line 36234
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0L:Z

    return v0
.end method

.method public final ABA(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6

    .line 36235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A93(Ljava/lang/String;)V

    .line 36236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    .line 36237
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    .line 36238
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2z(I)V

    .line 36239
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A03:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HQ;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 36240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    .line 36241
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A16:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, p2}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 36242
    const/16 v2, 0xdb

    const/4 v1, 0x7

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HQ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 36243
    return-void
.end method

.method public final ABB(ZI)V
    .locals 7

    .line 36244
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    if-nez v0, :cond_0

    .line 36245
    return-void

    .line 36246
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_b

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_6

    .line 36247
    :cond_1
    :goto_0
    return-void

    .line 36248
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HQ;->A05()V

    .line 36249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A04:J

    .line 36250
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A00:F

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HQ;->setRequestedVolume(F)V

    .line 36251
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/HQ;->A05:J

    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Py;->A08()J

    move-result-wide v1

    cmp-long v0, v5, v1

    if-gez v0, :cond_3

    .line 36252
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A05:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Py;->A0E(J)V

    .line 36253
    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/HQ;->A05:J

    .line 36254
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Py;->A07()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0M:Z

    if-eqz v0, :cond_4

    .line 36255
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A05:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HQ;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    goto :goto_0

    .line 36256
    :cond_4
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A06:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_1

    .line 36257
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A07:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HQ;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 36258
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0E:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const-string v1, "QOwsd8cFgtBxhwq2W5mYjt9JcX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "NiYGjjh9hUScPgNoOA1xOqSddN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A0A:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v3, v0, :cond_1

    .line 36259
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    const/16 v0, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HQ;->AE5(Lcom/facebook/ads/redexgen/X/PO;I)V

    .line 36260
    sget-object v3, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_a

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A0A:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v3, v0, :cond_1

    goto :goto_1

    .line 36261
    :cond_6
    if-eqz p1, :cond_7

    .line 36262
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A06:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HQ;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 36263
    :cond_7
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_8

    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const-string v1, "KLjUXng8f5n9djrrPXv2F"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_9

    .line 36264
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Py;->A0J(Z)V

    .line 36265
    if-nez p1, :cond_9

    .line 36266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Py;->A0B()V

    .line 36267
    :cond_9
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0M:Z

    goto/16 :goto_0

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const-string v1, "yetXNvPdXumqVjXfCpilY"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0E:Lcom/facebook/ads/redexgen/X/QB;

    goto/16 :goto_0

    .line 36268
    :cond_b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HQ;->A05()V

    .line 36269
    iget v3, p0, Lcom/facebook/ads/redexgen/X/HQ;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_e

    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const-string v1, "9yr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "mKFyaVoRgsxwFz3"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ltz v3, :cond_1

    .line 36270
    iget v2, p0, Lcom/facebook/ads/redexgen/X/HQ;->A01:I

    .line 36271
    .local p0, "seekFrom":I
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A01:I

    .line 36272
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0F:Lcom/facebook/ads/redexgen/X/QC;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HQ;->getCurrentPosition()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/QC;->ABZ(II)V

    .line 36273
    .end local p0    # "seekFrom":I
    goto/16 :goto_0

    .line 36274
    :cond_c
    sget-object v3, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_d

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/HQ;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 36275
    goto/16 :goto_0

    :cond_d
    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const-string v1, "bt2gfLOq6VYcjgDmYUS3R"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/HQ;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AC7(IIIF)V
    .locals 0

    .line 36276
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/HQ;->A09(II)V

    .line 36277
    return-void
.end method

.method public final ACK(ZI)V
    .locals 2

    .line 36278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A2v(I)V

    .line 36279
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A05:Lcom/facebook/ads/redexgen/X/QB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0E:Lcom/facebook/ads/redexgen/X/QB;

    .line 36280
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0L:Z

    .line 36281
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    if-eqz v1, :cond_0

    .line 36282
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Py;->A0J(Z)V

    .line 36283
    :goto_0
    return-void

    .line 36284
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HQ;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    goto :goto_0
.end method

.method public final AE1(I)V
    .locals 2

    .line 36285
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A94(I)V

    .line 36286
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A09:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HQ;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 36287
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HQ;->AEC(I)V

    .line 36288
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A05:J

    .line 36289
    return-void
.end method

.method public final AE5(Lcom/facebook/ads/redexgen/X/PO;I)V
    .locals 2

    .line 36290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A36(I)V

    .line 36291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0L:Z

    .line 36292
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A0A:Lcom/facebook/ads/redexgen/X/QB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0E:Lcom/facebook/ads/redexgen/X/QB;

    .line 36293
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    .line 36294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    if-nez v0, :cond_1

    .line 36295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A06:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HQ;->setup(Landroid/net/Uri;)V

    .line 36296
    :cond_0
    :goto_0
    return-void

    .line 36297
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A07:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A05:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A06:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_0

    .line 36298
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Py;->A0J(Z)V

    .line 36299
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A0A:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HQ;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    goto :goto_0
.end method

.method public final AEC(I)V
    .locals 1

    .line 36300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A38(I)V

    .line 36301
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0E:Lcom/facebook/ads/redexgen/X/QB;

    .line 36302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    if-eqz v0, :cond_0

    .line 36303
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Py;->A0C()V

    .line 36304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Py;->A0A()V

    .line 36305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    .line 36306
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HQ;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 36307
    return-void
.end method

.method public final destroy()V
    .locals 0

    .line 36308
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HQ;->A06()V

    .line 36309
    return-void
.end method

.method public getCurrentPosition()I
    .locals 3

    .line 36310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Py;->A07()J

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

    .line 36311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    if-nez v0, :cond_0

    .line 36312
    const/4 v0, 0x0

    return v0

    .line 36313
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Py;->A08()J

    move-result-wide v1

    long-to-int v0, v1

    return v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    .line 36314
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A04:J

    return-wide v0
.end method

.method public getStartReason()Lcom/facebook/ads/redexgen/X/PO;
    .locals 1

    .line 36315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/redexgen/X/QB;
    .locals 1

    .line 36316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    return-object v0
.end method

.method public getTargetState()Lcom/facebook/ads/redexgen/X/QB;
    .locals 1

    .line 36317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0E:Lcom/facebook/ads/redexgen/X/QB;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 36318
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A02:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 36319
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A03:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 36320
    return-object p0
.end method

.method public getVolume()F
    .locals 1

    .line 36321
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A00:F

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 36322
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 36323
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HQ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36324
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HQ;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36325
    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A03:Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HQ;->setVideoState(Lcom/facebook/ads/redexgen/X/QB;)V

    .line 36326
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HQ;->AEC(I)V

    .line 36327
    :cond_0
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 36328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A07:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 36329
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 36330
    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A07:Landroid/view/Surface;

    .line 36331
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    if-nez v1, :cond_1

    .line 36332
    return-void

    .line 36333
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A07:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Py;->A0G(Landroid/view/Surface;)V

    .line 36334
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A05:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0L:Z

    if-nez v0, :cond_2

    .line 36335
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    const/4 v0, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HQ;->AE5(Lcom/facebook/ads/redexgen/X/PO;I)V

    .line 36336
    :cond_2
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    .line 36337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A07:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 36338
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 36339
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A07:Landroid/view/Surface;

    .line 36340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    if-eqz v0, :cond_0

    .line 36341
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Py;->A0G(Landroid/view/Surface;)V

    .line 36342
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A05:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_2

    .line 36343
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const-string v1, "TScQzo9LVHiM3saFvXTgi"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x5

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/HQ;->ACK(ZI)V

    .line 36344
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 36345
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 36346
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 36347
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    .line 36348
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    if-nez v0, :cond_0

    .line 36349
    return-void

    .line 36350
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A09:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36351
    return-void

    .line 36352
    :cond_1
    if-nez p1, :cond_3

    .line 36353
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A05:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_2

    .line 36354
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HQ;->A7T()V

    .line 36355
    :cond_2
    :goto_0
    return-void

    .line 36356
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A05:Lcom/facebook/ads/redexgen/X/QB;

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0L:Z

    if-nez v0, :cond_2

    .line 36357
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0B:Lcom/facebook/ads/redexgen/X/PO;

    const/16 v0, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/HQ;->AE5(Lcom/facebook/ads/redexgen/X/PO;I)V

    goto :goto_0
.end method

.method public final seekTo(I)V
    .locals 5

    .line 36358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    if-eqz v0, :cond_0

    .line 36359
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/HQ;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A01:I

    .line 36360
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    int-to-long v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Py;->A0E(J)V

    .line 36361
    :goto_0
    return-void

    .line 36362
    :cond_0
    int-to-long v3, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const-string v1, "kfjJwAtkK1UY2s6fcoM3d"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/HQ;->A05:J

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 36363
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 36364
    invoke-super {p0, p1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36365
    :cond_0
    :goto_0
    return-void

    .line 36366
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const-string v1, "HF5JdwiOlRNKOfaOH"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 36367
    sget-object v3, Lcom/facebook/ads/redexgen/X/HQ;->A0P:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x66

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HQ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackgroundPlaybackEnabled(Z)V
    .locals 0

    .line 36368
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0H:Z

    .line 36369
    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    .line 36370
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A08:Landroid/view/View;

    .line 36371
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q5;-><init>(Lcom/facebook/ads/redexgen/X/HQ;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36372
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 36373
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_1

    .line 36374
    invoke-super {p0, p1}, Landroid/view/TextureView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 36375
    :cond_0
    :goto_0
    return-void

    .line 36376
    :cond_1
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36377
    sget-object v3, Lcom/facebook/ads/redexgen/X/HQ;->A0P:Ljava/lang/String;

    const/16 v4, 0x66

    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/HQ;->A0O:[Ljava/lang/String;

    const-string v1, "adR4uJi1AjYNmamYU7fKdN8LPQzpuqJY"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "LCKmfGi2Ka9VnYBnqFwdGZK0MZJmec2m"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v1, 0x5e

    const/16 v0, 0x4f

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/HQ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFullScreen(Z)V
    .locals 1

    .line 36378
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0J:Z

    .line 36379
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0I:Z

    if-nez v0, :cond_0

    .line 36380
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q4;-><init>(Lcom/facebook/ads/redexgen/X/HQ;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/HQ;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36381
    :cond_0
    return-void
.end method

.method public setRequestedVolume(F)V
    .locals 2

    .line 36382
    iput p1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A00:F

    .line 36383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A08:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0D:Lcom/facebook/ads/redexgen/X/QB;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QB;->A04:Lcom/facebook/ads/redexgen/X/QB;

    if-eq v1, v0, :cond_0

    .line 36384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Py;->A0D(F)V

    .line 36385
    :cond_0
    return-void
.end method

.method public setTestMode(Z)V
    .locals 0

    .line 36386
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0K:Z

    .line 36387
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36388
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0G:Ljava/lang/String;

    .line 36389
    return-void
.end method

.method public setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/QC;)V
    .locals 0

    .line 36399
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0F:Lcom/facebook/ads/redexgen/X/QC;

    .line 36400
    return-void
.end method

.method public setup(Landroid/net/Uri;)V
    .locals 1

    .line 36401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2y()V

    .line 36402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HQ;->A0C:Lcom/facebook/ads/redexgen/X/Py;

    if-eqz v0, :cond_0

    .line 36403
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HQ;->A06()V

    .line 36404
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HQ;->A06:Landroid/net/Uri;

    .line 36405
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/HQ;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 36406
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/HQ;->A04()V

    .line 36407
    return-void
.end method
