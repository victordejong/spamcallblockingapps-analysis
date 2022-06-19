.class public Lcom/jirbo/adcolony/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/a$a;
    }
.end annotation


# static fields
.field public static c:Lcom/jirbo/adcolony/a;


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/a;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/jirbo/adcolony/a;->b:Z

    return-void
.end method

.method public static d()Lcom/jirbo/adcolony/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/jirbo/adcolony/a;->c:Lcom/jirbo/adcolony/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/jirbo/adcolony/a;

    invoke-direct {v0}, Lcom/jirbo/adcolony/a;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/a;->c:Lcom/jirbo/adcolony/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/a;->c:Lcom/jirbo/adcolony/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Lcom/jirbo/adcolony/a$a;)V
    .locals 7

    const-string v0, "app_id"

    .line 1
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    invoke-virtual {p0, p2}, Lcom/jirbo/adcolony/a;->f(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v5

    .line 3
    invoke-static {}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->getAppOptions()Ld2/l;

    move-result-object v3

    if-eqz p3, :cond_0

    .line 4
    invoke-interface {p3}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 5
    iget-object p3, v3, Ld2/l;->d:Ld2/f4;

    const-string v0, "test_mode"

    invoke-static {p3, v0, p2}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    .line 6
    invoke-virtual/range {v1 .. v6}, Lcom/jirbo/adcolony/a;->b(Landroid/content/Context;Ld2/l;Ljava/lang/String;Ljava/util/ArrayList;Lcom/jirbo/adcolony/a$a;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ld2/l;Ljava/lang/String;Ljava/util/ArrayList;Lcom/jirbo/adcolony/a$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ld2/l;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/jirbo/adcolony/a$a;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    instance-of v1, p1, Landroid/app/Application;

    if-nez v1, :cond_0

    const/16 p1, 0x6a

    const-string p2, "AdColony SDK requires an Activity context to initialize"

    .line 2
    invoke-static {p1, p2}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 3
    invoke-interface {p5, p1}, Lcom/jirbo/adcolony/a$a;->b(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x65

    if-eqz v1, :cond_1

    const-string p1, "Missing or invalid AdColony app ID."

    .line 5
    invoke-static {v2, p1}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 6
    invoke-interface {p5, p1}, Lcom/jirbo/adcolony/a$a;->b(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "No zones provided to initialize the AdColony SDK."

    .line 8
    invoke-static {v2, p1}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 9
    invoke-interface {p5, p1}, Lcom/jirbo/adcolony/a$a;->b(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 10
    :cond_2
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_3
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    iget-object v3, p0, Lcom/jirbo/adcolony/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 12
    iget-object v3, p0, Lcom/jirbo/adcolony/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iput-boolean v2, p0, Lcom/jirbo/adcolony/a;->b:Z

    goto :goto_0

    .line 14
    :cond_4
    iget-boolean p4, p0, Lcom/jirbo/adcolony/a;->b:Z

    if-eqz p4, :cond_7

    .line 15
    sget-object p1, Ld2/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 16
    sget-boolean p1, Ld2/t;->c:Z

    if-nez p1, :cond_5

    const/4 p1, 0x1

    const-string p2, "Ignoring call to AdColony.setAppOptions() as AdColony has not yet been configured."

    .line 17
    invoke-static {v2, p1, p2, v2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    goto :goto_2

    .line 18
    :cond_5
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p1

    .line 19
    iput-object p2, p1, Ld2/f1;->r:Ld2/l;

    .line 20
    sget-object p1, Ld2/t;->a:Landroid/content/Context;

    if-eqz p1, :cond_6

    .line 21
    invoke-virtual {p2, p1}, Ld2/l;->c(Landroid/content/Context;)V

    .line 22
    :cond_6
    new-instance p1, Ld2/f;

    invoke-direct {p1, p2}, Ld2/f;-><init>(Ld2/l;)V

    .line 23
    invoke-static {p1}, Ld2/b;->f(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 24
    :cond_7
    iget-object p4, p0, Lcom/jirbo/adcolony/a;->a:Ljava/util/ArrayList;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    .line 25
    iget-object v1, p2, Ld2/l;->d:Ld2/f4;

    const-string v2, "mediation_network"

    const-string v3, "AdMob"

    invoke-static {v1, v2, v3}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    iget-object v1, p2, Ld2/l;->d:Ld2/f4;

    const-string v2, "mediation_network_version"

    const-string v3, "4.6.5.0"

    invoke-static {v1, v2, v3}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_8

    .line 27
    check-cast p1, Landroid/app/Activity;

    .line 28
    invoke-static {p1, p2, p3, p4}, Ld2/b;->e(Landroid/content/Context;Ld2/l;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    .line 29
    :cond_8
    check-cast p1, Landroid/app/Application;

    .line 30
    invoke-static {p1, p2, p3, p4}, Ld2/b;->e(Landroid/content/Context;Ld2/l;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    .line 31
    :goto_1
    iput-boolean p1, p0, Lcom/jirbo/adcolony/a;->b:Z

    .line 32
    :goto_2
    iget-boolean p1, p0, Lcom/jirbo/adcolony/a;->b:Z

    if-nez p1, :cond_9

    const/16 p1, 0x67

    const-string p2, "AdColony SDK failed to initialize."

    .line 33
    invoke-static {p1, p2}, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    .line 34
    invoke-interface {p5, p1}, Lcom/jirbo/adcolony/a$a;->b(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 35
    :cond_9
    invoke-interface {p5}, Lcom/jirbo/adcolony/a$a;->a()V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;)Ld2/g;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getMediationExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "show_pre_popup"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "show_post_popup"

    .line 3
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    new-instance v2, Ld2/g;

    invoke-direct {v2}, Ld2/g;-><init>()V

    .line 5
    iput-boolean v1, v2, Ld2/g;->a:Z

    .line 6
    iget-object v1, v2, Ld2/g;->c:Ld2/f4;

    const/4 v3, 0x1

    const-string v4, "confirmation_enabled"

    invoke-static {v1, v4, v3}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 7
    iput-boolean v0, v2, Ld2/g;->b:Z

    .line 8
    iget-object v0, v2, Ld2/g;->c:Ld2/f4;

    const-string v1, "results_enabled"

    invoke-static {v0, v1, v3}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getBidResponse()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, v2, Ld2/g;->c:Ld2/f4;

    const-string v1, "adm"

    invoke-static {v0, v1, p1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-object v2
.end method

.method public e(Ljava/util/ArrayList;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const-string v0, "zone_id"

    .line 3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public f(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "zone_ids"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "zone_id"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
