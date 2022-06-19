.class Lcom/callerid/block/sms/MessageBoxListActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/MessageBoxListActivity;->e1(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/callerid/block/sms/MessageBoxListActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/sms/MessageBoxListActivity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$c;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    iput-object p2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$c;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/callerid/block/sms/MessageBoxListActivity$c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/callerid/block/sms/MessageBoxListActivity$c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$c;->b:Landroid/net/Uri;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$c;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$c;->b:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    const-string v2, "tony"

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "_data"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/callerid/block/util/w;->a:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video_path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v3, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$c;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {v0, v3}, Lcom/callerid/block/sms/MessageBoxListActivity;->Y0(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v1, v0

    if-lez v1, :cond_5

    sget-boolean v1, Lcom/callerid/block/util/w;->a:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoByte:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    div-int/lit16 v3, v3, 0x400

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "K"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v1, Lcom/klinker/android/send_message/c;

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity$c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/callerid/block/sms/MessageBoxListActivity$c;->d:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/klinker/android/send_message/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/klinker/android/send_message/c;->b([B)V

    new-instance v0, Lcom/klinker/android/send_message/f;

    invoke-direct {v0}, Lcom/klinker/android/send_message/f;-><init>()V

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity$c;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v3}, Lcom/callerid/block/sms/MessageBoxListActivity;->V(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/sms/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callerid/block/sms/g;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/klinker/android/send_message/f;->u(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity$c;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v3}, Lcom/callerid/block/sms/MessageBoxListActivity;->V(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/sms/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callerid/block/sms/g;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/klinker/android/send_message/f;->w(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity$c;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v3}, Lcom/callerid/block/sms/MessageBoxListActivity;->V(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/sms/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callerid/block/sms/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/klinker/android/send_message/f;->v(Ljava/lang/String;)V

    sget-boolean v3, Lcom/callerid/block/util/w;->a:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settings:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/callerid/block/sms/MessageBoxListActivity$c;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v4}, Lcom/callerid/block/sms/MessageBoxListActivity;->V(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/sms/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callerid/block/sms/g;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/klinker/android/send_message/f;->E(Z)V

    new-instance v2, Lcom/klinker/android/send_message/i;

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity$c;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-direct {v2, v3, v0}, Lcom/klinker/android/send_message/i;-><init>(Landroid/content/Context;Lcom/klinker/android/send_message/f;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/klinker/android/send_message/i;->o(Lcom/klinker/android/send_message/c;J)V

    :cond_5
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$c;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/sms/MessageBoxListActivity;->Z(Lcom/callerid/block/sms/MessageBoxListActivity;I)I

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$c;->e:Lcom/callerid/block/sms/MessageBoxListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/sms/MessageBoxListActivity;->Y(Lcom/callerid/block/sms/MessageBoxListActivity;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
