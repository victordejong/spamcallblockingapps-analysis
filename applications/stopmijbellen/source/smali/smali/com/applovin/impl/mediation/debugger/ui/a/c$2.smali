.class Lcom/applovin/impl/mediation/debugger/ui/a/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/mediation/debugger/ui/d/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/debugger/ui/a/c;->initialize(Ljava/util/List;Lcom/applovin/impl/sdk/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/l;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/applovin/impl/mediation/debugger/ui/a/c;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/a/c;Lcom/applovin/impl/sdk/l;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/c$2;->c:Lcom/applovin/impl/mediation/debugger/ui/a/c;

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/a/c$2;->a:Lcom/applovin/impl/sdk/l;

    iput-object p3, p0, Lcom/applovin/impl/mediation/debugger/ui/a/c$2;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/debugger/ui/d/a;Lcom/applovin/impl/mediation/debugger/ui/d/c;)V
    .locals 3

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/a/c$2;->c:Lcom/applovin/impl/mediation/debugger/ui/a/c;

    const-class v0, Lcom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/c$2;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->ad()Lcom/applovin/impl/sdk/a;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/mediation/debugger/ui/a/c$2$1;

    invoke-direct {v2, p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/a/c$2$1;-><init>(Lcom/applovin/impl/mediation/debugger/ui/a/c$2;Lcom/applovin/impl/mediation/debugger/ui/d/a;)V

    invoke-static {p2, v0, v1, v2}, Lcom/applovin/impl/mediation/debugger/ui/a/c;->a(Lcom/applovin/impl/mediation/debugger/ui/a/c;Ljava/lang/Class;Lcom/applovin/impl/sdk/a;Lcom/applovin/impl/mediation/debugger/ui/a$a;)V

    return-void
.end method
