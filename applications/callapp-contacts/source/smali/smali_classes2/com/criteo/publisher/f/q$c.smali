.class final Lcom/criteo/publisher/f/q$c;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/f/q;->a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/model/o;

.field final synthetic b:Lcom/criteo/publisher/model/r;

.field final synthetic c:Lcom/criteo/publisher/f/q;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/f/q;Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/criteo/publisher/f/q$c;->c:Lcom/criteo/publisher/f/q;

    iput-object p2, p0, Lcom/criteo/publisher/f/q$c;->a:Lcom/criteo/publisher/model/o;

    iput-object p3, p0, Lcom/criteo/publisher/f/q$c;->b:Lcom/criteo/publisher/model/r;

    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    return-void
.end method

.method private static synthetic a(ZJZLcom/criteo/publisher/model/s;Lcom/criteo/publisher/f/s$a;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 159
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/criteo/publisher/f/s$a;->b(Ljava/lang/Long;)Lcom/criteo/publisher/f/s$a;

    .line 160
    invoke-virtual {p5, v0}, Lcom/criteo/publisher/f/s$a;->c(Z)Lcom/criteo/publisher/f/s$a;

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 162
    invoke-virtual {p5, v0}, Lcom/criteo/publisher/f/s$a;->c(Z)Lcom/criteo/publisher/f/s$a;

    return-void

    .line 164
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/criteo/publisher/f/s$a;->b(Ljava/lang/Long;)Lcom/criteo/publisher/f/s$a;

    .line 165
    invoke-virtual {p4}, Lcom/criteo/publisher/model/s;->l()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/criteo/publisher/f/s$a;->a(Ljava/lang/Integer;)Lcom/criteo/publisher/f/s$a;

    return-void
.end method

.method public static synthetic lambda$toVDnbVxH0MEMfnJ8vjbKAjUZ1c(ZJZLcom/criteo/publisher/model/s;Lcom/criteo/publisher/f/s$a;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/criteo/publisher/f/q$c;->a(ZJZLcom/criteo/publisher/model/s;Lcom/criteo/publisher/f/s$a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    .line 149
    iget-object v0, p0, Lcom/criteo/publisher/f/q$c;->c:Lcom/criteo/publisher/f/q;

    invoke-static {v0}, Lcom/criteo/publisher/f/q;->c(Lcom/criteo/publisher/f/q;)Lcom/criteo/publisher/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/criteo/publisher/h;->a()J

    move-result-wide v7

    .line 151
    iget-object v0, p0, Lcom/criteo/publisher/f/q$c;->a:Lcom/criteo/publisher/model/o;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/o;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/model/q;

    .line 152
    invoke-virtual {v1}, Lcom/criteo/publisher/model/q;->a()Ljava/lang/String;

    move-result-object v9

    .line 153
    iget-object v1, p0, Lcom/criteo/publisher/f/q$c;->b:Lcom/criteo/publisher/model/r;

    invoke-virtual {v1, v9}, Lcom/criteo/publisher/model/r;->a(Ljava/lang/String;)Lcom/criteo/publisher/model/s;

    move-result-object v6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v6, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v6, :cond_2

    .line 155
    invoke-virtual {v6}, Lcom/criteo/publisher/model/s;->n()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 157
    :goto_2
    iget-object v1, p0, Lcom/criteo/publisher/f/q$c;->c:Lcom/criteo/publisher/f/q;

    invoke-static {v1}, Lcom/criteo/publisher/f/q;->a(Lcom/criteo/publisher/f/q;)Lcom/criteo/publisher/f/w;

    move-result-object v12

    new-instance v13, Lcom/criteo/publisher/f/-$$Lambda$q$c$toVDnbVxH0MEMfnJ8vjbKAjUZ1c;

    move-object v1, v13

    move v2, v10

    move-wide v3, v7

    move v5, v11

    invoke-direct/range {v1 .. v6}, Lcom/criteo/publisher/f/-$$Lambda$q$c$toVDnbVxH0MEMfnJ8vjbKAjUZ1c;-><init>(ZJZLcom/criteo/publisher/model/s;)V

    invoke-virtual {v12, v9, v13}, Lcom/criteo/publisher/f/w;->a(Ljava/lang/String;Lcom/criteo/publisher/f/w$a;)V

    if-nez v10, :cond_3

    if-eqz v11, :cond_0

    .line 170
    :cond_3
    iget-object v1, p0, Lcom/criteo/publisher/f/q$c;->c:Lcom/criteo/publisher/f/q;

    invoke-static {v1}, Lcom/criteo/publisher/f/q;->b(Lcom/criteo/publisher/f/q;)Lcom/criteo/publisher/f/ac;

    move-result-object v1

    iget-object v2, p0, Lcom/criteo/publisher/f/q$c;->c:Lcom/criteo/publisher/f/q;

    invoke-static {v2}, Lcom/criteo/publisher/f/q;->a(Lcom/criteo/publisher/f/q;)Lcom/criteo/publisher/f/w;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lcom/criteo/publisher/f/ac;->a(Lcom/criteo/publisher/f/w;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method
