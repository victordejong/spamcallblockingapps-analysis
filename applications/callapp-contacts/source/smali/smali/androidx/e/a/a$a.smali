.class final Landroidx/e/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/e/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/e/a/a;


# direct methods
.method constructor <init>(Landroidx/e/a/a;)V
    .locals 0

    .line 58
    iput-object p1, p0, Landroidx/e/a/a$a;->a:Landroidx/e/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 12

    .line 60
    iget-object v0, p0, Landroidx/e/a/a$a;->a:Landroidx/e/a/a;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/e/a/a;->d:J

    .line 61
    iget-object v0, p0, Landroidx/e/a/a$a;->a:Landroidx/e/a/a;

    iget-wide v1, v0, Landroidx/e/a/a;->d:J

    .line 1151
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1152
    :goto_0
    iget-object v7, v0, Landroidx/e/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_3

    .line 1153
    iget-object v7, v0, Landroidx/e/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/e/a/a$b;

    if-eqz v7, :cond_2

    .line 1171
    iget-object v9, v0, Landroidx/e/a/a;->b:Landroidx/b/g;

    invoke-virtual {v9, v7}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-nez v9, :cond_0

    goto :goto_1

    .line 1175
    :cond_0
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v11, v9, v3

    if-gez v11, :cond_1

    .line 1176
    iget-object v9, v0, Landroidx/e/a/a;->b:Landroidx/b/g;

    invoke-virtual {v9, v7}, Landroidx/b/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_2

    .line 1158
    invoke-interface {v7, v1, v2}, Landroidx/e/a/a$b;->a(J)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1183
    :cond_3
    iget-boolean v1, v0, Landroidx/e/a/a;->e:Z

    if-eqz v1, :cond_6

    .line 1184
    iget-object v1, v0, Landroidx/e/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v8

    :goto_2
    if-ltz v1, :cond_5

    .line 1185
    iget-object v2, v0, Landroidx/e/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1186
    iget-object v2, v0, Landroidx/e/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1189
    :cond_5
    iput-boolean v5, v0, Landroidx/e/a/a;->e:Z

    .line 62
    :cond_6
    iget-object v0, p0, Landroidx/e/a/a$a;->a:Landroidx/e/a/a;

    iget-object v0, v0, Landroidx/e/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 63
    iget-object v0, p0, Landroidx/e/a/a$a;->a:Landroidx/e/a/a;

    invoke-virtual {v0}, Landroidx/e/a/a;->b()Landroidx/e/a/a$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/e/a/a$c;->a()V

    :cond_7
    return-void
.end method
