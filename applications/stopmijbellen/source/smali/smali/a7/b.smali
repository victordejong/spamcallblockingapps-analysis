.class public final La7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld2/m;

.field public final b:Landroid/webkit/WebView;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La7/h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "La7/h;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:La7/c;


# direct methods
.method public constructor <init>(Ld2/m;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;La7/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld2/m;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "La7/h;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "La7/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La7/b;->c:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, La7/b;->d:Ljava/util/Map;

    iput-object p1, p0, La7/b;->a:Ld2/m;

    iput-object p2, p0, La7/b;->b:Landroid/webkit/WebView;

    iput-object p3, p0, La7/b;->e:Ljava/lang/String;

    iput-object p7, p0, La7/b;->h:La7/c;

    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La7/h;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, La7/b;->d:Ljava/util/Map;

    invoke-interface {p4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p5, p0, La7/b;->g:Ljava/lang/String;

    iput-object p6, p0, La7/b;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Ld2/m;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)La7/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld2/m;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "La7/h;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "La7/b;"
        }
    .end annotation

    const-string p3, "Partner is null"

    invoke-static {p0, p3}, Li4/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "OM SDK JS script content is null"

    invoke-static {p1, p3}, Li4/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "VerificationScriptResources is null"

    invoke-static {p2, p3}, Li4/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p3, La7/b;

    sget-object v7, La7/c;->c:La7/c;

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, La7/b;-><init>(Ld2/m;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;La7/c;)V

    return-object p3
.end method
