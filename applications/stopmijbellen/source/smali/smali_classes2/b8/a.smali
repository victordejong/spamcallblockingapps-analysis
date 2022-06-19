.class public Lb8/a;
.super Ln7/d0;
.source "SourceFile"


# instance fields
.field public a:Ljava/net/CookieManager;

.field public b:Landroid/content/SharedPreferences;

.field public c:Lw7/e;


# direct methods
.method public constructor <init>(Lw7/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln7/d0;-><init>()V

    .line 2
    iput-object p1, p0, Lb8/a;->c:Lw7/e;

    return-void
.end method


# virtual methods
.method public c(Ln7/g$e;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lb8/a;->i()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lb8/a;->a:Ljava/net/CookieManager;

    iget-object v1, p1, Ln7/g$e;->b:Ln7/h;

    .line 3
    iget-object v1, v1, Ln7/h;->c:Landroid/net/Uri;

    .line 4
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iget-object v2, p1, Ln7/g$e;->b:Ln7/h;

    .line 6
    iget-object v2, v2, Ln7/h;->d:Ln7/w;

    .line 7
    iget-object v2, v2, Ln7/w;->a:Ln7/a0;

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/net/CookieManager;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 9
    iget-object p1, p1, Ln7/g$e;->b:Ln7/h;

    .line 10
    iget-object p1, p1, Ln7/h;->d:Ln7/w;

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Cookie"

    .line 13
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Cookie2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p1, v2, v1}, Ln7/w;->b(Ljava/lang/String;Ljava/util/List;)Ln7/w;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method

.method public f(Ln7/g$d;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb8/a;->i()V

    .line 2
    :try_start_0
    iget-object v0, p1, Ln7/g$e;->b:Ln7/h;

    .line 3
    iget-object v0, v0, Ln7/h;->c:Landroid/net/Uri;

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iget-object p1, p1, Ln7/g$c;->f:Ln7/g$i;

    check-cast p1, Ln7/j;

    .line 5
    iget-object p1, p1, Ln7/j;->k:Ln7/w;

    .line 6
    invoke-virtual {p0, v0, p1}, Lb8/a;->j(Ljava/net/URI;Ln7/w;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final i()V
    .locals 11

    .line 1
    iget-object v0, p0, Lb8/a;->a:Ljava/net/CookieManager;

    if-nez v0, :cond_3

    .line 2
    new-instance v0, Ljava/net/CookieManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    iput-object v0, p0, Lb8/a;->a:Ljava/net/CookieManager;

    .line 3
    iget-object v0, p0, Lb8/a;->c:Lw7/e;

    .line 4
    iget-object v0, v0, Lw7/e;->g:Landroid/content/Context;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lb8/a;->c:Lw7/e;

    .line 6
    iget-object v3, v3, Lw7/e;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-cookies"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lb8/a;->b:Landroid/content/SharedPreferences;

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    :try_start_0
    iget-object v4, p0, Lb8/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    new-instance v5, Ln7/w;

    invoke-direct {v5}, Ln7/w;-><init>()V

    const-string v6, "\n"

    .line 12
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 13
    array-length v6, v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_2

    aget-object v9, v4, v8

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    goto :goto_2

    .line 14
    :cond_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 15
    invoke-virtual {v5, v9}, Ln7/w;->c(Ljava/lang/String;)Ln7/w;

    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 16
    :cond_2
    iget-object v4, p0, Lb8/a;->a:Ljava/net/CookieManager;

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 17
    iget-object v5, v5, Ln7/w;->a:Ln7/a0;

    .line 18
    invoke-virtual {v4, v2, v5}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_3
    return-void
.end method

.method public j(Ljava/net/URI;Ln7/w;)V
    .locals 5

    const-string v0, "Set-Cookie"

    .line 1
    invoke-virtual {p0}, Lb8/a;->i()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lb8/a;->a:Ljava/net/CookieManager;

    .line 3
    iget-object v2, p2, Ln7/w;->a:Ln7/a0;

    .line 4
    invoke-virtual {v1, p1, v2}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 5
    iget-object p2, p2, Ln7/w;->a:Ln7/a0;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ln7/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p2, p0, Lb8/a;->a:Ljava/net/CookieManager;

    invoke-virtual {p2}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object p2

    .line 7
    new-instance v1, Ln7/w;

    invoke-direct {v1}, Ln7/w;-><init>()V

    .line 8
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/HttpCookie;

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ln7/w;->a(Ljava/lang/String;Ljava/lang/String;)Ln7/w;

    goto :goto_0

    .line 10
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lb8/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "HTTP/1.1 200 OK"

    invoke-virtual {v1, v0}, Ln7/w;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
