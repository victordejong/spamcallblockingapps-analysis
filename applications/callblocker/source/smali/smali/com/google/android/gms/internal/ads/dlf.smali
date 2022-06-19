.class public final Lcom/google/android/gms/internal/ads/dlf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ads/dlf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public final f:Lcom/google/android/gms/internal/ads/dmw;

.field public final g:I

.field public final h:I

.field public final i:F

.field public final j:I

.field public final k:F

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:J

.field public final p:I

.field public final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Lcom/google/android/gms/internal/ads/dpi;

.field private final t:Ljava/lang/String;

.field private final u:I

.field private final v:[B

.field private final w:Lcom/google/android/gms/internal/ads/dss;

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/google/android/gms/internal/ads/dle;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dle;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dlf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->r:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->t:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->b:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->a:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->d:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->i:F

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->j:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->k:F

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 54
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->v:[B

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->u:I

    .line 56
    const-class v0, Lcom/google/android/gms/internal/ads/dss;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dss;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->w:Lcom/google/android/gms/internal/ads/dss;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->l:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->m:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->n:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->x:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->y:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->p:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->q:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->z:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dlf;->o:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->e:Ljava/util/List;

    move v0, v1

    .line 68
    :goto_2
    if-ge v0, v2, :cond_2

    .line 69
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dlf;->e:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v0, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 71
    :cond_2
    const-class v0, Lcom/google/android/gms/internal/ads/dmw;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dmw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->f:Lcom/google/android/gms/internal/ads/dmw;

    .line 72
    const-class v0, Lcom/google/android/gms/internal/ads/dpi;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dpi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->s:Lcom/google/android/gms/internal/ads/dpi;

    .line 73
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/dss;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/dmw;Lcom/google/android/gms/internal/ads/dpi;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIFIF[BI",
            "Lcom/google/android/gms/internal/ads/dss;",
            "IIIIII",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/List",
            "<[B>;",
            "Lcom/google/android/gms/internal/ads/dmw;",
            "Lcom/google/android/gms/internal/ads/dpi;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dlf;->r:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dlf;->t:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dlf;->b:Ljava/lang/String;

    .line 17
    iput p5, p0, Lcom/google/android/gms/internal/ads/dlf;->a:I

    .line 18
    iput p6, p0, Lcom/google/android/gms/internal/ads/dlf;->d:I

    .line 19
    iput p7, p0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    .line 20
    iput p8, p0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    .line 21
    iput p9, p0, Lcom/google/android/gms/internal/ads/dlf;->i:F

    .line 22
    iput p10, p0, Lcom/google/android/gms/internal/ads/dlf;->j:I

    .line 23
    iput p11, p0, Lcom/google/android/gms/internal/ads/dlf;->k:F

    .line 24
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/dlf;->v:[B

    .line 25
    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->u:I

    .line 26
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->w:Lcom/google/android/gms/internal/ads/dss;

    .line 27
    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->l:I

    .line 28
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->m:I

    .line 29
    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->n:I

    .line 30
    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->x:I

    .line 31
    move/from16 v0, p19

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->y:I

    .line 32
    move/from16 v0, p20

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->p:I

    .line 33
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->q:Ljava/lang/String;

    .line 34
    move/from16 v0, p22

    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->z:I

    .line 35
    move-wide/from16 v0, p23

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dlf;->o:J

    .line 36
    if-nez p25, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p25

    .line 37
    :cond_0
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->e:Ljava/util/List;

    .line 38
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->f:Lcom/google/android/gms/internal/ads/dmw;

    .line 39
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->s:Lcom/google/android/gms/internal/ads/dpi;

    .line 40
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/gms/internal/ads/dss;Lcom/google/android/gms/internal/ads/dmw;)Lcom/google/android/gms/internal/ads/dlf;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List",
            "<[B>;IF[BI",
            "Lcom/google/android/gms/internal/ads/dss;",
            "Lcom/google/android/gms/internal/ads/dmw;",
            ")",
            "Lcom/google/android/gms/internal/ads/dlf;"
        }
    .end annotation

    .prologue
    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/dlf;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v26, p8

    move-object/from16 v27, p14

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/dlf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/dss;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/dmw;Lcom/google/android/gms/internal/ads/dpi;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/gms/internal/ads/dmw;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/dlf;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/List",
            "<[B>;",
            "Lcom/google/android/gms/internal/ads/dmw;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/dlf;"
        }
    .end annotation

    .prologue
    .line 3
    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/dlf;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v7, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v21, p10

    move-object/from16 v22, p11

    move-object/from16 v26, p8

    move-object/from16 v27, p9

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/dlf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/dss;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/dmw;Lcom/google/android/gms/internal/ads/dpi;)V

    .line 5
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/gms/internal/ads/dmw;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/dlf;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List",
            "<[B>;",
            "Lcom/google/android/gms/internal/ads/dmw;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/dlf;"
        }
    .end annotation

    .prologue
    .line 2
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/dlf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/gms/internal/ads/dmw;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/gms/internal/ads/dmw;JLjava/util/List;)Lcom/google/android/gms/internal/ads/dlf;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/internal/ads/dmw;",
            "J",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/google/android/gms/internal/ads/dlf;"
        }
    .end annotation

    .prologue
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/dlf;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v23, -0x1

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v21, p4

    move-object/from16 v22, p5

    move-wide/from16 v24, p8

    move-object/from16 v26, p10

    move-object/from16 v27, p7

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/dlf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/dss;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/dmw;Lcom/google/android/gms/internal/ads/dpi;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/internal/ads/dmw;)Lcom/google/android/gms/internal/ads/dlf;
    .locals 11

    .prologue
    .line 6
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x1

    const-wide v8, 0x7fffffffffffffffL

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    .line 8
    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/dlf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/gms/internal/ads/dmw;JLjava/util/List;)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/ads/dmw;)Lcom/google/android/gms/internal/ads/dlf;
    .locals 29

    .prologue
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/dlf;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/dlf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/dss;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/dmw;Lcom/google/android/gms/internal/ads/dpi;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dmw;)Lcom/google/android/gms/internal/ads/dlf;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/dmw;",
            ")",
            "Lcom/google/android/gms/internal/ads/dlf;"
        }
    .end annotation

    .prologue
    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/dlf;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v23, -0x1

    const-wide v24, 0x7fffffffffffffffL

    const/16 v28, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v22, p5

    move-object/from16 v26, p4

    move-object/from16 v27, p6

    invoke-direct/range {v1 .. v28}, Lcom/google/android/gms/internal/ads/dlf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/dss;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/dmw;Lcom/google/android/gms/internal/ads/dpi;)V

    return-object v1
