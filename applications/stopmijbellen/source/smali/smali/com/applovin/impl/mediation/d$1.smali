.class Lcom/applovin/impl/mediation/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/mediation/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/d;->a(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/util/Map;Lcom/applovin/impl/sdk/network/j;Landroid/content/Context;Lcom/applovin/impl/mediation/ads/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/applovin/mediation/MaxAdFormat;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lcom/applovin/impl/sdk/network/j;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lcom/applovin/impl/mediation/ads/a$a;

.field public final synthetic g:Lcom/applovin/impl/mediation/d;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/d;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/util/Map;Lcom/applovin/impl/sdk/network/j;Landroid/content/Context;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/mediation/d$1;->g:Lcom/applovin/impl/mediation/d;

    iput-object p2, p0, Lcom/applovin/impl/mediation/d$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/applovin/impl/mediation/d$1;->b:Lcom/applovin/mediation/MaxAdFormat;

    iput-object p4, p0, Lcom/applovin/impl/mediation/d$1;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/applovin/impl/mediation/d$1;->d:Lcom/applovin/impl/sdk/network/j;

    iput-object p6, p0, Lcom/applovin/impl/mediation/d$1;->e:Landroid/content/Context;

    iput-object p7, p0, Lcom/applovin/impl/mediation/d$1;->f:Lcom/applovin/impl/mediation/ads/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;)V
    .locals 10

    new-instance v9, Lcom/applovin/impl/mediation/b/c;

    iget-object v1, p0, Lcom/applovin/impl/mediation/d$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/mediation/d$1;->b:Lcom/applovin/mediation/MaxAdFormat;

    iget-object v3, p0, Lcom/applovin/impl/mediation/d$1;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/applovin/impl/mediation/d$1;->d:Lcom/applovin/impl/sdk/network/j;

    iget-object v6, p0, Lcom/applovin/impl/mediation/d$1;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/applovin/impl/mediation/d$1;->g:Lcom/applovin/impl/mediation/d;

    invoke-static {v0}, Lcom/applovin/impl/mediation/d;->a(Lcom/applovin/impl/mediation/d;)Lcom/applovin/impl/sdk/l;

    move-result-object v7

    iget-object v8, p0, Lcom/applovin/impl/mediation/d$1;->f:Lcom/applovin/impl/mediation/ads/a$a;

    move-object v0, v9

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/applovin/impl/mediation/b/c;-><init>(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/util/Map;Lcom/applovin/impl/sdk/network/j;Lorg/json/JSONArray;Landroid/content/Context;Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/mediation/ads/a$a;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/d$1;->g:Lcom/applovin/impl/mediation/d;

    invoke-static {p1}, Lcom/applovin/impl/mediation/d;->a(Lcom/applovin/impl/mediation/d;)Lcom/applovin/impl/sdk/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->R()Lcom/applovin/impl/sdk/e/o;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    return-void
.end method
