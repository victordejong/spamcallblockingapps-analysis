.class public final Lcom/google/api/client/testing/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/testing/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/google/api/client/testing/a/c;

.field c:Lcom/google/api/client/testing/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/client/testing/a/d;)Lcom/google/api/client/testing/a/b$a;
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/google/api/client/testing/a/b$a;->b:Lcom/google/api/client/testing/a/c;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannot set a low level HTTP response when a low level HTTP request has been set."

    .line 1092
    invoke-static {v0, v1}, Lcom/google/common/base/m;->b(ZLjava/lang/Object;)V

    .line 198
    iput-object p1, p0, Lcom/google/api/client/testing/a/b$a;->c:Lcom/google/api/client/testing/a/d;

    return-object p0
.end method

.method public final a()Lcom/google/api/client/testing/a/b;
    .locals 1

    .line 138
    new-instance v0, Lcom/google/api/client/testing/a/b;

    invoke-direct {v0, p0}, Lcom/google/api/client/testing/a/b;-><init>(Lcom/google/api/client/testing/a/b$a;)V

    return-object v0
.end method
