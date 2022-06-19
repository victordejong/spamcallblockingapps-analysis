.class final synthetic Lcom/google/android/gms/internal/ads/aoe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aoa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aoa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aoe;->a:Lcom/google/android/gms/internal/ads/aoa;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aoe;->a:Lcom/google/android/gms/internal/ads/aoa;

    const/4 v1, 0x0

    .line 1024
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/aoa;->d:Z

    return-void
.end method