.end method

.method private static a(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 147
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 148
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 78
    iget v1, p0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public final a(I)Lcom/google/android/gms/internal/ads/dlf;
    .locals 31

    .prologue
    .line 74
    new-instance v3, Lcom/google/android/gms/internal/ads/dlf;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dlf;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dlf;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dlf;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/dlf;->a:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/gms/internal/ads/dlf;->i:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/gms/internal/ads/dlf;->j:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/gms/internal/ads/dlf;->k:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/dlf;->v:[B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->u:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->w:Lcom/google/android/gms/internal/ads/dss;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->l:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->m:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->n:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->x:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->y:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->p:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->q:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->z:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/dlf;->o:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->e:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->f:Lcom/google/android/gms/internal/ads/dmw;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->s:Lcom/google/android/gms/internal/ads/dpi;

    move-object/from16 v30, v0

    move/from16 v9, p1

    invoke-direct/range {v3 .. v30}, Lcom/google/android/gms/internal/ads/dlf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/dss;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/dmw;Lcom/google/android/gms/internal/ads/dpi;)V

    return-object v3
.end method

.method public final a(II)Lcom/google/android/gms/internal/ads/dlf;
    .locals 31

    .prologue
    .line 76
    new-instance v3, Lcom/google/android/gms/internal/ads/dlf;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dlf;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dlf;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dlf;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/dlf;->a:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/ads/dlf;->d:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/gms/internal/ads/dlf;->i:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/gms/internal/ads/dlf;->j:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/gms/internal/ads/dlf;->k:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/dlf;->v:[B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->u:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->w:Lcom/google/android/gms/internal/ads/dss;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->l:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->m:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->n:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->p:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->q:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->z:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/dlf;->o:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->e:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->f:Lcom/google/android/gms/internal/ads/dmw;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->s:Lcom/google/android/gms/internal/ads/dpi;

    move-object/from16 v30, v0

    move/from16 v21, p1

    move/from16 v22, p2

    invoke-direct/range {v3 .. v30}, Lcom/google/android/gms/internal/ads/dlf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/dss;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/dmw;Lcom/google/android/gms/internal/ads/dpi;)V

    return-object v3
.end method

.method public final a(J)Lcom/google/android/gms/internal/ads/dlf;
    .locals 31

    .prologue
    .line 75
    new-instance v3, Lcom/google/android/gms/internal/ads/dlf;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dlf;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dlf;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dlf;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/dlf;->a:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/ads/dlf;->d:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/gms/internal/ads/dlf;->i:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/gms/internal/ads/dlf;->j:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/gms/internal/ads/dlf;->k:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/dlf;->v:[B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->u:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->w:Lcom/google/android/gms/internal/ads/dss;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->l:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->m:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->n:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->x:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->y:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->p:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->q:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->z:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->e:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->f:Lcom/google/android/gms/internal/ads/dmw;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->s:Lcom/google/android/gms/internal/ads/dpi;

    move-object/from16 v30, v0

    move-wide/from16 v26, p1

    invoke-direct/range {v3 .. v30}, Lcom/google/android/gms/internal/ads/dlf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/dss;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/dmw;Lcom/google/android/gms/internal/ads/dpi;)V

    return-object v3
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dpi;)Lcom/google/android/gms/internal/ads/dlf;
    .locals 31

    .prologue
    .line 77
    new-instance v3, Lcom/google/android/gms/internal/ads/dlf;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dlf;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dlf;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dlf;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/dlf;->a:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/ads/dlf;->d:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/gms/internal/ads/dlf;->i:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/gms/internal/ads/dlf;->j:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/gms/internal/ads/dlf;->k:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/dlf;->v:[B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->u:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->w:Lcom/google/android/gms/internal/ads/dss;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->l:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->m:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->n:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->x:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->y:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->p:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->q:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dlf;->z:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/dlf;->o:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->e:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlf;->f:Lcom/google/android/gms/internal/ads/dmw;

    move-object/from16 v29, v0

    move-object/from16 v30, p1

    invoke-direct/range {v3 .. v30}, Lcom/google/android/gms/internal/ads/dlf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/gms/internal/ads/dss;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/gms/internal/ads/dmw;Lcom/google/android/gms/internal/ads/dpi;)V

    return-object v3
