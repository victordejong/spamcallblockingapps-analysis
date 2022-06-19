.class public Ld2/e3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/e3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/e3;


# direct methods
.method public constructor <init>(Ld2/e3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/e3$a;->a:Ld2/e3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld2/e3$a;->a:Ld2/e3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    .line 4
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v1

    invoke-virtual {v1}, Ld2/f1;->l()Ld2/k0;

    move-result-object v1

    const-string v2, "ad_session_id"

    .line 5
    invoke-virtual {p1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v2, v1, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld2/q;

    .line 8
    iget-object v1, v1, Ld2/k0;->f:Ljava/util/Map;

    .line 9
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/j;

    if-eqz v2, :cond_0

    .line 10
    iget-object v3, v2, Ld2/q;->a:Landroid/support/v4/media/a;

    if-eqz v3, :cond_0

    .line 11
    iget-object v3, v2, Ld2/q;->c:Ld2/j0;

    if-nez v3, :cond_1

    :cond_0
    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v1}, Ld2/j;->getListener()Ld2/k;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 13
    new-instance v1, Ld2/t0;

    .line 14
    iget-object v2, v2, Ld2/q;->c:Ld2/j0;

    .line 15
    iget v2, v2, Ld2/j0;->k:I

    const-string v3, "AdUnit.make_in_app_purchase"

    .line 16
    invoke-direct {v1, v3, v2}, Ld2/t0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    .line 17
    :cond_2
    invoke-virtual {v0, p1}, Ld2/e3;->b(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p1}, Ld2/e3;->c(Ljava/lang/String;)Z

    :cond_3
    :goto_0
    return-void
.end method
