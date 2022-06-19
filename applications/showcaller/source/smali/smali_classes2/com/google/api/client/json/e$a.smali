.class public Lcom/google/api/client/json/e$a;
.super Ljava/lang/Object;
.source "JsonObjectParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/json/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/google/api/client/json/c;

.field b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/api/client/util/x;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/json/e$a;->b:Ljava/util/Collection;

    .line 3
    invoke-static {p1}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/json/c;

    iput-object p1, p0, Lcom/google/api/client/json/e$a;->a:Lcom/google/api/client/json/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/api/client/json/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/client/json/e;

    invoke-direct {v0, p0}, Lcom/google/api/client/json/e;-><init>(Lcom/google/api/client/json/e$a;)V

    return-object v0
.end method

.method public b(Ljava/util/Collection;)Lcom/google/api/client/json/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/json/e$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/client/json/e$a;->b:Ljava/util/Collection;

    return-object p0
.end method
