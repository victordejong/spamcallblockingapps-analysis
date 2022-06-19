.class public final Lfn0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/GraphRequest$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfn0;->y(Ljava/lang/String;Lfn0$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lfn0$c;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfn0$c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lfn0$a;->a:Lfn0$c;

    iput-object p2, p0, Lfn0$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Laj0;)V
    .locals 2

    invoke-virtual {p1}, Laj0;->g()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfn0$a;->a:Lfn0$c;

    invoke-virtual {p1}, Laj0;->g()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->f()Lri0;

    move-result-object p1

    invoke-interface {v0, p1}, Lfn0$c;->b(Lri0;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfn0$a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Laj0;->h()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lbn0;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lfn0$a;->a:Lfn0$c;

    invoke-virtual {p1}, Laj0;->h()Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, p1}, Lfn0$c;->a(Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method
