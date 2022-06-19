.class public abstract Lcom/criteo/publisher/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/criteo/publisher/e;

.field public final b:Lcom/criteo/publisher/c/a;

.field private final c:Lcom/criteo/publisher/k/a;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/c/a;Lcom/criteo/publisher/e;Lcom/criteo/publisher/k/a;)V
    .locals 1

    const-string v0, "bidLifecycleListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bidManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/g;->b:Lcom/criteo/publisher/c/a;

    iput-object p2, p0, Lcom/criteo/publisher/g;->a:Lcom/criteo/publisher/e;

    iput-object p3, p0, Lcom/criteo/publisher/g;->c:Lcom/criteo/publisher/k/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V
    .locals 3

    const-string v0, "cdbRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cdbResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2}, Lcom/criteo/publisher/model/r;->a()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/criteo/publisher/g;->c:Lcom/criteo/publisher/k/a;

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2023
    iget-object v1, v1, Lcom/criteo/publisher/k/a;->a:Landroid/content/SharedPreferences;

    .line 1031
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "CRTO_ConsentGiven"

    .line 1032
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1033
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/g;->a:Lcom/criteo/publisher/e;

    invoke-virtual {p2}, Lcom/criteo/publisher/model/r;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/e;->a(I)V

    .line 51
    iget-object v0, p0, Lcom/criteo/publisher/g;->b:Lcom/criteo/publisher/c/a;

    invoke-interface {v0, p1, p2}, Lcom/criteo/publisher/c/a;->a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V

    return-void
.end method

.method public a(Lcom/criteo/publisher/model/o;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "cdbRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/criteo/publisher/g;->b:Lcom/criteo/publisher/c/a;

    invoke-interface {v0, p1, p2}, Lcom/criteo/publisher/c/a;->a(Lcom/criteo/publisher/model/o;Ljava/lang/Exception;)V

    return-void
.end method
