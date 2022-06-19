.class final Lcom/google/android/gms/internal/ads/acs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/acp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/acp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/acp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlr()Lcom/google/android/gms/internal/ads/acr;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/acp;

    .line 1016
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/acr;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
