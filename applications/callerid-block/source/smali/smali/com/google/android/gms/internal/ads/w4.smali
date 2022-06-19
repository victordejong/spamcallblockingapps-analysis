.class public final Lcom/google/android/gms/internal/ads/w4;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/p4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/p4<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/internal/ads/p4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/p4<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/internal/ads/p4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/p4<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gad:force_dynamite_loading_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/p4;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/p4;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/w4;->a:Lcom/google/android/gms/internal/ads/p4;

    const-string v0, "gad:force_local_loading_enabled"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/p4;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/p4;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/w4;->b:Lcom/google/android/gms/internal/ads/p4;

    const-string v0, "gads:sdk_csi_write_to_file"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/p4;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/p4;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/w4;->c:Lcom/google/android/gms/internal/ads/p4;

    return-void
.end method
