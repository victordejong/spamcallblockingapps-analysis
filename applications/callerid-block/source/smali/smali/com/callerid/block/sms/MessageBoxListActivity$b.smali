.class Lcom/callerid/block/sms/MessageBoxListActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/MessageBoxListActivity;->d1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/callerid/block/sms/MessageBoxListActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/sms/MessageBoxListActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    iput-object p2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "tony"

    :try_start_0
    new-instance v1, Lcom/klinker/android/send_message/f;

    invoke-direct {v1}, Lcom/klinker/android/send_message/f;-><init>()V

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v2}, Lcom/callerid/block/sms/MessageBoxListActivity;->V(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/sms/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callerid/block/sms/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/klinker/android/send_message/f;->u(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v2}, Lcom/callerid/block/sms/MessageBoxListActivity;->V(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/sms/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callerid/block/sms/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/klinker/android/send_message/f;->w(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v2}, Lcom/callerid/block/sms/MessageBoxListActivity;->V(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/sms/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callerid/block/sms/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/klinker/android/send_message/f;->v(Ljava/lang/String;)V

    sget-boolean v2, Lcom/callerid/block/util/w;->a:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settings:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v3}, Lcom/callerid/block/sms/MessageBoxListActivity;->V(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/sms/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callerid/block/sms/g;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/klinker/android/send_message/f;->E(Z)V

    new-instance v2, Lcom/klinker/android/send_message/i;

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-direct {v2, v3, v1}, Lcom/klinker/android/send_message/i;-><init>(Landroid/content/Context;Lcom/klinker/android/send_message/f;)V

    new-instance v1, Lcom/klinker/android/send_message/c;

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->c:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/klinker/android/send_message/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->d:Ljava/lang/String;

    if-eqz v3, :cond_7

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    iget-object v4, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/callerid/block/sms/MessageBoxListActivity;->Y0(Ljava/lang/String;)[B

    move-result-object v3

    sget-boolean v4, Lcom/callerid/block/util/w;->a:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imageSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    div-int/lit16 v5, v5, 0x400

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "K"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v3, :cond_2

    array-length v3, v3

    const v4, 0x4b000

    if-le v3, v4, :cond_2

    new-instance v3, Lg/a/a/a;

    iget-object v4, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lg/a/a/a;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x280

    invoke-virtual {v3, v4}, Lg/a/a/a;->e(I)Lg/a/a/a;

    const/16 v5, 0x1e0

    invoke-virtual {v3, v5}, Lg/a/a/a;->d(I)Lg/a/a/a;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->d:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lg/a/a/a;->a(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v6, Lg/a/a/a;

    iget-object v7, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lg/a/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Lg/a/a/a;->e(I)Lg/a/a/a;

    invoke-virtual {v6, v5}, Lg/a/a/a;->d(I)Lg/a/a/a;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->d:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lg/a/a/a;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/callerid/block/sms/MessageBoxListActivity;->Y0(Ljava/lang/String;)[B

    move-result-object v4

    sget-boolean v5, Lcom/callerid/block/util/w;->a:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imageBytecompressed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v4

    div-int/lit16 v4, v4, 0x400

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "k"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/callerid/block/util/w;->a:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image_video_uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v4}, Lcom/callerid/block/sms/MessageBoxListActivity;->X(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v3}, Lcom/callerid/block/sms/MessageBoxListActivity;->X(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callerid/block/sms/a;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_4
    :goto_0
    if-eqz v3, :cond_6

    sget-boolean v4, Lcom/callerid/block/util/w;->a:Z

    if-eqz v4, :cond_5

    const-string v4, "send mms"

    invoke-static {v0, v4}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1, v3}, Lcom/klinker/android/send_message/c;->m(Landroid/graphics/Bitmap;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/klinker/android/send_message/i;->o(Lcom/klinker/android/send_message/c;J)V

    goto :goto_1

    :cond_6
    sget-boolean v1, Lcom/callerid/block/util/w;->a:Z

    if-eqz v1, :cond_7

    const-string v1, "compressedImageBitmap:null"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/callerid/block/sms/MessageBoxListActivity;->Z(Lcom/callerid/block/sms/MessageBoxListActivity;I)I

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/callerid/block/sms/MessageBoxListActivity;->a0(Lcom/callerid/block/sms/MessageBoxListActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$b;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v1, v2}, Lcom/callerid/block/sms/MessageBoxListActivity;->Y(Lcom/callerid/block/sms/MessageBoxListActivity;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/callerid/block/util/w;->a:Z

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
