.class public Lcom/google/android/gms/ads/mediation/rtb/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/mediation/i;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Bundle;

.field private final d:Lcom/google/android/gms/ads/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/gms/ads/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/mediation/i;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/ads/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/rtb/a;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/ads/mediation/rtb/a;->b:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/ads/mediation/rtb/a;->c:Landroid/os/Bundle;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/ads/mediation/rtb/a;->d:Lcom/google/android/gms/ads/e;

    .line 6
    return-void
.end method
