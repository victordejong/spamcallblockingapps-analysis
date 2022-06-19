.class final synthetic Lcom/google/android/gms/internal/ads/cck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cxu;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cck;->a:Lcom/google/android/gms/internal/ads/cch;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cck;->a:Lcom/google/android/gms/internal/ads/cch;

    .line 1012
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cch;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/cpo;->e:Lcom/google/android/gms/internal/ads/zzvt;

    .line 1015
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzvt;->zzcis:[Lcom/google/android/gms/internal/ads/zzvt;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1016
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzvt;->zzadd:Ljava/lang/String;

    .line 1017
    iget-boolean v7, v4, Lcom/google/android/gms/internal/ads/zzvt;->zzcit:Z

    move-object v11, v2

    move v12, v7

    goto :goto_1

    .line 1020
    :cond_0
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzvt;->zzcis:[Lcom/google/android/gms/internal/ads/zzvt;

    array-length v7, v2

    move-object v11, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v8, v7, :cond_4

    aget-object v13, v2, v8

    .line 1021
    iget-boolean v14, v13, Lcom/google/android/gms/internal/ads/zzvt;->zzcit:Z

    if-nez v14, :cond_1

    if-nez v9, :cond_1

    .line 1022
    iget-object v11, v13, Lcom/google/android/gms/internal/ads/zzvt;->zzadd:Ljava/lang/String;

    const/4 v9, 0x1

    .line 1024
    :cond_1
    iget-boolean v13, v13, Lcom/google/android/gms/internal/ads/zzvt;->zzcit:Z

    if-eqz v13, :cond_2

    if-nez v10, :cond_2

    const/4 v10, 0x1

    const/4 v12, 0x1

    :cond_2
    if-eqz v9, :cond_3

    if-nez v10, :cond_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1029
    :cond_4
    :goto_1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cch;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1035
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1037
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1038
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1039
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1040
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/cch;->c:Lcom/google/android/gms/internal/ads/yd;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/yd;->d()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzm()Ljava/lang/String;

    move-result-object v9

    move v10, v2

    move-object v2, v9

    move v9, v8

    move v8, v3

    goto :goto_2

    :cond_5
    move-object v2, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1043
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1044
    iget-object v13, v4, Lcom/google/android/gms/internal/ads/zzvt;->zzcis:[Lcom/google/android/gms/internal/ads/zzvt;

    if-eqz v13, :cond_d

    .line 1046
    iget-object v13, v4, Lcom/google/android/gms/internal/ads/zzvt;->zzcis:[Lcom/google/android/gms/internal/ads/zzvt;

    array-length v14, v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_3
    const-string/jumbo v5, "|"

    if-ge v15, v14, :cond_b

    aget-object v6, v13, v15

    .line 1047
    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/zzvt;->zzcit:Z

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    const/16 v16, 0x1

    goto :goto_6

    .line 1049
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_7

    .line 1050
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    :cond_7
    iget v5, v6, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_8

    const/4 v5, 0x0

    cmpl-float v7, v8, v5

    if-eqz v7, :cond_8

    .line 1053
    iget v5, v6, Lcom/google/android/gms/internal/ads/zzvt;->widthPixels:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    float-to-int v5, v5

    goto :goto_4

    .line 1054
    :cond_8
    iget v5, v6, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    .line 1055
    :goto_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    .line 1056
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    iget v5, v6, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    const/4 v7, -0x2

    if-ne v5, v7, :cond_9

    const/4 v7, 0x0

    cmpl-float v5, v8, v7

    if-eqz v5, :cond_a

    .line 1059
    iget v5, v6, Lcom/google/android/gms/internal/ads/zzvt;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    float-to-int v5, v5

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    .line 1060
    :cond_a
    iget v5, v6, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    .line 1061
    :goto_5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_b
    if-eqz v16, :cond_d

    .line 1064
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    .line 1065
    invoke-virtual {v3, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_c
    const/4 v6, 0x0

    :goto_7
    const-string v5, "320x50"

    .line 1066
    invoke-virtual {v3, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    :cond_d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1069
    new-instance v13, Lcom/google/android/gms/internal/ads/cci;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cch;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/cpo;->p:Z

    move-object v3, v13

    move-object v5, v11

    move v6, v12

    move-object v11, v2

    move v12, v1

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/ads/cci;-><init>(Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;Z)V

    return-object v13
.end method
