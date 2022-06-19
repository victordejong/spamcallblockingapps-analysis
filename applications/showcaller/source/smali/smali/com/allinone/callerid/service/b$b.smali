.class Lcom/allinone/callerid/service/b$b;
.super Ljava/lang/Object;
.source "RecordCallService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/service/b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v1}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/h1;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v1}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setName(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v1}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setNumbertype(I)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "recorder_noupload_count"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v1}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setNumbertype(I)V

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "recorder_okupload_count"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v1}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getFilepath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v2}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getFilepath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v2}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setFilesize(J)V

    .line 10
    iget-object v2, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v2}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v2

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setFilesizestring(Ljava/lang/String;)V

    .line 11
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v2}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "recorder_okupload_unidentified_count"

    const/16 v3, 0x7a

    if-eqz v1, :cond_5

    .line 12
    :try_start_1
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, ""

    if-eqz v4, :cond_3

    .line 13
    :try_start_2
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 14
    iget-object v6, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v6}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v6}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    iget-object v6, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v6}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setName(Ljava/lang/String;)V

    .line 16
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getFaild_error_log()I

    move-result v4

    .line 17
    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 19
    iget-object v2, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v2}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v2

    const/16 v3, 0x79

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setHarassstatus(I)V

    .line 20
    iget-object v2, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v2}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setPhoneType(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "recorder_okupload_spam_count"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-nez v4, :cond_6

    .line 22
    iget-object v1, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v1}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setHarassstatus(I)V

    .line 23
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 24
    :cond_5
    iget-object v1, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v1}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setHarassstatus(I)V

    .line 25
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v1}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getEndtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v3}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getStarttime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 28
    iget-object v3, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v3}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setTimespan(J)V

    .line 29
    iget-object v1, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v1}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getFilepath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v1}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getFilesize()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    cmp-long v1, v3, v5

    if-lez v1, :cond_a

    .line 30
    iget-object v1, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v1}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getFilepath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->u(Ljava/lang/String;)I

    move-result v1

    .line 31
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v3, :cond_7

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wbb"

    invoke-static {v4, v3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-lez v1, :cond_8

    .line 33
    iget-object v3, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v3}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setTimespan(J)V

    .line 34
    :cond_8
    invoke-static {}, Lcom/allinone/callerid/f/k/b;->d()Lcom/allinone/callerid/f/k/b;

    move-result-object v1

    iget-object v3, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v3}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/allinone/callerid/f/k/b;->a(Lcom/allinone/callerid/bean/recorder/RecordCall;)V

    if-eqz v0, :cond_9

    .line 35
    iget-object v0, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/allinone/callerid/service/b;->d(Lcom/allinone/callerid/service/b;Z)V

    goto :goto_3

    .line 36
    :cond_9
    iget-object v0, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v0, v2}, Lcom/allinone/callerid/service/b;->d(Lcom/allinone/callerid/service/b;Z)V

    goto :goto_3

    .line 37
    :cond_a
    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    invoke-static {v1}, Lcom/allinone/callerid/service/b;->b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getFilepath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :goto_3
    iget-object v0, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/allinone/callerid/service/b;->c(Lcom/allinone/callerid/service/b;Lcom/allinone/callerid/bean/recorder/RecordCall;)Lcom/allinone/callerid/bean/recorder/RecordCall;

    .line 41
    iget-object v0, p0, Lcom/allinone/callerid/service/b$b;->d:Lcom/allinone/callerid/service/b;

    iput-boolean v2, v0, Lcom/allinone/callerid/service/b;->c:Z

    return-void
.end method
