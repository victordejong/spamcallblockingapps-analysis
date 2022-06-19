.class public Lno0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno0$n;,
        Lno0$a0;,
        Lno0$v;,
        Lno0$m;,
        Lno0$z;,
        Lno0$p;,
        Lno0$r;,
        Lno0$t;,
        Lno0$u;,
        Lno0$x;,
        Lno0$w;,
        Lno0$s;,
        Lno0$q;,
        Lno0$y;,
        Lno0$o;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final o:Ljava/lang/String; = "no0"

.field public static p:Lom0;

.field public static final q:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lno0;",
            ">;"
        }
    .end annotation
.end field

.field public static r:Lin0;

.field public static s:Lin0;

.field public static t:Landroid/os/Handler;

.field public static u:Ljava/lang/String;

.field public static v:Z

.field public static volatile w:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/facebook/share/widget/LikeView$g;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Landroid/os/Bundle;

.field public n:Lxj0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lno0;->q:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lin0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lin0;-><init>(I)V

    sput-object v0, Lno0;->r:Lin0;

    new-instance v0, Lin0;

    invoke-direct {v0, v1}, Lin0;-><init>(I)V

    sput-object v0, Lno0;->s:Lin0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno0;->a:Ljava/lang/String;

    iput-object p2, p0, Lno0;->b:Lcom/facebook/share/widget/LikeView$g;

    return-void
.end method

.method public static synthetic A()Lom0;
    .locals 1

    sget-object v0, Lno0;->p:Lom0;

    return-object v0
.end method

