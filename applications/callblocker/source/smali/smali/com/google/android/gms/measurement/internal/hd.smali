.class final Lcom/google/android/gms/measurement/internal/hd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/gk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/gk;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/gk;Lcom/google/android/gms/measurement/internal/gl;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/hd;-><init>(Lcom/google/android/gms/measurement/internal/gk;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/hd;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/hd;->a(ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final a(ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->ai:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->ak:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->aj:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v4

    .line 34
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v1

    .line 49
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    const-string/jumbo v4, "_cis"

    const-string/jumbo v5, "intent"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->ai:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 54
    const-string/jumbo v4, "gclid"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    const-string/jumbo v4, "gclid"

    .line 55
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    const-string/jumbo v4, "_cer"

    const-string/jumbo v5, "gclid=%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "gclid"

    .line 57
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    const-string/jumbo v5, "_cmp"

    invoke-virtual {v4, p3, v5, v1}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 60
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->aP:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 61
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/gk;->b:Lcom/google/android/gms/measurement/internal/kc;

    invoke-virtual {v4, p3, v1}, Lcom/google/android/gms/measurement/internal/kc;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 62
    :cond_3
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->ak:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    .line 63
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->aj:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    .line 64
    const-string/jumbo v4, "gclid"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_4

    const-string/jumbo v4, "gclid"

    .line 65
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 66
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    const-string/jumbo v4, "auto"

    const-string/jumbo v5, "_lgclid"

    const-string/jumbo v6, "gclid"

    .line 67
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 68
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 69
    :cond_5
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 95
    :cond_6
    :goto_1
    return-void

    .line 36
    :cond_7
    const-string/jumbo v0, "gclid"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "utm_campaign"

    .line 37
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "utm_source"

    .line 38
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "utm_medium"

    .line 39
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v4, "Activity created with data \'referrer\' without required params"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 41
    goto/16 :goto_0

    .line 42
    :cond_8
    const-string/jumbo v5, "https://google.com/search?"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    const-string/jumbo v4, "_cis"

    const-string/jumbo v5, "referrer"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Throwable caught in handleReferrerForOnActivityCreated"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 42
    :cond_9
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 71
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v4, "Activity created with referrer"

    invoke-virtual {v1, v4, p4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->aj:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 73
    if-eqz v0, :cond_c

    .line 74
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    const-string/jumbo v2, "_cmp"

    invoke-virtual {v1, p3, v2, v0}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 75
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->aP:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 76
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/gk;->b:Lcom/google/android/gms/measurement/internal/kc;

    invoke-virtual {v1, p3, v0}, Lcom/google/android/gms/measurement/internal/kc;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 78
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    const-string/jumbo v1, "auto"

    const-string/jumbo v2, "_ldl"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto/16 :goto_1

    .line 77
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Referrer does not contain valid parameters"

    invoke-virtual {v0, v1, p4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 80
    :cond_d
    const-string/jumbo v0, "gclid"

    .line 81
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "utm_campaign"

    .line 82
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "utm_source"

    .line 83
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "utm_medium"

    .line 84
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "utm_term"

    .line 85
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "utm_content"

    .line 86
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    move v0, v2

    .line 87
    :goto_4
    if-nez v0, :cond_10

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Activity created with data \'referrer\' without required params"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    move v0, v3

    .line 86
    goto :goto_4

    .line 90
    :cond_10
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    const-string/jumbo v1, "auto"

    const-string/jumbo v2, "_ldl"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p4, v3}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_11
    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "onActivityCreated"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ef;->e()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/ho;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 25
    :goto_0
    return-void

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 10
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/Uri;->isHierarchical()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ef;->e()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/ho;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 13
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    const-string/jumbo v4, "gs"

    .line 16
    :goto_1
    const-string/jumbo v0, "referrer"

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 17
    if-nez p2, :cond_4

    const/4 v2, 0x1

    .line 18
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/measurement/internal/hh;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/hh;-><init>(Lcom/google/android/gms/measurement/internal/hd;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v6, v0}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ef;->e()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/ho;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 15
    :cond_3
    :try_start_3
    const-string/jumbo v4, "auto"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 17
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 22
    :catch_0
    move-exception v0

    .line 23
    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Throwable caught in onActivityCreated"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ef;->e()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/ho;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ef;->e()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/ho;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 27
    throw v0
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ef;->e()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/ho;->c(Landroid/app/Activity;)V

    .line 97
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ef;->e()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/ho;->b(Landroid/app/Activity;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ef;->g()Lcom/google/android/gms/measurement/internal/iz;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/measurement/internal/jb;

    invoke-direct {v4, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/jb;-><init>(Lcom/google/android/gms/measurement/internal/iz;J)V

    .line 102
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ef;->g()Lcom/google/android/gms/measurement/internal/iz;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/measurement/internal/iy;

    invoke-direct {v4, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/iy;-><init>(Lcom/google/android/gms/measurement/internal/iz;J)V

    .line 107
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ef;->e()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/ho;->a(Landroid/app/Activity;)V

    .line 109
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ef;->e()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/ho;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 111
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 2
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 3
    return-void
.end method
