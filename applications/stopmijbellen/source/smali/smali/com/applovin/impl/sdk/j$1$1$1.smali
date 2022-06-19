.class Lcom/applovin/impl/sdk/j$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/j$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/j$1$1;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/j$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/j$1$1$1;->a:Lcom/applovin/impl/sdk/j$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p2, p0, Lcom/applovin/impl/sdk/j$1$1$1;->a:Lcom/applovin/impl/sdk/j$1$1;

    iget-object p2, p2, Lcom/applovin/impl/sdk/j$1$1;->a:Lcom/applovin/impl/sdk/j$1;

    iget-object p2, p2, Lcom/applovin/impl/sdk/j$1;->b:Lcom/applovin/impl/sdk/j$a;

    invoke-interface {p2}, Lcom/applovin/impl/sdk/j$a;->b()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/applovin/impl/sdk/j;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/j$1$1$1;->a:Lcom/applovin/impl/sdk/j$1$1;

    iget-object p1, p1, Lcom/applovin/impl/sdk/j$1$1;->a:Lcom/applovin/impl/sdk/j$1;

    iget-object p1, p1, Lcom/applovin/impl/sdk/j$1;->a:Lcom/applovin/impl/sdk/l;

    sget-object p2, Lcom/applovin/impl/sdk/c/b;->aE:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j$1$1$1;->a:Lcom/applovin/impl/sdk/j$1$1;

    iget-object v0, v0, Lcom/applovin/impl/sdk/j$1$1;->a:Lcom/applovin/impl/sdk/j$1;

    iget-object v1, v0, Lcom/applovin/impl/sdk/j$1;->c:Lcom/applovin/impl/sdk/j;

    iget-object v2, v0, Lcom/applovin/impl/sdk/j$1;->a:Lcom/applovin/impl/sdk/l;

    iget-object v0, v0, Lcom/applovin/impl/sdk/j$1;->b:Lcom/applovin/impl/sdk/j$a;

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/applovin/impl/sdk/j;->a(JLcom/applovin/impl/sdk/l;Lcom/applovin/impl/sdk/j$a;)V

    return-void
.end method
