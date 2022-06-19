.class public Ld2/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/q;

.field public final synthetic c:Landroid/support/v4/media/a;


# direct methods
.method public constructor <init>(Ld2/k0;Ld2/t0;Ld2/q;Landroid/support/v4/media/a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld2/n0;->a:Ld2/t0;

    iput-object p3, p0, Ld2/n0;->b:Ld2/q;

    iput-object p4, p0, Ld2/n0;->c:Landroid/support/v4/media/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ld2/n0;->a:Ld2/t0;

    .line 2
    iget-object v0, v0, Ld2/t0;->b:Ld2/f4;

    .line 3
    iget-object v1, p0, Ld2/n0;->b:Ld2/q;

    .line 4
    iget-object v2, v1, Ld2/q;->e:Ld2/t1;

    if-nez v2, :cond_0

    const-string v2, "iab"

    .line 5
    invoke-virtual {v0, v2}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ld2/f4;->e()I

    move-result v3

    if-lez v3, :cond_0

    .line 7
    new-instance v3, Ld2/t1;

    iget-object v4, v1, Ld2/q;->g:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Ld2/t1;-><init>(Ld2/f4;Ljava/lang/String;)V

    iput-object v3, v1, Ld2/q;->e:Ld2/t1;

    .line 8
    :cond_0
    iget-object v1, p0, Ld2/n0;->b:Ld2/q;

    const-string v2, "ad_id"

    .line 9
    invoke-virtual {v0, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    iput-object v2, v1, Ld2/q;->h:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Ld2/n0;->b:Ld2/q;

    const-string v2, "creative_id"

    .line 12
    invoke-virtual {v0, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Ld2/n0;->b:Ld2/q;

    const-string v2, "view_network_pass_filter"

    .line 15
    invoke-virtual {v0, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    iput-object v0, v1, Ld2/q;->n:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Ld2/n0;->b:Ld2/q;

    .line 18
    iget-object v0, v0, Ld2/q;->e:Ld2/t1;

    if-eqz v0, :cond_1

    .line 19
    iget v1, v0, Ld2/t1;->e:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 20
    :try_start_0
    invoke-virtual {v0, v1}, Ld2/t1;->a(Landroid/webkit/WebView;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "IllegalArgumentException when creating omid session"

    .line 21
    invoke-static {v1, v1, v2, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Ld2/n0;->c:Landroid/support/v4/media/a;

    iget-object v1, p0, Ld2/n0;->b:Ld2/q;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/a;->F(Ld2/q;)V

    return-void
.end method
