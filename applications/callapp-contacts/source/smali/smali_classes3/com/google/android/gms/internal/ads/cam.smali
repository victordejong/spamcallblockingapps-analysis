.class final synthetic Lcom/google/android/gms/internal/ads/cam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/can;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/can;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cam;->a:Lcom/google/android/gms/internal/ads/can;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cam;->a:Lcom/google/android/gms/internal/ads/can;

    .line 1045
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/can;->b:Lcom/google/android/gms/internal/ads/cah;

    .line 2017
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cah;->c:Lcom/google/android/gms/internal/ads/arp;

    .line 1046
    sget-object v1, Lcom/google/android/gms/internal/ads/cqj;->zzhoy:Lcom/google/android/gms/internal/ads/cqj;

    const/4 v2, 0x0

    .line 1047
    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/cqh;->a(Lcom/google/android/gms/internal/ads/cqj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v1

    .line 1048
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/arp;->a(Lcom/google/android/gms/internal/ads/zzvh;)V

    return-void
.end method
