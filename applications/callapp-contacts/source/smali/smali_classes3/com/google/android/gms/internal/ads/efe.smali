.class final Lcom/google/android/gms/internal/ads/efe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/view/View;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/efb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/efb;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/efe;->b:Lcom/google/android/gms/internal/ads/efb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/efe;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efe;->b:Lcom/google/android/gms/internal/ads/efb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/efe;->a:Landroid/view/View;

    .line 1085
    :try_start_0
    new-instance v11, Lcom/google/android/gms/internal/ads/eev;

    iget v3, v0, Lcom/google/android/gms/internal/ads/efb;->e:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/efb;->f:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/efb;->g:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/efb;->h:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/efb;->i:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/efb;->j:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/efb;->k:I

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/efb;->n:Z

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/eev;-><init>(IIIIIIIZ)V

    .line 1086
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/internal/ads/eex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/eex;->b()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1088
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/efb;->l:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1090
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/aq;->O:Lcom/google/android/gms/internal/ads/af;

    .line 1092
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v4

    .line 1093
    check-cast v4, Ljava/lang/String;

    const-string v5, "id"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1094
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1095
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/efb;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 1097
    :cond_0
    invoke-virtual {v0, v1, v11}, Lcom/google/android/gms/internal/ads/efb;->a(Landroid/view/View;Lcom/google/android/gms/internal/ads/eev;)Lcom/google/android/gms/internal/ads/eff;

    move-result-object v1

    .line 1098
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/eev;->b()V

    .line 1099
    iget v2, v1, Lcom/google/android/gms/internal/ads/eff;->a:I

    if-nez v2, :cond_1

    iget v2, v1, Lcom/google/android/gms/internal/ads/eff;->b:I

    if-nez v2, :cond_1

    return-void

    .line 1101
    :cond_1
    iget v2, v1, Lcom/google/android/gms/internal/ads/eff;->b:I

    if-nez v2, :cond_2

    .line 2091
    iget v2, v11, Lcom/google/android/gms/internal/ads/eev;->b:I

    if-nez v2, :cond_2

    return-void

    .line 1103
    :cond_2
    iget v1, v1, Lcom/google/android/gms/internal/ads/eff;->b:I

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/efb;->d:Lcom/google/android/gms/internal/ads/eey;

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/eey;->a(Lcom/google/android/gms/internal/ads/eev;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 1105
    :cond_3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/efb;->d:Lcom/google/android/gms/internal/ads/eey;

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/eey;->c(Lcom/google/android/gms/internal/ads/eev;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Exception in fetchContentOnUIThread"

    .line 1108
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1109
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v1

    const-string v2, "ContentFetchTask.fetchContent"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/yd;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
