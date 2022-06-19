.class final synthetic Lcom/google/android/gms/internal/ads/zzcqw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdjf:Ljava/lang/String;

.field private final zzgry:Landroid/database/sqlite/SQLiteDatabase;

.field private final zzgrz:Lcom/google/android/gms/internal/ads/zzazo;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzazo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqw;->zzgry:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqw;->zzdjf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcqw;->zzgrz:Lcom/google/android/gms/internal/ads/zzazo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqw;->zzgry:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqw;->zzdjf:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqw;->zzgrz:Lcom/google/android/gms/internal/ads/zzazo;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcqr;->zza(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzazo;)V

    return-void
.end method
