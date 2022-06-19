.class final Lcom/google/android/gms/internal/ads/edy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/zzht;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/edt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/edt;Lcom/google/android/gms/internal/ads/zzht;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/edy;->b:Lcom/google/android/gms/internal/ads/edt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/edy;->a:Lcom/google/android/gms/internal/ads/zzht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/edy;->b:Lcom/google/android/gms/internal/ads/edt;

    .line 1026
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/edt;->b:Lcom/google/android/gms/internal/ads/edu;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/edy;->a:Lcom/google/android/gms/internal/ads/zzht;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/edu;->a(Lcom/google/android/gms/internal/ads/zzht;)V

    return-void
.end method
