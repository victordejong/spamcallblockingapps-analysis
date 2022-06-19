.class final synthetic Lcom/google/android/gms/internal/ads/yv1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Landroid/database/sqlite/SQLiteDatabase;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/gms/internal/ads/ii0;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ii0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yv1;->d:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yv1;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/yv1;->f:Lcom/google/android/gms/internal/ads/ii0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv1;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv1;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yv1;->f:Lcom/google/android/gms/internal/ads/ii0;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dw1;->q(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ii0;)V

    return-void
.end method
