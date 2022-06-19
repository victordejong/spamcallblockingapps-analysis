.class Le/a/b/f/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/f/a;->j(Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Le/a/b/f/a;


# direct methods
.method constructor <init>(Le/a/b/f/a;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Le/a/b/f/a$b;->c:Le/a/b/f/a;

    iput-object p2, p0, Le/a/b/f/a$b;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Le/a/b/f/a$b;->c:Le/a/b/f/a;

    invoke-static {v0}, Le/a/b/f/a;->a(Le/a/b/f/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Le/a/b/f/a$b;->c:Le/a/b/f/a;

    iget-object v2, p0, Le/a/b/f/a$b;->b:Landroid/net/Uri;

    invoke-static {v1, v2}, Le/a/b/f/a;->b(Le/a/b/f/a;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mms"

    invoke-static {v2, v1, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
