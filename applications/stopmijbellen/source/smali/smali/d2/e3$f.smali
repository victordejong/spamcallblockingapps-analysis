.class public Ld2/e3$f;
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
    iput-object p1, p0, Ld2/e3$f;->a:Ld2/e3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/e3$f;->a:Ld2/e3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v0, "clickOverride"

    .line 4
    invoke-virtual {p1, v0}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v0

    const-string v1, "url"

    .line 5
    invoke-virtual {v0, v1}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_session_id"

    .line 6
    invoke-virtual {p1, v1}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v1

    invoke-virtual {v1}, Ld2/f1;->l()Ld2/k0;

    move-result-object v1

    .line 8
    iget-object v2, v1, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld2/q;

    .line 10
    iget-object v1, v1, Ld2/k0;->f:Ljava/util/Map;

    .line 11
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld2/j;

    if-eqz v2, :cond_0

    .line 12
    iput-object v0, v2, Ld2/q;->j:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1, v0}, Ld2/j;->setClickOverride(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
