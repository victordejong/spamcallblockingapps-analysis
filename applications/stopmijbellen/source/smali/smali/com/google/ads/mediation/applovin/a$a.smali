.class public Lcom/google/ads/mediation/applovin/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/applovin/a;->b(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/mediation/applovin/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/google/ads/mediation/applovin/a;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/applovin/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/applovin/a$a;->b:Lcom/google/ads/mediation/applovin/a;

    iput-object p2, p0, Lcom/google/ads/mediation/applovin/a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSdkInitialized(Lcom/applovin/sdk/AppLovinSdkConfiguration;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/applovin/a$a;->b:Lcom/google/ads/mediation/applovin/a;

    .line 2
    iget-object p1, p1, Lcom/google/ads/mediation/applovin/a;->a:Ljava/util/HashMap;

    .line 3
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/a$a;->a:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/google/ads/mediation/applovin/a$a;->b:Lcom/google/ads/mediation/applovin/a;

    .line 5
    iget-object p1, p1, Lcom/google/ads/mediation/applovin/a;->b:Ljava/util/HashMap;

    .line 6
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/a$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/mediation/applovin/a$b;

    .line 8
    iget-object v2, p0, Lcom/google/ads/mediation/applovin/a$a;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/ads/mediation/applovin/a$b;->onInitializeSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method
