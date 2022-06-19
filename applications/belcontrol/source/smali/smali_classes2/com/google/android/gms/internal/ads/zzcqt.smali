.class public final synthetic Lcom/google/android/gms/internal/ads/zzcqt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqu;


# instance fields
.field private final zzdua:Lcom/google/android/gms/internal/ads/zzazo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzazo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqt;->zzdua:Lcom/google/android/gms/internal/ads/zzazo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqt;->zzdua:Lcom/google/android/gms/internal/ads/zzazo;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcqr;->zza(Lcom/google/android/gms/internal/ads/zzazo;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
