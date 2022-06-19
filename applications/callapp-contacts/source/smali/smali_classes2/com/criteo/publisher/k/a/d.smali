.class public final Lcom/criteo/publisher/k/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/criteo/publisher/k/a/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 32
    new-instance v0, Lcom/criteo/publisher/k/a/h;

    new-instance v1, Lcom/criteo/publisher/m0/q;

    .line 34
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/criteo/publisher/m0/q;-><init>(Landroid/content/SharedPreferences;)V

    invoke-direct {v0, v1}, Lcom/criteo/publisher/k/a/h;-><init>(Lcom/criteo/publisher/m0/q;)V

    .line 32
    invoke-direct {p0, v0}, Lcom/criteo/publisher/k/a/d;-><init>(Lcom/criteo/publisher/k/a/h;)V

    return-void
.end method

.method constructor <init>(Lcom/criteo/publisher/k/a/h;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/criteo/publisher/k/a/d;->a:Lcom/criteo/publisher/k/a/h;

    return-void
.end method


# virtual methods
.method public final a()Lcom/criteo/publisher/k/a/c;
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/criteo/publisher/k/a/d;->a:Lcom/criteo/publisher/k/a/h;

    invoke-virtual {v0}, Lcom/criteo/publisher/k/a/h;->a()Lcom/criteo/publisher/k/a/g;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 52
    :cond_0
    invoke-interface {v0}, Lcom/criteo/publisher/k/a/g;->b()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-interface {v0}, Lcom/criteo/publisher/k/a/g;->a()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 58
    :goto_0
    invoke-interface {v0}, Lcom/criteo/publisher/k/a/g;->c()Ljava/lang/Integer;

    move-result-object v0

    .line 55
    invoke-static {v3, v1, v0}, Lcom/criteo/publisher/k/a/c;->a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/criteo/publisher/k/a/c;

    move-result-object v0

    return-object v0
.end method
