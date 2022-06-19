.class public final Lcom/google/android/gms/internal/ads/bmr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/dwi;

.field private b:Landroid/content/Context;

.field private c:Lcom/google/android/gms/internal/ads/bma;

.field private d:Lcom/google/android/gms/internal/ads/yd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/dwi;Lcom/google/android/gms/internal/ads/bma;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bmr;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bmr;->d:Lcom/google/android/gms/internal/ads/yd;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bmr;->a:Lcom/google/android/gms/internal/ads/dwi;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bmr;->c:Lcom/google/android/gms/internal/ads/bma;

    .line 6
    return-void
.end method


# virtual methods
.method final synthetic a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 10

    .prologue
    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bmo;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v1

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$t;->a()Lcom/google/android/gms/internal/ads/dwv$t$b;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bmr;->b:Landroid/content/Context;

    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dwv$t$b;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dwv$t$b;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dwv$t$b;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dwv$t$b;

    move-result-object v0

    const/4 v2, 0x0

    .line 17
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/bmo;->a(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v2

    .line 18
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dwv$t$b;->a(I)Lcom/google/android/gms/internal/ads/dwv$t$b;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwv$t$b;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/dwv$t$b;

    move-result-object v0

    const/4 v2, 0x1

    .line 20
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/bmo;->a(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v2

    .line 21
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dwv$t$b;->b(I)Lcom/google/android/gms/internal/ads/dwv$t$b;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dwv$t$b;->a(J)Lcom/google/android/gms/internal/ads/dwv$t$b;

    move-result-object v0

    const/4 v2, 0x2

    .line 23
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/bmo;->b(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v2

    .line 24
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dwv$t$b;->b(J)Lcom/google/android/gms/internal/ads/dwv$t$b;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$t;

    .line 27
    const-wide/16 v4, 0x0

    .line 28
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v2, 0x0

    move v6, v2

    :goto_0
    if-ge v6, v7, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v6, v6, 0x1

    check-cast v2, Lcom/google/android/gms/internal/ads/dwv$t$a;

    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dwv$t$a;->b()Lcom/google/android/gms/internal/ads/dxf;

    move-result-object v3

    sget-object v8, Lcom/google/android/gms/internal/ads/dxf;->b:Lcom/google/android/gms/internal/ads/dxf;

    if-ne v3, v8, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dwv$t$a;->a()J

    move-result-wide v8

    cmp-long v3, v8, v4

    if-lez v3, :cond_3

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dwv$t$a;->a()J

    move-result-wide v2

    :goto_1
    move-wide v4, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    .line 34
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 35
    const-string/jumbo v2, "value"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 36
    const-string/jumbo v2, "offline_signal_statistics"

    const-string/jumbo v3, "statistic_name = \'last_successful_request_time\'"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bmr;->a:Lcom/google/android/gms/internal/ads/dwi;

    new-instance v2, Lcom/google/android/gms/internal/ads/bmt;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/bmt;-><init>(Lcom/google/android/gms/internal/ads/dwv$t;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwl;)V

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$z;->a()Lcom/google/android/gms/internal/ads/dwv$z$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bmr;->d:Lcom/google/android/gms/internal/ads/yd;

    iget v1, v1, Lcom/google/android/gms/internal/ads/yd;->b:I

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwv$z$a;->a(I)Lcom/google/android/gms/internal/ads/dwv$z$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bmr;->d:Lcom/google/android/gms/internal/ads/yd;

    iget v1, v1, Lcom/google/android/gms/internal/ads/yd;->c:I

    .line 40
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwv$z$a;->b(I)Lcom/google/android/gms/internal/ads/dwv$z$a;

    move-result-object v1

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmr;->d:Lcom/google/android/gms/internal/ads/yd;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/yd;->d:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dwv$z$a;->c(I)Lcom/google/android/gms/internal/ads/dwv$z$a;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$z;

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bmr;->a:Lcom/google/android/gms/internal/ads/dwi;

    new-instance v2, Lcom/google/android/gms/internal/ads/bms;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/bms;-><init>(Lcom/google/android/gms/internal/ads/dwv$z;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwl;)V

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmr;->a:Lcom/google/android/gms/internal/ads/dwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwk$a$a;->R:Lcom/google/android/gms/internal/ads/dwk$a$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwi;->a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V

    .line 46
    const-string/jumbo v0, "offline_signal_contents"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 47
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 48
    const-string/jumbo v1, "value"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    const-string/jumbo v1, "offline_signal_statistics"

    const-string/jumbo v2, "statistic_name = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "failed_requests"

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 50
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 51
    const-string/jumbo v1, "value"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    const-string/jumbo v1, "offline_signal_statistics"

    const-string/jumbo v2, "statistic_name = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "total_requests"

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    move-wide v2, v4

    goto/16 :goto_1
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmr;->c:Lcom/google/android/gms/internal/ads/bma;

    new-instance v1, Lcom/google/android/gms/internal/ads/bmq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bmq;-><init>(Lcom/google/android/gms/internal/ads/bmr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bma;->a(Lcom/google/android/gms/internal/ads/ckg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :goto_0
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string/jumbo v1, "Error in offline signals database startup: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
