.class final synthetic Lcom/google/android/gms/internal/ads/bmm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ckg;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bmn;

.field private final b:Z

.field private final c:Ljava/util/ArrayList;

.field private final d:Lcom/google/android/gms/internal/ads/dwv$r;

.field private final e:Lcom/google/android/gms/internal/ads/dwv$t$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bmn;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/dwv$r;Lcom/google/android/gms/internal/ads/dwv$t$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bmm;->a:Lcom/google/android/gms/internal/ads/bmn;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/bmm;->b:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bmm;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bmm;->d:Lcom/google/android/gms/internal/ads/dwv$r;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bmm;->e:Lcom/google/android/gms/internal/ads/dwv$t$c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmm;->a:Lcom/google/android/gms/internal/ads/bmn;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bmm;->b:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bmm;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bmm;->d:Lcom/google/android/gms/internal/ads/dwv$r;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bmm;->e:Lcom/google/android/gms/internal/ads/dwv$t$c;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bmn;->a:Lcom/google/android/gms/internal/ads/bmj;

    .line 3
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/bmj;->a(Lcom/google/android/gms/internal/ads/bmj;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/dwv$r;Lcom/google/android/gms/internal/ads/dwv$t$c;)[B

    move-result-object v0

    .line 5
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 6
    const-string/jumbo v3, "timestamp"

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7
    const-string/jumbo v3, "serialized_proto_data"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 8
    const-string/jumbo v0, "offline_signal_contents"

    invoke-virtual {p1, v0, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 10
    const-string/jumbo v0, "UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = \'%s\'"

    .line 11
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "total_requests"

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 12
    if-nez v1, :cond_0

    .line 13
    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "failed_requests"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 15
    :cond_0
    return-object v8
.end method
