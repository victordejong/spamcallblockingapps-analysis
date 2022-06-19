.class public abstract Lcom/applovin/impl/sdk/e/r;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/e/r$a;,
        Lcom/applovin/impl/sdk/e/r$d;,
        Lcom/applovin/impl/sdk/e/r$b;,
        Lcom/applovin/impl/sdk/e/r$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private final c:Lcom/applovin/impl/sdk/e/r$a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/a/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V
    .locals 1

    const-string v0, "TaskProcessVastResponse"

    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/applovin/impl/sdk/e/r;->a:Lcom/applovin/sdk/AppLovinAdLoadListener;

    check-cast p1, Lcom/applovin/impl/sdk/e/r$a;

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/r;->c:Lcom/applovin/impl/sdk/e/r$a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No context specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/applovin/impl/sdk/utils/q;Lcom/applovin/impl/a/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/sdk/e/r;
    .locals 1

    new-instance v0, Lcom/applovin/impl/sdk/e/r$d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/applovin/impl/sdk/e/r$d;-><init>(Lcom/applovin/impl/sdk/utils/q;Lcom/applovin/impl/a/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/sdk/e/r;
    .locals 1

    new-instance v0, Lcom/applovin/impl/sdk/e/r$a;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/applovin/impl/sdk/e/r$a;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/l;)V

    new-instance p1, Lcom/applovin/impl/sdk/e/r$b;

    invoke-direct {p1, p0, v0, p4, p5}, Lcom/applovin/impl/sdk/e/r$b;-><init>(Ljava/lang/String;Lcom/applovin/impl/a/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V

    return-object p1
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/sdk/e/r;
    .locals 1

    new-instance v0, Lcom/applovin/impl/sdk/e/r$a;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/applovin/impl/sdk/e/r$a;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/l;)V

    new-instance p0, Lcom/applovin/impl/sdk/e/r$c;

    invoke-direct {p0, v0, p3, p4}, Lcom/applovin/impl/sdk/e/r$c;-><init>(Lcom/applovin/impl/a/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V

    return-object p0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/a/f;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to process VAST response due to VAST error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/a;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->c:Lcom/applovin/impl/sdk/e/r$a;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/r;->a:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    const/4 v3, -0x6

    invoke-static {v0, v1, p1, v3, v2}, Lcom/applovin/impl/a/l;->a(Lcom/applovin/impl/a/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/a/f;ILcom/applovin/impl/sdk/l;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/utils/q;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->c:Lcom/applovin/impl/sdk/e/r$a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/e;->a()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished parsing XML at depth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/e/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/r;->c:Lcom/applovin/impl/sdk/e/r$a;

    invoke-virtual {v1, p1}, Lcom/applovin/impl/sdk/e/r$a;->a(Lcom/applovin/impl/sdk/utils/q;)V

    invoke-static {p1}, Lcom/applovin/impl/a/l;->a(Lcom/applovin/impl/sdk/utils/q;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->eh:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge v0, p1, :cond_0

    const-string p1, "VAST response is wrapper. Resolving..."

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/e/a;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/applovin/impl/sdk/e/x;

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->c:Lcom/applovin/impl/sdk/e/r$a;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/r;->a:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-direct {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/e/x;-><init>(Lcom/applovin/impl/a/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reached beyond max wrapper depth of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/e/a;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/applovin/impl/a/f;->h:Lcom/applovin/impl/a/f;

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/applovin/impl/a/l;->b(Lcom/applovin/impl/sdk/utils/q;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "VAST response is inline. Rendering ad..."

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/e/a;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/applovin/impl/sdk/e/t;

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->c:Lcom/applovin/impl/sdk/e/r$a;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/r;->a:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-direct {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/e/t;-><init>(Lcom/applovin/impl/a/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->R()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    goto :goto_2

    :cond_2
    const-string p1, "VAST response is an error"

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/e/a;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/applovin/impl/a/f;->i:Lcom/applovin/impl/a/f;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/e/r;->a(Lcom/applovin/impl/a/f;)V

    :goto_2
    return-void
.end method

.method public e(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/q;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/sdk/utils/q;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "Failed to process VAST response"

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/applovin/impl/a/f;->e:Lcom/applovin/impl/a/f;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/e/r;->a(Lcom/applovin/impl/a/f;)V

    const/4 p1, 0x0

    return-object p1
.end method
