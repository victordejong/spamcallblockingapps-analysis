.class final synthetic Lcom/google/android/gms/internal/ads/brg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/css;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/brh;

.field private final b:Z

.field private final c:Ljava/util/ArrayList;

.field private final d:Lcom/google/android/gms/internal/ads/eht$r;

.field private final e:Lcom/google/android/gms/internal/ads/eht$t$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/brh;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/eht$r;Lcom/google/android/gms/internal/ads/eht$t$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/brg;->a:Lcom/google/android/gms/internal/ads/brh;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/brg;->b:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/brg;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/brg;->d:Lcom/google/android/gms/internal/ads/eht$r;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/brg;->e:Lcom/google/android/gms/internal/ads/eht$t$b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brg;->a:Lcom/google/android/gms/internal/ads/brh;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/brg;->b:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/brg;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/brg;->d:Lcom/google/android/gms/internal/ads/eht$r;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/brg;->e:Lcom/google/android/gms/internal/ads/eht$t$b;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/brh;->a:Lcom/google/android/gms/internal/ads/bre;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/bre;->a(Lcom/google/android/gms/internal/ads/bre;)Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzn()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/brh;->a:Lcom/google/android/gms/internal/ads/bre;

    .line 4
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/bre;->a(Lcom/google/android/gms/internal/ads/bre;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/eht$r;Lcom/google/android/gms/internal/ads/eht$t$b;)[B

    move-result-object v0

    .line 6
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "timestamp"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "serialized_proto_data"

    .line 8
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "offline_signal_contents"

    .line 9
    invoke-virtual {p1, v0, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v0, "UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = \'%s\'"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "total_requests"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 12
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-nez v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "failed_requests"

    aput-object v2, v1, v5

    .line 14
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-object v6
.end method
