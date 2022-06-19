.class public final Lcom/google/android/gms/internal/ads/byr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cae;
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cae",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Lcom/google/android/gms/internal/ads/cae",
        "<",
        "Landroid/os/Bundle;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/pm/ApplicationInfo;

.field private final b:Landroid/content/pm/PackageInfo;


# direct methods
.method constructor <init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/byr;->a:Landroid/content/pm/ApplicationInfo;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/byr;->b:Landroid/content/pm/PackageInfo;

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/cae",
            "<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 6
    check-cast p1, Landroid/os/Bundle;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byr;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byr;->b:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 9
    :goto_0
    const-string/jumbo v2, "pn"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    if-eqz v0, :cond_0

    .line 11
    const-string/jumbo v1, "vc"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    :cond_0
    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/byr;->b:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method
