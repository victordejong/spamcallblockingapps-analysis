.class public Li7/e;
.super Li7/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Li7/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li7/b$b;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "J)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Li7/a;-><init>(Li7/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lc7/a;->c:Lc7/a;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lc7/a;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La7/i;

    iget-object v2, p0, Li7/a;->c:Ljava/util/HashSet;

    .line 3
    iget-object v3, v1, La7/i;->h:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v1, v1, La7/i;->e:Lg7/a;

    .line 6
    iget-wide v2, p0, Li7/a;->e:J

    .line 7
    iget-wide v4, v1, Lg7/a;->e:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    iget v2, v1, Lg7/a;->d:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iput v3, v1, Lg7/a;->d:I

    sget-object v2, Ly/d;->a:Ly/d;

    invoke-virtual {v1}, Lg7/a;->f()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v4, "setNativeViewHierarchy"

    .line 8
    invoke-virtual {v2, v1, v4, v3}, Ly/d;->b(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Li7/b;->a:Li7/b$a;

    if-eqz p1, :cond_2

    check-cast p1, Li7/c;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p1, Li7/c;->c:Li7/b;

    invoke-virtual {p1}, Li7/c;->a()V

    :cond_2
    return-void
.end method

.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Li7/a;->d:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Li7/e;->a(Ljava/lang/String;)V

    return-void
.end method
