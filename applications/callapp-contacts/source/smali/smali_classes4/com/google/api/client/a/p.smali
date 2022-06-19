.class public final Lcom/google/api/client/a/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/base/h;


# direct methods
.method private constructor <init>(Lcom/google/common/base/h;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/api/client/a/p;->a:Lcom/google/common/base/h;

    return-void
.end method

.method public static a()Lcom/google/api/client/a/p;
    .locals 2

    .line 35
    new-instance v0, Lcom/google/api/client/a/p;

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/google/common/base/h;->a(C)Lcom/google/common/base/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/a/p;-><init>(Lcom/google/common/base/h;)V

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

    .line 48
    iget-object v0, p0, Lcom/google/api/client/a/p;->a:Lcom/google/common/base/h;

    invoke-virtual {v0, p1}, Lcom/google/common/base/h;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