.end method

.method public final b()Landroid/media/MediaFormat;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 79
    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    .line 80
    const-string/jumbo v0, "mime"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v0, "language"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dlf;->q:Ljava/lang/String;

    .line 82
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v2, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    const-string/jumbo v0, "max-input-size"

    iget v1, p0, Lcom/google/android/gms/internal/ads/dlf;->d:I

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/dlf;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 85
    const-string/jumbo v0, "width"

    iget v1, p0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/dlf;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 86
    const-string/jumbo v0, "height"

    iget v1, p0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/dlf;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 87
    const-string/jumbo v0, "frame-rate"

    iget v1, p0, Lcom/google/android/gms/internal/ads/dlf;->i:F

    .line 88
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_1

    .line 89
    invoke-virtual {v2, v0, v1}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 90
    :cond_1
    const-string/jumbo v0, "rotation-degrees"

    iget v1, p0, Lcom/google/android/gms/internal/ads/dlf;->j:I

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/dlf;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 91
    const-string/jumbo v0, "channel-count"

    iget v1, p0, Lcom/google/android/gms/internal/ads/dlf;->l:I

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/dlf;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 92
    const-string/jumbo v0, "sample-rate"

    iget v1, p0, Lcom/google/android/gms/internal/ads/dlf;->m:I

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/dlf;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 93
    const-string/jumbo v0, "encoder-delay"

    iget v1, p0, Lcom/google/android/gms/internal/ads/dlf;->x:I

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/dlf;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 94
    const-string/jumbo v0, "encoder-padding"

    iget v1, p0, Lcom/google/android/gms/internal/ads/dlf;->y:I

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/dlf;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 95
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 96
    const/16 v0, 0xf

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "csd-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 97
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->w:Lcom/google/android/gms/internal/ads/dss;

    .line 99
    if-eqz v0, :cond_3

    .line 100
    const-string/jumbo v1, "color-transfer"

    iget v3, v0, Lcom/google/android/gms/internal/ads/dss;->c:I

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/ads/dlf;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 101
    const-string/jumbo v1, "color-standard"

    iget v3, v0, Lcom/google/android/gms/internal/ads/dss;->a:I

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/ads/dlf;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 102
    const-string/jumbo v1, "color-range"

    iget v3, v0, Lcom/google/android/gms/internal/ads/dss;->b:I

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/ads/dlf;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 103
    const-string/jumbo v1, "hdr-static-info"

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dss;->d:[B

    .line 104
    if-eqz v0, :cond_3

    .line 105
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 106
    :cond_3
    return-object v2
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    if-ne p0, p1, :cond_1

    move v3, v4

    .line 146
    :cond_0
    :goto_0
    return v3

    .line 127
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 129
    check-cast p1, Lcom/google/android/gms/internal/ads/dlf;

    .line 130
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->a:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/dlf;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->d:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/dlf;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/dlf;->g:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/dlf;->h:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->i:F

    iget v1, p1, Lcom/google/android/gms/internal/ads/dlf;->i:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->j:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/dlf;->j:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->k:F

    iget v1, p1, Lcom/google/android/gms/internal/ads/dlf;->k:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->u:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/dlf;->u:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->l:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/dlf;->l:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->m:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/dlf;->m:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->n:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/dlf;->n:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->x:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/dlf;->x:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->y:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/dlf;->y:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dlf;->o:J

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/dlf;->o:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->p:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/dlf;->p:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->r:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dlf;->r:Ljava/lang/String;

    .line 131
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dsn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->q:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dlf;->q:Ljava/lang/String;

    .line 132
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dsn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->z:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/dlf;->z:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->t:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dlf;->t:Ljava/lang/String;

    .line 133
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dsn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    .line 134
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dsn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dlf;->b:Ljava/lang/String;

    .line 135
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dsn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->f:Lcom/google/android/gms/internal/ads/dmw;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dlf;->f:Lcom/google/android/gms/internal/ads/dmw;

    .line 136
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dsn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->s:Lcom/google/android/gms/internal/ads/dpi;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dlf;->s:Lcom/google/android/gms/internal/ads/dpi;

    .line 137
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dsn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->w:Lcom/google/android/gms/internal/ads/dss;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dlf;->w:Lcom/google/android/gms/internal/ads/dss;

    .line 138
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dsn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->v:[B

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dlf;->v:[B

    .line 139
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->e:Ljava/util/List;

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dlf;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    move v2, v3

    .line 142
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dlf;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v3, v4

    .line 146
    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 108
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->A:I

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 111
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->t:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 112
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 113
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->b:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 114
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/ads/dlf;->a:I

    add-int/2addr v0, v2

    .line 115
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    add-int/2addr v0, v2

    .line 117
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/ads/dlf;->l:I

    add-int/2addr v0, v2

    .line 118
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/ads/dlf;->m:I

    add-int/2addr v0, v2

    .line 119
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->q:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 120
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/ads/dlf;->z:I

    add-int/2addr v0, v2

    .line 121
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->f:Lcom/google/android/gms/internal/ads/dmw;

    if-nez v0, :cond_6

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 122
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dlf;->s:Lcom/google/android/gms/internal/ads/dpi;

    if-nez v2, :cond_7

    :goto_6
    add-int/2addr v0, v1

    .line 123
    iput v0, p0, Lcom/google/android/gms/internal/ads/dlf;->A:I

    .line 124
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->A:I

    return v0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 121
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->f:Lcom/google/android/gms/internal/ads/dmw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmw;->hashCode()I

    move-result v0

    goto :goto_5

    .line 122
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dlf;->s:Lcom/google/android/gms/internal/ads/dpi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dpi;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dlf;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/ads/dlf;->a:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dlf;->q:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/dlf;->i:F

    iget v8, p0, Lcom/google/android/gms/internal/ads/dlf;->l:I

    iget v9, p0, Lcom/google/android/gms/internal/ads/dlf;->m:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v10, "Format("

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v10, ", "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->i:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 160
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->k:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 162
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->v:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->v:[B

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->v:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 165
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->u:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->w:Lcom/google/android/gms/internal/ads/dss;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 167
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlf;->z:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dlf;->o:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 176
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 177
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v1

    .line 178
    :goto_1
    if-ge v2, v3, :cond_2

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 180
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 162
    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->f:Lcom/google/android/gms/internal/ads/dmw;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 182
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlf;->s:Lcom/google/android/gms/internal/ads/dpi;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 183
    return-void
.end method
