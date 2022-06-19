.class public Ld2/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ld2/x3;

.field public final synthetic c:Ld2/j0;

.field public final synthetic d:Ld2/k0;


# direct methods
.method public constructor <init>(Ld2/k0;Ljava/lang/String;Ld2/x3;Ld2/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/s0;->d:Ld2/k0;

    iput-object p2, p0, Ld2/s0;->a:Ljava/lang/String;

    iput-object p3, p0, Ld2/s0;->b:Ld2/x3;

    iput-object p4, p0, Ld2/s0;->c:Ld2/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Ld2/s0;->d:Ld2/k0;

    .line 2
    iget-object v0, v0, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iget-object v1, p0, Ld2/s0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/q;

    .line 4
    iget-object v1, p0, Ld2/s0;->d:Ld2/k0;

    .line 5
    iget-object v1, v1, Ld2/k0;->f:Ljava/util/Map;

    .line 6
    iget-object v2, p0, Ld2/s0;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Ld2/q;->e:Ld2/t1;

    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Ld2/j;->getOmidManager()Ld2/t1;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v1, -0x1

    goto :goto_1

    .line 9
    :cond_2
    iget v1, v0, Ld2/t1;->e:I

    :goto_1
    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 10
    iget-object v1, p0, Ld2/s0;->b:Ld2/x3;

    invoke-virtual {v0, v1}, Ld2/t1;->a(Landroid/webkit/WebView;)V

    .line 11
    iget-object v1, p0, Ld2/s0;->c:Ld2/j0;

    invoke-virtual {v0, v1}, Ld2/t1;->b(Ld2/j0;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, "IllegalArgumentException when creating omid session"

    .line 12
    invoke-static {v0}, Landroidx/recyclerview/widget/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 13
    invoke-static {v2, v2, v0, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_3
    :goto_2
    return-void
.end method
