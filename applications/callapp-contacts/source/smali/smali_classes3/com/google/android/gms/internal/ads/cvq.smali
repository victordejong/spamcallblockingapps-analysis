.class final synthetic Lcom/google/android/gms/internal/ads/cvq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cvo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cvo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cvq;->a:Lcom/google/android/gms/internal/ads/cvo;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cvq;->a:Lcom/google/android/gms/internal/ads/cvo;

    .line 1028
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cvo;->d:Lcom/google/android/gms/internal/ads/cvu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cvo;->a:Landroid/content/Context;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/cvu;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/beb$a;

    move-result-object v0

    return-object v0
.end method
