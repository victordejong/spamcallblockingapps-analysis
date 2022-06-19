.class public final Lcom/facebook/ads/internal/exoplayer2/Format;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static A0R:[B

.field public static A0S:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/internal/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public final A01:F

.field public final A02:F

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:I

.field public final A09:I

.field public final A0A:I

.field public final A0B:I

.field public final A0C:I

.field public final A0D:I

.field public final A0E:I

.field public final A0F:I

.field public final A0G:J

.field public final A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0I:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0J:Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0K:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0L:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0M:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0N:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0O:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0P:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final A0Q:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 176
    invoke-static {}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0E()V

    invoke-static {}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0D()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/AB;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AB;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/Format;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0M:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0L:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0K:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A09:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A01:F

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A02:F

    .line 189
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ic;->A0g(Landroid/os/Parcel;)Z

    move-result v0

    .line 190
    .local p0, "hasProjectionData":Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0Q:[B

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0E:I

    .line 192
    const-class v0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0J:Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0A:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A06:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A07:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0D:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0N:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A03:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 203
    .local p1, "initializationDataSize":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    .line 204
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 205
    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 207
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    .end local v0    # "i":I
    :cond_1
    const-class v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    .line 209
    const-class v0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0I:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    .line 210
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/facebook/ads/internal/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p25    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p26    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p27    # Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIFIF[BI",
            "Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;",
            "IIIIII",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;",
            "Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;",
            ")V"
        }
    .end annotation

    move/from16 v6, p10

    move/from16 v5, p11

    move-object/from16 v0, p25

    move/from16 v3, p19

    move/from16 v4, p18

    .line 211
    .local v1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object v2, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0M:Ljava/lang/String;

    .line 213
    iput-object p2, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0L:Ljava/lang/String;

    .line 214
    iput-object p3, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 215
    iput-object p4, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0K:Ljava/lang/String;

    .line 216
    iput p5, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    .line 217
    iput p6, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A09:I

    .line 218
    iput p7, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    .line 219
    iput p8, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    .line 220
    move/from16 v1, p9

    iput v1, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A01:F

    .line 221
    const/4 v1, -0x1

    if-ne v6, v1, :cond_0

    const/4 v6, 0x0

    :cond_0
    iput v6, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B:I

    .line 222
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v5, v1

    if-nez v1, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_1
    iput v5, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A02:F

    .line 223
    move-object/from16 v1, p12

    iput-object v1, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0Q:[B

    .line 224
    move/from16 v1, p13

    iput v1, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0E:I

    .line 225
    move-object/from16 v1, p14

    iput-object v1, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0J:Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;

    .line 226
    move/from16 v1, p15

    iput v1, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    .line 227
    move/from16 v1, p16

    iput v1, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    .line 228
    move/from16 v1, p17

    iput v1, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0A:I

    .line 229
    const/4 v1, -0x1

    if-ne v4, v1, :cond_2

    const/4 v4, 0x0

    :cond_2
    iput v4, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A06:I

    .line 230
    const/4 v1, -0x1

    if-ne v3, v1, :cond_3

    const/4 v3, 0x0

    :cond_3
    iput v3, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A07:I

    .line 231
    move/from16 v1, p20

    iput v1, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0D:I

    .line 232
    move-object/from16 v1, p21

    iput-object v1, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0N:Ljava/lang/String;

    .line 233
    move/from16 v1, p22

    iput v1, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A03:I

    .line 234
    move-wide/from16 v3, p23

    iput-wide v3, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    .line 235
    if-nez v0, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_4
    iput-object v0, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    .line 236
    move-object/from16 v0, p26

    iput-object v0, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    .line 237
    move-object/from16 v0, p27

    iput-object v0, v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0I:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    .line 238
    return-void
.end method

.method public static A00(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 239
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/facebook/ads/internal/exoplayer2/Format;->A01(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 240
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 241
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x1

    const-wide v8, 0x7fffffffffffffffL

    move-object v7, p4

    move-object v5, p3

    move v4, p2

    move-object v1, p1

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/facebook/ads/internal/exoplayer2/Format;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static A02(Ljava/lang/String;Ljava/lang/String;J)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 28
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 242
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-wide/from16 v23, p2

    move-object/from16 v3, p1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v27}, Lcom/facebook/ads/internal/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/facebook/ads/internal/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 15
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/facebook/ads/internal/exoplayer2/Format;"
        }
    .end annotation

    .line 243
    .local v8, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object/from16 v14, p11

    move/from16 v10, p10

    move/from16 v9, p9

    move-object/from16 v8, p8

    move/from16 v7, p7

    move/from16 v6, p6

    move/from16 v5, p5

    move/from16 v4, p4

    move/from16 v3, p3

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object v0, p0

    invoke-static/range {v0 .. v14}, Lcom/facebook/ads/internal/exoplayer2/Format;->A04(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/facebook/ads/internal/exoplayer2/video/ColorInfo;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/facebook/ads/internal/exoplayer2/video/ColorInfo;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 28
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF[BI",
            "Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/facebook/ads/internal/exoplayer2/Format;"
        }
    .end annotation

    .line 244
    .local v19, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v27, 0x0

    move-object/from16 v26, p14

    move-object/from16 v14, p13

    move/from16 v13, p12

    move-object/from16 v12, p11

    move/from16 v11, p10

    move/from16 v10, p9

    move-object/from16 v25, p8

    move/from16 v9, p7

    move/from16 v8, p6

    move/from16 v7, p5

    move/from16 v6, p4

    move/from16 v5, p3

    move-object/from16 v4, p2

    move-object/from16 v3, p1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v27}, Lcom/facebook/ads/internal/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/facebook/ads/internal/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 28
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;",
            ")",
            "Lcom/facebook/ads/internal/exoplayer2/Format;"
        }
    .end annotation

    .line 245
    .local v13, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    move-object/from16 v27, p14

    move-object/from16 v21, p13

    move/from16 v20, p12

    move-object/from16 v26, p11

    move-object/from16 v25, p10

    move/from16 v19, p9

    move/from16 v18, p8

    move/from16 v17, p7

    move/from16 v16, p6

    move/from16 v15, p5

    move/from16 v6, p4

    move/from16 v5, p3

    move-object/from16 v4, p2

    move-object/from16 v3, p1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v27}, Lcom/facebook/ads/internal/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/facebook/ads/internal/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static A06(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 15
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/ads/internal/exoplayer2/Format;"
        }
    .end annotation

    .line 246
    .local v10, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    move-object/from16 v13, p11

    move/from16 v12, p10

    move-object/from16 v11, p9

    move-object/from16 v10, p8

    move/from16 v7, p7

    move/from16 v6, p6

    move/from16 v5, p5

    move/from16 v4, p4

    move/from16 v3, p3

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    move-object v0, p0

    invoke-static/range {v0 .. v14}, Lcom/facebook/ads/internal/exoplayer2/Format;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 12
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/ads/internal/exoplayer2/Format;"
        }
    .end annotation

    .line 247
    .local v8, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v7, -0x1

    move-object/from16 v11, p10

    move/from16 v10, p9

    move-object/from16 v9, p8

    move-object/from16 v8, p7

    move/from16 v6, p6

    move/from16 v5, p5

    move/from16 v4, p4

    move v3, p3

    move-object v2, p2

    move-object v1, p1

    move-object v0, p0

    invoke-static/range {v0 .. v11}, Lcom/facebook/ads/internal/exoplayer2/Format;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 249
    const-wide v8, 0x7fffffffffffffffL

    move-object/from16 v7, p7

    move/from16 v6, p6

    move-object/from16 v5, p5

    move v4, p4

    move v3, p3

    move-object v2, p2

    move-object v1, p1

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Lcom/facebook/ads/internal/exoplayer2/Format;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 28
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;",
            "J",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/facebook/ads/internal/exoplayer2/Format;"
        }
    .end annotation

    .line 250
    .local v27, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v27, 0x0

    move-object/from16 v25, p10

    move-wide/from16 v23, p8

    move-object/from16 v26, p7

    move/from16 v22, p6

    move-object/from16 v21, p5

    move/from16 v20, p4

    move/from16 v5, p3

    move-object/from16 v4, p2

    move-object/from16 v3, p1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v27}, Lcom/facebook/ads/internal/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/facebook/ads/internal/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 28
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/facebook/ads/internal/exoplayer2/Format;"
        }
    .end annotation

    .line 251
    .local v23, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v27, 0x0

    move-object/from16 v26, p7

    move-object/from16 v21, p6

    move-object/from16 v25, p5

    move/from16 v20, p4

    move/from16 v5, p3

    move-object/from16 v4, p2

    move-object/from16 v3, p1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v27}, Lcom/facebook/ads/internal/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/facebook/ads/internal/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 28
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 252
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/Format;

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v27, 0x0

    move-object/from16 v26, p4

    move/from16 v5, p3

    move-object/from16 v4, p2

    move-object/from16 v3, p1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v27}, Lcom/facebook/ads/internal/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/facebook/ads/internal/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    return-object v0
