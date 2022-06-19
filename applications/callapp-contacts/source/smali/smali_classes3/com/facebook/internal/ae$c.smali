.class final Lcom/facebook/internal/ae$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/ae;->a(Ljava/lang/String;Lcom/facebook/internal/ae$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lcom/facebook/GraphResponse;",
        "kotlin.jvm.PlatformType",
        "onCompleted"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/ae$a;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/internal/ae$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/internal/ae$c;->a:Lcom/facebook/internal/ae$a;

    iput-object p2, p0, Lcom/facebook/internal/ae$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/j;)V
    .locals 3

    const-string v0, "response"

    .line 1067
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/j;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/facebook/internal/ae$c;->a:Lcom/facebook/internal/ae$a;

    invoke-virtual {p1}, Lcom/facebook/j;->a()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    const-string v1, "response.error"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/internal/ae$a;->a(Lcom/facebook/FacebookException;)V

    return-void

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/ae$c;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/j;->b()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "response.jsonObject"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/internal/ab;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1071
    iget-object v0, p0, Lcom/facebook/internal/ae$c;->a:Lcom/facebook/internal/ae$a;

    invoke-virtual {p1}, Lcom/facebook/j;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/internal/ae$a;->a(Lorg/json/JSONObject;)V

    return-void
.end method
