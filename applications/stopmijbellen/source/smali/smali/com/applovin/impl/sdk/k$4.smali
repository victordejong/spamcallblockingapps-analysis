.class Lcom/applovin/impl/sdk/k$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/k;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/applovin/impl/sdk/k;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/k;J)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/k$4;->b:Lcom/applovin/impl/sdk/k;

    iput-wide p2, p0, Lcom/applovin/impl/sdk/k$4;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/k$4;->b:Lcom/applovin/impl/sdk/k;

    invoke-static {v0}, Lcom/applovin/impl/sdk/k;->c(Lcom/applovin/impl/sdk/k;)Lcom/applovin/impl/sdk/t;

    move-result-object v0

    const-string v1, "ConsentDialogManager"

    const-string v2, "Scheduling repeating consent alert"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/k$4;->b:Lcom/applovin/impl/sdk/k;

    invoke-static {v0}, Lcom/applovin/impl/sdk/k;->d(Lcom/applovin/impl/sdk/k;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    iget-wide v1, p0, Lcom/applovin/impl/sdk/k$4;->a:J

    iget-object v3, p0, Lcom/applovin/impl/sdk/k$4;->b:Lcom/applovin/impl/sdk/k;

    invoke-static {v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/sdk/k;)Lcom/applovin/impl/sdk/l;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/k$4;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/applovin/impl/sdk/j;->a(JLcom/applovin/impl/sdk/l;Lcom/applovin/impl/sdk/j$a;)V

    return-void
.end method
