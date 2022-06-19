.class public final Lcom/facebook/rebound/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/facebook/rebound/h;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/rebound/g;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/facebook/rebound/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/facebook/rebound/h;-><init>(Z)V

    sput-object v0, Lcom/facebook/rebound/h;->b:Lcom/facebook/rebound/h;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/h;->a:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 36
    sget-object p1, Lcom/facebook/rebound/g;->c:Lcom/facebook/rebound/g;

    const-string v0, "default config"

    invoke-virtual {p0, p1, v0}, Lcom/facebook/rebound/h;->a(Lcom/facebook/rebound/g;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static a()Lcom/facebook/rebound/h;
    .locals 1

    .line 25
    sget-object v0, Lcom/facebook/rebound/h;->b:Lcom/facebook/rebound/h;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/rebound/g;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 55
    iget-object v0, p0, Lcom/facebook/rebound/h;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/h;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "configName is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "springConfig is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
