.class public final Lcom/google/api/client/http/ab$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/ab;
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

    .line 214
    invoke-direct {p0, v0}, Lcom/google/api/client/http/ab$a;-><init>(Lcom/google/api/client/http/j;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/j;)V
    .locals 1

    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, v0, p1}, Lcom/google/api/client/http/ab$a;-><init>(Lcom/google/api/client/http/n;Lcom/google/api/client/http/j;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/n;Lcom/google/api/client/http/j;)V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1244
    iput-object p1, p0, Lcom/google/api/client/http/ab$a;->b:Lcom/google/api/client/http/n;

    .line 2233
    iput-object p2, p0, Lcom/google/api/client/http/ab$a;->a:Lcom/google/api/client/http/j;

    return-void
.end method
