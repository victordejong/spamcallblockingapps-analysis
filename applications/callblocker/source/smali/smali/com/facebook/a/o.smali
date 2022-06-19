.class Lcom/facebook/a/o;
.super Ljava/lang/Object;
.source "SessionEventsState.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/facebook/internal/a;

.field private e:Ljava/lang/String;

.field private final f:I


# direct methods
.method public constructor <init>(Lcom/facebook/internal/a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/o;->a:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/a/o;->b:Ljava/util/List;

    .line 47
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/a/o;->f:I

    .line 52
    iput-object p1, p0, Lcom/facebook/a/o;->d:Lcom/facebook/internal/a;

    .line 53
    iput-object p2, p0, Lcom/facebook/a/o;->e:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private a(Lcom/facebook/k;Landroid/content/Context;ILorg/json/JSONArray;Z)V
    .locals 3

    .prologue
    .line 143
    .line 145
    :try_start_0
    sget-object v0, Lcom/facebook/a/d/c$a;->b:Lcom/facebook/a/d/c$a;

    iget-object v1, p0, Lcom/facebook/a/o;->d:Lcom/facebook/internal/a;

    iget-object v2, p0, Lcom/facebook/a/o;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, p5, p2}, Lcom/facebook/a/d/c;->a(Lcom/facebook/a/d/c$a;Lcom/facebook/internal/a;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 152
    iget v1, p0, Lcom/facebook/a/o;->c:I

    if-lez v1, :cond_0

    .line 153
    const-string/jumbo v1, "num_skipped_events"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lcom/facebook/k;->a(Lorg/json/JSONObject;)V

    .line 161
    invoke-virtual {p1}, Lcom/facebook/k;->e()Landroid/os/Bundle;

    move-result-object v0

    .line 162
    if-nez v0, :cond_1

    .line 163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 166
    :cond_1
    invoke-virtual {p4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    if-eqz v1, :cond_2

    .line 168
    const-string/jumbo v2, "custom_events"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1, v1}, Lcom/facebook/k;->a(Ljava/lang/Object;)V

    .line 173
    :cond_2
    invoke-virtual {p1, v0}, Lcom/facebook/k;->a(Landroid/os/Bundle;)V

    .line 174
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 157
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/a/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/facebook/k;Landroid/content/Context;ZZ)I
    .locals 6

    .prologue
    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget v3, p0, Lcom/facebook/a/o;->c:I

    .line 90
    iget-object v0, p0, Lcom/facebook/a/o;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/facebook/a/c/a;->a(Ljava/util/List;)V

    .line 93
    iget-object v0, p0, Lcom/facebook/a/o;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/a/o;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    iget-object v0, p0, Lcom/facebook/a/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 97
    iget-object v0, p0, Lcom/facebook/a/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/c;

    .line 98
    invoke-virtual {v0}, Lcom/facebook/a/c;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    if-nez p3, :cond_1

    invoke-virtual {v0}, Lcom/facebook/a/c;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/a/c;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 103
    :cond_2
    :try_start_1
    const-string/jumbo v2, "Event with invalid checksum: %s"

    invoke-virtual {v0}, Lcom/facebook/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/internal/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 108
    const/4 v0, 0x0

    monitor-exit p0

    .line 118
    :goto_1
    return v0

    .line 110
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    .line 112
    invoke-direct/range {v0 .. v5}, Lcom/facebook/a/o;->a(Lcom/facebook/k;Landroid/content/Context;ILorg/json/JSONArray;Z)V

    .line 118
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_1
.end method

.method public declared-synchronized a(Lcom/facebook/a/c;)V
    .locals 2

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/a/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/a/o;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 60
    iget v0, p0, Lcom/facebook/a/o;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/a/o;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_0
    monitor-exit p0

    return-void

    .line 62
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/a/o;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Z)V
    .locals 2

    .prologue
    .line 71
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/facebook/a/o;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/a/o;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/facebook/a/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/a/o;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/a/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/a/o;->a:Ljava/util/List;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/a/o;->a:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
