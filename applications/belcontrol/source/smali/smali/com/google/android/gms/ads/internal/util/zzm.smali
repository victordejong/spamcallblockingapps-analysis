.class public final synthetic Lcom/google/android/gms/ads/internal/util/zzm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzees:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzm;->zzees:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzm;->zzees:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzi(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
