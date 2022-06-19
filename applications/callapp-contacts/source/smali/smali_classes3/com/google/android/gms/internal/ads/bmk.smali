.class final synthetic Lcom/google/android/gms/internal/ads/bmk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bmi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bmi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bmk;->a:Lcom/google/android/gms/internal/ads/bmi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmk;->a:Lcom/google/android/gms/internal/ads/bmi;

    .line 1165
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bmi;->k:Lcom/google/android/gms/internal/ads/blr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/blr;->b()V

    .line 1166
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bmi;->l:Lcom/google/android/gms/internal/ads/axn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/axn;->b()V

    const/4 v1, 0x1

    .line 1167
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/bmi;->a:Z

    return-void
.end method
