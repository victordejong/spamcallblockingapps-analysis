.class public final Lcom/google/android/gms/internal/ads/cck;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/pw;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/pw;I)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cck;->a:Lcom/google/android/gms/internal/ads/pw;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/cck;->b:I

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cck;->a:Lcom/google/android/gms/internal/ads/pw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cck;->a:Lcom/google/android/gms/internal/ads/pw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pw;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cck;->a:Lcom/google/android/gms/internal/ads/pw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pw;->f:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cck;->a:Lcom/google/android/gms/internal/ads/pw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/pw;->h:Z

    return v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cck;->a:Lcom/google/android/gms/internal/ads/pw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pw;->e:Ljava/util/List;

    return-object v0
.end method

.method public final f()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cck;->a:Lcom/google/android/gms/internal/ads/pw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pw;->c:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cck;->a:Lcom/google/android/gms/internal/ads/pw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/pw;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/cck;->b:I

    return v0
.end method
