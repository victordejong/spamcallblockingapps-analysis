.class final synthetic Lcom/google/android/gms/internal/ads/zzcqk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqu;


# instance fields
.field private final zzekn:Z

.field private final zzgrk:Lcom/google/android/gms/internal/ads/zzcqh;

.field private final zzgrl:Ljava/util/ArrayList;

.field private final zzgrm:Lcom/google/android/gms/internal/ads/zzug$zzm;

.field private final zzgrn:Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqh;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzug$zzm;Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqk;->zzgrk:Lcom/google/android/gms/internal/ads/zzcqh;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcqk;->zzekn:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcqk;->zzgrl:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcqk;->zzgrm:Lcom/google/android/gms/internal/ads/zzug$zzm;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcqk;->zzgrn:Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqk;->zzgrk:Lcom/google/android/gms/internal/ads/zzcqh;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcqk;->zzekn:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqk;->zzgrl:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcqk;->zzgrm:Lcom/google/android/gms/internal/ads/zzug$zzm;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcqk;->zzgrn:Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcqh;->zzgre:Lcom/google/android/gms/internal/ads/zzcqi;

    .line 3
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcqi;->zza(Lcom/google/android/gms/internal/ads/zzcqi;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzug$zzm;Lcom/google/android/gms/internal/ads/zzug$zzo$zzc;)[B

    move-result-object v0

    .line 5
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "timestamp"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "serialized_proto_data"

    .line 7
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "offline_signal_contents"

    const/4 v3, 0x0

    .line 8
    invoke-virtual {p1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v4, "total_requests"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string v4, "UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = \'%s\'"

    .line 11
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "failed_requests"

    aput-object v1, v0, v5

    .line 13
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-object v3
.end method
