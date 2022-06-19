.class Lcom/applovin/impl/mediation/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/b;->a(Lcom/applovin/impl/mediation/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/a/c;

.field public final synthetic b:Lcom/applovin/impl/mediation/b;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/b;Lcom/applovin/impl/mediation/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/mediation/b$1;->b:Lcom/applovin/impl/mediation/b;

    iput-object p2, p0, Lcom/applovin/impl/mediation/b$1;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/b$1;->b:Lcom/applovin/impl/mediation/b;

    invoke-static {v0}, Lcom/applovin/impl/mediation/b;->a(Lcom/applovin/impl/mediation/b;)Lcom/applovin/mediation/MaxAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b$1;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-interface {v0, v1}, Lcom/applovin/mediation/MaxAdListener;->onAdHidden(Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method
