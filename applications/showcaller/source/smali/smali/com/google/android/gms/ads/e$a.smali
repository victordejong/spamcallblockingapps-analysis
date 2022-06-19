.class public Lcom/google/android/gms/ads/e$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/ou;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/ou;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ou;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/e$a;->a:Lcom/google/android/gms/internal/ads/ou;

    const-string v1, "B3EEABB8EE11C2BE770B684D95219ECB"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ou;->y(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/android/gms/ads/e$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/e$a;->a:Lcom/google/android/gms/internal/ads/ou;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ou;->w(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/e$a;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/e$a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/e$a;->a:Lcom/google/android/gms/internal/ads/ou;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ou;->x(Ljava/lang/Class;Landroid/os/Bundle;)V

    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_emulatorLiveAds"

    .line 3
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/e$a;->a:Lcom/google/android/gms/internal/ads/ou;

    const-string p2, "B3EEABB8EE11C2BE770B684D95219ECB"

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ou;->z(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public c()Lcom/google/android/gms/ads/e;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/e;-><init>(Lcom/google/android/gms/ads/e$a;)V

    return-object v0
.end method

.method public d(Landroid/location/Location;)Lcom/google/android/gms/ads/e$a;
    .locals 1
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/e$a;->a:Lcom/google/android/gms/internal/ads/ou;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ou;->b(Landroid/location/Location;)V

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/android/gms/ads/e$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/e$a;->a:Lcom/google/android/gms/internal/ads/ou;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ou;->y(Ljava/lang/String;)V

    return-object p0
.end method

.method public final f(Ljava/util/Date;)Lcom/google/android/gms/ads/e$a;
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/e$a;->a:Lcom/google/android/gms/internal/ads/ou;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ou;->A(Ljava/util/Date;)V

    return-object p0
.end method

.method public final g(I)Lcom/google/android/gms/ads/e$a;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/e$a;->a:Lcom/google/android/gms/internal/ads/ou;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ou;->a(I)V

    return-object p0
.end method

.method public final h(Z)Lcom/google/android/gms/ads/e$a;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/e$a;->a:Lcom/google/android/gms/internal/ads/ou;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ou;->c(Z)V

    return-object p0
.end method

.method public final i(Z)Lcom/google/android/gms/ads/e$a;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/e$a;->a:Lcom/google/android/gms/internal/ads/ou;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ou;->d(Z)V

    return-object p0
.end method
