.class Lcom/applovin/impl/sdk/e/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/e/n;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/e/n;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/e/n;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/n$2;->a:Lcom/applovin/impl/sdk/e/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/n$2;->a:Lcom/applovin/impl/sdk/e/n;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/n;->a(Lcom/applovin/impl/sdk/e/n;)Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->C()Lcom/applovin/impl/mediation/e;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/n$2;->a:Lcom/applovin/impl/sdk/e/n;

    invoke-static {v1}, Lcom/applovin/impl/sdk/e/n;->a(Lcom/applovin/impl/sdk/e/n;)Lcom/applovin/impl/sdk/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->ad()Lcom/applovin/impl/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/e;->a(Landroid/app/Activity;)V

    return-void
.end method
