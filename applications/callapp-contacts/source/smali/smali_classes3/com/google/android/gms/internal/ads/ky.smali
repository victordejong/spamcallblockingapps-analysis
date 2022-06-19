.class final Lcom/google/android/gms/internal/ads/ky;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zt<",
        "Lcom/google/android/gms/internal/ads/ju;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/kv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/kz;Lcom/google/android/gms/internal/ads/kv;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ky;->a:Lcom/google/android/gms/internal/ads/kv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/ju;

    const-string v0, "Getting a new session for JS Engine."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ky;->a:Lcom/google/android/gms/internal/ads/kv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ju;->c()Lcom/google/android/gms/internal/ads/lf;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zs;->a(Ljava/lang/Object;)V

    return-void
.end method
