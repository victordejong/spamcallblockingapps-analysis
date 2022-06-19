.class Lcom/google/api/client/googleapis/b/b$a;
.super Ljava/lang/Object;
.source "BatchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/api/client/googleapis/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/client/googleapis/b/a<",
            "TT;TE;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field final d:Lcom/google/api/client/http/q;


# direct methods
.method constructor <init>(Lcom/google/api/client/googleapis/b/a;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/http/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/b/a<",
            "TT;TE;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/google/api/client/http/q;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/api/client/googleapis/b/b$a;->a:Lcom/google/api/client/googleapis/b/a;

    .line 3
    iput-object p2, p0, Lcom/google/api/client/googleapis/b/b$a;->b:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, Lcom/google/api/client/googleapis/b/b$a;->c:Ljava/lang/Class;

    .line 5
    iput-object p4, p0, Lcom/google/api/client/googleapis/b/b$a;->d:Lcom/google/api/client/http/q;

    return-void
.end method
