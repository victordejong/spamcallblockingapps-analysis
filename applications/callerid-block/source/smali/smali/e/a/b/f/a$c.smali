.class Le/a/b/f/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/f/a;->k(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Le/a/b/f/a;


# direct methods
.method constructor <init>(Le/a/b/f/a;I)V
    .locals 0

    iput-object p1, p0, Le/a/b/f/a$c;->c:Le/a/b/f/a;

    iput p2, p0, Le/a/b/f/a$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Le/a/b/f/a$c;->c:Le/a/b/f/a;

    invoke-static {v0}, Le/a/b/f/a;->a(Le/a/b/f/a;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Le/a/b/f/a$c;->b:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Mms"

    const-string v1, "Caught an exception in showErrorCodeToast"

    invoke-static {v0, v1}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
