.class public final Lcom/google/api/client/util/n;
.super Ljava/lang/Object;
.source "Joiner.java"


# instance fields
.field private final a:Lcom/google/common/base/e;


# direct methods
.method private constructor <init>(Lcom/google/common/base/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/api/client/util/n;->a:Lcom/google/common/base/e;

    return-void
.end method

.method public static b(C)Lcom/google/api/client/util/n;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/client/util/n;

    invoke-static {p0}, Lcom/google/common/base/e;->e(C)Lcom/google/common/base/e;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/api/client/util/n;-><init>(Lcom/google/common/base/e;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/client/util/n;->a:Lcom/google/common/base/e;

    invoke-virtual {v0, p1}, Lcom/google/common/base/e;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
