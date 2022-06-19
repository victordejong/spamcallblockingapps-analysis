.class final synthetic Lcom/google/android/gms/internal/ads/zzauf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvz;


# instance fields
.field private final zzdzb:Lcom/google/android/gms/internal/ads/zzauc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzauc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauf;->zzdzb:Lcom/google/android/gms/internal/ads/zzauc;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauf;->zzdzb:Lcom/google/android/gms/internal/ads/zzauc;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzauc;->zzf(Lorg/json/JSONObject;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
