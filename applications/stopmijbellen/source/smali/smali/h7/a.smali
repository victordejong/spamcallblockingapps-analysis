.class public Lh7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld7/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh7/a$a;,
        Lh7/a$b;
    }
.end annotation


# static fields
.field public static g:Lh7/a;

.field public static h:Landroid/os/Handler;

.field public static i:Landroid/os/Handler;

.field public static final j:Ljava/lang/Runnable;

.field public static final k:Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh7/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Landroidx/appcompat/widget/l;

.field public d:Lh7/c;

.field public e:Lh7/d;

.field public f:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lh7/a;

    invoke-direct {v0}, Lh7/a;-><init>()V

    sput-object v0, Lh7/a;->g:Lh7/a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lh7/a;->h:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lh7/a;->i:Landroid/os/Handler;

    new-instance v0, Lh7/a$c;

    invoke-direct {v0}, Lh7/a$c;-><init>()V

    sput-object v0, Lh7/a;->j:Ljava/lang/Runnable;

    new-instance v0, Lh7/a$d;

    invoke-direct {v0}, Lh7/a$d;-><init>()V

    sput-object v0, Lh7/a;->k:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh7/a;->a:Ljava/util/List;

    new-instance v0, Lh7/c;

    invoke-direct {v0}, Lh7/c;-><init>()V

    iput-object v0, p0, Lh7/a;->d:Lh7/c;

    new-instance v0, Landroidx/appcompat/widget/l;

    invoke-direct {v0}, Landroidx/appcompat/widget/l;-><init>()V

    iput-object v0, p0, Lh7/a;->c:Landroidx/appcompat/widget/l;

    new-instance v0, Lh7/d;

    new-instance v1, Li7/c;

    invoke-direct {v1}, Li7/c;-><init>()V

    invoke-direct {v0, v1}, Lh7/d;-><init>(Li7/c;)V

    iput-object v0, p0, Lh7/a;->e:Lh7/d;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ld7/a;Lorg/json/JSONObject;)V
    .locals 7

    .line 1
    invoke-static {p1}, Le7/b;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lh7/a;->d:Lh7/c;

    .line 3
    iget-object v3, v0, Lh7/c;->d:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v0, v0, Lh7/c;->h:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    :goto_1
    if-ne v0, v4, :cond_4

    return-void

    .line 4
    :cond_4
    invoke-interface {p2, p1}, Ld7/a;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p3, v3}, Le7/a;->e(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 5
    iget-object p3, p0, Lh7/a;->d:Lh7/c;

    .line 6
    iget-object v4, p3, Lh7/c;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_5

    const/4 p3, 0x0

    goto :goto_2

    :cond_5
    iget-object v4, p3, Lh7/c;->a:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object p3, p3, Lh7/c;->a:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object p3, v4

    :goto_2
    if-eqz p3, :cond_7

    .line 7
    sget-object v4, Le7/a;->a:Landroid/view/WindowManager;

    :try_start_0
    const-string v4, "adSessionId"

    .line 8
    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    iget-object p3, p0, Lh7/a;->d:Lh7/c;

    .line 10
    iput-boolean v2, p3, Lh7/c;->h:Z

    const/4 p3, 0x1

    goto :goto_3

    :cond_7
    const/4 p3, 0x0

    :goto_3
    if-nez p3, :cond_c

    .line 11
    iget-object p3, p0, Lh7/a;->d:Lh7/c;

    .line 12
    iget-object v4, p3, Lh7/c;->b:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh7/c$a;

    if-eqz v4, :cond_8

    iget-object p3, p3, Lh7/c;->b:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v4, :cond_a

    .line 13
    sget-object p3, Le7/a;->a:Landroid/view/WindowManager;

    .line 14
    iget-object p3, v4, Lh7/c$a;->a:Lc7/b;

    .line 15
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 16
    iget-object v4, v4, Lh7/c$a;->b:Ljava/util/ArrayList;

    .line 17
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    :cond_9
    :try_start_1
    const-string v4, "isFriendlyObstructionFor"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "friendlyObstructionClass"

    .line 18
    iget-object v5, p3, Lc7/b;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "friendlyObstructionPurpose"

    .line 20
    iget-object v5, p3, Lc7/b;->c:La7/e;

    .line 21
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "friendlyObstructionReason"

    .line 22
    iget-object p3, p3, Lc7/b;->d:Ljava/lang/String;

    .line 23
    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    nop

    :cond_a
    :goto_5
    if-ne v0, v2, :cond_b

    const/4 v1, 0x1

    .line 24
    :cond_b
    invoke-interface {p2, p1, v3, p0, v1}, Ld7/a;->a(Landroid/view/View;Lorg/json/JSONObject;Ld7/a$a;Z)V

    .line 25
    :cond_c
    iget p1, p0, Lh7/a;->b:I

    add-int/2addr p1, v2

    iput p1, p0, Lh7/a;->b:I

    return-void
.end method
