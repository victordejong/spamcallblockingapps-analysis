.class public final Lcom/google/android/gms/internal/ads/bar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;
.implements Lcom/google/android/gms/internal/ads/atb;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/adt;

.field private final c:Lcom/google/android/gms/internal/ads/cov;

.field private final d:Lcom/google/android/gms/internal/ads/zzbar;

.field private final e:Lcom/google/android/gms/internal/ads/eht$a$a;

.field private f:Lcom/google/android/gms/dynamic/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/eht$a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bar;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bar;->b:Lcom/google/android/gms/internal/ads/adt;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bar;->c:Lcom/google/android/gms/internal/ads/cov;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bar;->d:Lcom/google/android/gms/internal/ads/zzbar;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bar;->e:Lcom/google/android/gms/internal/ads/eht$a$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->e:Lcom/google/android/gms/internal/ads/eht$a$a;

    sget-object v1, Lcom/google/android/gms/internal/ads/eht$a$a;->zzbzs:Lcom/google/android/gms/internal/ads/eht$a$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->e:Lcom/google/android/gms/internal/ads/eht$a$a;

    sget-object v1, Lcom/google/android/gms/internal/ads/eht$a$a;->zzbzo:Lcom/google/android/gms/internal/ads/eht$a$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->e:Lcom/google/android/gms/internal/ads/eht$a$a;

    sget-object v1, Lcom/google/android/gms/internal/ads/eht$a$a;->zzbzv:Lcom/google/android/gms/internal/ads/eht$a$a;

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->c:Lcom/google/android/gms/internal/ads/cov;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cov;->N:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->b:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_4

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lcom/google/android/gms/internal/ads/qt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bar;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/qt;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->d:Lcom/google/android/gms/internal/ads/zzbar;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbar;->zzeka:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bar;->d:Lcom/google/android/gms/internal/ads/zzbar;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbar;->zzekb:I

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->c:Lcom/google/android/gms/internal/ads/cov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cov;->P:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;->getVideoEventsOwner()Ljava/lang/String;

    move-result-object v9

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->cV:Lcom/google/android/gms/internal/ads/af;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->c:Lcom/google/android/gms/internal/ads/cov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cov;->P:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;->getMediaType()Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;->VIDEO:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;

    if-ne v0, v1, :cond_1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/qu;->zzdsm:Lcom/google/android/gms/internal/ads/qu;

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/qw;->zzdsq:Lcom/google/android/gms/internal/ads/qw;

    move-object v11, v0

    move-object v10, v1

    goto :goto_1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->c:Lcom/google/android/gms/internal/ads/cov;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cov;->S:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/qw;->zzdss:Lcom/google/android/gms/internal/ads/qw;

    goto :goto_0

    .line 20
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/qw;->zzdsp:Lcom/google/android/gms/internal/ads/qw;

    .line 21
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/qu;->zzdsk:Lcom/google/android/gms/internal/ads/qu;

    move-object v10, v0

    move-object v11, v1

    .line 23
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lcom/google/android/gms/internal/ads/qt;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->b:Lcom/google/android/gms/internal/ads/adt;

    .line 24
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->r()Landroid/webkit/WebView;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->c:Lcom/google/android/gms/internal/ads/cov;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/cov;->ag:Ljava/lang/String;

    const-string v7, ""

    const-string v8, "javascript"

    .line 25
    invoke-virtual/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/qt;->a(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qw;Lcom/google/android/gms/internal/ads/qu;Ljava/lang/String;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->f:Lcom/google/android/gms/dynamic/b;

    goto :goto_2

    .line 28
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lcom/google/android/gms/internal/ads/qt;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->b:Lcom/google/android/gms/internal/ads/adt;

    .line 29
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->r()Landroid/webkit/WebView;

    move-result-object v6

    const-string v7, ""

    const-string v8, "javascript"

    .line 30
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/qt;->a(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->f:Lcom/google/android/gms/dynamic/b;

    .line 31
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->f:Lcom/google/android/gms/dynamic/b;

    if-eqz v0, :cond_4

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lcom/google/android/gms/internal/ads/qt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bar;->f:Lcom/google/android/gms/dynamic/b;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bar;->b:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qt;->a(Lcom/google/android/gms/dynamic/b;Landroid/view/View;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->b:Lcom/google/android/gms/internal/ads/adt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bar;->f:Lcom/google/android/gms/dynamic/b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/adt;->a(Lcom/google/android/gms/dynamic/b;)V

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lcom/google/android/gms/internal/ads/qt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bar;->f:Lcom/google/android/gms/dynamic/b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/qt;->a(Lcom/google/android/gms/dynamic/b;)V

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->cX:Lcom/google/android/gms/internal/ads/af;

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->b:Lcom/google/android/gms/internal/ads/adt;

    new-instance v1, Landroidx/b/a;

    invoke-direct {v1}, Landroidx/b/a;-><init>()V

    const-string v2, "onSdkLoaded"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 0

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 0

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bar;->f:Lcom/google/android/gms/dynamic/b;

    return-void
.end method

.method public final zzvz()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->f:Lcom/google/android/gms/dynamic/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bar;->b:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_0

    .line 46
    new-instance v1, Landroidx/b/a;

    invoke-direct {v1}, Landroidx/b/a;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
