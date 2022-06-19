.class final synthetic Lcom/google/android/gms/internal/ads/zzcqy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqu;


# instance fields
.field private final zzdjf:Ljava/lang/String;

.field private final zzgrw:Lcom/google/android/gms/internal/ads/zzcqr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqy;->zzgrw:Lcom/google/android/gms/internal/ads/zzcqr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqy;->zzdjf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqy;->zzdjf:Ljava/lang/String;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzcqr;->zza(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
