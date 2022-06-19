.class final synthetic Lcom/google/android/gms/internal/ads/cct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ccp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ccp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cct;->a:Lcom/google/android/gms/internal/ads/ccp;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cct;->a:Lcom/google/android/gms/internal/ads/ccp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ccp;->b()Lcom/google/android/gms/internal/ads/ccn;

    move-result-object v0

    return-object v0
.end method
