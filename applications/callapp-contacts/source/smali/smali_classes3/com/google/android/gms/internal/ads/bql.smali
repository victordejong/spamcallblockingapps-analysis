.class public final Lcom/google/android/gms/internal/ads/bql;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/bqm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/bqm;

    sget-object v1, Lcom/google/android/gms/internal/ads/ctj;->zzhtj:Lcom/google/android/gms/internal/ads/ctj;

    sget-object v2, Lcom/google/android/gms/internal/ads/ctj;->zzhtm:Lcom/google/android/gms/internal/ads/ctj;

    const-string v3, "ttc"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/bqm;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ctj;Lcom/google/android/gms/internal/ads/ctj;)V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bqm;

    return-object v0
.end method
