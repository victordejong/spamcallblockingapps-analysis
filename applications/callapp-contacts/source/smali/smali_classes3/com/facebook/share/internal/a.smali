.class public Lcom/facebook/share/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/a$b;,
        Lcom/facebook/share/internal/a$o;,
        Lcom/facebook/share/internal/a$j;,
        Lcom/facebook/share/internal/a$a;,
        Lcom/facebook/share/internal/a$n;,
        Lcom/facebook/share/internal/a$d;,
        Lcom/facebook/share/internal/a$f;,
        Lcom/facebook/share/internal/a$h;,
        Lcom/facebook/share/internal/a$i;,
        Lcom/facebook/share/internal/a$l;,
        Lcom/facebook/share/internal/a$k;,
        Lcom/facebook/share/internal/a$g;,
        Lcom/facebook/share/internal/a$e;,
        Lcom/facebook/share/internal/a$m;,
        Lcom/facebook/share/internal/a$c;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "a"

.field private static d:Lcom/facebook/internal/r;

.field private static final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/share/internal/a;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcom/facebook/internal/ah;

.field private static g:Lcom/facebook/internal/ah;

.field private static h:Landroid/os/Handler;

.field private static i:Ljava/lang/String;

.field private static j:Z

.field private static volatile k:I

.field private static l:Lcom/facebook/d;


# instance fields
.field public a:Z

.field public b:Z

.field private m:Ljava/lang/String;

.field private n:Lcom/facebook/share/widget/LikeView$e;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Z

.field private w:Landroid/os/Bundle;

.field private x:Lcom/facebook/appevents/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 136
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 140
    new-instance v0, Lcom/facebook/internal/ah;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/facebook/internal/ah;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/a;->f:Lcom/facebook/internal/ah;

    .line 142
    new-instance v0, Lcom/facebook/internal/ah;

    invoke-direct {v0, v1}, Lcom/facebook/internal/ah;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/a;->g:Lcom/facebook/internal/ah;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V
    .locals 0

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    iput-object p1, p0, Lcom/facebook/share/internal/a;->m:Ljava/lang/String;

    .line 579
    iput-object p2, p0, Lcom/facebook/share/internal/a;->n:Lcom/facebook/share/widget/LikeView$e;

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .line 72
    sput p0, Lcom/facebook/share/internal/a;->k:I

    return p0
.end method

