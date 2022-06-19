.class final synthetic Lcom/google/android/gms/internal/ads/cmi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cmh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cmh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cmi;->a:Lcom/google/android/gms/internal/ads/cmh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmi;->a:Lcom/google/android/gms/internal/ads/cmh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cmh;->e()Lcom/google/android/gms/internal/ads/atw$a;

    move-result-object v0

    return-object v0
.end method
