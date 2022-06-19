.class public final Lcom/google/android/gms/internal/ads/cje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cja;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cja;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cje;->a:Lcom/google/android/gms/internal/ads/cja;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cje;->a:Lcom/google/android/gms/internal/ads/cja;

    .line 1009
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cja;->a:Lcom/google/android/gms/internal/ads/zzauj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzauj;->zzdyt:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