.method static synthetic a(Lcom/facebook/share/internal/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/facebook/share/internal/a;->s:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Lcom/facebook/share/internal/a$c;Lcom/facebook/share/internal/a;Lcom/facebook/FacebookException;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 328
    :cond_0
    sget-object v0, Lcom/facebook/share/internal/a;->h:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/share/internal/a$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/share/internal/a$7;-><init>(Lcom/facebook/share/internal/a$c;Lcom/facebook/share/internal/a;Lcom/facebook/FacebookException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/facebook/share/internal/a$m;)V
    .locals 4

    .line 1104
    iget-object v0, p0, Lcom/facebook/share/internal/a;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1106
    invoke-interface {p1}, Lcom/facebook/share/internal/a$m;->a()V

    return-void

    .line 1112
    :cond_0
    new-instance v0, Lcom/facebook/share/internal/a$e;

    iget-object v1, p0, Lcom/facebook/share/internal/a;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/share/internal/a;->n:Lcom/facebook/share/widget/LikeView$e;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/share/internal/a$e;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V

    .line 1114
    new-instance v1, Lcom/facebook/share/internal/a$g;

    iget-object v2, p0, Lcom/facebook/share/internal/a;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/share/internal/a;->n:Lcom/facebook/share/widget/LikeView$e;

    invoke-direct {v1, p0, v2, v3}, Lcom/facebook/share/internal/a$g;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V

    .line 1116
    new-instance v2, Lcom/facebook/i;

    invoke-direct {v2}, Lcom/facebook/i;-><init>()V

    .line 1117
    invoke-virtual {v0, v2}, Lcom/facebook/share/internal/a$e;->a(Lcom/facebook/i;)V

    .line 1118
    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/a$g;->a(Lcom/facebook/i;)V

    .line 1120
    new-instance v3, Lcom/facebook/share/internal/a$3;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/facebook/share/internal/a$3;-><init>(Lcom/facebook/share/internal/a;Lcom/facebook/share/internal/a$e;Lcom/facebook/share/internal/a$g;Lcom/facebook/share/internal/a$m;)V

    invoke-virtual {v2, v3}, Lcom/facebook/i;->a(Lcom/facebook/i$a;)V

    .line 4260
    invoke-static {v2}, Lcom/facebook/GraphRequest;->b(Lcom/facebook/i;)Lcom/facebook/h;

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/a;)V
    .locals 4

    .line 4977
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5038
    new-instance v0, Lcom/facebook/share/internal/c;

    .line 5040
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/share/internal/a;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/share/internal/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5041
    invoke-virtual {v0}, Lcom/facebook/share/internal/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5045
    new-instance v1, Lcom/facebook/share/internal/a$2;

    invoke-direct {v1, p0}, Lcom/facebook/share/internal/a$2;-><init>(Lcom/facebook/share/internal/a;)V

    .line 6069
    iput-object v1, v0, Lcom/facebook/internal/aa;->b:Lcom/facebook/internal/aa$a;

    :cond_0
    return-void

    .line 4985
    :cond_1
    new-instance v0, Lcom/facebook/share/internal/a$12;

    invoke-direct {v0, p0}, Lcom/facebook/share/internal/a$12;-><init>(Lcom/facebook/share/internal/a;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a$m;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/a;IILandroid/content/Intent;)V
    .locals 2

    .line 4771
    iget-object p2, p0, Lcom/facebook/share/internal/a;->w:Landroid/os/Bundle;

    .line 4780
    new-instance v0, Lcom/facebook/share/internal/a$9;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/facebook/share/internal/a$9;-><init>(Lcom/facebook/share/internal/a;Lcom/facebook/f;Landroid/os/Bundle;)V

    .line 4771
    invoke-static {p1, p3, v0}, Lcom/facebook/share/internal/e;->a(ILandroid/content/Intent;Lcom/facebook/share/internal/d;)Z

    .line 4860
    iput-object v1, p0, Lcom/facebook/share/internal/a;->w:Landroid/os/Bundle;

    .line 4866
    sput-object v1, Lcom/facebook/share/internal/a;->i:Ljava/lang/String;

    .line 4867
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object p0

    const-string p1, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 p2, 0x0

    .line 4870
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 4871
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object p1, Lcom/facebook/share/internal/a;->i:Ljava/lang/String;

    const-string p2, "PENDING_CONTROLLER_KEY"

    .line 4872
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 4873
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/a;Landroid/os/Bundle;)V
    .locals 2

    .line 7095
    iget-boolean v0, p0, Lcom/facebook/share/internal/a;->a:Z

    iget-boolean v1, p0, Lcom/facebook/share/internal/a;->v:Z

    if-eq v0, v1, :cond_0

    .line 7096
    invoke-virtual {p0, v0, p1}, Lcom/facebook/share/internal/a;->a(ZLandroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7099
    iget-boolean p1, p0, Lcom/facebook/share/internal/a;->a:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/facebook/share/internal/a;->b(Z)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/facebook/share/internal/a;Lcom/facebook/share/widget/LikeView$e;Lcom/facebook/share/internal/a$c;)V
    .locals 5

    .line 228
    iget-object v0, p0, Lcom/facebook/share/internal/a;->n:Lcom/facebook/share/widget/LikeView$e;

    .line 229
    invoke-static {p1, v0}, Lcom/facebook/share/internal/e;->a(Lcom/facebook/share/widget/LikeView$e;Lcom/facebook/share/widget/LikeView$e;)Lcom/facebook/share/widget/LikeView$e;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/facebook/FacebookException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/share/internal/a;->m:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/facebook/share/internal/a;->n:Lcom/facebook/share/widget/LikeView$e;

    .line 239
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView$e;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x2

    .line 240
    invoke-virtual {p1}, Lcom/facebook/share/widget/LikeView$e;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p0

    const-string p0, "Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\""

    invoke-direct {v0, p0, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p0, v1

    move-object v1, v0

    goto :goto_0

    .line 243
    :cond_0
    iput-object v0, p0, Lcom/facebook/share/internal/a;->n:Lcom/facebook/share/widget/LikeView$e;

    .line 246
    :goto_0
    invoke-static {p2, p0, v1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a$c;Lcom/facebook/share/internal/a;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method public static a(Lcom/facebook/share/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 560
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    .line 563
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    move-object p2, p1

    .line 2585
    :cond_0
    iget-object p0, p0, Lcom/facebook/share/internal/a;->m:Ljava/lang/String;

    const-string p1, "com.facebook.sdk.LikeActionController.OBJECT_ID"

    .line 566
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 570
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 572
    :cond_2
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/i/a/a;->a(Landroid/content/Context;)Landroidx/i/a/a;

    move-result-object p0

    .line 573
    invoke-virtual {p0, v0}, Landroidx/i/a/a;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    .locals 2

    .line 7163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    .line 7165
    invoke-virtual {p2}, Lcom/facebook/FacebookRequestError;->getRequestResult()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7168
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "error"

    .line 7167
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7171
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/share/internal/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/a;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/a;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct/range {p0 .. p6}, Lcom/facebook/share/internal/a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 6556
    invoke-static {v0, p0, v0}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;Lcom/facebook/share/internal/a$c;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    sget-boolean v0, Lcom/facebook/share/internal/a;->j:Z

    if-nez v0, :cond_0

    .line 211
    invoke-static {}, Lcom/facebook/share/internal/a;->i()V

    .line 214
    :cond_0
    invoke-static {p0}, Lcom/facebook/share/internal/a;->b(Ljava/lang/String;)Lcom/facebook/share/internal/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 217
    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Lcom/facebook/share/widget/LikeView$e;Lcom/facebook/share/internal/a$c;)V

    return-void

    .line 219
    :cond_1
    sget-object v0, Lcom/facebook/share/internal/a;->g:Lcom/facebook/internal/ah;

    new-instance v1, Lcom/facebook/share/internal/a$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/share/internal/a$b;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;Lcom/facebook/share/internal/a$c;)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/ah;->a(Ljava/lang/Runnable;)Lcom/facebook/internal/ah$b;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 7415
    :try_start_0
    sget-object v1, Lcom/facebook/share/internal/a;->d:Lcom/facebook/internal/r;

    .line 8148
    invoke-virtual {v1, p0, v0}, Lcom/facebook/internal/r;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 7416
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7421
    invoke-static {v0}, Lcom/facebook/internal/ae;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7418
    :try_start_1
    sget-object p1, Lcom/facebook/share/internal/a;->c:Ljava/lang/String;

    const-string v1, "Unable to serialize controller to disk"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 7421
    invoke-static {v0}, Lcom/facebook/internal/ae;->a(Ljava/io/Closeable;)V

    :cond_0
    return-void

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/facebook/internal/ae;->a(Ljava/io/Closeable;)V

    .line 7423
    :cond_1
    throw p0
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 692
    invoke-static {p2, v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 693
    invoke-static {p3, v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 694
    invoke-static {p4, v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 695
    invoke-static {p5, v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 696
    invoke-static {p6, v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 698
    iget-boolean v1, p0, Lcom/facebook/share/internal/a;->a:Z

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/facebook/share/internal/a;->o:Ljava/lang/String;

    .line 700
    invoke-static {p2, v1}, Lcom/facebook/internal/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/share/internal/a;->p:Ljava/lang/String;

    .line 701
    invoke-static {p3, v1}, Lcom/facebook/internal/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/share/internal/a;->q:Ljava/lang/String;

    .line 702
    invoke-static {p4, v1}, Lcom/facebook/internal/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/share/internal/a;->r:Ljava/lang/String;

    .line 703
    invoke-static {p5, v1}, Lcom/facebook/internal/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/share/internal/a;->s:Ljava/lang/String;

    .line 704
    invoke-static {p6, v1}, Lcom/facebook/internal/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    return-void

    .line 710
    :cond_2
    iput-boolean p1, p0, Lcom/facebook/share/internal/a;->a:Z

    .line 711
    iput-object p2, p0, Lcom/facebook/share/internal/a;->o:Ljava/lang/String;

    .line 712
    iput-object p3, p0, Lcom/facebook/share/internal/a;->p:Ljava/lang/String;

    .line 713
    iput-object p4, p0, Lcom/facebook/share/internal/a;->q:Ljava/lang/String;

    .line 714
    iput-object p5, p0, Lcom/facebook/share/internal/a;->r:Ljava/lang/String;

    .line 715
    iput-object p6, p0, Lcom/facebook/share/internal/a;->s:Ljava/lang/String;

    .line 717
    invoke-static {p0}, Lcom/facebook/share/internal/a;->m(Lcom/facebook/share/internal/a;)V

    const-string p1, "com.facebook.sdk.LikeActionController.UPDATED"

    .line 3556
    invoke-static {p0, p1, v0}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(IILandroid/content/Intent;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    sget-object v0, Lcom/facebook/share/internal/a;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    .line 177
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "PENDING_CONTROLLER_KEY"

    .line 180
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/share/internal/a;->i:Ljava/lang/String;

    .line 183
    :cond_0
    sget-object v0, Lcom/facebook/share/internal/a;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 188
    :cond_1
    sget-object v0, Lcom/facebook/share/internal/a;->i:Ljava/lang/String;

    sget-object v1, Lcom/facebook/share/widget/LikeView$e;->UNKNOWN:Lcom/facebook/share/widget/LikeView$e;

    new-instance v2, Lcom/facebook/share/internal/a$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/facebook/share/internal/a$1;-><init>(IILandroid/content/Intent;)V

    invoke-static {v0, v1, v2}, Lcom/facebook/share/internal/a;->a(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;Lcom/facebook/share/internal/a$c;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static b(Ljava/lang/String;)Lcom/facebook/share/internal/a;
    .locals 4

    .line 384
    invoke-static {p0}, Lcom/facebook/share/internal/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 386
    sget-object v0, Lcom/facebook/share/internal/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/a;

    if-eqz v0, :cond_0

    .line 389
    sget-object v1, Lcom/facebook/share/internal/a;->f:Lcom/facebook/internal/ah;

    new-instance v2, Lcom/facebook/share/internal/a$j;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/share/internal/a$j;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/facebook/internal/ah;->a(Ljava/lang/Runnable;)Lcom/facebook/internal/ah$b;

    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/facebook/share/internal/a;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/facebook/share/internal/a;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/share/internal/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/facebook/share/internal/a;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/share/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/internal/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;Lcom/facebook/share/internal/a$c;)V
    .locals 3

    .line 8260
    invoke-static {p0}, Lcom/facebook/share/internal/a;->b(Ljava/lang/String;)Lcom/facebook/share/internal/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8263
    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Lcom/facebook/share/widget/LikeView$e;Lcom/facebook/share/internal/a$c;)V

    return-void

    .line 8268
    :cond_0
    invoke-static {p0}, Lcom/facebook/share/internal/a;->c(Ljava/lang/String;)Lcom/facebook/share/internal/a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8271
    new-instance v0, Lcom/facebook/share/internal/a;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/a;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V

    .line 8272
    invoke-static {v0}, Lcom/facebook/share/internal/a;->m(Lcom/facebook/share/internal/a;)V

    .line 8376
    :cond_1
    invoke-static {p0}, Lcom/facebook/share/internal/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8378
    sget-object p1, Lcom/facebook/share/internal/a;->f:Lcom/facebook/internal/ah;

    new-instance v1, Lcom/facebook/share/internal/a$j;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/internal/a$j;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v1}, Lcom/facebook/internal/ah;->a(Ljava/lang/Runnable;)Lcom/facebook/internal/ah$b;

    .line 8380
    sget-object p1, Lcom/facebook/share/internal/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8280
    sget-object p0, Lcom/facebook/share/internal/a;->h:Landroid/os/Handler;

    new-instance p1, Lcom/facebook/share/internal/a$5;

    invoke-direct {p1, v0}, Lcom/facebook/share/internal/a$5;-><init>(Lcom/facebook/share/internal/a;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    .line 8288
    invoke-static {p2, v0, p0}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a$c;Lcom/facebook/share/internal/a;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 665
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/a;->a(Z)V

    .line 667
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string v1, "Unable to publish the like/unlike action"

    .line 668
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.facebook.sdk.LikeActionController.DID_ERROR"

    .line 670
    invoke-static {p0, v0, p1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/share/internal/a;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/facebook/share/internal/a;->v:Z

    return p1
.end method

.method private static c(Ljava/lang/String;)Lcom/facebook/share/internal/a;
    .locals 5

    const/4 v0, 0x0

    .line 435
    :try_start_0
    invoke-static {p0}, Lcom/facebook/share/internal/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 436
    sget-object v1, Lcom/facebook/share/internal/a;->d:Lcom/facebook/internal/r;

    .line 2110
    invoke-virtual {v1, p0, v0}, Lcom/facebook/internal/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 438
    :try_start_1
    invoke-static {p0}, Lcom/facebook/internal/ae;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-static {v1}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 440
    invoke-static {v1}, Lcom/facebook/share/internal/a;->d(Ljava/lang/String;)Lcom/facebook/share/internal/a;

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

    .line 448
    :goto_1
    invoke-static {p0}, Lcom/facebook/internal/ae;->a(Ljava/io/Closeable;)V

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

    .line 444
    :goto_2
    :try_start_2
    sget-object v2, Lcom/facebook/share/internal/a;->c:Ljava/lang/String;

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

    .line 448
    invoke-static {p0}, Lcom/facebook/internal/ae;->a(Ljava/io/Closeable;)V

    .line 450
    :cond_2
    throw v0
.end method

.method static synthetic c(Lcom/facebook/share/internal/a;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/facebook/share/internal/a;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/share/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic c(Lcom/facebook/share/internal/a;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/facebook/share/internal/a;->u:Z

    return p1
.end method

.method private static d(Ljava/lang/String;)Lcom/facebook/share/internal/a;
    .locals 4

    const/4 v0, 0x0

    .line 459
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "com.facebook.share.internal.LikeActionController.version"

    const/4 v2, -0x1

    .line 460
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    return-object v0

    :cond_0
    const-string p0, "object_id"

    .line 467
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "object_type"

    .line 468
    sget-object v3, Lcom/facebook/share/widget/LikeView$e;->UNKNOWN:Lcom/facebook/share/widget/LikeView$e;

    .line 469
    invoke-virtual {v3}, Lcom/facebook/share/widget/LikeView$e;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 471
    new-instance v3, Lcom/facebook/share/internal/a;

    invoke-static {v2}, Lcom/facebook/share/widget/LikeView$e;->fromInt(I)Lcom/facebook/share/widget/LikeView$e;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Lcom/facebook/share/internal/a;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V

    const-string p0, "like_count_string_with_like"

    .line 476
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/facebook/share/internal/a;->o:Ljava/lang/String;

    const-string p0, "like_count_string_without_like"

    .line 478
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/facebook/share/internal/a;->p:Ljava/lang/String;

    const-string p0, "social_sentence_with_like"

    .line 480
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/facebook/share/internal/a;->q:Ljava/lang/String;

    const-string p0, "social_sentence_without_like"

    .line 482
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/facebook/share/internal/a;->r:Ljava/lang/String;

    const-string p0, "is_object_liked"

    .line 483
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v3, Lcom/facebook/share/internal/a;->a:Z

    const-string p0, "unlike_token"

    .line 484
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/facebook/share/internal/a;->s:Ljava/lang/String;

    const-string p0, "facebook_dialog_analytics_bundle"

    .line 487
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 490
    invoke-static {p0}, Lcom/facebook/internal/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v3, Lcom/facebook/share/internal/a;->w:Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception p0

    .line 493
    sget-object v1, Lcom/facebook/share/internal/a;->c:Ljava/lang/String;

    const-string v2, "Unable to deserialize controller from JSON"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method static synthetic d(Lcom/facebook/share/internal/a;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/facebook/share/internal/a;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lcom/facebook/share/internal/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/share/internal/a;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/facebook/share/internal/a;->r:Ljava/lang/String;

    return-object p0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 532
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 533
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 541
    invoke-static {v0}, Lcom/facebook/internal/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    const-string v3, ""

    .line 547
    invoke-static {v0, v3}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p0

    const/4 p0, 0x2

    sget v0, Lcom/facebook/share/internal/a;->k:I

    .line 548
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p0

    const-string p0, "%s|%s|com.fb.sdk.like|%d"

    .line 543
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f()I
    .locals 1

    .line 72
    sget v0, Lcom/facebook/share/internal/a;->k:I

    return v0
.end method

.method static synthetic f(Lcom/facebook/share/internal/a;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/facebook/share/internal/a;->s:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/facebook/share/internal/a;)Lcom/facebook/appevents/m;
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/facebook/share/internal/a;->c()Lcom/facebook/appevents/m;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 72
    sget-object v0, Lcom/facebook/share/internal/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic h()Lcom/facebook/internal/r;
    .locals 1

    .line 72
    sget-object v0, Lcom/facebook/share/internal/a;->d:Lcom/facebook/internal/r;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/share/internal/a;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/facebook/share/internal/a;->t:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/facebook/share/internal/a;)Lcom/facebook/share/widget/LikeView$e;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/facebook/share/internal/a;->n:Lcom/facebook/share/widget/LikeView$e;

    return-object p0
.end method

.method private static declared-synchronized i()V
    .locals 5

    const-class v0, Lcom/facebook/share/internal/a;

    monitor-enter v0

    .line 292
    :try_start_0
    sget-boolean v1, Lcom/facebook/share/internal/a;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 293
    monitor-exit v0

    return-void

    .line 296
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/facebook/share/internal/a;->h:Landroid/os/Handler;

    .line 298
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v3, 0x0

    .line 300
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "OBJECT_SUFFIX"

    const/4 v3, 0x1

    .line 302
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/facebook/share/internal/a;->k:I

    .line 303
    new-instance v1, Lcom/facebook/internal/r;

    sget-object v2, Lcom/facebook/share/internal/a;->c:Ljava/lang/String;

    new-instance v4, Lcom/facebook/internal/r$d;

    invoke-direct {v4}, Lcom/facebook/internal/r$d;-><init>()V

    invoke-direct {v1, v2, v4}, Lcom/facebook/internal/r;-><init>(Ljava/lang/String;Lcom/facebook/internal/r$d;)V

    sput-object v1, Lcom/facebook/share/internal/a;->d:Lcom/facebook/internal/r;

    .line 1342
    new-instance v1, Lcom/facebook/share/internal/a$8;

    invoke-direct {v1}, Lcom/facebook/share/internal/a$8;-><init>()V

    sput-object v1, Lcom/facebook/share/internal/a;->l:Lcom/facebook/d;

    .line 307
    sget-object v1, Lcom/facebook/internal/c$c;->Like:Lcom/facebook/internal/c$c;

    .line 308
    invoke-virtual {v1}, Lcom/facebook/internal/c$c;->toRequestCode()I

    move-result v1

    new-instance v2, Lcom/facebook/share/internal/a$6;

    invoke-direct {v2}, Lcom/facebook/share/internal/a$6;-><init>()V

    .line 307
    invoke-static {v1, v2}, Lcom/facebook/internal/c;->a(ILcom/facebook/internal/c$a;)V

    .line 317
    sput-boolean v3, Lcom/facebook/share/internal/a;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic j(Lcom/facebook/share/internal/a;)Z
    .locals 1

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/facebook/share/internal/a;->b:Z

    return v0
.end method

.method static synthetic k(Lcom/facebook/share/internal/a;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/facebook/share/internal/a;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/facebook/share/internal/a;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/facebook/share/internal/a;->a:Z

    return p0
.end method

.method private static m(Lcom/facebook/share/internal/a;)V
    .locals 3

    .line 400
    invoke-static {p0}, Lcom/facebook/share/internal/a;->n(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v0

    .line 401
    iget-object p0, p0, Lcom/facebook/share/internal/a;->m:Ljava/lang/String;

    invoke-static {p0}, Lcom/facebook/share/internal/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 403
    invoke-static {v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    sget-object v1, Lcom/facebook/share/internal/a;->g:Lcom/facebook/internal/ah;

    new-instance v2, Lcom/facebook/share/internal/a$o;

    invoke-direct {v2, p0, v0}, Lcom/facebook/share/internal/a$o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/facebook/internal/ah;->a(Ljava/lang/Runnable;)Lcom/facebook/internal/ah$b;

    :cond_0
    return-void
.end method

.method private static n(Lcom/facebook/share/internal/a;)Ljava/lang/String;
    .locals 3

    .line 501
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "com.facebook.share.internal.LikeActionController.version"

    const/4 v2, 0x3

    .line 503
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "object_id"

    .line 504
    iget-object v2, p0, Lcom/facebook/share/internal/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "object_type"

    .line 505
    iget-object v2, p0, Lcom/facebook/share/internal/a;->n:Lcom/facebook/share/widget/LikeView$e;

    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$e;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "like_count_string_with_like"

    .line 506
    iget-object v2, p0, Lcom/facebook/share/internal/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "like_count_string_without_like"

    .line 507
    iget-object v2, p0, Lcom/facebook/share/internal/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "social_sentence_with_like"

    .line 509
    iget-object v2, p0, Lcom/facebook/share/internal/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "social_sentence_without_like"

    .line 511
    iget-object v2, p0, Lcom/facebook/share/internal/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_object_liked"

    .line 513
    iget-boolean v2, p0, Lcom/facebook/share/internal/a;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "unlike_token"

    .line 514
    iget-object v2, p0, Lcom/facebook/share/internal/a;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    iget-object p0, p0, Lcom/facebook/share/internal/a;->w:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    .line 517
    invoke-static {p0}, Lcom/facebook/internal/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "facebook_dialog_analytics_bundle"

    .line 519
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 523
    sget-object v0, Lcom/facebook/share/internal/a;->c:Ljava/lang/String;

    const-string v1, "Unable to serialize controller to JSON"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 591
    iget-boolean v0, p0, Lcom/facebook/share/internal/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/internal/a;->o:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1155
    iget-object p2, p0, Lcom/facebook/share/internal/a;->m:Ljava/lang/String;

    const-string v1, "object_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    iget-object p2, p0, Lcom/facebook/share/internal/a;->n:Lcom/facebook/share/widget/LikeView$e;

    invoke-virtual {p2}, Lcom/facebook/share/widget/LikeView$e;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "object_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "current_action"

    .line 1157
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p0}, Lcom/facebook/share/internal/a;->c()Lcom/facebook/appevents/m;

    move-result-object p1

    const-string p2, "fb_like_control_error"

    invoke-virtual {p1, p2, v0}, Lcom/facebook/appevents/m;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Z)V
    .locals 7

    .line 675
    iget-object v2, p0, Lcom/facebook/share/internal/a;->o:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/share/internal/a;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/share/internal/a;->q:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/share/internal/a;->r:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/share/internal/a;->s:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/share/internal/a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(ZLandroid/os/Bundle;)Z
    .locals 3

    .line 647
    invoke-virtual {p0}, Lcom/facebook/share/internal/a;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2888
    iput-boolean v1, p0, Lcom/facebook/share/internal/a;->b:Z

    .line 2890
    new-instance p1, Lcom/facebook/share/internal/a$10;

    invoke-direct {p1, p0, p2}, Lcom/facebook/share/internal/a$10;-><init>(Lcom/facebook/share/internal/a;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a$m;)V

    goto :goto_0

    .line 651
    :cond_0
    iget-object p1, p0, Lcom/facebook/share/internal/a;->s:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2942
    iput-boolean v1, p0, Lcom/facebook/share/internal/a;->b:Z

    .line 2945
    new-instance p1, Lcom/facebook/i;

    invoke-direct {p1}, Lcom/facebook/i;-><init>()V

    .line 2946
    new-instance v0, Lcom/facebook/share/internal/a$l;

    iget-object v2, p0, Lcom/facebook/share/internal/a;->s:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/facebook/share/internal/a$l;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;)V

    .line 2947
    invoke-virtual {v0, p1}, Lcom/facebook/share/internal/a$l;->a(Lcom/facebook/i;)V

    .line 2948
    new-instance v2, Lcom/facebook/share/internal/a$11;

    invoke-direct {v2, p0, v0, p2}, Lcom/facebook/share/internal/a$11;-><init>(Lcom/facebook/share/internal/a;Lcom/facebook/share/internal/a$l;Landroid/os/Bundle;)V

    invoke-virtual {p1, v2}, Lcom/facebook/i;->a(Lcom/facebook/i$a;)V

    .line 3260
    invoke-static {p1}, Lcom/facebook/GraphRequest;->b(Lcom/facebook/i;)Lcom/facebook/h;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 597
    iget-boolean v0, p0, Lcom/facebook/share/internal/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/internal/a;->q:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/facebook/appevents/m;
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/facebook/share/internal/a;->x:Lcom/facebook/appevents/m;

    if-nez v0, :cond_0

    .line 640
    new-instance v0, Lcom/facebook/appevents/m;

    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/appevents/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/share/internal/a;->x:Lcom/facebook/appevents/m;

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/a;->x:Lcom/facebook/appevents/m;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    .line 877
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 880
    iget-boolean v1, p0, Lcom/facebook/share/internal/a;->u:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/share/internal/a;->t:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 882
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 883
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 884
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v0

    const-string v1, "publish_actions"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
