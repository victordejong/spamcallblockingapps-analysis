.class Le/a/b/f/a$a;
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
.field final synthetic b:Le/a/b/f/a;


# direct methods
.method constructor <init>(Le/a/b/f/a;)V
    .locals 0

    iput-object p1, p0, Le/a/b/f/a$a;->b:Le/a/b/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Le/a/b/f/a$a;->b:Le/a/b/f/a;

    invoke-static {v0}, Le/a/b/f/a;->a(Le/a/b/f/a;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/klinker/android/send_message/d;->service_message_not_found:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
