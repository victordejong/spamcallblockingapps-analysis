.class final Lcom/google/android/gms/measurement/internal/fz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/gv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fz;->a:Lcom/google/android/gms/measurement/internal/gv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fz;->a:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/gv;->b:Lcom/google/android/gms/measurement/internal/kc;

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/kc;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1001
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 1002
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/kc;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1003
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/kc;->a()Z

    move-result v1

    const-string v2, "_cc"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/kc;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1004
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/ee;->q:Lcom/google/android/gms/measurement/internal/ed;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/ed;->a(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    .line 1005
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "source"

    const-string v4, "(not set)"

    .line 1006
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "medium"

    .line 1007
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_cis"

    const-string v4, "intent"

    .line 1008
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x1

    .line 1009
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/kc;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1010
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->f()Lcom/google/android/gms/measurement/internal/gv;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_cmpx"

    .line 1011
    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/gv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 1025
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/kc;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1012
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/ee;->q:Lcom/google/android/gms/measurement/internal/ed;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ed;->a()Ljava/lang/String;

    move-result-object v1

    .line 1013
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/kc;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1014
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->d:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Cache still valid but referrer not found"

    .line 1014
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1024
    :cond_1
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/kc;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1015
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/ee;->r:Lcom/google/android/gms/measurement/internal/ea;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/ea;->a()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    div-long/2addr v4, v6

    const-wide/16 v8, -0x1

    add-long/2addr v4, v8

    mul-long v4, v4, v6

    .line 1016
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v6, Landroid/os/Bundle;

    .line 1017
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    new-instance v7, Landroid/util/Pair;

    .line 1018
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1019
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1020
    invoke-virtual {v1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1021
    :cond_2
    iget-object v1, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/kc;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1022
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->f()Lcom/google/android/gms/measurement/internal/gv;

    move-result-object v1

    iget-object v2, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "_cmp"

    .line 1023
    invoke-virtual {v1, v2, v5, v4}, Lcom/google/android/gms/measurement/internal/gv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1014
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/kc;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1024
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/ee;->q:Lcom/google/android/gms/measurement/internal/ed;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/ed;->a(Ljava/lang/String;)V

    .line 1011
    :goto_2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/kc;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1025
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ee;->r:Lcom/google/android/gms/measurement/internal/ea;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(J)V

    :cond_3
    return-void
.end method
