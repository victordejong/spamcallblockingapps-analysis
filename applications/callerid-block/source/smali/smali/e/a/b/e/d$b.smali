.class Le/a/b/e/d$b;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/e/d;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Le/a/b/e/d;


# direct methods
.method constructor <init>(Le/a/b/e/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/e/d$b;->b:Le/a/b/e/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Le/a/b/e/d$b;->b:Le/a/b/e/d;

    invoke-static {v0}, Le/a/b/e/d;->b(Le/a/b/e/d;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmsConfigManager.loadInBackground(): mcc/mnc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmsConfigManager"

    invoke-static {v1, v0}, Le/d/a/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/b/e/d$b;->b:Le/a/b/e/d;

    invoke-static {v0}, Le/a/b/e/d;->b(Le/a/b/e/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Le/a/b/e/d;->c(Le/a/b/e/d;Landroid/content/Context;)V

    return-void
.end method
