.class public final Lcom/google/api/client/http/b0$a;
.super Ljava/lang/Object;
.source "MultipartContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Lcom/google/api/client/http/j;

.field b:Lcom/google/api/client/http/n;

.field c:Lcom/google/api/client/http/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/api/client/http/b0$a;-><init>(Lcom/google/api/client/http/j;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/j;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/google/api/client/http/b0$a;-><init>(Lcom/google/api/client/http/n;Lcom/google/api/client/http/j;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/n;Lcom/google/api/client/http/j;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/b0$a;->b(Lcom/google/api/client/http/n;)Lcom/google/api/client/http/b0$a;

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/api/client/http/b0$a;->a(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/b0$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/b0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/b0$a;->a:Lcom/google/api/client/http/j;

    return-object p0
.end method

.method public b(Lcom/google/api/client/http/n;)Lcom/google/api/client/http/b0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/b0$a;->b:Lcom/google/api/client/http/n;

    return-object p0
.end method
