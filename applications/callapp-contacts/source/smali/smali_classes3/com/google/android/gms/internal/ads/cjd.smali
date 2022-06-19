.class public final Lcom/google/android/gms/internal/ads/cjd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cja;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cja;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cjd;->a:Lcom/google/android/gms/internal/ads/cja;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/cja;)Ljava/lang/String;
    .locals 0

    .line 1005
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cja;->a:Lcom/google/android/gms/internal/ads/zzauj;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzauj;->packageName:Ljava/lang/String;

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjd;->a:Lcom/google/android/gms/internal/ads/cja;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cjd;->a(Lcom/google/android/gms/internal/ads/cja;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
