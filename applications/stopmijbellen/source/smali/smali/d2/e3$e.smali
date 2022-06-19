.class public Ld2/e3$e;
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
    iput-object p1, p0, Ld2/e3$e;->a:Ld2/e3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld2/e3$e;->a:Ld2/e3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v0, "ad_session_id"

    .line 4
    invoke-virtual {p1, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "orientation"

    .line 5
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result p1

    .line 6
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v1

    invoke-virtual {v1}, Ld2/f1;->l()Ld2/k0;

    move-result-object v1

    .line 7
    iget-object v2, v1, Ld2/k0;->f:Ljava/util/Map;

    .line 8
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld2/j;

    .line 9
    iget-object v1, v1, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/q;

    .line 11
    sget-object v3, Ld2/t;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {v2, p1}, Ld2/j;->setOrientation(I)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 13
    iput p1, v1, Ld2/q;->f:I

    :cond_1
    :goto_0
    const/4 p1, 0x1

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    const-string v1, "Invalid ad session id sent with set orientation properties message: "

    .line 14
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 15
    invoke-static {v1, v1, v0, p1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    goto :goto_2

    .line 16
    :cond_2
    instance-of p1, v3, Ld2/w;

    if-eqz p1, :cond_4

    .line 17
    check-cast v3, Ld2/w;

    if-nez v2, :cond_3

    .line 18
    iget p1, v1, Ld2/q;->f:I

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {v2}, Ld2/j;->getOrientation()I

    move-result p1

    .line 20
    :goto_1
    invoke-virtual {v3, p1}, Ld2/w;->b(I)V

    :cond_4
    :goto_2
    return-void
.end method
