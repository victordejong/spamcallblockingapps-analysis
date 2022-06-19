.class public final Lcom/google/android/gms/internal/ads/zzvo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private extras:Landroid/os/Bundle;

.field private zzado:I

.field private zzadp:I

.field private zzadq:Ljava/lang/String;

.field private zzbni:Z

.field private zzchn:J

.field private zzcho:I

.field private zzchp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzchq:Z

.field private zzchr:Ljava/lang/String;

.field private zzchs:Lcom/google/android/gms/internal/ads/zzaaq;

.field private zzcht:Ljava/lang/String;

.field private zzchu:Landroid/os/Bundle;

.field private zzchv:Landroid/os/Bundle;

.field private zzchw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzchx:Ljava/lang/String;

.field private zzchy:Ljava/lang/String;

.field private zzchz:Z

.field private zzcib:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzcic:I

.field private zznb:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzchn:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->extras:Landroid/os/Bundle;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzcho:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzchp:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzchq:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzado:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzbni:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzchr:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzchs:Lcom/google/android/gms/internal/ads/zzaaq;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvo;->zznb:Landroid/location/Location;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzcht:Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzchu:Landroid/os/Bundle;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzchv:Landroid/os/Bundle;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzchw:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzchx:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzchy:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzchz:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzadp:I

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzadq:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzcib:Ljava/util/List;

    const v0, 0xea60

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzcic:I

    return-void
.end method


# virtual methods
.method public final zzqd()Lcom/google/android/gms/internal/ads/zzvl;
    .locals 27

    move-object/from16 v0, p0

    new-instance v26, Lcom/google/android/gms/internal/ads/zzvl;

    move-object/from16 v1, v26

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzvo;->zzchn:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzvo;->extras:Landroid/os/Bundle;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzvo;->zzcho:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzvo;->zzchp:Ljava/util/List;

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzvo;->zzado:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzvo;->zzchu:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzvo;->zzchv:Landroid/os/Bundle;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzvo;->zzchw:Ljava/util/List;

    move-object/from16 v17, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzvo;->zzadp:I

    move/from16 v22, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzvo;->zzcib:Ljava/util/List;

    move-object/from16 v24, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzvo;->zzcic:I

    move/from16 v25, v2

    const/16 v2, 0x8

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v1 .. v25}, Lcom/google/android/gms/internal/ads/zzvl;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzaaq;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzve;ILjava/lang/String;Ljava/util/List;I)V

    return-object v26
.end method
