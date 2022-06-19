.class final synthetic Lcom/google/android/gms/internal/ads/zzbqo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfyf:Lcom/google/android/gms/internal/ads/zzbql;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbql;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzfyf:Lcom/google/android/gms/internal/ads/zzbql;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqo;->zzfyf:Lcom/google/android/gms/internal/ads/zzbql;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbql;->zzalh()V

    return-void
.end method
