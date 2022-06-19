.class final synthetic Lcom/google/android/gms/internal/ads/bdz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hi;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bdw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bdw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bdz;->a:Lcom/google/android/gms/internal/ads/bdw;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bdz;->a:Lcom/google/android/gms/internal/ads/bdw;

    check-cast p1, Lcom/google/android/gms/internal/ads/adt;

    const-string v0, "Hiding native ads overlay."

    .line 1017
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V

    .line 1018
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/bdw;->c:Lcom/google/android/gms/internal/ads/akh;

    const/4 p2, 0x0

    .line 1029
    iput-boolean p2, p1, Lcom/google/android/gms/internal/ads/akh;->c:Z

    return-void
.end method
