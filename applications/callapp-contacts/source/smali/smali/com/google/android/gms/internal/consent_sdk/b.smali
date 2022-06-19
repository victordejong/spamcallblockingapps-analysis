.class final Lcom/google/android/gms/internal/consent_sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/consent_sdk/cr;

.field private final b:Lcom/google/android/gms/internal/consent_sdk/az;

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/consent_sdk/cr;Lcom/google/android/gms/internal/consent_sdk/az;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/b;->c:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/b;->d:I

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/b;->a:Lcom/google/android/gms/internal/consent_sdk/cr;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/b;->b:Lcom/google/android/gms/internal/consent_sdk/az;

    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/consent_sdk/cq;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/consent_sdk/zzk;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/cp;->a:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/b;->b:Lcom/google/android/gms/internal/consent_sdk/az;

    iget v1, v1, Lcom/google/android/gms/internal/consent_sdk/az;->a:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    packed-switch v0, :pswitch_data_0

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzk;

    const-string v1, "Invalid response from server."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;)V

    throw v0

    .line 25
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzk;

    const-string v1, "Publisher misconfiguration: "

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/b;->b:Lcom/google/android/gms/internal/consent_sdk/az;

    iget-object v2, v2, Lcom/google/android/gms/internal/consent_sdk/az;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;)V

    throw v0

    .line 24
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzk;

    const-string v1, "Invalid response from server: "

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/b;->b:Lcom/google/android/gms/internal/consent_sdk/az;

    iget-object v3, v3, Lcom/google/android/gms/internal/consent_sdk/az;->d:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_1
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;)V

    throw v0

    .line 21
    :pswitch_2
    iput v4, p0, Lcom/google/android/gms/internal/consent_sdk/b;->c:I

    .line 22
    iput v3, p0, Lcom/google/android/gms/internal/consent_sdk/b;->d:I

    goto :goto_2

    .line 18
    :pswitch_3
    iput v4, p0, Lcom/google/android/gms/internal/consent_sdk/b;->c:I

    .line 19
    iput v2, p0, Lcom/google/android/gms/internal/consent_sdk/b;->d:I

    goto :goto_2

    .line 15
    :pswitch_4
    iput v4, p0, Lcom/google/android/gms/internal/consent_sdk/b;->c:I

    .line 16
    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/b;->d:I

    goto :goto_2

    .line 12
    :pswitch_5
    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/b;->c:I

    .line 13
    iput v3, p0, Lcom/google/android/gms/internal/consent_sdk/b;->d:I

    goto :goto_2

    .line 9
    :pswitch_6
    iput v2, p0, Lcom/google/android/gms/internal/consent_sdk/b;->c:I

    .line 10
    iput v3, p0, Lcom/google/android/gms/internal/consent_sdk/b;->d:I

    .line 28
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/b;->b:Lcom/google/android/gms/internal/consent_sdk/az;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/az;->b:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v0, :cond_2

    move-object v6, v5

    goto :goto_3

    .line 31
    :cond_2
    new-instance v6, Lcom/google/android/gms/internal/consent_sdk/ad;

    iget-object v7, p0, Lcom/google/android/gms/internal/consent_sdk/b;->b:Lcom/google/android/gms/internal/consent_sdk/az;

    iget-object v7, v7, Lcom/google/android/gms/internal/consent_sdk/az;->c:Ljava/lang/String;

    invoke-direct {v6, v7, v0}, Lcom/google/android/gms/internal/consent_sdk/ad;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/b;->a:Lcom/google/android/gms/internal/consent_sdk/cr;

    .line 1006
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/cr;->c:Lcom/google/android/gms/internal/consent_sdk/m;

    .line 33
    new-instance v7, Ljava/util/HashSet;

    iget-object v8, p0, Lcom/google/android/gms/internal/consent_sdk/b;->b:Lcom/google/android/gms/internal/consent_sdk/az;

    iget-object v8, v8, Lcom/google/android/gms/internal/consent_sdk/az;->e:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1015
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/m;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v8, "stored_info"

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/b;->b:Lcom/google/android/gms/internal/consent_sdk/az;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/az;->f:Ljava/util/List;

    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/consent_sdk/ay;

    .line 37
    sget-object v8, Lcom/google/android/gms/internal/consent_sdk/cp;->b:[I

    iget v9, v7, Lcom/google/android/gms/internal/consent_sdk/ay;->a:I

    sub-int/2addr v9, v2

    aget v8, v8, v9

    if-eq v8, v2, :cond_6

    if-eq v8, v1, :cond_5

    if-eq v8, v4, :cond_4

    goto :goto_5

    :cond_4
    const-string v8, "clear"

    goto :goto_6

    :cond_5
    const-string v8, "write"

    goto :goto_6

    :cond_6
    :goto_5
    move-object v8, v5

    :goto_6
    if-eqz v8, :cond_3

    .line 44
    iget-object v9, p0, Lcom/google/android/gms/internal/consent_sdk/b;->a:Lcom/google/android/gms/internal/consent_sdk/cr;

    .line 2008
    iget-object v9, v9, Lcom/google/android/gms/internal/consent_sdk/cr;->a:Lcom/google/android/gms/internal/consent_sdk/bx;

    .line 44
    iget-object v7, v7, Lcom/google/android/gms/internal/consent_sdk/ay;->b:Ljava/lang/String;

    new-array v10, v2, [Lcom/google/android/gms/internal/consent_sdk/cb;

    iget-object v11, p0, Lcom/google/android/gms/internal/consent_sdk/b;->a:Lcom/google/android/gms/internal/consent_sdk/cr;

    .line 3007
    iget-object v11, v11, Lcom/google/android/gms/internal/consent_sdk/cr;->b:Lcom/google/android/gms/internal/consent_sdk/k;

    aput-object v11, v10, v3

    .line 46
    invoke-virtual {v9, v8, v7, v10}, Lcom/google/android/gms/internal/consent_sdk/bx;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/consent_sdk/cb;)V

    goto :goto_4

    .line 48
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/cq;

    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/b;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/consent_sdk/b;->d:I

    invoke-direct {v0, v1, v2, v6, v5}, Lcom/google/android/gms/internal/consent_sdk/cq;-><init>(IILcom/google/android/gms/internal/consent_sdk/ad;Lcom/google/android/gms/internal/consent_sdk/cp;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
