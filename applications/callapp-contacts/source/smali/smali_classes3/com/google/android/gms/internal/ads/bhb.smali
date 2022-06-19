.class final synthetic Lcom/google/android/gms/internal/ads/bhb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cxu;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bgy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bgy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bhb;->a:Lcom/google/android/gms/internal/ads/bgy;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bhb;->a:Lcom/google/android/gms/internal/ads/bgy;

    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/adt;

    .line 1051
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bgy;->e:Lcom/google/android/gms/internal/ads/hu;

    const-string v4, "/result"

    invoke-interface {v2, v4, v3}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 1053
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v5

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/bgy;->a:Lcom/google/android/gms/internal/ads/bhh;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/bgy;->a:Lcom/google/android/gms/internal/ads/bhh;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/bgy;->a:Lcom/google/android/gms/internal/ads/bhh;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/bgy;->a:Lcom/google/android/gms/internal/ads/bhh;

    new-instance v13, Lcom/google/android/gms/ads/internal/zza;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bgy;->b:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v13, v3, v4, v4}, Lcom/google/android/gms/ads/internal/zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/vy;Lcom/google/android/gms/internal/ads/zzatu;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bgy;->f:Lcom/google/android/gms/internal/ads/brs;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/bgy;->g:Lcom/google/android/gms/internal/ads/cus;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/bgy;->c:Lcom/google/android/gms/internal/ads/bli;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bgy;->d:Lcom/google/android/gms/internal/ads/cty;

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v1

    .line 1054
    invoke-interface/range {v5 .. v19}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/eir;Lcom/google/android/gms/internal/ads/go;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/gq;Lcom/google/android/gms/ads/internal/overlay/zzx;ZLcom/google/android/gms/internal/ads/hk;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/pz;Lcom/google/android/gms/internal/ads/vy;Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/cus;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cty;)V

    return-object v2
.end method
