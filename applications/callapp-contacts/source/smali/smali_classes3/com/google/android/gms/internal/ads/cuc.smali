.class final Lcom/google/android/gms/internal/ads/cuc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cwu;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/cux;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/csa;Lcom/google/android/gms/internal/ads/cux;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cuc;->a:Lcom/google/android/gms/internal/ads/cux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Z
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cuc;->a:Lcom/google/android/gms/internal/ads/cux;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cux;->a(Ljava/io/File;)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
