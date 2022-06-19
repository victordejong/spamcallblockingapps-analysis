.class final synthetic Lcom/google/android/gms/internal/ads/bbb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/baz;

.field private final b:Lcom/google/android/gms/internal/ads/crt;

.field private final c:Lcom/google/android/gms/internal/ads/crt;

.field private final d:Lcom/google/android/gms/internal/ads/crt;

.field private final e:Lcom/google/android/gms/internal/ads/crt;

.field private final f:Lcom/google/android/gms/internal/ads/crt;

.field private final g:Lorg/json/JSONObject;

.field private final h:Lcom/google/android/gms/internal/ads/crt;

.field private final i:Lcom/google/android/gms/internal/ads/crt;

.field private final j:Lcom/google/android/gms/internal/ads/crt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/baz;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbb;->a:Lcom/google/android/gms/internal/ads/baz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bbb;->b:Lcom/google/android/gms/internal/ads/crt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bbb;->c:Lcom/google/android/gms/internal/ads/crt;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bbb;->d:Lcom/google/android/gms/internal/ads/crt;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bbb;->e:Lcom/google/android/gms/internal/ads/crt;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bbb;->f:Lcom/google/android/gms/internal/ads/crt;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bbb;->g:Lorg/json/JSONObject;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/bbb;->h:Lcom/google/android/gms/internal/ads/crt;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/bbb;->i:Lcom/google/android/gms/internal/ads/crt;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/bbb;->j:Lcom/google/android/gms/internal/ads/crt;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbb;->a:Lcom/google/android/gms/internal/ads/baz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbb;->b:Lcom/google/android/gms/internal/ads/crt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bbb;->c:Lcom/google/android/gms/internal/ads/crt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bbb;->d:Lcom/google/android/gms/internal/ads/crt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bbb;->e:Lcom/google/android/gms/internal/ads/crt;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bbb;->f:Lcom/google/android/gms/internal/ads/crt;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bbb;->g:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bbb;->h:Lcom/google/android/gms/internal/ads/crt;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/bbb;->i:Lcom/google/android/gms/internal/ads/crt;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/bbb;->j:Lcom/google/android/gms/internal/ads/crt;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ayx;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ayx;->a(Ljava/util/List;)V

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/bu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ayx;->a(Lcom/google/android/gms/internal/ads/bu;)V

    .line 5
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/bu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ayx;->b(Lcom/google/android/gms/internal/ads/bu;)V

    .line 6
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/bn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ayx;->a(Lcom/google/android/gms/internal/ads/bn;)V

    .line 7
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/bbe;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ayx;->b(Ljava/util/List;)V

    .line 9
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/bbe;->b(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/ebu;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ayx;->a(Lcom/google/android/gms/internal/ads/ebu;)V

    .line 11
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/act;

    .line 12
    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ayx;->a(Lcom/google/android/gms/internal/ads/act;)V

    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ayx;->a(Landroid/view/View;)V

    .line 15
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->d()Lcom/google/android/gms/internal/ads/adn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ayx;->a(Lcom/google/android/gms/internal/ads/eba;)V

    .line 16
    :cond_0
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/act;

    .line 17
    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ayx;->b(Lcom/google/android/gms/internal/ads/act;)V

    .line 19
    :cond_1
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/bbt;

    .line 20
    iget v3, v1, Lcom/google/android/gms/internal/ads/bbt;->a:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 21
    :pswitch_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bbt;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bbt;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/ads/ayx;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :pswitch_1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bbt;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bbt;->d:Lcom/google/android/gms/internal/ads/bh;

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/ads/ayx;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bh;)V

    goto :goto_0

    .line 26
    :cond_2
    return-object v0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
