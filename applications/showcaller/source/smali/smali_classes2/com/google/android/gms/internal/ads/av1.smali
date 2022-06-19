.class final synthetic Lcom/google/android/gms/internal/ads/av1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/yu1;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/yu1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/av1;->a:Lcom/google/android/gms/internal/ads/yu1;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/yu1;)Ljava/util/concurrent/Callable;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/av1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/av1;-><init>(Lcom/google/android/gms/internal/ads/yu1;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/av1;->a:Lcom/google/android/gms/internal/ads/yu1;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
