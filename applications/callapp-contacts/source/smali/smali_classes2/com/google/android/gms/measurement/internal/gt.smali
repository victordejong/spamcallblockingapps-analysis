.class final Lcom/google/android/gms/measurement/internal/gt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/google/android/gms/measurement/internal/gu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gu;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/gt;->e:Lcom/google/android/gms/measurement/internal/gu;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/gt;->a:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/gt;->b:Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/gt;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/gt;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/gt;->e:Lcom/google/android/gms/measurement/internal/gu;

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/gt;->a:Z

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/gt;->b:Landroid/net/Uri;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/gt;->c:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/gt;->d:Ljava/lang/String;

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    .line 1
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    :try_start_0
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 1000
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 3
    sget-object v7, Lcom/google/android/gms/measurement/internal/dc;->ab:Lcom/google/android/gms/measurement/internal/da;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "Activity created with data \'referrer\' without required params"

    const-string v9, "_cis"

    const-string v10, "utm_medium"

    const-string v11, "utm_source"

    const-string v12, "utm_campaign"

    const-string v13, "gclid"

    if-nez v6, :cond_0

    :try_start_1
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2000
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 4
    sget-object v14, Lcom/google/android/gms/measurement/internal/dc;->ad:Lcom/google/android/gms/measurement/internal/da;

    .line 5
    invoke-virtual {v6, v8, v14}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 3000
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 6
    sget-object v14, Lcom/google/android/gms/measurement/internal/dc;->ac:Lcom/google/android/gms/measurement/internal/da;

    .line 7
    invoke-virtual {v6, v8, v14}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v6

    .line 9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_1
    :goto_0
    move-object v6, v8

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 11
    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 12
    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 13
    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 18
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v6

    .line 11000
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    .line 19
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v14, "https://google.com/search?"

    .line 14
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 17
    :cond_4
    new-instance v15, Ljava/lang/String;

    .line 14
    invoke-direct {v15, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v14, v15

    .line 15
    :goto_1
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 16
    invoke-virtual {v6, v14}, Lcom/google/android/gms/measurement/internal/ju;->a(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v14, "referrer"

    .line 17
    invoke-virtual {v6, v9, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_2
    const-string v14, "_cmp"

    if-eqz v0, :cond_7

    .line 9
    :try_start_2
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/ju;->a(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v3, "intent"

    .line 22
    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 4000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 23
    sget-object v9, Lcom/google/android/gms/measurement/internal/dc;->ab:Lcom/google/android/gms/measurement/internal/da;

    .line 24
    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 25
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v6, :cond_6

    .line 26
    invoke-virtual {v6, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 27
    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v9

    const-string v9, "_cer"

    const-string v15, "gclid=%s"

    invoke-static {v15, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    .line 29
    invoke-virtual {v3, v4, v14, v0}, Lcom/google/android/gms/measurement/internal/gv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/gv;->b:Lcom/google/android/gms/measurement/internal/kc;

    .line 30
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/kc;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_7
    move-object v0, v8

    :cond_8
    :goto_3
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 31
    sget-object v9, Lcom/google/android/gms/measurement/internal/dc;->ad:Lcom/google/android/gms/measurement/internal/da;

    .line 32
    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 6000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 33
    sget-object v9, Lcom/google/android/gms/measurement/internal/dc;->ac:Lcom/google/android/gms/measurement/internal/da;

    .line 34
    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v3

    if-nez v3, :cond_a

    if-eqz v6, :cond_a

    .line 35
    invoke-virtual {v6, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v0, :cond_9

    .line 36
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    const-string v3, "_lgclid"

    .line 37
    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 38
    invoke-virtual {v0, v3, v9}, Lcom/google/android/gms/measurement/internal/gv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    :cond_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_5

    :cond_b
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 7000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Activity created with referrer"

    .line 41
    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 8000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 42
    sget-object v3, Lcom/google/android/gms/measurement/internal/dc;->ac:Lcom/google/android/gms/measurement/internal/da;

    .line 43
    invoke-virtual {v0, v8, v3}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "_ldl"

    if-eqz v0, :cond_d

    if-eqz v6, :cond_c

    :try_start_3
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    .line 44
    invoke-virtual {v0, v4, v14, v6}, Lcom/google/android/gms/measurement/internal/gv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/gv;->b:Lcom/google/android/gms/measurement/internal/kc;

    .line 45
    invoke-virtual {v0, v4, v6}, Lcom/google/android/gms/measurement/internal/kc;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    .line 48
    :cond_c
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 9000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v4, "Referrer does not contain valid parameters"

    .line 47
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    :goto_4
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    .line 48
    invoke-virtual {v0, v3, v8}, Lcom/google/android/gms/measurement/internal/gv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 49
    :cond_d
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 50
    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 51
    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 52
    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "utm_term"

    .line 53
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "utm_content"

    .line 54
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 57
    :cond_e
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    .line 58
    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/gv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    :goto_5
    return-void

    :cond_10
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 10000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    .line 56
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/gu;->a:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 12000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Throwable caught in handleReferrerForOnActivityCreated"

    .line 60
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
