.class Lcom/applovin/impl/mediation/debugger/ui/e/a$1;
.super Lcom/applovin/impl/mediation/debugger/ui/d/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/debugger/ui/e/a;->initialize(Ljava/util/List;Lcom/applovin/impl/sdk/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/debugger/ui/e/a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/e/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->a:Lcom/applovin/impl/mediation/debugger/ui/e/a;

    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/debugger/ui/d/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->a:Lcom/applovin/impl/mediation/debugger/ui/e/a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/e/a;->a(Lcom/applovin/impl/mediation/debugger/ui/e/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(I)Lcom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 1

    new-instance p1, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/d/c$b;->b:Lcom/applovin/impl/mediation/debugger/ui/d/c$b;

    invoke-direct {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;-><init>(Lcom/applovin/impl/mediation/debugger/ui/d/c$b;)V

    const-string v0, "Select a network to load ads using your MAX ad unit configuration. Once enabled, this functionality will reset on the next app session."

    invoke-virtual {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lcom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lcom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$1;->a:Lcom/applovin/impl/mediation/debugger/ui/e/a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/e/a;->a(Lcom/applovin/impl/mediation/debugger/ui/e/a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
