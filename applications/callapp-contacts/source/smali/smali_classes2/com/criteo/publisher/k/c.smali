.class public Lcom/criteo/publisher/k/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:Lcom/criteo/publisher/k/a/d;

.field private final e:Lcom/criteo/publisher/logging/g;

.field private final f:Lcom/criteo/publisher/m0/q;

.field private final g:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "^1([YN\\-yn]){3}$"

    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/criteo/publisher/k/c;->a:Ljava/util/regex/Pattern;

    const-string v1, "1ynn"

    const-string v2, "1yny"

    const-string v3, "1---"

    const-string v4, ""

    const-string v5, "1yn-"

    const-string v6, "1-n-"

    .line 43
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/criteo/publisher/k/c;->b:Ljava/util/List;

    const-string v0, "explicit_no"

    const-string v1, "potential_whitelist"

    const-string v2, "dnt"

    .line 46
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/criteo/publisher/k/c;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 70
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/criteo/publisher/k/a/d;

    invoke-direct {v1, p1}, Lcom/criteo/publisher/k/a/d;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-direct {p0, v0, v1}, Lcom/criteo/publisher/k/c;-><init>(Landroid/content/SharedPreferences;Lcom/criteo/publisher/k/a/d;)V

    return-void
.end method

.method constructor <init>(Landroid/content/SharedPreferences;Lcom/criteo/publisher/k/a/d;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/k/c;->e:Lcom/criteo/publisher/logging/g;

    .line 80
    iput-object p1, p0, Lcom/criteo/publisher/k/c;->g:Landroid/content/SharedPreferences;

    .line 81
    new-instance v0, Lcom/criteo/publisher/m0/q;

    invoke-direct {v0, p1}, Lcom/criteo/publisher/m0/q;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/criteo/publisher/k/c;->f:Lcom/criteo/publisher/m0/q;

    .line 82
    iput-object p2, p0, Lcom/criteo/publisher/k/c;->d:Lcom/criteo/publisher/k/a/d;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/criteo/publisher/k/c;->f:Lcom/criteo/publisher/m0/q;

    const-string v1, "IABUSPrivacy_String"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/criteo/publisher/m0/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/criteo/publisher/k/c;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MoPubConsent_String"

    .line 157
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 159
    iget-object v0, p0, Lcom/criteo/publisher/k/c;->e:Lcom/criteo/publisher/logging/g;

    invoke-static {p1}, Lcom/criteo/publisher/k/b;->a(Ljava/lang/String;)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/criteo/publisher/k/c;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USPrivacy_Optout"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    iget-object v0, p0, Lcom/criteo/publisher/k/c;->e:Lcom/criteo/publisher/logging/g;

    invoke-static {p1}, Lcom/criteo/publisher/k/b;->a(Z)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/criteo/publisher/k/c;->f:Lcom/criteo/publisher/m0/q;

    const-string v1, "USPrivacy_Optout"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/criteo/publisher/m0/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/criteo/publisher/k/c;->f:Lcom/criteo/publisher/m0/q;

    const-string v1, "MoPubConsent_String"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/criteo/publisher/m0/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
