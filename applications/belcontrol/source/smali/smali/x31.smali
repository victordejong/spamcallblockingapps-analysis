.class public final Lx31;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ld41;

.field public final b:Landroid/webkit/WebView;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le41;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le41;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ly31;


# direct methods
.method public constructor <init>(Ld41;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ly31;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld41;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Le41;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ly31;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx31;->c:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lx31;->d:Ljava/util/Map;

    iput-object p1, p0, Lx31;->a:Ld41;

    iput-object p2, p0, Lx31;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lx31;->e:Ljava/lang/String;

    iput-object p7, p0, Lx31;->h:Ly31;

    if-eqz p4, :cond_0

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le41;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lx31;->d:Ljava/util/Map;

    invoke-interface {p4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p5, p0, Lx31;->g:Ljava/lang/String;

    iput-object p6, p0, Lx31;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Ld41;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lx31;
    .locals 10

    const-string v0, "Partner is null"

    invoke-static {p0, v0}, Lb51;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "WebView is null"

    invoke-static {p1, v0}, Lb51;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/16 v0, 0x100

    const-string v1, "CustomReferenceData is greater than 256 characters"

    invoke-static {p3, v0, v1}, Lb51;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    new-instance v0, Lx31;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v9, Ly31;->b:Ly31;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v9}, Lx31;-><init>(Ld41;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ly31;)V

    return-object v0
.end method

.method public static b(Ld41;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lx31;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld41;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Le41;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lx31;"
        }
    .end annotation

    const-string v0, "Partner is null"

    invoke-static {p0, v0}, Lb51;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "OM SDK JS script content is null"

    invoke-static {p1, v0}, Lb51;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VerificationScriptResources is null"

    invoke-static {p2, v0}, Lb51;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const/16 v0, 0x100

    const-string v1, "CustomReferenceData is greater than 256 characters"

    invoke-static {p4, v0, v1}, Lb51;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    new-instance v0, Lx31;

    const/4 v4, 0x0

    sget-object v9, Ly31;->c:Ly31;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Lx31;-><init>(Ld41;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ly31;)V

    return-object v0
.end method


# virtual methods
.method public c()Ly31;
    .locals 1

    iget-object v0, p0, Lx31;->h:Ly31;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lx31;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lx31;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le41;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx31;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lx31;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ld41;
    .locals 1

    iget-object v0, p0, Lx31;->a:Ld41;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le41;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx31;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lx31;->b:Landroid/webkit/WebView;

    return-object v0
.end method
