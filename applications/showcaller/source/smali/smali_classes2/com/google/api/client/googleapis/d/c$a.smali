.class public Lcom/google/api/client/googleapis/d/c$a;
.super Ljava/lang/Object;
.source "CommonGoogleClientRequestInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/c$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/c$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/c$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/c$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/c$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected f()Lcom/google/api/client/googleapis/d/c$a;
    .locals 0

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/d/c$a;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/c$a;->f()Lcom/google/api/client/googleapis/d/c$a;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;)Lcom/google/api/client/googleapis/d/c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/d/c$a;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/c$a;->f()Lcom/google/api/client/googleapis/d/c$a;

    move-result-object p1

    return-object p1
.end method
