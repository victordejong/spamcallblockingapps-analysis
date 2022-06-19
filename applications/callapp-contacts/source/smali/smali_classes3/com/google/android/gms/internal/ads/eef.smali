.class final synthetic Lcom/google/android/gms/internal/ads/eef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/eec;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eef;->a:Lcom/google/android/gms/internal/ads/eec;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eef;->a:Lcom/google/android/gms/internal/ads/eec;

    const/4 v1, 0x3

    .line 1220
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/eec;->a(I)V

    return-void
.end method
