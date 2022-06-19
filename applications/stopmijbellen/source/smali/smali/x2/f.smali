.class public Lx2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll9/a;
.implements Lo4/s;
.implements Ls6/o;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lx2/f;->a:I

    iput-object p1, p0, Lx2/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-lez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Media duration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lb7/a;)V
    .locals 3

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    invoke-static {v0}, Li4/d;->f(La7/i;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "interactionType"

    sget-object v2, Le7/a;->a:Landroid/view/WindowManager;

    .line 1
    :try_start_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    iget-object p1, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast p1, La7/i;

    .line 3
    iget-object p1, p1, La7/i;->e:Lg7/a;

    .line 4
    sget-object v1, Ly/d;->a:Ly/d;

    invoke-virtual {p1}, Lg7/a;->f()Landroid/webkit/WebView;

    move-result-object p1

    const-string v2, "adUserInteraction"

    invoke-virtual {v1, p1, v2, v0}, Ly/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public c(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Media volume"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    invoke-static {v0}, Li4/d;->f(La7/i;)V

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    .line 1
    iget-object v0, v0, La7/i;->e:Lg7/a;

    .line 2
    sget-object v1, Ly/d;->a:Ly/d;

    invoke-virtual {v0}, Lg7/a;->f()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "bufferFinish"

    invoke-virtual {v1, v0, v3, v2}, Ly/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    invoke-static {v0}, Li4/d;->f(La7/i;)V

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    .line 1
    iget-object v0, v0, La7/i;->e:Lg7/a;

    .line 2
    sget-object v1, Ly/d;->a:Ly/d;

    invoke-virtual {v0}, Lg7/a;->f()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "bufferStart"

    invoke-virtual {v1, v0, v3, v2}, Ly/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public f()V
    .locals 4

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    invoke-static {v0}, Li4/d;->f(La7/i;)V

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    .line 1
    iget-object v0, v0, La7/i;->e:Lg7/a;

    .line 2
    sget-object v1, Ly/d;->a:Ly/d;

    invoke-virtual {v0}, Lg7/a;->f()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "complete"

    invoke-virtual {v1, v0, v3, v2}, Ly/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    invoke-static {v0}, Li4/d;->f(La7/i;)V

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    .line 1
    iget-object v0, v0, La7/i;->e:Lg7/a;

    .line 2
    sget-object v1, Ly/d;->a:Ly/d;

    invoke-virtual {v0}, Lg7/a;->f()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "firstQuartile"

    invoke-virtual {v1, v0, v3, v2}, Ly/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lx2/f;->a:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3/a;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    sget-object v2, Lr2/d;->a:Lr2/d;

    .line 4
    invoke-static {}, Ly2/e$a;->a()Ly2/e$a$a;

    move-result-object v3

    const-wide/16 v4, 0x7530

    .line 5
    invoke-virtual {v3, v4, v5}, Ly2/e$a$a;->b(J)Ly2/e$a$a;

    const-wide/32 v4, 0x5265c00

    .line 6
    invoke-virtual {v3, v4, v5}, Ly2/e$a$a;->c(J)Ly2/e$a$a;

    .line 7
    invoke-virtual {v3}, Ly2/e$a$a;->a()Ly2/e$a;

    move-result-object v3

    .line 8
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v2, Lr2/d;->c:Lr2/d;

    .line 10
    invoke-static {}, Ly2/e$a;->a()Ly2/e$a$a;

    move-result-object v3

    const-wide/16 v6, 0x3e8

    .line 11
    invoke-virtual {v3, v6, v7}, Ly2/e$a$a;->b(J)Ly2/e$a$a;

    .line 12
    invoke-virtual {v3, v4, v5}, Ly2/e$a$a;->c(J)Ly2/e$a$a;

    .line 13
    invoke-virtual {v3}, Ly2/e$a$a;->a()Ly2/e$a;

    move-result-object v3

    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v2, Lr2/d;->b:Lr2/d;

    .line 16
    invoke-static {}, Ly2/e$a;->a()Ly2/e$a$a;

    move-result-object v3

    .line 17
    invoke-virtual {v3, v4, v5}, Ly2/e$a$a;->b(J)Ly2/e$a$a;

    .line 18
    invoke-virtual {v3, v4, v5}, Ly2/e$a$a;->c(J)Ly2/e$a$a;

    const/4 v4, 0x2

    new-array v4, v4, [Ly2/e$b;

    const/4 v5, 0x0

    sget-object v6, Ly2/e$b;->a:Ly2/e$b;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ly2/e$b;->b:Ly2/e$b;

    aput-object v6, v4, v5

    .line 19
    new-instance v5, Ljava/util/HashSet;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 20
    check-cast v3, Ly2/b$b;

    const-string v5, "Null flags"

    .line 21
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iput-object v4, v3, Ly2/b$b;->c:Ljava/util/Set;

    .line 23
    invoke-virtual {v3}, Ly2/b$b;->a()Ly2/e$a;

    move-result-object v3

    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "missing required property: clock"

    .line 25
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {}, Lr2/d;->values()[Lr2/d;

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 27
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 28
    new-instance v2, Ly2/a;

    invoke-direct {v2, v0, v1}, Ly2/a;-><init>(Lb3/a;Ljava/util/Map;)V

    return-object v2

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not all priorities have been configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :goto_0
    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, Lf6/a;

    .line 31
    iget-object v0, v0, Lf6/a;->b:Lx5/e;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 32
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public h()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".com.google.firebase.crashlytics"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "FirebaseCrashlytics"

    const-string v2, "Couldn\'t create file"

    .line 3
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    invoke-static {v0}, Li4/d;->f(La7/i;)V

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    .line 1
    iget-object v0, v0, La7/i;->e:Lg7/a;

    .line 2
    sget-object v1, Ly/d;->a:Ly/d;

    invoke-virtual {v0}, Lg7/a;->f()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "midpoint"

    invoke-virtual {v1, v0, v3, v2}, Ly/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public j()V
    .locals 4

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    invoke-static {v0}, Li4/d;->f(La7/i;)V

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    .line 1
    iget-object v0, v0, La7/i;->e:Lg7/a;

    .line 2
    sget-object v1, Ly/d;->a:Ly/d;

    invoke-virtual {v0}, Lg7/a;->f()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "pause"

    invoke-virtual {v1, v0, v3, v2}, Ly/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public k()V
    .locals 4

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    invoke-static {v0}, Li4/d;->f(La7/i;)V

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    .line 1
    iget-object v0, v0, La7/i;->e:Lg7/a;

    .line 2
    sget-object v1, Ly/d;->a:Ly/d;

    invoke-virtual {v0}, Lg7/a;->f()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "resume"

    invoke-virtual {v1, v0, v3, v2}, Ly/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public l()V
    .locals 4

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    invoke-static {v0}, Li4/d;->f(La7/i;)V

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    .line 1
    iget-object v0, v0, La7/i;->e:Lg7/a;

    .line 2
    sget-object v1, Ly/d;->a:Ly/d;

    invoke-virtual {v0}, Lg7/a;->f()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "skipped"

    invoke-virtual {v1, v0, v3, v2}, Ly/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public m(FF)V
    .locals 2

    invoke-virtual {p0, p1}, Lx2/f;->a(F)V

    invoke-virtual {p0, p2}, Lx2/f;->c(F)V

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    invoke-static {v0}, Li4/d;->f(La7/i;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "duration"

    invoke-static {v0, v1, p1}, Le7/a;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "mediaPlayerVolume"

    invoke-static {v0, p2, p1}, Le7/a;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lc7/e;->a()Lc7/e;

    move-result-object p1

    .line 1
    iget p1, p1, Lc7/e;->a:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "deviceVolume"

    invoke-static {v0, p2, p1}, Le7/a;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast p1, La7/i;

    .line 3
    iget-object p1, p1, La7/i;->e:Lg7/a;

    .line 4
    sget-object p2, Ly/d;->a:Ly/d;

    invoke-virtual {p1}, Lg7/a;->f()Landroid/webkit/WebView;

    move-result-object p1

    const-string v1, "start"

    invoke-virtual {p2, p1, v1, v0}, Ly/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public n()V
    .locals 4

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    invoke-static {v0}, Li4/d;->f(La7/i;)V

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    .line 1
    iget-object v0, v0, La7/i;->e:Lg7/a;

    .line 2
    sget-object v1, Ly/d;->a:Ly/d;

    invoke-virtual {v0}, Lg7/a;->f()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "thirdQuartile"

    invoke-virtual {v1, v0, v3, v2}, Ly/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public o(F)V
    .locals 3

    invoke-virtual {p0, p1}, Lx2/f;->c(F)V

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, La7/i;

    invoke-static {v0}, Li4/d;->f(La7/i;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "mediaPlayerVolume"

    invoke-static {v0, v1, p1}, Le7/a;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lc7/e;->a()Lc7/e;

    move-result-object p1

    .line 1
    iget p1, p1, Lc7/e;->a:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "deviceVolume"

    invoke-static {v0, v1, p1}, Le7/a;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast p1, La7/i;

    .line 3
    iget-object p1, p1, La7/i;->e:Lg7/a;

    .line 4
    sget-object v1, Ly/d;->a:Ly/d;

    invoke-virtual {p1}, Lg7/a;->f()Landroid/webkit/WebView;

    move-result-object p1

    const-string v2, "volumeChange"

    invoke-virtual {v1, p1, v2, v0}, Ly/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lx2/f;->b:Ljava/lang/Object;

    check-cast v0, Lo4/s;

    check-cast v0, Lj4/k2;

    .line 1
    invoke-virtual {v0}, Lj4/k2;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lj4/m0;

    .line 2
    invoke-direct {v1, v0}, Lj4/m0;-><init>(Landroid/content/Context;)V

    return-object v1
.end method
