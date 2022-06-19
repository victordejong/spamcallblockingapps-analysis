.class public final Lcom/flurry/sdk/jk$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/la$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jk;->a([BLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/la$a<",
        "[B",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/flurry/sdk/jk;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/jk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jk$1;->c:Lcom/flurry/sdk/jk;

    iput-object p2, p0, Lcom/flurry/sdk/jk$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/jk$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/la;Ljava/lang/Object;)V
    .locals 2

    iget p1, p1, Lcom/flurry/sdk/lc;->q:I

    if-lez p1, :cond_1

    invoke-static {}, Lcom/flurry/sdk/jk;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Analytics report sent."

    invoke-static {p2, v0}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/jk;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlurryDataSender: report "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/jk$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sent. HTTP response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, p2, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/ku;->c()I

    move-result p2

    if-gt p2, v1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/ku;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object p2

    new-instance v0, Lcom/flurry/sdk/jk$1$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/jk$1$1;-><init>(Lcom/flurry/sdk/jk$1;I)V

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/kg;->a(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p2, p0, Lcom/flurry/sdk/jk$1;->c:Lcom/flurry/sdk/jk;

    iget-object v0, p0, Lcom/flurry/sdk/jk$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/sdk/jk$1;->b:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lcom/flurry/sdk/jk;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/flurry/sdk/jk$1;->c:Lcom/flurry/sdk/jk;

    invoke-static {p1}, Lcom/flurry/sdk/jk;->a(Lcom/flurry/sdk/jk;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/flurry/sdk/jk$1;->c:Lcom/flurry/sdk/jk;

    iget-object p2, p0, Lcom/flurry/sdk/jk$1;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/flurry/sdk/jk;->a(Lcom/flurry/sdk/jk;Ljava/lang/String;)V

    return-void
.end method
