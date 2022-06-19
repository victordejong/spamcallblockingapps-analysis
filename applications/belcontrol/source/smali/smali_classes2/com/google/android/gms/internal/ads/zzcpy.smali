.class public final synthetic Lcom/google/android/gms/internal/ads/zzcpy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgqn:Lcom/google/android/gms/internal/ads/zzcpt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcpt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpy;->zzgqn:Lcom/google/android/gms/internal/ads/zzcpt;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcpt;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcpy;-><init>(Lcom/google/android/gms/internal/ads/zzcpt;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpy;->zzgqn:Lcom/google/android/gms/internal/ads/zzcpt;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
