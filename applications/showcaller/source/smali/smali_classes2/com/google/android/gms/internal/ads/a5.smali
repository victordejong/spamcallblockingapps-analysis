.class public final Lcom/google/android/gms/internal/ads/a5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/net/Uri;

.field private final c:Lcom/google/android/gms/internal/ads/d5;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/d5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/d5;-><init>(Lcom/google/android/gms/internal/ads/h5;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/a5;->c:Lcom/google/android/gms/internal/ads/d5;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/a5;->d:Ljava/util/List;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/a5;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/a5;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/a5;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/a5;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/a5;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/j5;
    .locals 27

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/a5;->b:Landroid/net/Uri;

    if-eqz v2, :cond_0

    new-instance v11, Lcom/google/android/gms/internal/ads/i5;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/a5;->d:Ljava/util/List;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/a5;->e:Ljava/util/List;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/i5;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/gms/internal/ads/e5;Lcom/google/android/gms/internal/ads/z4;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/h5;)V

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    move-object v4, v11

    .line 2
    new-instance v8, Lcom/google/android/gms/internal/ads/j5;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/a5;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    move-object v2, v1

    new-instance v3, Lcom/google/android/gms/internal/ads/c5;

    const-wide/16 v10, 0x0

    const-wide/high16 v12, -0x8000000000000000L

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v3

    .line 3
    invoke-direct/range {v9 .. v17}, Lcom/google/android/gms/internal/ads/c5;-><init>(JJZZZLcom/google/android/gms/internal/ads/h5;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/g5;

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    const v25, -0x800001

    const v26, -0x800001

    move-object/from16 v18, v5

    invoke-direct/range {v18 .. v26}, Lcom/google/android/gms/internal/ads/g5;-><init>(JJJFF)V

    sget-object v6, Lcom/google/android/gms/internal/ads/n5;->a:Lcom/google/android/gms/internal/ads/n5;

    const/4 v7, 0x0

    move-object v1, v8

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/j5;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/c5;Lcom/google/android/gms/internal/ads/i5;Lcom/google/android/gms/internal/ads/g5;Lcom/google/android/gms/internal/ads/n5;Lcom/google/android/gms/internal/ads/h5;)V

    return-object v8
.end method
