.class public final Lfa1$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "fa1$f"

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lfa1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".SMS.ACTION_MESSAGE_DELIVERED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfa1$f;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".SMS.ACTION_MESSAGE_SENT"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfa1$f;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lfa1$f;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_MESSAGE_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfa1$f;->d:Ljava/lang/String;

    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lfa1$f;->e:Landroid/net/Uri;

    const-string v0, "content://sms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lfa1$f;->f:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "pdus"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    array-length v1, p0

    new-array v0, v1, [Landroid/telephony/SmsMessage;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    check-cast v2, [B

    invoke-static {v2}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lfa1$f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " :fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lj91;->v(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/Intent;)Li91;
    .locals 2

    invoke-static {p0}, Lfa1$f;->a(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    if-nez v1, :cond_2

    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    invoke-static {v1}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Intent;Ln91$b;)V
    .locals 5

    invoke-static {}, Lfa1;->u()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lfa1$f;->a(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object p0

    array-length v0, p0

    if-nez v0, :cond_1

    sget-object p0, Lfa1$f;->a:Ljava/lang/String;

    const-string p1, "No messages found"

    invoke-static {p0, p1}, Lj91;->G(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ll81;

    invoke-direct {v0}, Ll81;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Ll81;->l:Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v2

    iput-object v2, v0, Ll81;->m:Li91;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Ll81;->s:J

    sget-object v4, Lq71$e;->c:Lq71$e;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    iput-object v4, v0, Ll81;->o:Ljava/util/EnumSet;

    const/4 v4, 0x1

    iput v4, v0, Ll81;->n:I

    iput-wide v2, v0, Ll81;->f:J

    iget-object v2, p1, Ln91$b;->a:Ln91$a;

    iput-object v2, v0, Ll81;->p:Ln91$a;

    iget-boolean v2, p1, Ln91$b;->b:Z

    iput-boolean v2, v0, Ll81;->j:Z

    iget-object v2, p1, Ln91$b;->d:Ljava/lang/String;

    iput-object v2, v0, Ll81;->k:Ljava/lang/String;

    iget-object p1, p1, Ln91$b;->f:Ljava/lang/String;

    iput-object p1, v0, Ll81;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ll81;->E()Z

    invoke-virtual {v0}, Ll81;->F()V

    invoke-virtual {v0}, Ll81;->E0()V

    array-length p1, p0

    :goto_0
    if-ge v1, p1, :cond_3

    aget-object v2, p0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Ll81;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ll81;->l:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-boolean p0, v0, Ll81;->j:Z

    if-nez p0, :cond_4

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0, v0}, Lia1;->b(Landroid/content/Context;Ll81;)Ll81;

    :cond_4
    invoke-virtual {v0}, Lv71;->z()Z

    return-void
.end method

.method public static d(J)V
    .locals 2

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lfa1$f;->e:Landroid/net/Uri;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static e(Li91;Ljava/lang/String;JJ)J
    .locals 8

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p0}, Li91;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide v1

    :cond_1
    new-instance v0, Ll81;

    invoke-direct {v0}, Ll81;-><init>()V

    iput-object p1, v0, Ll81;->l:Ljava/lang/String;

    iput-object p0, v0, Ll81;->m:Li91;

    invoke-virtual {p0}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ll81;->h:Ljava/lang/String;

    sget-object v1, Lq71$e;->c:Lq71$e;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, v0, Ll81;->o:Ljava/util/EnumSet;

    const/4 v1, 0x6

    iput v1, v0, Ll81;->n:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Ll81;->f:J

    invoke-virtual {v0}, Ll81;->F()V

    invoke-virtual {v0}, Ll81;->E0()V

    iput-wide p2, v0, Ll81;->w:J

    iput-wide p4, v0, Ll81;->x:J

    invoke-virtual {v0}, Ll81;->z0()Ll81;

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2, v0}, Lia1;->b(Landroid/content/Context;Ll81;)Ll81;

    invoke-virtual {v0}, Lv71;->z()Z

    iget-wide p3, v0, Ll81;->d:J

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Landroid/content/Intent;

    sget-object p5, Lfa1$f;->b:Ljava/lang/String;

    invoke-direct {p4, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lfa1$f;->d:Ljava/lang/String;

    invoke-virtual {p5, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance p5, Landroid/content/Intent;

    sget-object v2, Lfa1$f;->c:Ljava/lang/String;

    invoke-direct {p5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p3, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p2, p3, p5, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {p2, p3, p4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 p5, 0x1

    if-le p4, p5, :cond_2

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Li91;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    move-object p0, p2

    move-object p2, v1

    invoke-virtual/range {p0 .. p5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Li91;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v2, p2

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_0
    iget-wide p0, v0, Ll81;->u:J

    return-wide p0
.end method
