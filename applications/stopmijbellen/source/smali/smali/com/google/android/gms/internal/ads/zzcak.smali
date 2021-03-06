.class public final Lcom/google/android/gms/internal/ads/zzcak;
.super Lcom/google/android/gms/internal/ads/zzcaq;
.source "SourceFile"


# static fields
.field public static final zza:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzb:Ljava/lang/String;

.field private zzc:Z

.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private final zzj:Ljava/lang/Object;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzcop;

.field private final zzl:Landroid/app/Activity;

.field private zzm:Lcom/google/android/gms/internal/ads/zzcqe;

.field private zzn:Landroid/widget/ImageView;

.field private zzo:Landroid/widget/LinearLayout;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzcar;

.field private zzq:Landroid/widget/PopupWindow;

.field private zzr:Landroid/widget/RelativeLayout;

.field private zzs:Landroid/view/ViewGroup;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "top-left"

    const-string v1, "top-right"

    const-string v2, "top-center"

    const-string v3, "center"

    const-string v4, "bottom-left"

    const-string v5, "bottom-right"

    const-string v6, "bottom-center"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcak;->zza:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcop;Lcom/google/android/gms/internal/ads/zzcar;)V
    .locals 2

    const-string v0, "resize"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcaq;-><init>(Lcom/google/android/gms/internal/ads/zzcop;Ljava/lang/String;)V

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzb:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzc:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcak;->zze:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzh:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzi:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzj:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzk:Lcom/google/android/gms/internal/ads/zzcop;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcop;->zzk()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzl:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzp:Lcom/google/android/gms/internal/ads/zzcar;

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzq:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzr:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzk:Lcom/google/android/gms/internal/ads/zzcop;

    check-cast v2, Landroid/view/View;

    .line 2
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzs:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzn:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzs:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzk:Lcom/google/android/gms/internal/ads/zzcop;

    check-cast v2, Landroid/view/View;

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzk:Lcom/google/android/gms/internal/ads/zzcop;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzm:Lcom/google/android/gms/internal/ads/zzcqe;

    .line 5
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzcop;->zzai(Lcom/google/android/gms/internal/ads/zzcqe;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "default"

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcaq;->zzk(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzp:Lcom/google/android/gms/internal/ads/zzcar;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcar;->zzb()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzq:Landroid/widget/PopupWindow;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzr:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzs:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzo:Landroid/widget/LinearLayout;

    .line 8
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzl:Landroid/app/Activity;

    if-nez v3, :cond_0

    const-string v0, "Not an activity context. Cannot resize."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcaq;->zzg(Ljava/lang/String;)V

    .line 2
    monitor-exit v2

    return-void

    :cond_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzk:Lcom/google/android/gms/internal/ads/zzcop;

    .line 3
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcop;->zzQ()Lcom/google/android/gms/internal/ads/zzcqe;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "Webview is not yet available, size is not set."

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcaq;->zzg(Ljava/lang/String;)V

    .line 5
    monitor-exit v2

    return-void

    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzk:Lcom/google/android/gms/internal/ads/zzcop;

    .line 6
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcop;->zzQ()Lcom/google/android/gms/internal/ads/zzcqe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcqe;->zzi()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "Is interstitial. Cannot resize an interstitial."

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcaq;->zzg(Ljava/lang/String;)V

    .line 8
    monitor-exit v2

    return-void

    :cond_2
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzk:Lcom/google/android/gms/internal/ads/zzcop;

    .line 9
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcop;->zzaC()Z

    move-result v3

    if-nez v3, :cond_2c

    const-string v3, "width"

    .line 10
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzt;->zzR(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzi:I

    :cond_3
    const-string v3, "height"

    .line 12
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzt;->zzR(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzf:I

    :cond_4
    const-string v3, "offsetX"

    .line 14
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzt;->zzR(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzg:I

    :cond_5
    const-string v3, "offsetY"

    .line 16
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzt;->zzR(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzh:I

    :cond_6
    const-string v3, "allowOffscreen"

    .line 18
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "allowOffscreen"

    .line 19
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzc:Z

    :cond_7
    const-string v3, "customClosePosition"

    .line 20
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzb:Ljava/lang/String;

    :cond_8
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzi:I

    if-ltz v0, :cond_2b

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzf:I

    if-ltz v0, :cond_2b

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzl:Landroid/app/Activity;

    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 23
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_9

    goto/16 :goto_10

    .line 24
    :cond_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzl:Landroid/app/Activity;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzt;->zzZ(Landroid/app/Activity;)[I

    move-result-object v3

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzl:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzt;->zzW(Landroid/app/Activity;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v6, v3, v5

    const/4 v7, 0x1

    aget v3, v3, v7

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzi:I

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/16 v13, 0x32

    if-lt v8, v13, :cond_1b

    if-le v8, v6, :cond_a

    goto/16 :goto_8

    .line 26
    :cond_a
    iget v14, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzf:I

    if-lt v14, v13, :cond_1a

    if-le v14, v3, :cond_b

    goto/16 :goto_7

    :cond_b
    if-ne v14, v3, :cond_c

    if-ne v8, v6, :cond_c

    const-string v3, "Cannot resize to a full-screen ad."

    .line 27
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzciz;->zzj(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_c
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzc:Z

    if-eqz v3, :cond_15

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzb:Ljava/lang/String;

    .line 28
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v15, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v15, "top-center"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_1
    const-string v15, "bottom-center"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_2
    const-string v15, "bottom-right"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_3
    const-string v15, "bottom-left"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v15, "top-left"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_5
    const-string v15, "center"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x2

    goto :goto_1

    :cond_d
    :goto_0
    const/4 v3, -0x1

    :goto_1
    if-eqz v3, :cond_13

    if-eq v3, v7, :cond_12

    if-eq v3, v12, :cond_11

    if-eq v3, v11, :cond_10

    if-eq v3, v10, :cond_f

    if-eq v3, v9, :cond_e

    :try_start_1
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzd:I

    iget v14, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzg:I

    const/16 v15, -0x32

    invoke-static {v3, v14, v8, v15}, La6/h;->g(IIII)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zze:I

    goto :goto_3

    :cond_e
    :try_start_2
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzd:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzg:I

    const/16 v9, -0x32

    invoke-static {v3, v15, v8, v9}, La6/h;->g(IIII)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zze:I

    goto :goto_2

    :cond_f
    :try_start_3
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzd:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzg:I

    add-int/2addr v3, v9

    shr-int/2addr v8, v7

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zze:I

    goto :goto_2

    :cond_10
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzd:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzg:I

    add-int/2addr v3, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zze:I

    :goto_2
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzh:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v15, -0x32

    invoke-static {v8, v9, v14, v15}, La6/h;->g(IIII)I

    move-result v8

    goto :goto_4

    :cond_11
    :try_start_4
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzd:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzg:I

    add-int/2addr v3, v9

    shr-int/2addr v8, v7

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zze:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzh:I

    add-int/2addr v8, v9

    shr-int/lit8 v9, v14, 0x1

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x19

    goto :goto_4

    :cond_12
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzd:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzg:I

    add-int/2addr v3, v9

    shr-int/2addr v8, v7

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zze:I

    goto :goto_3

    :cond_13
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzd:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzg:I

    add-int/2addr v3, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zze:I

    :goto_3
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzh:I

    add-int/2addr v8, v9

    :goto_4
    if-ltz v3, :cond_1c

    add-int/2addr v3, v13

    if-gt v3, v6, :cond_1c

    aget v3, v4, v5

    if-lt v8, v3, :cond_1c

    add-int/2addr v8, v13

    aget v3, v4, v7

    if-le v8, v3, :cond_14

    goto :goto_9

    :cond_14
    new-array v3, v12, [I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzd:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzg:I

    add-int/2addr v4, v6

    aput v4, v3, v5

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzcak;->zze:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzh:I

    add-int/2addr v4, v6

    aput v4, v3, v7

    goto :goto_a

    .line 29
    :cond_15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzl:Landroid/app/Activity;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzt;->zzZ(Landroid/app/Activity;)[I

    move-result-object v3

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzl:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzt;->zzW(Landroid/app/Activity;)[I

    move-result-object v4

    aget v3, v3, v5

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzd:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzg:I

    add-int/2addr v6, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zze:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzh:I

    add-int/2addr v8, v9

    if-gez v6, :cond_16

    const/4 v6, 0x0

    goto :goto_5

    :cond_16
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzi:I

    add-int v14, v6, v9

    if-le v14, v3, :cond_17

    sub-int v6, v3, v9

    :cond_17
    :goto_5
    aget v3, v4, v5

    if-ge v8, v3, :cond_18

    move v8, v3

    goto :goto_6

    :cond_18
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzf:I

    add-int v9, v8, v3

    aget v4, v4, v7

    if-le v9, v4, :cond_19

    sub-int v8, v4, v3

    :cond_19
    :goto_6
    new-array v3, v12, [I

    aput v6, v3, v5

    aput v8, v3, v7

    goto :goto_a

    :cond_1a
    :goto_7
    const-string v3, "Height is too small or too large."

    .line 31
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzciz;->zzj(Ljava/lang/String;)V

    goto :goto_9

    :cond_1b
    :goto_8
    const-string v3, "Width is too small or too large."

    .line 32
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzciz;->zzj(Ljava/lang/String;)V

    :cond_1c
    :goto_9
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_1d

    const-string v0, "Resize location out of screen or close button is not visible."

    .line 33
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcaq;->zzg(Ljava/lang/String;)V

    .line 34
    monitor-exit v2

    return-void

    .line 35
    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgo;->zzb()Lcom/google/android/gms/internal/ads/zzcis;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzl:Landroid/app/Activity;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzi:I

    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzcis;->zzs(Landroid/content/Context;I)I

    move-result v4

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgo;->zzb()Lcom/google/android/gms/internal/ads/zzcis;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzl:Landroid/app/Activity;

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzf:I

    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/zzcis;->zzs(Landroid/content/Context;I)I

    move-result v6

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzk:Lcom/google/android/gms/internal/ads/zzcop;

    check-cast v8, Landroid/view/View;

    .line 37
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_29

    .line 38
    instance-of v9, v8, Landroid/view/ViewGroup;

    if-eqz v9, :cond_29

    .line 39
    check-cast v8, Landroid/view/ViewGroup;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzk:Lcom/google/android/gms/internal/ads/zzcop;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzq:Landroid/widget/PopupWindow;

    if-nez v9, :cond_1e

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzs:Landroid/view/ViewGroup;

    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzk:Lcom/google/android/gms/internal/ads/zzcop;

    move-object v9, v8

    check-cast v9, Landroid/view/View;

    .line 41
    invoke-virtual {v9, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    move-object v9, v8

    check-cast v9, Landroid/view/View;

    .line 42
    invoke-virtual {v9}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    check-cast v8, Landroid/view/View;

    .line 43
    invoke-virtual {v8, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    new-instance v8, Landroid/widget/ImageView;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzl:Landroid/app/Activity;

    .line 44
    invoke-direct {v8, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzn:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzk:Lcom/google/android/gms/internal/ads/zzcop;

    .line 46
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzcop;->zzQ()Lcom/google/android/gms/internal/ads/zzcqe;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzm:Lcom/google/android/gms/internal/ads/zzcqe;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzs:Landroid/view/ViewGroup;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzn:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_b

    .line 48
    :cond_1e
    invoke-virtual {v9}, Landroid/widget/PopupWindow;->dismiss()V

    .line 49
    :goto_b
    new-instance v8, Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzl:Landroid/app/Activity;

    .line 50
    invoke-direct {v8, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzr:Landroid/widget/RelativeLayout;

    .line 51
    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzr:Landroid/widget/RelativeLayout;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .line 52
    invoke-direct {v9, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzr:Landroid/widget/RelativeLayout;

    new-instance v9, Landroid/widget/PopupWindow;

    .line 54
    invoke-direct {v9, v8, v4, v6, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzq:Landroid/widget/PopupWindow;

    .line 55
    invoke-virtual {v9, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzq:Landroid/widget/PopupWindow;

    .line 56
    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzq:Landroid/widget/PopupWindow;

    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzc:Z

    xor-int/2addr v8, v7

    .line 57
    invoke-virtual {v5, v8}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzr:Landroid/widget/RelativeLayout;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzk:Lcom/google/android/gms/internal/ads/zzcop;

    check-cast v8, Landroid/view/View;

    const/4 v9, -0x1

    .line 58
    invoke-virtual {v5, v8, v9, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzl:Landroid/app/Activity;

    .line 59
    invoke-direct {v5, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzo:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgo;->zzb()Lcom/google/android/gms/internal/ads/zzcis;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzl:Landroid/app/Activity;

    invoke-static {v8, v13}, Lcom/google/android/gms/internal/ads/zzcis;->zzs(Landroid/content/Context;I)I

    move-result v8

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgo;->zzb()Lcom/google/android/gms/internal/ads/zzcis;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzl:Landroid/app/Activity;

    invoke-static {v9, v13}, Lcom/google/android/gms/internal/ads/zzcis;->zzs(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzb:Ljava/lang/String;

    .line 62
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sparse-switch v9, :sswitch_data_1

    goto :goto_c

    :sswitch_6
    const-string v9, "top-center"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/4 v8, 0x1

    goto :goto_d

    :sswitch_7
    const-string v9, "bottom-center"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/4 v8, 0x4

    goto :goto_d

    :sswitch_8
    const-string v9, "bottom-right"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/4 v8, 0x5

    goto :goto_d

    :sswitch_9
    const-string v9, "bottom-left"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/4 v8, 0x3

    goto :goto_d

    :sswitch_a
    const-string v9, "top-left"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/4 v8, 0x0

    goto :goto_d

    :sswitch_b
    const-string v9, "center"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/4 v8, 0x2

    goto :goto_d

    :cond_1f
    :goto_c
    const/4 v8, -0x1

    :goto_d
    const/16 v9, 0x9

    const/16 v13, 0xa

    if-eqz v8, :cond_25

    const/16 v14, 0xe

    if-eq v8, v7, :cond_24

    if-eq v8, v12, :cond_23

    const/16 v12, 0xc

    if-eq v8, v11, :cond_22

    if-eq v8, v10, :cond_21

    const/16 v9, 0xb

    const/4 v10, 0x5

    if-eq v8, v10, :cond_20

    .line 63
    :try_start_5
    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 64
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e

    .line 65
    :cond_20
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 66
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e

    .line 67
    :cond_21
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    invoke-virtual {v5, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e

    .line 69
    :cond_22
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e

    :cond_23
    const/16 v8, 0xd

    .line 71
    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e

    .line 72
    :cond_24
    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73
    invoke-virtual {v5, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e

    .line 74
    :cond_25
    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76
    :goto_e
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzo:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzcaj;

    invoke-direct {v9, v1}, Lcom/google/android/gms/internal/ads/zzcaj;-><init>(Lcom/google/android/gms/internal/ads/zzcak;)V

    .line 77
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzo:Landroid/widget/LinearLayout;

    const-string v9, "Close button"

    .line 78
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzr:Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzo:Landroid/widget/LinearLayout;

    .line 79
    invoke-virtual {v8, v9, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzq:Landroid/widget/PopupWindow;

    .line 80
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgo;->zzb()Lcom/google/android/gms/internal/ads/zzcis;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzl:Landroid/app/Activity;

    const/4 v9, 0x0

    aget v9, v3, v9

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzcis;->zzs(Landroid/content/Context;I)I

    move-result v8

    .line 82
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgo;->zzb()Lcom/google/android/gms/internal/ads/zzcis;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzl:Landroid/app/Activity;

    aget v10, v3, v7

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzcis;->zzs(Landroid/content/Context;I)I

    move-result v9

    const/4 v10, 0x0

    .line 83
    invoke-virtual {v5, v0, v10, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    aget v0, v3, v10

    aget v5, v3, v7

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzp:Lcom/google/android/gms/internal/ads/zzcar;

    if-eqz v8, :cond_26

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzi:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzf:I

    .line 84
    invoke-interface {v8, v0, v5, v9, v10}, Lcom/google/android/gms/internal/ads/zzcar;->zza(IIII)V

    :cond_26
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzk:Lcom/google/android/gms/internal/ads/zzcop;

    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzcqe;->zzb(II)Lcom/google/android/gms/internal/ads/zzcqe;

    move-result-object v4

    .line 85
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/zzcop;->zzai(Lcom/google/android/gms/internal/ads/zzcqe;)V

    const/4 v0, 0x0

    aget v0, v3, v0

    aget v3, v3, v7

    .line 86
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzl:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzt;->zzW(Landroid/app/Activity;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v3, v4

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzi:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzf:I

    .line 87
    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzcaq;->zzj(IIII)V

    const-string v0, "resized"

    .line 88
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcaq;->zzk(Ljava/lang/String;)V

    .line 89
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string v3, "Cannot show popup window: "

    .line 90
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 91
    :cond_27
    new-instance v0, Ljava/lang/String;

    .line 92
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_f
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcaq;->zzg(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzr:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzk:Lcom/google/android/gms/internal/ads/zzcop;

    check-cast v3, Landroid/view/View;

    .line 93
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzs:Landroid/view/ViewGroup;

    if-eqz v0, :cond_28

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzn:Landroid/widget/ImageView;

    .line 94
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzs:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzk:Lcom/google/android/gms/internal/ads/zzcop;

    check-cast v3, Landroid/view/View;

    .line 95
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzk:Lcom/google/android/gms/internal/ads/zzcop;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcak;->zzm:Lcom/google/android/gms/internal/ads/zzcqe;

    .line 96
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzcop;->zzai(Lcom/google/android/gms/internal/ads/zzcqe;)V

    .line 97
    :cond_28
    monitor-exit v2

    return-void

    :cond_29
    const-string v0, "Webview is detached, probably in the middle of a resize or expand."

    .line 98
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcaq;->zzg(Ljava/lang/String;)V

    .line 99
    monitor-exit v2

    return-void

    :cond_2a
    :goto_10
    const-string v0, "Activity context is not ready, cannot get window or decor view."

    .line 100
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcaq;->zzg(Ljava/lang/String;)V

    .line 101
    monitor-exit v2

    return-void

    :cond_2b
    const-string v0, "Invalid width and height options. Cannot resize."

    .line 102
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcaq;->zzg(Ljava/lang/String;)V

    .line 103
    monitor-exit v2

    return-void

    :cond_2c
    const-string v0, "Cannot resize an expanded banner."

    .line 104
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcaq;->zzg(Ljava/lang/String;)V

    .line 105
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    .line 106
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_b
        -0x3c587281 -> :sswitch_a
        -0x27103597 -> :sswitch_9
        0x455fe3fa -> :sswitch_8
        0x4ccee637 -> :sswitch_7
        0x68a23bcd -> :sswitch_6
    .end sparse-switch
.end method

.method public final zzc(IIZ)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzj:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzd:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcak;->zze:I

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzd(II)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzd:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcak;->zze:I

    return-void
.end method

.method public final zze()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcak;->zzq:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