.method public static synthetic B(Lno0;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lno0;->F(Lno0;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic C(Lno0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lno0;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic D(Lno0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lno0;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic E(Lno0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lno0;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static F(Lno0;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lno0;->G(Lno0;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static G(Lno0;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    move-object p2, p1

    :cond_0
    invoke-virtual {p0}, Lno0;->S()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.facebook.sdk.LikeActionController.OBJECT_ID"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lnf;->b(Landroid/content/Context;)Lnf;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnf;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method public static J(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;Lno0$o;)V
    .locals 1

    invoke-static {p0}, Lno0;->Q(Ljava/lang/String;)Lno0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lno0;->v0(Lno0;Lcom/facebook/share/widget/LikeView$g;Lno0$o;)V

    return-void

    :cond_0
    invoke-static {p0}, Lno0;->K(Ljava/lang/String;)Lno0;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lno0;

    invoke-direct {v0, p0, p1}, Lno0;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;)V

    invoke-static {v0}, Lno0;->n0(Lno0;)V

    :cond_1
    invoke-static {p0, v0}, Lno0;->i0(Ljava/lang/String;Lno0;)V

    sget-object p0, Lno0;->t:Landroid/os/Handler;

    new-instance p1, Lno0$e;

    invoke-direct {p1, v0}, Lno0$e;-><init>(Lno0;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    invoke-static {p2, v0, p0}, Lno0;->W(Lno0$o;Lno0;Lri0;)V

    return-void
.end method

.method public static K(Ljava/lang/String;)Lno0;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lno0;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lno0;->p:Lom0;

    invoke-virtual {v1, p0}, Lom0;->f(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-static {p0}, Lfn0;->g0(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lno0;->L(Ljava/lang/String;)Lno0;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    :goto_1
    invoke-static {p0}, Lfn0;->h(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_4

    :catch_1
    move-exception v1

    move-object p0, v0

    :goto_2
    :try_start_2
    sget-object v2, Lno0;->o:Ljava/lang/String;

    const-string v3, "Unable to deserialize controller from disk"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_3
    return-object v0

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz p0, :cond_2

    invoke-static {p0}, Lfn0;->h(Ljava/io/Closeable;)V

    :cond_2
    throw v0
.end method

.method public static L(Ljava/lang/String;)Lno0;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "com.facebook.share.internal.LikeActionController.version"

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    return-object v0

    :cond_0
    const-string p0, "object_id"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "object_type"

    sget-object v3, Lcom/facebook/share/widget/LikeView$g;->c:Lcom/facebook/share/widget/LikeView$g;

    invoke-virtual {v3}, Lcom/facebook/share/widget/LikeView$g;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Lno0;

    invoke-static {v2}, Lcom/facebook/share/widget/LikeView$g;->a(I)Lcom/facebook/share/widget/LikeView$g;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Lno0;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;)V

    const-string p0, "like_count_string_with_like"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lno0;->d:Ljava/lang/String;

    const-string p0, "like_count_string_without_like"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lno0;->e:Ljava/lang/String;

    const-string p0, "social_sentence_with_like"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lno0;->f:Ljava/lang/String;

    const-string p0, "social_sentence_without_like"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lno0;->g:Ljava/lang/String;

    const-string p0, "is_object_liked"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v3, Lno0;->c:Z

    const-string p0, "unlike_token"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lno0;->h:Ljava/lang/String;

    const-string p0, "facebook_dialog_analytics_bundle"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lam0;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v3, Lno0;->m:Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lno0;->o:Ljava/lang/String;

    const-string v2, "Unable to deserialize controller from JSON"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public static O(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/facebook/AccessToken;->g()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-static {}, Lcom/facebook/AccessToken;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lfn0;->a0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    const-string v3, ""

    invoke-static {v0, v3}, Lfn0;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p0

    const/4 p0, 0x2

    sget v0, Lno0;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p0

    const-string p0, "%s|%s|com.fb.sdk.like|%d"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static P(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;Lno0$o;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Lno0;->v:Z

    if-nez v0, :cond_0

    invoke-static {}, Lno0;->b0()V

    :cond_0
    invoke-static {p0}, Lno0;->Q(Ljava/lang/String;)Lno0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p1, p2}, Lno0;->v0(Lno0;Lcom/facebook/share/widget/LikeView$g;Lno0$o;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lno0;->s:Lin0;

    new-instance v1, Lno0$n;

    invoke-direct {v1, p0, p1, p2}, Lno0$n;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;Lno0$o;)V

    invoke-virtual {v0, v1}, Lin0;->e(Ljava/lang/Runnable;)Lin0$b;

    :goto_0
    return-void
.end method

.method public static Q(Ljava/lang/String;)Lno0;
    .locals 4

    invoke-static {p0}, Lno0;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lno0;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lno0;

    if-eqz v0, :cond_0

    sget-object v1, Lno0;->r:Lin0;

    new-instance v2, Lno0$v;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lno0$v;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lin0;->e(Ljava/lang/Runnable;)Lin0$b;

    :cond_0
    return-object v0
.end method

.method public static V(IILandroid/content/Intent;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lno0;->u:Ljava/lang/String;

    invoke-static {v0}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "PENDING_CONTROLLER_KEY"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lno0;->u:Ljava/lang/String;

    :cond_0
    sget-object v0, Lno0;->u:Ljava/lang/String;

    invoke-static {v0}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lno0;->u:Ljava/lang/String;

    sget-object v1, Lcom/facebook/share/widget/LikeView$g;->c:Lcom/facebook/share/widget/LikeView$g;

    new-instance v2, Lno0$d;

    invoke-direct {v2, p0, p1, p2}, Lno0$d;-><init>(IILandroid/content/Intent;)V

    invoke-static {v0, v1, v2}, Lno0;->P(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;Lno0$o;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static W(Lno0$o;Lno0;Lri0;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lno0;->t:Landroid/os/Handler;

    new-instance v1, Lno0$g;

    invoke-direct {v1, p0, p1, p2}, Lno0$g;-><init>(Lno0$o;Lno0;Lri0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic a(Lno0;IILandroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lno0;->a0(IILandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lno0;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized b0()V
    .locals 5

    const-class v0, Lno0;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lno0;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lno0;->t:Landroid/os/Handler;

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "OBJECT_SUFFIX"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lno0;->w:I

    new-instance v1, Lom0;

    sget-object v2, Lno0;->o:Ljava/lang/String;

    new-instance v4, Lom0$g;

    invoke-direct {v4}, Lom0$g;-><init>()V

    invoke-direct {v1, v2, v4}, Lom0;-><init>(Ljava/lang/String;Lom0$g;)V

    sput-object v1, Lno0;->p:Lom0;

    invoke-static {}, Lno0;->l0()V

    sget-object v1, Lbm0$b;->f:Lbm0$b;

    invoke-virtual {v1}, Lbm0$b;->a()I

    move-result v1

    new-instance v2, Lno0$f;

    invoke-direct {v2}, Lno0$f;-><init>()V

    invoke-static {v1, v2}, Lbm0;->c(ILbm0$a;)V

    sput-boolean v3, Lno0;->v:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic c(Lno0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lno0;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lno0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lno0;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lno0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lno0;->h:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic f(Lno0;)Lxj0;
    .locals 0

    invoke-virtual {p0}, Lno0;->N()Lxj0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lno0;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lno0;->u0(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Lno0;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lno0;->Y(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic i(Lno0;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lno0;->G(Lno0;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static i0(Ljava/lang/String;Lno0;)V
    .locals 3

    invoke-static {p0}, Lno0;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lno0;->r:Lin0;

    new-instance v1, Lno0$v;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lno0$v;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lin0;->e(Ljava/lang/Runnable;)Lin0$b;

    sget-object v0, Lno0;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic j(Lno0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lno0;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic k(Lno0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lno0;->i:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic l(Lno0;)Lcom/facebook/share/widget/LikeView$g;
    .locals 0

    iget-object p0, p0, Lno0;->b:Lcom/facebook/share/widget/LikeView$g;

    return-object p0
.end method

.method public static l0()V
    .locals 1

    new-instance v0, Lno0$h;

    invoke-direct {v0}, Lno0$h;-><init>()V

    return-void
.end method

.method public static synthetic m(Lno0;Z)Z
    .locals 0

    iput-boolean p1, p0, Lno0;->l:Z

    return p1
.end method

.method public static synthetic n(Lno0;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lno0;->e0(Z)V

    return-void
.end method

.method public static n0(Lno0;)V
    .locals 3

    invoke-static {p0}, Lno0;->p0(Lno0;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lno0;->a:Ljava/lang/String;

    invoke-static {p0}, Lno0;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lno0;->s:Lin0;

    new-instance v2, Lno0$a0;

    invoke-direct {v2, p0, v0}, Lno0$a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lin0;->e(Ljava/lang/Runnable;)Lin0$b;

    :cond_0
    return-void
.end method

.method public static synthetic o(Lno0;)V
    .locals 0

    invoke-virtual {p0}, Lno0;->j0()V

    return-void
.end method

.method public static o0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lno0;->p:Lom0;

    invoke-virtual {v1, p0}, Lom0;->i(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {v0}, Lfn0;->h(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    sget-object p1, Lno0;->o:Ljava/lang/String;

    const-string v1, "Unable to serialize controller to disk"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_1

    invoke-static {v0}, Lfn0;->h(Ljava/io/Closeable;)V

    :cond_1
    throw p0
.end method

.method public static synthetic p(Lno0;Z)Z
    .locals 0

    iput-boolean p1, p0, Lno0;->k:Z

    return p1
.end method

.method public static p0(Lno0;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "com.facebook.share.internal.LikeActionController.version"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "object_id"

    iget-object v2, p0, Lno0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "object_type"

    iget-object v2, p0, Lno0;->b:Lcom/facebook/share/widget/LikeView$g;

    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$g;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "like_count_string_with_like"

    iget-object v2, p0, Lno0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "like_count_string_without_like"

    iget-object v2, p0, Lno0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "social_sentence_with_like"

    iget-object v2, p0, Lno0;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "social_sentence_without_like"

    iget-object v2, p0, Lno0;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_object_liked"

    iget-boolean v2, p0, Lno0;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "unlike_token"

    iget-object v2, p0, Lno0;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lno0;->m:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lam0;->b(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "facebook_dialog_analytics_bundle"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lno0;->o:Ljava/lang/String;

    const-string v1, "Unable to serialize controller to JSON"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic q(Lno0;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lno0;->d0(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic r(Lno0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lno0;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static r0(Ljava/lang/String;)V
    .locals 2

    sput-object p0, Lno0;->u:Ljava/lang/String;

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lno0;->u:Ljava/lang/String;

    const-string v1, "PENDING_CONTROLLER_KEY"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic s(Lno0;Z)Z
    .locals 0

    iput-boolean p1, p0, Lno0;->j:Z

    return p1
.end method

.method public static synthetic t(Lno0;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lno0;->Z(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method public static synthetic u(Lno0;)Z
    .locals 0

    iget-boolean p0, p0, Lno0;->c:Z

    return p0
.end method

.method public static synthetic v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lno0;->o0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v0(Lno0;Lcom/facebook/share/widget/LikeView$g;Lno0$o;)V
    .locals 5

    iget-object v0, p0, Lno0;->b:Lcom/facebook/share/widget/LikeView$g;

    invoke-static {p1, v0}, Lap0;->h(Lcom/facebook/share/widget/LikeView$g;Lcom/facebook/share/widget/LikeView$g;)Lcom/facebook/share/widget/LikeView$g;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lri0;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lno0;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object p0, p0, Lno0;->b:Lcom/facebook/share/widget/LikeView$g;

    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView$g;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x2

    invoke-virtual {p1}, Lcom/facebook/share/widget/LikeView$g;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p0

    const-string p0, "Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\""

    invoke-direct {v0, p0, v2}, Lri0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p0, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lno0;->b:Lcom/facebook/share/widget/LikeView$g;

    :goto_0
    invoke-static {p2, p0, v1}, Lno0;->W(Lno0$o;Lno0;Lri0;)V

    return-void
.end method

.method public static synthetic w(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;Lno0$o;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lno0;->J(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;Lno0$o;)V

    return-void
.end method

.method public static synthetic x()I
    .locals 1

    sget v0, Lno0;->w:I

    return v0
.end method

.method public static synthetic y(I)I
    .locals 0

    sput p0, Lno0;->w:I

    return p0
.end method

.method public static synthetic z()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lno0;->q:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public final H()Z
    .locals 2

    invoke-static {}, Lcom/facebook/AccessToken;->g()Lcom/facebook/AccessToken;

    move-result-object v0

    iget-boolean v1, p0, Lno0;->j:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lno0;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/facebook/AccessToken;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->n()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->n()Ljava/util/Set;

    move-result-object v0

    const-string v1, "publish_actions"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final I()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lno0;->m:Landroid/os/Bundle;

    invoke-static {v0}, Lno0;->r0(Ljava/lang/String;)V

    return-void
.end method

.method public final M(Lno0$y;)V
    .locals 4

    iget-object v0, p0, Lno0;->i:Ljava/lang/String;

    invoke-static {v0}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lno0$y;->onComplete()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lno0$q;

    iget-object v1, p0, Lno0;->a:Ljava/lang/String;

    iget-object v2, p0, Lno0;->b:Lcom/facebook/share/widget/LikeView$g;

    invoke-direct {v0, p0, v1, v2}, Lno0$q;-><init>(Lno0;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;)V

    new-instance v1, Lno0$s;

    iget-object v2, p0, Lno0;->a:Ljava/lang/String;

    iget-object v3, p0, Lno0;->b:Lcom/facebook/share/widget/LikeView$g;

    invoke-direct {v1, p0, v2, v3}, Lno0$s;-><init>(Lno0;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;)V

    new-instance v2, Lzi0;

    invoke-direct {v2}, Lzi0;-><init>()V

    invoke-virtual {v0, v2}, Lno0$m;->a(Lzi0;)V

    invoke-virtual {v1, v2}, Lno0$m;->a(Lzi0;)V

    new-instance v3, Lno0$b;

    invoke-direct {v3, p0, v0, v1, p1}, Lno0$b;-><init>(Lno0;Lno0$q;Lno0$s;Lno0$y;)V

    invoke-virtual {v2, v3}, Lzi0;->c(Lzi0$a;)V

    invoke-virtual {v2}, Lzi0;->f()Lyi0;

    return-void
.end method

.method public final N()Lxj0;
    .locals 2

    iget-object v0, p0, Lno0;->n:Lxj0;

    if-nez v0, :cond_0

    new-instance v0, Lxj0;

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lxj0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lno0;->n:Lxj0;

    :cond_0
    iget-object v0, p0, Lno0;->n:Lxj0;

    return-object v0
.end method

.method public R()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lno0;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lno0;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lno0;->e:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public S()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lno0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final T(Landroid/os/Bundle;)Lxo0;
    .locals 2

    new-instance v0, Lno0$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lno0$i;-><init>(Lno0;Lpi0;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public U()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lno0;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lno0;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lno0;->g:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public X()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lno0;->c:Z

    return v0
.end method

.method public final Y(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object p2, p0, Lno0;->a:Ljava/lang/String;

    const-string v1, "object_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lno0;->b:Lcom/facebook/share/widget/LikeView$g;

    invoke-virtual {p2}, Lcom/facebook/share/widget/LikeView$g;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "object_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "current_action"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lno0;->N()Lxj0;

    move-result-object p1

    const-string p2, "fb_like_control_error"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lxj0;->j(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method public final Z(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/facebook/FacebookRequestError;->g()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "error"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, v0}, Lno0;->Y(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a0(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lno0;->m:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lno0;->T(Landroid/os/Bundle;)Lxo0;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lap0;->q(IILandroid/content/Intent;Lxo0;)Z

    invoke-virtual {p0}, Lno0;->I()V

    return-void
.end method

.method public final c0(Landroid/app/Activity;Lpm0;Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lpo0;->n()Z

    move-result v0

    const-string v1, "fb_like_control_did_present_dialog"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lpo0;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "fb_like_control_did_present_fallback_dialog"

    goto :goto_0

    :cond_1
    const-string v0, "present_dialog"

    invoke-virtual {p0, v0, p3}, Lno0;->Y(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lno0;->o:Ljava/lang/String;

    const-string v3, "Cannot show the Like Dialog on this device."

    invoke-static {v0, v3}, Lfn0;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-static {v2, v0}, Lno0;->F(Lno0;Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_4

    iget-object v0, p0, Lno0;->b:Lcom/facebook/share/widget/LikeView$g;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/facebook/share/widget/LikeView$g;->c:Lcom/facebook/share/widget/LikeView$g;

    :goto_1
    invoke-virtual {v0}, Lcom/facebook/share/widget/LikeView$g;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/facebook/share/internal/LikeContent$b;

    invoke-direct {v2}, Lcom/facebook/share/internal/LikeContent$b;-><init>()V

    iget-object v3, p0, Lno0;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/facebook/share/internal/LikeContent$b;->d(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$b;

    invoke-virtual {v2, v0}, Lcom/facebook/share/internal/LikeContent$b;->e(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$b;

    invoke-virtual {v2}, Lcom/facebook/share/internal/LikeContent$b;->c()Lcom/facebook/share/internal/LikeContent;

    move-result-object v0

    if-eqz p2, :cond_3

    new-instance p1, Lpo0;

    invoke-direct {p1, p2}, Lpo0;-><init>(Lpm0;)V

    invoke-virtual {p1, v0}, Lpo0;->r(Lcom/facebook/share/internal/LikeContent;)V

    goto :goto_2

    :cond_3
    new-instance p2, Lpo0;

    invoke-direct {p2, p1}, Lpo0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Lpo0;->r(Lcom/facebook/share/internal/LikeContent;)V

    :goto_2
    invoke-virtual {p0, p3}, Lno0;->m0(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lno0;->N()Lxj0;

    move-result-object p1

    invoke-virtual {p1, v1, p3}, Lxj0;->i(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method public final d0(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Lno0;->c:Z

    iget-boolean v1, p0, Lno0;->k:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lno0;->g0(ZLandroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lno0;->c:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lno0;->e0(Z)V

    :cond_0
    return-void
.end method

.method public final e0(Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lno0;->t0(Z)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string v1, "Unable to publish the like/unlike action"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {p0, v0, p1}, Lno0;->G(Lno0;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final f0(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lno0;->l:Z

    new-instance v0, Lno0$j;

    invoke-direct {v0, p0, p1}, Lno0$j;-><init>(Lno0;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lno0;->M(Lno0$y;)V

    return-void
.end method

.method public final g0(ZLandroid/os/Bundle;)Z
    .locals 2

    invoke-virtual {p0}, Lno0;->H()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lno0;->f0(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lno0;->h:Ljava/lang/String;

    invoke-static {p1}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lno0;->h0(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final h0(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lno0;->l:Z

    new-instance v0, Lzi0;

    invoke-direct {v0}, Lzi0;-><init>()V

    new-instance v1, Lno0$x;

    iget-object v2, p0, Lno0;->h:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lno0$x;-><init>(Lno0;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lno0$m;->a(Lzi0;)V

    new-instance v2, Lno0$k;

    invoke-direct {v2, p0, v1, p1}, Lno0$k;-><init>(Lno0;Lno0$x;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lzi0;->c(Lzi0$a;)V

    invoke-virtual {v0}, Lzi0;->f()Lyi0;

    return-void
.end method

.method public final j0()V
    .locals 1

    invoke-static {}, Lcom/facebook/AccessToken;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lno0;->k0()V

    return-void

    :cond_0
    new-instance v0, Lno0$l;

    invoke-direct {v0, p0}, Lno0$l;-><init>(Lno0;)V

    invoke-virtual {p0, v0}, Lno0;->M(Lno0$y;)V

    return-void
.end method

.method public final k0()V
    .locals 4

    new-instance v0, Lro0;

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lui0;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lno0;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lro0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lan0;->g()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lno0$a;

    invoke-direct {v1, p0}, Lno0$a;-><init>(Lno0;)V

    invoke-virtual {v0, v1}, Lan0;->f(Lan0$b;)V

    return-void
.end method

.method public final m0(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lno0;->a:Ljava/lang/String;

    invoke-static {v0}, Lno0;->r0(Ljava/lang/String;)V

    iput-object p1, p0, Lno0;->m:Landroid/os/Bundle;

    invoke-static {p0}, Lno0;->n0(Lno0;)V

    return-void
.end method

.method public q0()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public s0(Landroid/app/Activity;Lpm0;Landroid/os/Bundle;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lno0;->c:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lno0;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lno0;->t0(Z)V

    iget-boolean v1, p0, Lno0;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lno0;->N()Lxj0;

    move-result-object p1

    const-string p2, "fb_like_control_did_undo_quickly"

    invoke-virtual {p1, p2, p3}, Lxj0;->i(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p3}, Lno0;->g0(ZLandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lno0;->t0(Z)V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lno0;->c0(Landroid/app/Activity;Lpm0;Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final t0(Z)V
    .locals 7

    iget-object v2, p0, Lno0;->d:Ljava/lang/String;

    iget-object v3, p0, Lno0;->e:Ljava/lang/String;

    iget-object v4, p0, Lno0;->f:Ljava/lang/String;

    iget-object v5, p0, Lno0;->g:Ljava/lang/String;

    iget-object v6, p0, Lno0;->h:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lno0;->u0(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final u0(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lfn0;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, v0}, Lfn0;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, v0}, Lfn0;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p5, v0}, Lfn0;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p6, v0}, Lfn0;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    iget-boolean v0, p0, Lno0;->c:Z

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lno0;->d:Ljava/lang/String;

    invoke-static {p2, v0}, Lfn0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lno0;->e:Ljava/lang/String;

    invoke-static {p3, v0}, Lfn0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lno0;->f:Ljava/lang/String;

    invoke-static {p4, v0}, Lfn0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lno0;->g:Ljava/lang/String;

    invoke-static {p5, v0}, Lfn0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lno0;->h:Ljava/lang/String;

    invoke-static {p6, v0}, Lfn0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    iput-boolean p1, p0, Lno0;->c:Z

    iput-object p2, p0, Lno0;->d:Ljava/lang/String;

    iput-object p3, p0, Lno0;->e:Ljava/lang/String;

    iput-object p4, p0, Lno0;->f:Ljava/lang/String;

    iput-object p5, p0, Lno0;->g:Ljava/lang/String;

    iput-object p6, p0, Lno0;->h:Ljava/lang/String;

    invoke-static {p0}, Lno0;->n0(Lno0;)V

    const-string p1, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-static {p0, p1}, Lno0;->F(Lno0;Ljava/lang/String;)V

    return-void
.end method
