.class public Ld2/f1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/f1;->g(Ld2/l;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/f1;


# direct methods
.method public constructor <init>(Ld2/f1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/f1$a;->a:Ld2/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld2/f1$a;->a:Ld2/f1;

    .line 2
    iget-boolean v1, v0, Ld2/f1;->C:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "zone_id"

    .line 4
    invoke-virtual {v1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v3, v0, Ld2/f1;->u:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget-object v0, v0, Ld2/f1;->u:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/s;

    goto :goto_0

    .line 7
    :cond_1
    new-instance v3, Ld2/s;

    invoke-direct {v3, v1}, Ld2/s;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v0, v0, Ld2/f1;->u:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    .line 9
    :goto_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v1, "reward"

    .line 11
    invoke-virtual {p1, v1}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v1

    const-string v3, "reward_name"

    .line 12
    invoke-virtual {v1, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    iput-object v3, v0, Ld2/s;->b:Ljava/lang/String;

    const-string v3, "reward_amount"

    .line 14
    invoke-static {v1, v3}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Ld2/s;->e:I

    const-string v3, "views_per_reward"

    .line 15
    invoke-static {v1, v3}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    const-string v3, "views_until_reward"

    .line 16
    invoke-static {v1, v3}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    const-string v1, "rewarded"

    .line 17
    invoke-static {p1, v1}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Ld2/s;->g:Z

    const-string v1, "status"

    .line 18
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    const-string v1, "type"

    .line 19
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ld2/s;->c:I

    const-string v1, "play_interval"

    .line 20
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ld2/s;->d:I

    .line 21
    invoke-virtual {p1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    iput-object p1, v0, Ld2/s;->a:Ljava/lang/String;

    :goto_1
    return-void
.end method
