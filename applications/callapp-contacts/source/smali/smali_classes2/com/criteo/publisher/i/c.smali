.class public Lcom/criteo/publisher/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/i/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/m0/q;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Lcom/criteo/publisher/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/criteo/publisher/i/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/criteo/publisher/i/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/criteo/publisher/i/b;)V
    .locals 1

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "integrationDetector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/i/c;->b:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/criteo/publisher/i/c;->c:Lcom/criteo/publisher/i/b;

    .line 31
    new-instance p2, Lcom/criteo/publisher/m0/q;

    invoke-direct {p2, p1}, Lcom/criteo/publisher/m0/q;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p2, p0, Lcom/criteo/publisher/i/c;->a:Lcom/criteo/publisher/m0/q;

    return-void
.end method


# virtual methods
.method public final a()Lcom/criteo/publisher/i/a;
    .locals 3

    const-string v0, "com.criteo.mediation.mopub.CriteoBannerAdapter"

    .line 2024
    invoke-static {v0}, Lcom/criteo/publisher/i/b;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "com.criteo.mediation.google.CriteoAdapter"

    .line 2026
    invoke-static {v1}, Lcom/criteo/publisher/i/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1070
    sget-object v0, Lcom/criteo/publisher/i/a;->b:Lcom/criteo/publisher/i/a;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1072
    sget-object v0, Lcom/criteo/publisher/i/a;->e:Lcom/criteo/publisher/i/a;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 1074
    sget-object v0, Lcom/criteo/publisher/i/a;->f:Lcom/criteo/publisher/i/a;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    return-object v0

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/criteo/publisher/i/c;->a:Lcom/criteo/publisher/m0/q;

    .line 54
    sget-object v1, Lcom/criteo/publisher/i/a;->b:Lcom/criteo/publisher/i/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CriteoCachedIntegration"

    .line 52
    invoke-virtual {v0, v2, v1}, Lcom/criteo/publisher/m0/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/p;->a()V

    :cond_4
    const-string v1, "safeSharedPreferences.ge\u2026ion.FALLBACK.name\n    )!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :try_start_0
    invoke-static {v0}, Lcom/criteo/publisher/i/a;->valueOf(Ljava/lang/String;)Lcom/criteo/publisher/i/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 60
    invoke-static {v0}, Lcom/criteo/publisher/m0/o;->a(Ljava/lang/Throwable;)V

    .line 61
    sget-object v0, Lcom/criteo/publisher/i/a;->b:Lcom/criteo/publisher/i/a;

    :goto_1
    return-object v0
.end method

.method public final a(Lcom/criteo/publisher/i/a;)V
    .locals 2

    const-string v0, "integration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/criteo/publisher/i/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CriteoCachedIntegration"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 43
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
