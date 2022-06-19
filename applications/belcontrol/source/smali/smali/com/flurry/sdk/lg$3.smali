.class public final Lcom/flurry/sdk/lg$3;
.super Lcom/flurry/sdk/mf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/flurry/sdk/lg;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/lg;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/lg$3;->d:Lcom/flurry/sdk/lg;

    iput-object p2, p0, Lcom/flurry/sdk/lg$3;->a:[B

    iput-object p3, p0, Lcom/flurry/sdk/lg$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/flurry/sdk/lg$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Lcom/flurry/sdk/lg$3;->d:Lcom/flurry/sdk/lg;

    iget-object v1, p0, Lcom/flurry/sdk/lg$3;->a:[B

    iget-object v2, p0, Lcom/flurry/sdk/lg$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/sdk/lg$3;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/flurry/sdk/lg;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flurry/sdk/lh;

    invoke-direct {v3, v1}, Lcom/flurry/sdk/lh;-><init>([B)V

    iget-object v1, v3, Lcom/flurry/sdk/lh;->a:Ljava/lang/String;

    new-instance v4, Lcom/flurry/sdk/kn;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v5

    iget-object v5, v5, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/flurry/sdk/lh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    new-instance v6, Lcom/flurry/sdk/lg$5;

    invoke-direct {v6, v0}, Lcom/flurry/sdk/lg$5;-><init>(Lcom/flurry/sdk/lg;)V

    const-string v7, ".yflurrydatasenderblock."

    const/4 v8, 0x1

    invoke-direct {v4, v5, v7, v8, v6}, Lcom/flurry/sdk/kn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lr;)V

    invoke-virtual {v4, v3}, Lcom/flurry/sdk/kn;->a(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/flurry/sdk/lg;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Saving Block File "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v6

    iget-object v6, v6, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/flurry/sdk/lh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x5

    invoke-static {v5, v4, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/flurry/sdk/lg;->e:Lcom/flurry/sdk/li;

    invoke-virtual {v0, v3, v2}, Lcom/flurry/sdk/li;->a(Lcom/flurry/sdk/lh;Ljava/lang/String;)V

    return-void
.end method