.end method

.method public static A0C(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0R:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x42

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0D()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0R:[B

    return-void

    :array_0
    .array-data 1
        0x5ct
        0x50t
        0x62t
        0x6et
        0x15t
        0x45t
        0x6ct
        0x71t
        0x6et
        0x62t
        0x77t
        0x2bt
        0x6ct
        0x18t
        0x77t
        0x6t
        0xat
        0x71t
    .end array-data
.end method

.method public static A0E()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9EMvIvwuxB4B9RIqteALTltJrewlE2OP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mTh6Ofz9IJlBuvHhZL7WQ8IhM6TaiDYo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "REgOcRVD4OWRxdVqh914jAgRzLaZe88S"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "F"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sw53gkv7BcOIh57apxk1XjskZsu8f6PC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yLuhaciB3yjdRKOHe5T5yxR7I0bW0ikh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MoICp3vmTXifWGVzwriu751KBFe6p"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "P6Z30a4OZailvraxBdAg3zB6kyo9qwCm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0S:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0F()I
    .locals 3

    .line 253
    iget v2, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    const/4 v1, -0x1

    if-eq v2, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    mul-int v1, v2, v0

    goto :goto_0
.end method

.method public final A0G(I)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 45

    move-object/from16 v5, p0

    .line 254
    new-instance v16, Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0M:Ljava/lang/String;

    move-object/from16 v44, v0

    iget-object v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0L:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0K:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    move/from16 v21, v0

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    move/from16 v23, v0

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    move/from16 v24, v0

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A01:F

    move/from16 v25, v0

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B:I

    move/from16 v26, v0

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A02:F

    move/from16 v17, v0

    iget-object v15, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0Q:[B

    iget v14, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0E:I

    iget-object v13, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0J:Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;

    move-object/from16 v16, v16

    iget v12, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    iget v11, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    iget v10, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0A:I

    iget v9, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A06:I

    iget v8, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A07:I

    iget v7, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0D:I

    iget-object v6, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0N:Ljava/lang/String;

    iget v4, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A03:I

    iget-wide v2, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    iget-object v1, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    iget-object v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    iget-object v5, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0I:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move/from16 v22, p1

    move-object/from16 v30, v13

    move/from16 v31, v12

    move/from16 v32, v11

    move/from16 v33, v10

    move/from16 v34, v9

    move/from16 v35, v8

    move/from16 v36, v7

    move-object/from16 v37, v6

    move/from16 v38, v4

    move-wide/from16 v39, v2

    move-object/from16 v41, v1

    move-object/from16 v42, v0

    move-object/from16 v43, v5

    move-object/from16 v18, v18

    move-object/from16 v19, v19

    move-object/from16 v20, v20

    move/from16 v21, v21

    move/from16 v23, v23

    move/from16 v24, v24

    move/from16 v25, v25

    move/from16 v26, v26

    move/from16 v27, v17

    move-object/from16 v28, v15

    move/from16 v29, v14

    move-object/from16 v17, v44

    invoke-direct/range {v16 .. v43}, Lcom/facebook/ads/internal/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/facebook/ads/internal/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    return-object v16
.end method

.method public final A0H(II)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 47

    move-object/from16 v6, p0

    .line 255
    new-instance v16, Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0M:Ljava/lang/String;

    move-object/from16 v46, v0

    iget-object v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0L:Ljava/lang/String;

    move-object/from16 v45, v0

    iget-object v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    move-object/from16 v44, v0

    iget-object v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0K:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    move/from16 v21, v0

    iget v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A09:I

    move/from16 v22, v0

    iget v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    move/from16 v19, v0

    iget v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    move/from16 v18, v0

    iget v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A01:F

    move/from16 v17, v0

    iget v15, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B:I

    iget v14, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A02:F

    iget-object v13, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0Q:[B

    iget v12, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0E:I

    iget-object v11, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0J:Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;

    move-object/from16 v16, v16

    iget v10, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    iget v9, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    iget v8, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0A:I

    iget v7, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0D:I

    iget-object v5, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0N:Ljava/lang/String;

    iget v4, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A03:I

    iget-wide v2, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    iget-object v1, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    iget-object v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    iget-object v6, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0I:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move/from16 v35, p2

    move/from16 v34, p1

    move-object/from16 v30, v11

    move/from16 v31, v10

    move/from16 v32, v9

    move/from16 v33, v8

    move/from16 v36, v7

    move-object/from16 v37, v5

    move/from16 v38, v4

    move-wide/from16 v39, v2

    move-object/from16 v41, v1

    move-object/from16 v42, v0

    move-object/from16 v43, v6

    move-object/from16 v20, v20

    move/from16 v21, v21

    move/from16 v22, v22

    move/from16 v23, v19

    move/from16 v24, v18

    move/from16 v25, v17

    move/from16 v26, v15

    move/from16 v27, v14

    move-object/from16 v28, v13

    move/from16 v29, v12

    move-object/from16 v17, v46

    move-object/from16 v18, v45

    move-object/from16 v19, v44

    invoke-direct/range {v16 .. v43}, Lcom/facebook/ads/internal/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/facebook/ads/internal/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    return-object v16
.end method

.method public final A0I(J)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 47

    move-object/from16 v6, p0

    .line 256
    new-instance v16, Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0M:Ljava/lang/String;

    move-object/from16 v46, v0

    iget-object v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0L:Ljava/lang/String;

    move-object/from16 v45, v0

    iget-object v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    move-object/from16 v44, v0

    iget-object v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0K:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    move/from16 v21, v0

    iget v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A09:I

    move/from16 v22, v0

    iget v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    move/from16 v19, v0

    iget v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    move/from16 v18, v0

    iget v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A01:F

    move/from16 v17, v0

    iget v15, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B:I

    iget v14, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A02:F

    iget-object v13, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0Q:[B

    iget v12, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0E:I

    iget-object v11, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0J:Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;

    move-object/from16 v16, v16

    iget v10, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    iget v9, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    iget v8, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0A:I

    iget v7, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A06:I

    iget v5, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A07:I

    iget v4, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0D:I

    iget-object v3, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0N:Ljava/lang/String;

    iget v2, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A03:I

    iget-object v1, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    iget-object v0, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    iget-object v6, v6, Lcom/facebook/ads/internal/exoplayer2/Format;->A0I:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move-wide/from16 v39, p1

    move-object/from16 v30, v11

    move/from16 v31, v10

    move/from16 v32, v9

    move/from16 v33, v8

    move/from16 v34, v7

    move/from16 v35, v5

    move/from16 v36, v4

    move-object/from16 v37, v3

    move/from16 v38, v2

    move-object/from16 v41, v1

    move-object/from16 v42, v0

    move-object/from16 v43, v6

    move-object/from16 v20, v20

    move/from16 v21, v21

    move/from16 v22, v22

    move/from16 v23, v19

    move/from16 v24, v18

    move/from16 v25, v17

    move/from16 v26, v15

    move/from16 v27, v14

    move-object/from16 v28, v13

    move/from16 v29, v12

    move-object/from16 v17, v46

    move-object/from16 v18, v45

    move-object/from16 v19, v44

    invoke-direct/range {v16 .. v43}, Lcom/facebook/ads/internal/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/facebook/ads/internal/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    return-object v16
.end method

.method public final A0J(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 46
    .param p1    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v5, p0

    .line 257
    new-instance v16, Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0M:Ljava/lang/String;

    move-object/from16 v45, v0

    iget-object v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0L:Ljava/lang/String;

    move-object/from16 v44, v0

    iget-object v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0K:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    move/from16 v21, v0

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A09:I

    move/from16 v22, v0

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    move/from16 v23, v0

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    move/from16 v24, v0

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A01:F

    move/from16 v18, v0

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B:I

    move/from16 v17, v0

    iget v15, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A02:F

    iget-object v14, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0Q:[B

    iget v13, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0E:I

    iget-object v12, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0J:Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;

    move-object/from16 v16, v16

    iget v11, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    iget v10, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    iget v9, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0A:I

    iget v8, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A06:I

    iget v7, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A07:I

    iget v6, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0D:I

    iget-object v4, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0N:Ljava/lang/String;

    iget v3, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A03:I

    iget-wide v1, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    iget-object v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    iget-object v5, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0I:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    move-object/from16 v42, p1

    move-object/from16 v30, v12

    move/from16 v31, v11

    move/from16 v32, v10

    move/from16 v33, v9

    move/from16 v34, v8

    move/from16 v35, v7

    move/from16 v36, v6

    move-object/from16 v37, v4

    move/from16 v38, v3

    move-wide/from16 v39, v1

    move-object/from16 v41, v0

    move-object/from16 v43, v5

    move-object/from16 v19, v19

    move-object/from16 v20, v20

    move/from16 v21, v21

    move/from16 v22, v22

    move/from16 v23, v23

    move/from16 v24, v24

    move/from16 v25, v18

    move/from16 v26, v17

    move/from16 v27, v15

    move-object/from16 v28, v14

    move/from16 v29, v13

    move-object/from16 v17, v45

    move-object/from16 v18, v44

    invoke-direct/range {v16 .. v43}, Lcom/facebook/ads/internal/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/facebook/ads/internal/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    return-object v16
.end method

.method public final A0K(Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 46
    .param p1    # Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v5, p0

    .line 258
    new-instance v16, Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0M:Ljava/lang/String;

    move-object/from16 v45, v0

    iget-object v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0L:Ljava/lang/String;

    move-object/from16 v44, v0

    iget-object v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0K:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    move/from16 v21, v0

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A09:I

    move/from16 v22, v0

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    move/from16 v23, v0

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    move/from16 v24, v0

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A01:F

    move/from16 v18, v0

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B:I

    move/from16 v17, v0

    iget v15, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A02:F

    iget-object v14, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0Q:[B

    iget v13, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0E:I

    iget-object v12, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0J:Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;

    move-object/from16 v16, v16

    iget v11, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    iget v10, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    iget v9, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0A:I

    iget v8, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A06:I

    iget v7, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A07:I

    iget v6, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0D:I

    iget-object v4, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0N:Ljava/lang/String;

    iget v3, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A03:I

    iget-wide v1, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    iget-object v0, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    iget-object v5, v5, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    move-object/from16 v30, v12

    move/from16 v31, v11

    move/from16 v32, v10

    move/from16 v33, v9

    move/from16 v34, v8

    move/from16 v35, v7

    move/from16 v36, v6

    move-object/from16 v37, v4

    move/from16 v38, v3

    move-wide/from16 v39, v1

    move-object/from16 v41, v0

    move-object/from16 v42, v5

    move-object/from16 v43, p1

    move-object/from16 v19, v19

    move-object/from16 v20, v20

    move/from16 v21, v21

    move/from16 v22, v22

    move/from16 v23, v23

    move/from16 v24, v24

    move/from16 v25, v18

    move/from16 v26, v17

    move/from16 v27, v15

    move-object/from16 v28, v14

    move/from16 v29, v13

    move-object/from16 v17, v45

    move-object/from16 v18, v44

    invoke-direct/range {v16 .. v43}, Lcom/facebook/ads/internal/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/facebook/ads/internal/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;)V

    return-object v16
.end method

.method public final A0L(Lcom/facebook/ads/internal/exoplayer2/Format;)Z
    .locals 6

    .line 259
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x0

    if-eq v1, v0, :cond_0

    .line 260
    return v5

    .line 261
    :cond_0
    const/4 v3, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0S:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0S:[Ljava/lang/String;

    const-string v1, "kUfy6H8fpyJdK0rqSPXP6t9QL9FrDcBd"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge v3, v4, :cond_2

    .line 262
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    return v5

    .line 264
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 265
    .end local p0    # "i":I
    :cond_2
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0S:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0S:[Ljava/lang/String;

    const-string v1, "ba3os6hXjGfT9HB5kjOIu6WoKUEMmPJD"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    :cond_3
    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0S:[Ljava/lang/String;

    const-string v1, "srO3t4meVJa2jC8wZj3yvTQYwWFo5I3I"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "bre3jDN9Lh67Zbk7QU6eaqrEteeeAFho"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final describeContents()I
    .locals 1

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 267
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 268
    return v5

    .line 269
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 270
    .end local v5
    :cond_1
    return v2

    .line 271
    :cond_2
    check-cast p1, Lcom/facebook/ads/internal/exoplayer2/Format;

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0S:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 272
    .local v5, "other":Lcom/facebook/ads/internal/exoplayer2/Format;
    :cond_3
    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0S:[Ljava/lang/String;

    const-string v1, "1DmcAQKG76e0aDtEmzr1QFqEAioeW"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "W"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    if-ne v1, v0, :cond_5

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A09:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A09:I

    if-ne v1, v0, :cond_5

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    if-ne v1, v0, :cond_5

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    if-ne v1, v0, :cond_5

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A01:F

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A01:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_5

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B:I

    if-ne v1, v0, :cond_5

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A02:F

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A02:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_5

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0E:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0E:I

    if-ne v1, v0, :cond_5

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    if-ne v1, v0, :cond_5

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    if-ne v1, v0, :cond_5

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0A:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0A:I

    if-ne v1, v0, :cond_5

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A06:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A06:I

    if-ne v1, v0, :cond_5

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A07:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A07:I

    if-ne v1, v0, :cond_5

    iget-wide v3, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    iget-wide v1, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0D:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0D:I

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0M:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0M:Ljava/lang/String;

    .line 273
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0N:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0N:Ljava/lang/String;

    .line 274
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A03:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A03:I

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0L:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0L:Ljava/lang/String;

    .line 275
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 276
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0K:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0K:Ljava/lang/String;

    .line 277
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    .line 278
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0I:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0I:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    .line 279
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0J:Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0J:Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;

    .line 280
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0Q:[B

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0Q:[B

    .line 281
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 282
    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0L(Lcom/facebook/ads/internal/exoplayer2/Format;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0S:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_4

    if-eqz v3, :cond_5

    .line 283
    :goto_0
    return v5

    :cond_4
    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0S:[Ljava/lang/String;

    const-string v1, "VpM34WCtJzKWbQ3g96W401d5xFszLaRN"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "Mon3h5siHzGrWJZBNmj1yx0qORsqjN75"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_5

    goto :goto_0

    .line 284
    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .line 285
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A00:I

    if-nez v0, :cond_7

    .line 286
    const/16 v0, 0x11

    .line 287
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0M:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    .line 288
    .end local p0    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0L:Ljava/lang/String;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    .line 289
    .end local v0    # "result":I
    .restart local p0    # "result":I
    mul-int/lit8 v4, v1, 0x1f

    iget-object v3, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0S:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0S:[Ljava/lang/String;

    const-string v1, "vSwlTs1WVPb0Gq6qflq8BMgpT6VtlwBj"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "D9YPxDUr8Y1ncihqs8CqymjLZe91MHqw"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    const/4 v0, 0x0

    :goto_2
    add-int/2addr v4, v0

    .line 290
    .end local p0    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v4, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0K:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_3
    add-int/2addr v1, v0

    .line 291
    .end local v0    # "result":I
    .restart local p0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    add-int/2addr v1, v0

    .line 292
    .end local p0    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    add-int/2addr v1, v0

    .line 293
    .end local v0    # "result":I
    .restart local p0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    add-int/2addr v1, v0

    .line 294
    .end local p0    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    add-int/2addr v1, v0

    .line 295
    .end local v0    # "result":I
    .restart local p0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    add-int/2addr v1, v0

    .line 296
    .end local p0    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0N:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_4
    add-int/2addr v1, v0

    .line 297
    .end local v0    # "result":I
    .restart local p0    # "result":I
    mul-int/lit8 v3, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A03:I

    add-int/2addr v3, v0

    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0S:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 298
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 299
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 300
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 301
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 302
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    .line 303
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .end local p0    # "result":I
    .restart local v0    # "result":I
    :cond_6
    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0S:[Ljava/lang/String;

    const-string v1, "oV0RAIoBHWDYXlyGvTQhZRW8YZmYe"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "c"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    mul-int/lit8 v1, v3, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_5
    add-int/2addr v1, v0

    .line 304
    .end local v0    # "result":I
    .restart local p0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0I:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    if-nez v0, :cond_8

    :goto_6
    add-int/2addr v1, v5

    .line 305
    .end local p0    # "result":I
    .restart local v0    # "result":I
    iput v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A00:I

    .line 306
    .end local v0    # "result":I
    :cond_7
    iget v3, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A00:I

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0S:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0S:[Ljava/lang/String;

    const-string v1, "lcpVca5PFJ2qDFDqfSCKt4tEoBbTEuXy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "6d6oasjU4xNcPKGqWnnGFMCqLV2R4NUu"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    .line 307
    :cond_8
    invoke-virtual {v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;->hashCode()I

    move-result v5

    goto :goto_6

    .line 308
    :cond_9
    invoke-virtual {v0}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->hashCode()I

    move-result v0

    goto :goto_5

    .line 309
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x5

    const/4 v1, 0x7

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0M:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0L:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0N:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    const/4 v1, 0x3

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A01:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    const/4 v1, 0x4

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    const/4 v1, 0x2

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0M:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0L:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0K:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A09:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A01:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 320
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0B:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A02:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 322
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0Q:[B

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0W(Landroid/os/Parcel;Z)V

    .line 323
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0Q:[B

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 325
    :cond_0
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0E:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0J:Lcom/facebook/ads/internal/exoplayer2/video/ColorInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 327
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0A:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A06:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A07:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0D:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0N:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A03:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-wide v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0G:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 336
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 337
    .local p0, "initializationDataSize":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    const/4 v1, 0x0

    .local p2, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 339
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 341
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 342
    .end local p2    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 343
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0I:Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 344
    return-void
.end method
