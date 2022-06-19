.class public final Lcom/google/api/client/googleapis/b/b;
.super Ljava/lang/Object;
.source "BatchRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/b/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private b:Lcom/google/api/client/http/i;

.field private final c:Lcom/google/api/client/http/r;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/client/googleapis/b/b$a<",
            "**>;>;"
        }
    .end annotation
.end field

.field private e:Lcom/google/api/client/util/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/api/client/googleapis/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/googleapis/b/b;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/w;Lcom/google/api/client/http/s;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/api/client/http/i;

    const-string v1, "https://www.googleapis.com/batch"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/api/client/googleapis/b/b;->b:Lcom/google/api/client/http/i;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/b/b;->d:Ljava/util/List;

    .line 4
    sget-object v0, Lcom/google/api/client/util/y;->a:Lcom/google/api/client/util/y;

    iput-object v0, p0, Lcom/google/api/client/googleapis/b/b;->e:Lcom/google/api/client/util/y;

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/api/client/http/w;->c()Lcom/google/api/client/http/r;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/api/client/http/w;->d(Lcom/google/api/client/http/s;)Lcom/google/api/client/http/r;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/api/client/googleapis/b/b;->c:Lcom/google/api/client/http/r;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/api/client/http/q;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/googleapis/b/a;)Lcom/google/api/client/googleapis/b/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/http/q;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/google/api/client/googleapis/b/a<",
            "TT;TE;>;)",
            "Lcom/google/api/client/googleapis/b/b;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p4}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/google/api/client/googleapis/b/b;->d:Ljava/util/List;

    new-instance v1, Lcom/google/api/client/googleapis/b/b$a;

    invoke-direct {v1, p4, p2, p3, p1}, Lcom/google/api/client/googleapis/b/b$a;-><init>(Lcom/google/api/client/googleapis/b/a;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/http/q;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Lcom/google/api/client/http/i;)Lcom/google/api/client/googleapis/b/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/b/b;->b:Lcom/google/api/client/http/i;

    return-object p0
.end method
