.class final synthetic Lcom/google/android/gms/internal/ads/kk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ju;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ju;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kk;->a:Lcom/google/android/gms/internal/ads/ju;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kk;->a:Lcom/google/android/gms/internal/ads/ju;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ju;->a()V

    return-void
.end method
