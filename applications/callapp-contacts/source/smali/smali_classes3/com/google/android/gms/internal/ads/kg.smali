.class final synthetic Lcom/google/android/gms/internal/ads/kg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ke;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ke;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kg;->a:Lcom/google/android/gms/internal/ads/ke;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kg;->a:Lcom/google/android/gms/internal/ads/ke;

    check-cast p1, Lcom/google/android/gms/internal/ads/ju;

    .line 1043
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ju;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1044
    iput p1, v0, Lcom/google/android/gms/internal/ads/ke;->g:I

    :cond_0
    return-void
.end method
