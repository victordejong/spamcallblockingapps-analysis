.class public Lcom/google/android/gms/ads/mediation/q;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Landroid/os/Bundle;

.field protected d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lcom/google/android/gms/ads/p;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/q;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 15
    return-void
.end method

.method public a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/p;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/q;->f:Lcom/google/android/gms/ads/p;

    .line 24
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/ads/mediation/q;->a:Z

    .line 4
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/q;->a:Z

    return v0
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/ads/mediation/q;->b:Z

    .line 6
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/q;->b:Z

    return v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/q;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/q;->d:Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public final f()Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/q;->e:Landroid/view/View;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/ads/p;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/q;->f:Lcom/google/android/gms/ads/p;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/q;->g:Z

    return v0
.end method
