.class public final Landroidx/media2/exoplayer/external/Format;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final B:I

.field public final C:Ljava/lang/String;

.field public final D:I

.field public E:I

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Landroidx/media2/exoplayer/external/metadata/Metadata;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:I

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

.field public final o:J

.field public final p:I

.field public final q:I

.field public final r:F

.field public final s:I

.field public final t:F

.field public final u:I

.field public final v:[B

.field public final w:Landroidx/media2/exoplayer/external/video/ColorInfo;

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media2/exoplayer/external/Format$a;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Format$a;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/Format;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    const-class v0, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/metadata/Metadata;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->h:Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-class v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/Format;->o:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->p:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->q:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->r:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->s:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->t:F

    invoke-static {p1}, Lnu;->c0(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->v:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->u:I

    const-class v0, Landroidx/media2/exoplayer/external/video/ColorInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/video/ColorInfo;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->w:Landroidx/media2/exoplayer/external/video/ColorInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->x:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->y:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->z:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->A:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->B:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/Format;->D:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/metadata/Metadata;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "[B>;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "JIIFIF[BI",
            "Landroidx/media2/exoplayer/external/video/ColorInfo;",
            "IIIII",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    move v1, p3

    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->c:I

    move v1, p4

    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->d:I

    move v1, p5

    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->f:I

    move-object v1, p6

    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->h:Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-object v1, p8

    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->j:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    move v1, p10

    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->l:I

    if-nez p11, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p11

    :goto_0
    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    move-object/from16 v1, p12

    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-wide/from16 v1, p13

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/Format;->o:J

    move/from16 v1, p15

    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->p:I

    move/from16 v1, p16

    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->q:I

    move/from16 v1, p17

    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->r:F

    const/4 v1, 0x0

    const/4 v2, -0x1

    move/from16 v3, p18

    if-ne v3, v2, :cond_1

    const/4 v3, 0x0

    :cond_1
    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->s:I

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, p19, v3

    if-nez v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    move/from16 v3, p19

    :goto_1
    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->t:F

    move-object/from16 v3, p20

    iput-object v3, v0, Landroidx/media2/exoplayer/external/Format;->v:[B

    move/from16 v3, p21

    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->u:I

    move-object/from16 v3, p22

    iput-object v3, v0, Landroidx/media2/exoplayer/external/Format;->w:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move/from16 v3, p23

    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->x:I

    move/from16 v3, p24

    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->y:I

    move/from16 v3, p25

    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->z:I

    move/from16 v3, p26

    if-ne v3, v2, :cond_3

    const/4 v3, 0x0

    :cond_3
    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->A:I

    move/from16 v3, p27

    if-ne v3, v2, :cond_4

    const/4 v3, 0x0

    :cond_4
    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->B:I

    invoke-static/range {p28 .. p28}, Lnu;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    move/from16 v1, p29

    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->D:I

    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;IILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "[B>;II",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move/from16 v5, p5

    move/from16 v23, p6

    move/from16 v24, p7

    move-object/from16 v11, p8

    move/from16 v3, p9

    move/from16 v4, p10

    move-object/from16 v28, p11

    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v29, -0x1

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIII",
            "Ljava/util/List<",
            "[B>;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/metadata/Metadata;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move/from16 v10, p4

    move/from16 v23, p5

    move/from16 v24, p6

    move/from16 v25, p7

    move/from16 v26, p8

    move/from16 v27, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v3, p12

    move-object/from16 v28, p13

    move-object/from16 v7, p14

    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v29, -0x1

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/List<",
            "[B>;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    invoke-static/range {v0 .. v14}, Landroidx/media2/exoplayer/external/Format;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "[B>;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-static/range {v0 .. v11}, Landroidx/media2/exoplayer/external/Format;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move/from16 v5, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v28, p8

    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v29, -0x1

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .locals 31
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
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move/from16 v3, p4

    move-object/from16 v11, p5

    move-object/from16 v28, p6

    move-object/from16 v12, p7

    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v29, -0x1

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;J)Landroidx/media2/exoplayer/external/Format;
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-wide/from16 v13, p2

    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move-object/from16 v12, p4

    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .locals 10

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Landroidx/media2/exoplayer/external/Format;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Landroidx/media2/exoplayer/external/Format;
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move/from16 v5, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v28, p8

    move/from16 v29, p9

    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static t(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/Format;->u(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .locals 11

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x1

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-static/range {v0 .. v10}, Landroidx/media2/exoplayer/external/Format;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "J",
            "Ljava/util/List<",
            "[B>;)",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move/from16 v3, p4

    move-object/from16 v28, p5

    move/from16 v29, p6

    move-object/from16 v12, p7

    move-wide/from16 v13, p8

    move-object/from16 v11, p10

    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;J)Landroidx/media2/exoplayer/external/Format;
    .locals 11

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-static/range {v0 .. v10}, Landroidx/media2/exoplayer/external/Format;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;II)Landroidx/media2/exoplayer/external/Format;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIF",
            "Ljava/util/List<",
            "[B>;II)",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move/from16 v5, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move-object/from16 v11, p9

    move/from16 v3, p10

    move/from16 v4, p11

    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method

.method public static y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v14, p11

    invoke-static/range {v0 .. v14}, Landroidx/media2/exoplayer/external/Format;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILandroidx/media2/exoplayer/external/video/ColorInfo;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILandroidx/media2/exoplayer/external/video/ColorInfo;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF[BI",
            "Landroidx/media2/exoplayer/external/video/ColorInfo;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move/from16 v10, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move-object/from16 v11, p8

    move/from16 v18, p9

    move/from16 v19, p10

    move-object/from16 v20, p11

    move/from16 v21, p12

    move-object/from16 v22, p13

    move-object/from16 v12, p14

    new-instance v30, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v30

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    invoke-direct/range {v0 .. v29}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v30
.end method


# virtual methods
.method public A()I
    .locals 3

    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->q:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v1, v0, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public B(Landroidx/media2/exoplayer/external/Format;)Z
    .locals 4

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public a(I)Landroidx/media2/exoplayer/external/Format;
    .locals 32

    move-object/from16 v0, p0

    move/from16 v6, p1

    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v31

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->c:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->d:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->h:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->j:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->l:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->o:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->p:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->q:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->r:F

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->s:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->t:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->v:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->u:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->w:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->x:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->y:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->z:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->A:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->B:I

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->D:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v31
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIIIILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->h:Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-object/from16 v2, p5

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/metadata/Metadata;->b(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object v9, v2

    :goto_0
    new-instance v1, Landroidx/media2/exoplayer/external/Format;

    move-object v2, v1

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->d:I

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->j:Ljava/lang/String;

    iget v12, v0, Landroidx/media2/exoplayer/external/Format;->l:I

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    iget-object v14, v0, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v3, v0, Landroidx/media2/exoplayer/external/Format;->o:J

    move-wide v15, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->r:F

    move/from16 v19, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->s:I

    move/from16 v20, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->t:F

    move/from16 v21, v3

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->v:[B

    move-object/from16 v22, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->u:I

    move/from16 v23, v3

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->w:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v24, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->y:I

    move/from16 v26, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->z:I

    move/from16 v27, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->A:I

    move/from16 v28, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->B:I

    move/from16 v29, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->D:I

    move/from16 v31, v3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p10

    move/from16 v7, p6

    move-object/from16 v8, p4

    move-object/from16 v11, p3

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v25, p9

    move-object/from16 v30, p11

    invoke-direct/range {v2 .. v31}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v1
.end method

.method public c(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v31

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->c:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->d:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->f:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->h:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->j:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->l:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->o:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->p:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->q:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->r:F

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->s:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->t:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->v:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->u:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->w:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->x:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->y:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->z:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->A:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->B:I

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->D:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v31
.end method

.method public d(F)Landroidx/media2/exoplayer/external/Format;
    .locals 32

    move-object/from16 v0, p0

    move/from16 v18, p1

    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v31

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->c:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->d:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->f:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->h:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->j:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->l:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->o:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->p:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->q:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->s:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->t:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->v:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->u:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->w:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->x:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->y:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->z:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->A:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->B:I

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->D:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v31
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(II)Landroidx/media2/exoplayer/external/Format;
    .locals 32

    move-object/from16 v0, p0

    move/from16 v27, p1

    move/from16 v28, p2

    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v31

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->c:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->d:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->f:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->h:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->j:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->l:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->o:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->p:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->q:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->r:F

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->s:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->t:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->v:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->u:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->w:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->x:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->y:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->z:I

    move/from16 v26, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->D:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v31
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/Format;

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->E:I

    if-eqz v2, :cond_2

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->E:I

    if-eqz v3, :cond_2

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->c:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->d:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->f:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->f:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->l:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->l:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/Format;->o:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/Format;->o:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->p:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->p:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->q:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->q:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->s:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->s:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->u:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->u:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->x:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->x:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->y:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->y:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->z:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->z:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->A:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->A:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->B:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->B:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->D:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->D:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->r:F

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->r:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->t:F

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->t:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->j:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    invoke-static {v2, v3}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->v:[B

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->v:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->h:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->h:Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-static {v2, v3}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->w:Landroidx/media2/exoplayer/external/video/ColorInfo;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->w:Landroidx/media2/exoplayer/external/video/ColorInfo;

    invoke-static {v2, v3}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-static {v2, v3}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/Format;->B(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public f(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    invoke-static {v2}, Lvt;->g(Ljava/lang/String;)I

    move-result v2

    iget-object v4, v1, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    :goto_0
    move-object v5, v3

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v2, v6, :cond_2

    if-ne v2, v7, :cond_3

    :cond_2
    iget-object v6, v1, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    if-eqz v6, :cond_3

    move-object/from16 v31, v6

    goto :goto_1

    :cond_3
    move-object/from16 v31, v3

    :goto_1
    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->f:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->f:I

    :cond_4
    move v8, v3

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v6, v1, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    invoke-static {v6, v2}, Lnu;->w(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnu;->j0(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ne v9, v7, :cond_5

    move-object v9, v6

    goto :goto_2

    :cond_5
    move-object v9, v3

    :goto_2
    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->h:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-nez v3, :cond_6

    iget-object v3, v1, Landroidx/media2/exoplayer/external/Format;->h:Landroidx/media2/exoplayer/external/metadata/Metadata;

    goto :goto_3

    :cond_6
    iget-object v6, v1, Landroidx/media2/exoplayer/external/Format;->h:Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-virtual {v3, v6}, Landroidx/media2/exoplayer/external/metadata/Metadata;->b(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v3

    :goto_3
    move-object v10, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->r:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v3, v6

    if-nez v6, :cond_7

    const/4 v6, 0x2

    if-ne v2, v6, :cond_7

    iget v2, v1, Landroidx/media2/exoplayer/external/Format;->r:F

    move/from16 v20, v2

    goto :goto_4

    :cond_7
    move/from16 v20, v3

    :goto_4
    iget v2, v0, Landroidx/media2/exoplayer/external/Format;->c:I

    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->c:I

    or-int v6, v2, v3

    iget v2, v0, Landroidx/media2/exoplayer/external/Format;->d:I

    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->d:I

    or-int v7, v2, v3

    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->d(Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v15

    new-instance v1, Landroidx/media2/exoplayer/external/Format;

    move-object v3, v1

    iget-object v11, v0, Landroidx/media2/exoplayer/external/Format;->j:Ljava/lang/String;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    iget v13, v0, Landroidx/media2/exoplayer/external/Format;->l:I

    iget-object v14, v0, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    move-object/from16 p1, v1

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/Format;->o:J

    move-wide/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->p:I

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->q:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->s:I

    move/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->t:F

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->v:[B

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->u:I

    move/from16 v24, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->w:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->x:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->y:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->z:I

    move/from16 v28, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->A:I

    move/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->B:I

    move/from16 v30, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->D:I

    move/from16 v32, v1

    invoke-direct/range {v3 .. v32}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object p1
.end method

.method public g(I)Landroidx/media2/exoplayer/external/Format;
    .locals 32

    move-object/from16 v0, p0

    move/from16 v11, p1

    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v31

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->c:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->d:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->f:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->h:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->j:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->o:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->p:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->q:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->r:F

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->s:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->t:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->v:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->u:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->w:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->x:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->y:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->z:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->A:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->B:I

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->D:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v31
.end method

.method public h(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v31

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->c:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->d:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->f:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->j:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->l:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->o:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->p:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->q:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->r:F

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->s:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->t:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->v:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->u:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->w:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->x:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->y:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->z:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->A:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->B:I

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->D:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v31
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->E:I

    if-nez v0, :cond_7

    const/16 v0, 0x20f

    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->h:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->j:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->l:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/Format;->o:J

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->p:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->q:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->r:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->s:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->t:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->u:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->x:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->y:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->z:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->A:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->B:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->D:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->E:I

    :cond_7
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->E:I

    return v0
.end method

.method public i(J)Landroidx/media2/exoplayer/external/Format;
    .locals 32

    move-object/from16 v0, p0

    move-wide/from16 v14, p1

    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v31

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->c:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->d:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->f:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->h:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->j:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->l:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->p:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->q:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->r:F

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->s:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->t:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->v:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->u:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->w:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->x:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->y:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->z:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->A:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->B:I

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->D:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;I)V

    return-object v31
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->j:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    iget v5, p0, Landroidx/media2/exoplayer/external/Format;->f:I

    iget-object v6, p0, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    iget v7, p0, Landroidx/media2/exoplayer/external/Format;->p:I

    iget v8, p0, Landroidx/media2/exoplayer/external/Format;->q:I

    iget v9, p0, Landroidx/media2/exoplayer/external/Format;->r:F

    iget v10, p0, Landroidx/media2/exoplayer/external/Format;->x:I

    iget v11, p0, Landroidx/media2/exoplayer/external/Format;->y:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x68

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Format("

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ["

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "])"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->h:Landroidx/media2/exoplayer/external/metadata/Metadata;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroidx/media2/exoplayer/external/Format;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/Format;->o:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->r:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->s:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->t:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->v:[B

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {p1, v1}, Lnu;->o0(Landroid/os/Parcel;Z)V

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->v:[B

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_2
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->u:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->w:Landroidx/media2/exoplayer/external/video/ColorInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->x:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->y:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->z:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->A:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->B:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->D:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
