.class public final Lcom/google/android/gms/internal/ads/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/internal/ads/af<",
            "*>;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/internal/ads/af<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/internal/ads/af<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/al;->a:Ljava/util/Collection;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/al;->b:Ljava/util/Collection;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/al;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/al;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/af;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 28
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2001
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "gad:dynamite_module:experiment_id"

    const-string v3, ""

    .line 2002
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/bz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bz;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/av;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/bz;)V

    .line 2003
    sget-object v2, Lcom/google/android/gms/internal/ads/cn;->a:Lcom/google/android/gms/internal/ads/bz;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/av;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/bz;)V

    .line 2004
    sget-object v2, Lcom/google/android/gms/internal/ads/cn;->b:Lcom/google/android/gms/internal/ads/bz;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/av;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/bz;)V

    .line 2005
    sget-object v2, Lcom/google/android/gms/internal/ads/cn;->c:Lcom/google/android/gms/internal/ads/bz;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/av;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/bz;)V

    .line 2006
    sget-object v2, Lcom/google/android/gms/internal/ads/cn;->d:Lcom/google/android/gms/internal/ads/bz;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/av;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/bz;)V

    .line 2007
    sget-object v2, Lcom/google/android/gms/internal/ads/cn;->e:Lcom/google/android/gms/internal/ads/bz;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/av;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/bz;)V

    .line 2008
    sget-object v2, Lcom/google/android/gms/internal/ads/cn;->k:Lcom/google/android/gms/internal/ads/bz;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/av;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/bz;)V

    .line 2009
    sget-object v2, Lcom/google/android/gms/internal/ads/cn;->f:Lcom/google/android/gms/internal/ads/bz;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/av;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/bz;)V

    .line 2010
    sget-object v2, Lcom/google/android/gms/internal/ads/cn;->g:Lcom/google/android/gms/internal/ads/bz;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/av;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/bz;)V

    .line 2011
    sget-object v2, Lcom/google/android/gms/internal/ads/cn;->h:Lcom/google/android/gms/internal/ads/bz;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/av;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/bz;)V

    .line 2012
    sget-object v2, Lcom/google/android/gms/internal/ads/cn;->i:Lcom/google/android/gms/internal/ads/bz;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/av;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/bz;)V

    .line 2013
    sget-object v2, Lcom/google/android/gms/internal/ads/cn;->j:Lcom/google/android/gms/internal/ads/bz;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/av;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/bz;)V

    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final a(Landroid/content/SharedPreferences$Editor;Lorg/json/JSONObject;)V
    .locals 4

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/al;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/af;

    .line 1017
    iget v2, v1, Lcom/google/android/gms/internal/ads/af;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 14
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/af;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/af;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 18
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "flag_configuration"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void

    :cond_2
    const-string p1, "Flag Json is null."

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/za;->zzex(Ljava/lang/String;)V

    return-void
.end method
