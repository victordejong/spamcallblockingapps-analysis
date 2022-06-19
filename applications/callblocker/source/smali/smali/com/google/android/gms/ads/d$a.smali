.class public final Lcom/google/android/gms/ads/d$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ebh;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/ebh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ebh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/d$a;->a:Lcom/google/android/gms/internal/ads/ebh;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->a:Lcom/google/android/gms/internal/ads/ebh;

    const-string/jumbo v1, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ebh;->b(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/d$a;)Lcom/google/android/gms/internal/ads/ebh;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->a:Lcom/google/android/gms/internal/ads/ebh;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/ads/d$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->a:Lcom/google/android/gms/internal/ads/ebh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebh;->a(I)V

    .line 36
    return-object p0
.end method

.method public final a(Landroid/location/Location;)Lcom/google/android/gms/ads/d$a;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->a:Lcom/google/android/gms/internal/ads/ebh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebh;->a(Landroid/location/Location;)V

    .line 38
    return-object p0
.end method

.method public final a(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/d$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/d$a;"
        }
    .end annotation

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->a:Lcom/google/android/gms/internal/ads/ebh;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ebh;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 10
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "_emulatorLiveAds"

    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->a:Lcom/google/android/gms/internal/ads/ebh;

    const-string/jumbo v1, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ebh;->c(Ljava/lang/String;)V

    .line 13
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/ads/d$a;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->a:Lcom/google/android/gms/internal/ads/ebh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebh;->a(Ljava/lang/String;)V

    .line 6
    return-object p0
.end method

.method public final a(Ljava/util/Date;)Lcom/google/android/gms/ads/d$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->a:Lcom/google/android/gms/internal/ads/ebh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebh;->a(Ljava/util/Date;)V

    .line 20
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/ads/d$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->a:Lcom/google/android/gms/internal/ads/ebh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebh;->a(Z)V

    .line 42
    return-object p0
.end method

.method public final a()Lcom/google/android/gms/ads/d;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/gms/ads/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/d;-><init>(Lcom/google/android/gms/ads/d$a;Lcom/google/android/gms/ads/r;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/ads/d$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->a:Lcom/google/android/gms/internal/ads/ebh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebh;->b(Ljava/lang/String;)V

    .line 17
    return-object p0
.end method

.method public final b(Z)Lcom/google/android/gms/ads/d$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/ads/d$a;->a:Lcom/google/android/gms/internal/ads/ebh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ebh;->b(Z)V

    .line 44
    return-object p0
.end method
