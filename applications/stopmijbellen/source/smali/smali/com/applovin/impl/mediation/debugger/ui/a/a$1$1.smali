.class Lcom/applovin/impl/mediation/debugger/ui/a/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/mediation/debugger/ui/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/debugger/ui/a/a$1;->a(Lcom/applovin/impl/mediation/debugger/ui/d/a;Lcom/applovin/impl/mediation/debugger/ui/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/applovin/impl/mediation/debugger/ui/a$a<",
        "Lcom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/debugger/ui/d/c;

.field public final synthetic b:Lcom/applovin/impl/mediation/debugger/ui/a/a$1;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/a/a$1;Lcom/applovin/impl/mediation/debugger/ui/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a$1$1;->b:Lcom/applovin/impl/mediation/debugger/ui/a/a$1;

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a$1$1;->a:Lcom/applovin/impl/mediation/debugger/ui/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/app/Activity;)V
    .locals 0

    check-cast p1, Lcom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/a/a$1$1;->a(Lcom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;)V

    return-void
.end method

.method public a(Lcom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a$1$1;->a:Lcom/applovin/impl/mediation/debugger/ui/d/c;

    check-cast v0, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/a/b$a;->a()Lcom/applovin/impl/mediation/debugger/a/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/a/a$1$1;->b:Lcom/applovin/impl/mediation/debugger/ui/a/a$1;

    iget-object v2, v1, Lcom/applovin/impl/mediation/debugger/ui/a/a$1;->b:Lcom/applovin/impl/mediation/debugger/a/a/a;

    iget-object v1, v1, Lcom/applovin/impl/mediation/debugger/ui/a/a$1;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1, v2, v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/a/a;->initialize(Lcom/applovin/impl/mediation/debugger/a/a/a;Lcom/applovin/impl/mediation/debugger/a/a/b;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method
