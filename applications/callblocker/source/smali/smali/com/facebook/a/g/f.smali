.class public final Lcom/facebook/a/g/f;
.super Ljava/lang/Object;
.source "ViewOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/view/View$OnClickListener;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/facebook/a/g/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/g/f;->a:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/a/g/f;->c:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Lcom/facebook/a/b/a/f;->g(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/g/f;->b:Landroid/view/View$OnClickListener;

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/a/g/f;->e:Ljava/lang/ref/WeakReference;

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/a/g/f;->d:Ljava/lang/ref/WeakReference;

    .line 72
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "activity"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/g/f;->f:Ljava/lang/String;

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/facebook/a/g/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/a/g/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/a/g/f;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 85
    iget-object v1, p0, Lcom/facebook/a/g/f;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 86
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/facebook/a/g/b;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 93
    if-eqz v2, :cond_0

    .line 96
    invoke-static {v1}, Lcom/facebook/a/b/a/f;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-static {v2, v3}, Lcom/facebook/a/g/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 102
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 103
    const-string/jumbo v5, "view"

    invoke-static {v0, v1}, Lcom/facebook/a/g/c;->a(Landroid/view/View;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string/jumbo v0, "screenname"

    iget-object v1, p0, Lcom/facebook/a/g/f;->f:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    invoke-direct {p0, v2, v3, v4}, Lcom/facebook/a/g/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 61
    sget-object v1, Lcom/facebook/a/g/f;->c:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/facebook/a/g/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/a/g/f;-><init>(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/facebook/a/b/a/f;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 64
    sget-object v1, Lcom/facebook/a/g/f;->c:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/facebook/a/g/f$2;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/facebook/a/g/f$2;-><init>(Lcom/facebook/a/g/f;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/internal/x;->a(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;[F)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/facebook/a/g/f;->b(Ljava/lang/String;Ljava/lang/String;[F)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 114
    invoke-static {p0}, Lcom/facebook/a/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    .line 119
    :cond_0
    const-string/jumbo v1, "other"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    new-instance v1, Lcom/facebook/a/g/f$1;

    invoke-direct {v1, v0, p1}, Lcom/facebook/a/g/f$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/facebook/internal/x;->a(Ljava/lang/Runnable;)V

    .line 128
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;[F)V
    .locals 2

    .prologue
    .line 165
    invoke-static {p0}, Lcom/facebook/a/g/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    new-instance v0, Lcom/facebook/a/m;

    .line 167
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/a/m;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {v0, p0, p1}, Lcom/facebook/a/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-static {p0}, Lcom/facebook/a/g/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {p0, p1, p2}, Lcom/facebook/a/g/f;->c(Ljava/lang/String;Ljava/lang/String;[F)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;[F)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 176
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 178
    :try_start_0
    const-string/jumbo v2, "event_name"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    array-length v4, p2

    :goto_0
    if-ge v0, v4, :cond_0

    aget v5, p2, v0

    .line 183
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    const-string/jumbo v0, "dense"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string/jumbo v0, "button_text"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string/jumbo v0, "metadata"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%s/suggested_events"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 191
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 190
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 188
    invoke-static {v0, v2, v3, v4}, Lcom/facebook/k;->a(Lcom/facebook/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/k$b;)Lcom/facebook/k;

    move-result-object v0

    .line 194
    invoke-virtual {v0, v1}, Lcom/facebook/k;->a(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {v0}, Lcom/facebook/k;->i()Lcom/facebook/n;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_1
    return-void

    .line 196
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/a/g/f;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/facebook/a/g/f;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/facebook/a/g/f;->a()V

    .line 81
    return-void
.end method
