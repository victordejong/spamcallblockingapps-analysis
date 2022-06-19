.class final synthetic Lcom/google/android/gms/internal/ads/bjj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bji;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bji;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bjj;->a:Lcom/google/android/gms/internal/ads/bji;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bjj;->a:Lcom/google/android/gms/internal/ads/bji;

    .line 1066
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bji;->a()V

    return-void
.end method
