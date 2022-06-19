.class final Lcom/callapp/contacts/util/ads/TCF2Manager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/c/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/TCF2Manager;->a(Landroid/app/Activity;Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/google/android/c/c;

.field final synthetic c:Z

.field final synthetic d:Lcom/callapp/contacts/manager/task/OutcomeListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/google/android/c/c;ZLcom/callapp/contacts/manager/task/OutcomeListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1;->b:Lcom/google/android/c/c;

    iput-boolean p3, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1;->c:Z

    iput-object p4, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1;->d:Lcom/callapp/contacts/manager/task/OutcomeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1;->a:Landroid/app/Activity;

    new-instance v1, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;-><init>(Lcom/callapp/contacts/util/ads/TCF2Manager$1;)V

    new-instance v2, Lcom/callapp/contacts/util/ads/TCF2Manager$1$2;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/util/ads/TCF2Manager$1$2;-><init>(Lcom/callapp/contacts/util/ads/TCF2Manager$1;)V

    .line 1002
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/bb;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/consent_sdk/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/bb;->b()Lcom/google/android/gms/internal/consent_sdk/aa;

    move-result-object v0

    .line 1007
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/be;->a()V

    .line 1008
    iget-object v3, v0, Lcom/google/android/gms/internal/consent_sdk/aa;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/consent_sdk/ad;

    if-nez v3, :cond_0

    .line 1010
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzk;

    const/4 v1, 0x3

    const-string v3, "No available form can be built."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;)V

    .line 1011
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzk;->a()Lcom/google/android/c/e;

    move-result-object v0

    .line 1012
    invoke-interface {v2, v0}, Lcom/google/android/c/f$a;->a(Lcom/google/android/c/e;)V

    return-void

    .line 1014
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/aa;->a:Lcom/google/android/gms/internal/consent_sdk/bu;

    .line 1015
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/bu;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/v;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/consent_sdk/v;->a(Lcom/google/android/gms/internal/consent_sdk/ad;)Lcom/google/android/gms/internal/consent_sdk/v;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/v;->a()Lcom/google/android/gms/internal/consent_sdk/s;

    move-result-object v0

    .line 1016
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/s;->a()Lcom/google/android/gms/internal/consent_sdk/u;

    move-result-object v0

    .line 2013
    iget-object v3, v0, Lcom/google/android/gms/internal/consent_sdk/u;->d:Lcom/google/android/gms/internal/consent_sdk/bu;

    invoke-interface {v3}, Lcom/google/android/gms/internal/consent_sdk/bu;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/consent_sdk/zzbe;

    iput-object v3, v0, Lcom/google/android/gms/internal/consent_sdk/u;->e:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    .line 2014
    iget-object v3, v0, Lcom/google/android/gms/internal/consent_sdk/u;->e:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    const/4 v4, 0x0

    .line 2015
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->setBackgroundColor(I)V

    .line 2016
    invoke-virtual {v3}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2017
    new-instance v4, Lcom/google/android/gms/internal/consent_sdk/ag;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/internal/consent_sdk/ag;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbe;Lcom/google/android/gms/internal/consent_sdk/ah;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2018
    iget-object v3, v0, Lcom/google/android/gms/internal/consent_sdk/u;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Lcom/google/android/gms/internal/consent_sdk/y;

    invoke-direct {v4, v1, v2, v5}, Lcom/google/android/gms/internal/consent_sdk/y;-><init>(Lcom/google/android/c/f$b;Lcom/google/android/c/f$a;Lcom/google/android/gms/internal/consent_sdk/w;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2019
    iget-object v6, v0, Lcom/google/android/gms/internal/consent_sdk/u;->e:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    iget-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/u;->c:Lcom/google/android/gms/internal/consent_sdk/ad;

    .line 3005
    iget-object v7, v1, Lcom/google/android/gms/internal/consent_sdk/ad;->a:Ljava/lang/String;

    .line 2020
    iget-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/u;->c:Lcom/google/android/gms/internal/consent_sdk/ad;

    .line 3006
    iget-object v8, v1, Lcom/google/android/gms/internal/consent_sdk/ad;->b:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v9, "text/html"

    const-string v10, "UTF-8"

    .line 2022
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/be;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/x;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/consent_sdk/x;-><init>(Lcom/google/android/gms/internal/consent_sdk/u;)V

    const-wide/16 v3, 0x2710

    .line 2025
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
