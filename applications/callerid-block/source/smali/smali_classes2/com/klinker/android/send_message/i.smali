.class public Lcom/klinker/android/send_message/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/klinker/android/send_message/i$d;
    }
.end annotation


# static fields
.field public static h:Lcom/klinker/android/send_message/f; = null

.field public static i:Ljava/lang/String; = ".NOTIFY_SMS_FAILURE"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/Intent;

.field private c:Landroid/content/Intent;

.field private d:Landroid/content/Intent;

.field private e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/klinker/android/send_message/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/klinker/android/send_message/i;->e:Z

    const-string v0, ".SMS_SENT"

    iput-object v0, p0, Lcom/klinker/android/send_message/i;->f:Ljava/lang/String;

    const-string v0, ".SMS_DELIVERED"

    iput-object v0, p0, Lcom/klinker/android/send_message/i;->g:Ljava/lang/String;

    sput-object p2, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    iput-object p1, p0, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/klinker/android/send_message/i;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/klinker/android/send_message/i;->f:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/klinker/android/send_message/i;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/klinker/android/send_message/i;->g:Ljava/lang/String;

    sget-object p2, Lcom/klinker/android/send_message/i;->i:Ljava/lang/String;

    const-string v0, ".NOTIFY_SMS_FAILURE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/klinker/android/send_message/i;->i:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/klinker/android/send_message/i;->i:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/klinker/android/send_message/i;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/klinker/android/send_message/i;Landroid/net/Uri;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/klinker/android/send_message/i;->e(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method private static c(Lcom/google/android/mms/c/j;Lcom/google/android/mms/b;I)I
    .locals 3

    iget-object p2, p1, Lcom/google/android/mms/b;->a:Ljava/lang/String;

    new-instance v0, Lcom/google/android/mms/c/o;

    invoke-direct {v0}, Lcom/google/android/mms/c/o;-><init>()V

    iget-object v1, p1, Lcom/google/android/mms/b;->b:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/o;->m(I)V

    :cond_0
    iget-object v1, p1, Lcom/google/android/mms/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/o;->r([B)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/o;->p([B)V

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/mms/c/o;->o([B)V

    iget-object p1, p1, Lcom/google/android/mms/b;->c:[B

    invoke-virtual {v0, p1}, Lcom/google/android/mms/c/o;->s([B)V

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/j;->b(Lcom/google/android/mms/c/o;)Z

    invoke-virtual {v0}, Lcom/google/android/mms/c/o;->h()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method private static d(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/mms/c/v;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/mms/b;",
            ">;)",
            "Lcom/google/android/mms/c/v;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/mms/c/v;

    invoke-direct {v0}, Lcom/google/android/mms/c/v;-><init>()V

    invoke-static {p0}, Lcom/klinker/android/send_message/j;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/mms/c/e;

    invoke-direct {v1, p0}, Lcom/google/android/mms/c/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/f;->c(Lcom/google/android/mms/c/e;)V

    :cond_0
    array-length p0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    aget-object v3, p1, v2

    new-instance v4, Lcom/google/android/mms/c/e;

    invoke-direct {v4, v3}, Lcom/google/android/mms/c/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/google/android/mms/c/g;->f(Lcom/google/android/mms/c/e;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Lcom/google/android/mms/c/e;

    invoke-direct {p0, p2}, Lcom/google/android/mms/c/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/android/mms/c/g;->n(Lcom/google/android/mms/c/e;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/16 v2, 0x3e8

    div-long/2addr p0, v2

    invoke-virtual {v0, p0, p1}, Lcom/google/android/mms/c/g;->l(J)V

    new-instance p0, Lcom/google/android/mms/c/j;

    invoke-direct {p0}, Lcom/google/android/mms/c/j;-><init>()V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/mms/b;

    invoke-static {p0, v2, p1}, Lcom/klinker/android/send_message/i;->c(Lcom/google/android/mms/c/j;Lcom/google/android/mms/b;I)I

    move-result v2

    add-int/2addr p2, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0}, Lcom/google/android/mms/d/a;->c(Lcom/google/android/mms/c/j;)Li/a/a/a/d;

    move-result-object p3

    invoke-static {p3, p1}, Le/a/b/b/g/m/a;->a(Li/a/a/a/d;Ljava/io/OutputStream;)V

    new-instance p3, Lcom/google/android/mms/c/o;

    invoke-direct {p3}, Lcom/google/android/mms/c/o;-><init>()V

    const-string v2, "smil"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/android/mms/c/o;->o([B)V

    const-string v2, "smil.xml"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/android/mms/c/o;->p([B)V

    const-string v2, "application/smil"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/android/mms/c/o;->r([B)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/mms/c/o;->s([B)V

    invoke-virtual {p0, v1, p3}, Lcom/google/android/mms/c/j;->a(ILcom/google/android/mms/c/o;)V

    invoke-virtual {v0, p0}, Lcom/google/android/mms/c/g;->k(Lcom/google/android/mms/c/j;)V

    int-to-long p0, p2

    invoke-virtual {v0, p0, p1}, Lcom/google/android/mms/c/v;->A(J)V

    const-string p0, "personal"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/mms/c/v;->z([B)V

    const-wide/32 p0, 0x93a80

    invoke-virtual {v0, p0, p1}, Lcom/google/android/mms/c/v;->y(J)V

    const/16 p0, 0x81

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/google/android/mms/c/g;->m(I)V

    invoke-virtual {v0, p0}, Lcom/google/android/mms/c/v;->x(I)V

    invoke-virtual {v0, p0}, Lcom/google/android/mms/c/v;->B(I)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private e(Landroid/net/Uri;)Z
    .locals 8

    iget-object v0, p0, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v7, 0x0

    aput-object v2, v3, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_0
    return v7
.end method

.method private static g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "charset"

    const-string v1, "106"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x97

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/addr"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static h(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;)Landroid/net/Uri;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "mid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ct"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "cid"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms/"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/part"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p3, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p3, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 p2, 0x100

    new-array p2, p2, [B

    :goto_0
    invoke-virtual {p3, p2}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p3}, Ljava/io/ByteArrayInputStream;->close()V

    return-object p1
.end method

.method private static i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "mid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ct"

    const-string v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "text"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/part"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/content/Context;Z[Ljava/lang/String;[Lcom/google/android/mms/b;Ljava/lang/String;)Lcom/klinker/android/send_message/i$d;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "thread_id"

    const-string v6, "Transaction"

    new-instance v8, Lcom/google/android/mms/c/v;

    invoke-direct {v8}, Lcom/google/android/mms/c/v;-><init>()V

    const/4 v13, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v7, v2

    if-ge v0, v7, :cond_1

    aget-object v7, v2, v0

    invoke-static {v7}, Lcom/google/android/mms/c/e;->d(Ljava/lang/String;)[Lcom/google/android/mms/c/e;

    move-result-object v7

    if-eqz v7, :cond_0

    array-length v9, v7

    if-lez v9, :cond_0

    aget-object v7, v7, v13

    invoke-virtual {v8, v7}, Lcom/google/android/mms/c/g;->f(Lcom/google/android/mms/c/e;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    new-instance v0, Lcom/google/android/mms/c/e;

    invoke-direct {v0, v4}, Lcom/google/android/mms/c/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/google/android/mms/c/g;->n(Lcom/google/android/mms/c/e;)V

    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Lcom/google/android/mms/c/g;->l(J)V

    :try_start_0
    new-instance v0, Lcom/google/android/mms/c/e;

    invoke-static/range {p0 .. p0}, Lcom/klinker/android/send_message/j;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/google/android/mms/c/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/google/android/mms/c/f;->c(Lcom/google/android/mms/c/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v7, "error getting from address"

    invoke-static {v6, v7, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    new-instance v0, Lcom/google/android/mms/c/j;

    invoke-direct {v0}, Lcom/google/android/mms/c/j;-><init>()V

    const-wide/16 v9, 0x0

    if-eqz v3, :cond_6

    const/4 v7, 0x0

    :goto_2
    array-length v11, v3

    if-ge v7, v11, :cond_6

    aget-object v11, v3, v7

    if-eqz v11, :cond_5

    :try_start_1
    new-instance v12, Lcom/google/android/mms/c/o;

    invoke-direct {v12}, Lcom/google/android/mms/c/o;-><init>()V

    iget-object v14, v11, Lcom/google/android/mms/b;->a:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/google/android/mms/c/o;->v([B)V

    iget-object v14, v11, Lcom/google/android/mms/b;->b:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/google/android/mms/c/o;->r([B)V

    iget-object v14, v11, Lcom/google/android/mms/b;->b:Ljava/lang/String;

    const-string v15, "text"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/16 v14, 0x6a

    invoke-virtual {v12, v14}, Lcom/google/android/mms/c/o;->m(I)V

    :cond_3
    iget-object v14, v11, Lcom/google/android/mms/b;->a:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/google/android/mms/c/o;->p([B)V

    iget-object v14, v11, Lcom/google/android/mms/b;->a:Ljava/lang/String;

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_4

    iget-object v14, v11, Lcom/google/android/mms/b;->a:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v15, v11, Lcom/google/android/mms/b;->a:Ljava/lang/String;

    invoke-virtual {v15, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    :goto_3
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/google/android/mms/c/o;->o([B)V

    iget-object v15, v11, Lcom/google/android/mms/b;->c:[B

    invoke-virtual {v12, v15}, Lcom/google/android/mms/c/o;->s([B)V

    invoke-virtual {v0, v12}, Lcom/google/android/mms/c/j;->b(Lcom/google/android/mms/c/o;)Z

    iget-object v12, v11, Lcom/google/android/mms/b;->a:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    mul-int/lit8 v12, v12, 0x2

    iget-object v15, v11, Lcom/google/android/mms/b;->b:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    array-length v15, v15

    add-int/2addr v12, v15

    iget-object v11, v11, Lcom/google/android/mms/b;->c:[B

    array-length v11, v11

    add-int/2addr v12, v11

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v12, v11

    int-to-long v11, v12

    add-long/2addr v9, v11

    :catch_1
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0}, Lcom/google/android/mms/d/a;->c(Lcom/google/android/mms/c/j;)Li/a/a/a/d;

    move-result-object v11

    invoke-static {v11, v7}, Le/a/b/b/g/m/a;->a(Li/a/a/a/d;Ljava/io/OutputStream;)V

    new-instance v11, Lcom/google/android/mms/c/o;

    invoke-direct {v11}, Lcom/google/android/mms/c/o;-><init>()V

    const-string v12, "smil"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/mms/c/o;->o([B)V

    const-string v12, "smil.xml"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/mms/c/o;->p([B)V

    const-string v12, "application/smil"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/mms/c/o;->r([B)V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/google/android/mms/c/o;->s([B)V

    invoke-virtual {v0, v13, v11}, Lcom/google/android/mms/c/j;->a(ILcom/google/android/mms/c/o;)V

    invoke-virtual {v8, v0}, Lcom/google/android/mms/c/g;->k(Lcom/google/android/mms/c/j;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting message size to "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " bytes"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Lcom/google/android/mms/c/v;->A(J)V

    const/16 v0, 0x81

    invoke-virtual {v8, v0}, Lcom/google/android/mms/c/g;->m(I)V

    invoke-virtual {v8, v0}, Lcom/google/android/mms/c/v;->x(I)V

    const-wide/32 v9, 0x240c8400

    invoke-virtual {v8, v9, v10}, Lcom/google/android/mms/c/v;->y(J)V

    const-string v7, "personal"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/google/android/mms/c/v;->z([B)V

    invoke-virtual {v8, v0}, Lcom/google/android/mms/c/v;->B(I)V

    new-instance v0, Lcom/google/android/mms/c/k;

    invoke-direct {v0, v1, v8}, Lcom/google/android/mms/c/k;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/f;)V

    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/mms/c/k;->s()[B

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4

    new-instance v14, Lcom/klinker/android/send_message/i$d;

    invoke-direct {v14}, Lcom/klinker/android/send_message/i$d;-><init>()V

    iput-object v0, v14, Lcom/klinker/android/send_message/i$d;->c:[B

    const-string v15, "exception thrown"

    if-eqz p1, :cond_7

    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/c/p;->h(Landroid/content/Context;)Lcom/google/android/mms/c/p;

    move-result-object v7

    const-string v0, "content://mms/outbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x1

    sget-object v0, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v0}, Lcom/klinker/android/send_message/f;->c()Z

    move-result v11

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/mms/c/p;->o(Lcom/google/android/mms/c/f;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v14, Lcom/klinker/android/send_message/i$d;->b:Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v7, "sending_mms_library"

    const-string v8, "error saving mms message"

    invoke-static {v7, v8}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v15, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3, v4}, Lcom/klinker/android/send_message/i;->k(Landroid/content/Context;[Ljava/lang/String;[Lcom/google/android/mms/b;Ljava/lang/String;)Landroid/net/Uri;

    :cond_7
    :goto_4
    const-wide/16 v2, 0x115c

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, v14, Lcom/klinker/android/send_message/i$d;->b:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    aput-object v5, v9, v13

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v14, Lcom/klinker/android/send_message/i$d;->a:J

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :cond_8
    iput-wide v2, v14, Lcom/klinker/android/send_message/i$d;->a:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-static {v6, v15, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-wide v2, v14, Lcom/klinker/android/send_message/i$d;->a:J

    :goto_5
    return-object v14

    :catch_4
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Out of memory!"

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method private static k(Landroid/content/Context;[Ljava/lang/String;[Lcom/google/android/mms/b;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12

    const-string v0, "thread_id"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "content://mms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, v3}, Lcom/klinker/android/send_message/j;->k(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v3

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "body"

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "content://sms/sent"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "date"

    const-wide/16 v3, 0x3e8

    div-long v3, v6, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "msg_box"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "read"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "sub"

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "sub_cs"

    const/16 v0, 0x6a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "ct_t"

    const-string v0, "application/vnd.wap.multipart.related"

    invoke-virtual {v8, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    array-length p3, p2

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, p3, :cond_1

    aget-object v10, p2, v9

    iget-object v10, v10, Lcom/google/android/mms/b;->c:[B

    array-length v10, v10

    int-to-long v10, v10

    add-long/2addr v3, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const-string p3, "exp"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "m_cls"

    const-string v3, "personal"

    invoke-virtual {v8, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "m_type"

    const/16 v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, p3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "v"

    const/16 v4, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, p3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "pri"

    const/16 v4, 0x81

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, p3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "tr_id"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "T"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, p3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "resp_st"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p3, v2, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    array-length v3, p2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v6, p2, v4

    iget-object v7, v6, Lcom/google/android/mms/b;->b:Ljava/lang/String;

    const-string v8, "image"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v6, Lcom/google/android/mms/b;->c:[B

    iget-object v6, v6, Lcom/google/android/mms/b;->b:Ljava/lang/String;

    invoke-static {p0, v2, v7, v6}, Lcom/klinker/android/send_message/i;->h(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;)Landroid/net/Uri;

    goto :goto_3

    :cond_2
    iget-object v7, v6, Lcom/google/android/mms/b;->b:Ljava/lang/String;

    const-string v8, "text"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/String;

    iget-object v6, v6, Lcom/google/android/mms/b;->c:[B

    const-string v8, "UTF-8"

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p0, v2, v7}, Lcom/klinker/android/send_message/i;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    array-length p2, p1

    :goto_4
    if-ge v0, p2, :cond_5

    aget-object v3, p1, v0

    invoke-static {p0, v2, v3}, Lcom/klinker/android/send_message/i;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v5, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p0

    const-string p1, "sending_mms_library"

    const-string p2, "still an error saving... :("

    invoke-static {p1, p2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Transaction"

    const-string p2, "exception thrown"

    invoke-static {p1, p2, p0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private l(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/net/Uri;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SmsManager;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;I",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v10, Lcom/klinker/android/send_message/i$b;

    move-object v1, v10

    move-object v2, p0

    move/from16 v3, p6

    move-object/from16 v4, p7

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/klinker/android/send_message/i$b;-><init>(Lcom/klinker/android/send_message/i;ILandroid/net/Uri;Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v0, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private m(Ljava/lang/String;[Ljava/lang/String;[Landroid/graphics/Bitmap;[Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/Bitmap;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/klinker/android/send_message/c$a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    const-string v5, ""

    const/4 v6, 0x0

    move-object v8, v5

    const/4 v7, 0x0

    :goto_0
    array-length v9, v2

    const-string v10, " "

    if-ge v7, v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v7

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_1
    array-length v11, v3

    if-ge v9, v11, :cond_2

    aget-object v11, v3, v9

    invoke-static {v11}, Lcom/klinker/android/send_message/c;->d(Landroid/graphics/Bitmap;)[B

    move-result-object v11

    new-instance v12, Lcom/google/android/mms/b;

    invoke-direct {v12}, Lcom/google/android/mms/b;-><init>()V

    const-string v13, "image/jpeg"

    iput-object v13, v12, Lcom/google/android/mms/b;->b:Ljava/lang/String;

    if-eqz p4, :cond_1

    aget-object v13, p4, v9

    goto :goto_2

    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "image_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_2
    iput-object v13, v12, Lcom/google/android/mms/b;->a:Ljava/lang/String;

    iput-object v11, v12, Lcom/google/android/mms/b;->c:[B

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    if-eqz p5, :cond_4

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/klinker/android/send_message/c$a;

    new-instance v11, Lcom/google/android/mms/b;

    invoke-direct {v11}, Lcom/google/android/mms/b;-><init>()V

    invoke-virtual {v9}, Lcom/klinker/android/send_message/c$a;->c()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v9}, Lcom/klinker/android/send_message/c$a;->c()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_3
    invoke-virtual {v9}, Lcom/klinker/android/send_message/c$a;->a()Ljava/lang/String;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v6

    :goto_4
    iput-object v12, v11, Lcom/google/android/mms/b;->a:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/klinker/android/send_message/c$a;->a()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/google/android/mms/b;->b:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/klinker/android/send_message/c$a;->b()[B

    move-result-object v9

    iput-object v9, v11, Lcom/google/android/mms/b;->c:[B

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Lcom/google/android/mms/b;

    invoke-direct {v3}, Lcom/google/android/mms/b;-><init>()V

    const-string v5, "text"

    iput-object v5, v3, Lcom/google/android/mms/b;->a:Ljava/lang/String;

    const-string v5, "text/plain"

    iput-object v5, v3, Lcom/google/android/mms/b;->b:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/mms/b;->c:[B

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    const-string v5, "Transaction"

    if-gt v0, v3, :cond_6

    :try_start_0
    iget-object v0, v1, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    iget-boolean v2, v1, Lcom/klinker/android/send_message/i;->e:Z

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/google/android/mms/b;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/mms/b;

    invoke-static {v0, v2, v3, v6, v4}, Lcom/klinker/android/send_message/i;->j(Landroid/content/Context;Z[Ljava/lang/String;[Lcom/google/android/mms/b;Ljava/lang/String;)Lcom/klinker/android/send_message/i$d;

    move-result-object v0

    new-instance v2, Lcom/android/mms/transaction/e;

    iget-object v3, v1, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    iget-object v4, v0, Lcom/klinker/android/send_message/i$d;->b:Landroid/net/Uri;

    iget-object v6, v0, Lcom/klinker/android/send_message/i$d;->c:[B

    array-length v6, v6

    int-to-long v6, v6

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/android/mms/transaction/e;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    iget-wide v3, v0, Lcom/klinker/android/send_message/i$d;->a:J

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/transaction/e;->a(J)Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.mms.PROGRESS_STATUS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/klinker/android/send_message/i$c;

    invoke-direct {v2, v1}, Lcom/klinker/android/send_message/i$c;-><init>(Lcom/klinker/android/send_message/i;)V

    iget-object v3, v1, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    invoke-virtual {v3, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    const-string v2, "exception thrown"

    goto :goto_5

    :cond_6
    const-string v0, "using lollipop method for sending sms"

    invoke-static {v5, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v0}, Lcom/klinker/android/send_message/f;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "using system method for sending"

    invoke-static {v5, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/klinker/android/send_message/i;->c:Landroid/content/Intent;

    invoke-static {v0, v4, v8, v2, v3}, Lcom/klinker/android/send_message/i;->n(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_6

    :cond_7
    :try_start_1
    iget-object v0, v1, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    iget-boolean v2, v1, Lcom/klinker/android/send_message/i;->e:Z

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/google/android/mms/b;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/mms/b;

    invoke-static {v0, v2, v3, v6, v4}, Lcom/klinker/android/send_message/i;->j(Landroid/content/Context;Z[Ljava/lang/String;[Lcom/google/android/mms/b;Ljava/lang/String;)Lcom/klinker/android/send_message/i$d;

    move-result-object v0

    new-instance v7, Le/a/b/e/i;

    iget-object v2, v1, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/klinker/android/send_message/i$d;->c:[B

    invoke-direct {v7, v2, v3}, Le/a/b/e/i;-><init>(Landroid/content/Context;[B)V

    new-instance v2, Le/a/b/e/k;

    invoke-static {}, Lcom/klinker/android/send_message/j;->g()I

    move-result v8

    iget-object v9, v0, Lcom/klinker/android/send_message/i$d;->b:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Le/a/b/e/k;-><init>(Le/a/b/e/h$a;ILandroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Le/a/b/e/g;

    iget-object v3, v1, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    invoke-static {}, Lcom/klinker/android/send_message/j;->g()I

    move-result v4

    invoke-direct {v0, v3, v4}, Le/a/b/e/g;-><init>(Landroid/content/Context;I)V

    iget-object v3, v1, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Le/a/b/e/h;->c(Landroid/content/Context;Le/a/b/e/g;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    const-string v2, "error sending mms"

    :goto_5
    invoke-static {v5, v2, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method private static n(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;Landroid/content/Intent;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/mms/b;",
            ">;[",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    const-string v0, "com.klinker.android.messaging.MMS_SENT"

    const-string v1, "Transaction"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, p3, p1, p2}, Lcom/klinker/android/send_message/i;->d(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/mms/c/v;

    move-result-object p1

    invoke-static {p0}, Lcom/google/android/mms/c/p;->h(Landroid/content/Context;)Lcom/google/android/mms/c/p;

    move-result-object v5

    const-string p2, "content://mms/outbox"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x1

    sget-object p2, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {p2}, Lcom/klinker/android/send_message/f;->c()Z

    move-result v9

    const/4 v10, 0x0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/mms/c/p;->o(Lcom/google/android/mms/c/f;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object p2

    if-nez p4, :cond_0

    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p4, v0}, Lcom/klinker/android/send_message/b;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    const-string p3, "content_uri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "file_path"

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    const/high16 p3, 0x10000000

    invoke-static {p0, p2, p4, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    new-instance p2, Landroid/net/Uri$Builder;

    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ".MmsFileProvider"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string p3, "content"

    invoke-virtual {p2, p3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    const/4 p3, 0x0

    :try_start_1
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v0, Lcom/google/android/mms/c/k;

    invoke-direct {v0, p0, p1}, Lcom/google/android/mms/c/k;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/f;)V

    invoke-virtual {v0}, Lcom/google/android/mms/c/k;->s()[B

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :catch_0
    move-object v6, p2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object p3, p4

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p1

    move-object p4, p3

    :goto_0
    :try_start_4
    const-string p2, "Error writing send file"

    invoke-static {v1, p2, p1}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p4, :cond_1

    :try_start_5
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :catch_3
    :cond_1
    move-object v6, p3

    :goto_1
    :try_start_6
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string p1, "enableGroupMms"

    sget-object p2, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {p2}, Lcom/klinker/android/send_message/f;->c()Z

    move-result p2

    invoke-virtual {v8, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Le/a/b/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "httpParams"

    invoke-virtual {v8, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "maxMessageSize"

    invoke-static {}, Le/a/b/a;->e()I

    move-result p2

    invoke-virtual {v8, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v6, :cond_3

    sget-object p1, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-static {p1}, Lcom/klinker/android/send_message/g;->b(Lcom/klinker/android/send_message/f;)Landroid/telephony/SmsManager;

    move-result-object v4

    const/4 v7, 0x0

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Landroid/telephony/SmsManager;->sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    goto :goto_3

    :cond_3
    const-string p0, "Error writing sending Mms"

    invoke-static {v1, p0}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    const/4 p0, 0x5

    :try_start_7
    invoke-virtual {v9, p0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_7
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_3

    :catch_4
    move-exception p0

    :try_start_8
    const-string p1, "Mms pending intent cancelled?"

    invoke-static {v1, p1, p0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_3

    :goto_2
    if-eqz p3, :cond_4

    :try_start_9
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :catch_5
    :cond_4
    :try_start_a
    throw p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    move-exception p0

    const-string p1, "error using system sending method"

    invoke-static {v1, p1, p0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private q(Ljava/lang/String;[Ljava/lang/String;JILandroid/os/Parcelable;Landroid/os/Parcelable;)V
    .locals 29

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v11, "send_transaction"

    invoke-static {v11, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, v9, Lcom/klinker/android/send_message/i;->e:Z

    if-eqz v1, :cond_15

    const-string v1, "saving message"

    invoke-static {v11, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v1}, Lcom/klinker/android/send_message/f;->j()Ljava/lang/String;

    move-result-object v1

    const-string v12, ""

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v0}, Lcom/klinker/android/send_message/f;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v13, v0

    const/4 v14, 0x0

    move-wide/from16 v0, p3

    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_0
    array-length v3, v10

    if-ge v15, v3, :cond_15

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aget-object v5, v10, v15

    const-string v6, "address"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v5}, Lcom/klinker/android/send_message/f;->m()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v13}, Lcom/klinker/android/send_message/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v13

    :goto_1
    const-string v6, "body"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "date"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "read"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-eqz v7, :cond_2

    array-length v5, v10

    if-le v5, v3, :cond_3

    :cond_2
    iget-object v0, v9, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    aget-object v1, v10, v15

    invoke-static {v0, v1}, Lcom/klinker/android/send_message/j;->j(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    :cond_3
    move-wide v7, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saving message with thread id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, v9, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inserted to uri: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v9, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    new-array v1, v3, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v1, v14

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v6, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v9, Lcom/klinker/android/send_message/i;->b:Landroid/content/Intent;

    if-nez v1, :cond_5

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v9, Lcom/klinker/android/send_message/i;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    iget-object v4, v9, Lcom/klinker/android/send_message/i;->f:Ljava/lang/String;

    invoke-static {v2, v1, v4}, Lcom/klinker/android/send_message/b;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_5
    if-nez v0, :cond_6

    move-object v2, v12

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    const-string v4, "message_uri"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.klinker.android.send_message.SENT_SMS_BUNDLE"

    move-object/from16 v5, p6

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, v9, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v6, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    iget-object v1, v9, Lcom/klinker/android/send_message/i;->d:Landroid/content/Intent;

    if-nez v1, :cond_7

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v9, Lcom/klinker/android/send_message/i;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    iget-object v14, v9, Lcom/klinker/android/send_message/i;->g:Ljava/lang/String;

    invoke-static {v2, v1, v14}, Lcom/klinker/android/send_message/b;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_7
    if-nez v0, :cond_8

    move-object v2, v12

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.klinker.android.send_message.DELIVERED_SMS_BUNDLE"

    move-object/from16 v14, p7

    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, v9, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    invoke-static {v2, v6, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v1}, Lcom/klinker/android/send_message/f;->m()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v13}, Lcom/klinker/android/send_message/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    move-object v1, v13

    :goto_4
    sget-object v2, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v2}, Lcom/klinker/android/send_message/f;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual/range {v19 .. v19}, Lcom/klinker/android/send_message/f;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a
    sget-object v2, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-static {v2}, Lcom/klinker/android/send_message/g;->b(Lcom/klinker/android/send_message/f;)Landroid/telephony/SmsManager;

    move-result-object v5

    const-string v2, "found sms manager"

    invoke-static {v11, v2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v2}, Lcom/klinker/android/send_message/f;->k()Z

    move-result v2

    const/16 v19, 0x0

    if-eqz v2, :cond_10

    const-string v2, "splitting message"

    invoke-static {v11, v2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v17

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x2

    aget v21, v17, v21

    add-int v20, v20, v21

    aget v17, v17, v2

    div-int v2, v20, v17

    move/from16 v17, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v22, v7

    const-string v7, "length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v6}, Lcom/klinker/android/send_message/f;->l()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v2, :cond_b

    add-int/lit8 v2, v2, -0x6

    const/4 v6, 0x1

    goto :goto_5

    :cond_b
    const/4 v6, 0x0

    :goto_5
    invoke-direct {v9, v1, v2, v6}, Lcom/klinker/android/send_message/i;->r(Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    :goto_6
    array-length v1, v8

    if-ge v7, v1, :cond_f

    aget-object v1, v8, v7

    invoke-virtual {v5, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    iget-boolean v2, v9, Lcom/klinker/android/send_message/i;->e:Z

    if-eqz v2, :cond_c

    move-object/from16 v2, v16

    goto :goto_8

    :cond_c
    move-object/from16 v2, v19

    :goto_8
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v2}, Lcom/klinker/android/send_message/f;->b()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-boolean v2, v9, Lcom/klinker/android/send_message/i;->e:Z

    if-eqz v2, :cond_d

    move-object/from16 v2, v18

    goto :goto_9

    :cond_d
    move-object/from16 v2, v19

    :goto_9
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    const-string v1, "sending split message"

    invoke-static {v11, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v20, v10, v15

    move-object/from16 v1, p0

    const/16 v25, 0x0

    move-object v2, v5

    move-object/from16 p1, v3

    move-object/from16 v3, v20

    move-object/from16 p3, v4

    move-object v4, v6

    move-object v6, v5

    move-object/from16 v5, p3

    move-object/from16 v26, v12

    move-object v12, v6

    move-object/from16 v6, p1

    move/from16 v21, v7

    move-wide/from16 v27, v22

    move/from16 v7, p5

    move-object/from16 v20, v8

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/klinker/android/send_message/i;->l(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/net/Uri;)V

    add-int/lit8 v7, v21, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object v5, v12

    move-object/from16 v8, v20

    move-object/from16 v12, v26

    goto :goto_6

    :cond_f
    move-object/from16 v26, v12

    move-wide/from16 v27, v22

    const/16 v25, 0x0

    goto/16 :goto_d

    :cond_10
    move-object/from16 p1, v3

    move-object/from16 p3, v4

    move/from16 v17, v6

    move-wide/from16 v27, v7

    move-object/from16 v26, v12

    const/16 v25, 0x0

    move-object v12, v5

    const-string v2, "sending without splitting"

    invoke-static {v11, v2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v22

    const/4 v2, 0x0

    :goto_a
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_13

    iget-boolean v1, v9, Lcom/klinker/android/send_message/i;->e:Z

    move-object/from16 v5, p3

    if-eqz v1, :cond_11

    move-object/from16 v1, v16

    goto :goto_b

    :cond_11
    move-object/from16 v1, v19

    :goto_b
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v1}, Lcom/klinker/android/send_message/f;->b()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v1, v9, Lcom/klinker/android/send_message/i;->e:Z

    if-eqz v1, :cond_12

    move-object/from16 v6, p1

    move-object/from16 v1, v18

    goto :goto_c

    :cond_12
    move-object/from16 v6, p1

    move-object/from16 v1, v19

    :goto_c
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 p3, v5

    move-object/from16 p1, v6

    goto :goto_a

    :cond_13
    move-object/from16 v6, p1

    move-object/from16 v5, p3

    iget-object v1, v9, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/klinker/android/send_message/j;->o(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    :try_start_0
    const-string v1, "sent message"

    invoke-static {v11, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v3, v10, v15

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v4, v22

    move/from16 v7, p5

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/klinker/android/send_message/i;->l(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    const-string v1, "error sending message"

    invoke-static {v11, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Transaction"

    const-string v2, "exception thrown"

    invoke-static {v1, v2, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v0, v9, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/klinker/android/send_message/i$a;

    invoke-direct {v1, v9}, Lcom/klinker/android/send_message/i$a;-><init>(Lcom/klinker/android/send_message/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :cond_14
    aget-object v20, v10, v15

    const/16 v21, 0x0

    move-object/from16 v19, v12

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    invoke-virtual/range {v19 .. v24}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :catch_1
    :goto_d
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v17

    move-object/from16 v12, v26

    move-wide/from16 v0, v27

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_15
    return-void
.end method

.method private r(Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v0, v0

    int-to-double v2, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    if-ge v5, p2, :cond_0

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v4, 0x1

    add-int v6, v3, p2

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    :goto_1
    move v4, v5

    add-int/2addr v3, p2

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const/4 p1, 0x1

    if-le v0, p1, :cond_2

    :goto_2
    if-ge v2, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, v2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, v1, v2

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    move v2, p2

    goto :goto_2

    :cond_2
    return-object v1
.end method


# virtual methods
.method public f(Lcom/klinker/android/send_message/c;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/klinker/android/send_message/c;->h()[Landroid/graphics/Bitmap;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/klinker/android/send_message/c;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v0}, Lcom/klinker/android/send_message/f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {p1}, Lcom/klinker/android/send_message/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/klinker/android/send_message/j;->i(Lcom/klinker/android/send_message/f;Ljava/lang/String;)I

    move-result v0

    sget-object v2, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v2}, Lcom/klinker/android/send_message/f;->i()I

    move-result v2

    if-gt v0, v2, :cond_3

    :cond_0
    invoke-virtual {p1}, Lcom/klinker/android/send_message/c;->e()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-le v0, v1, :cond_1

    sget-object v0, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    invoke-virtual {v0}, Lcom/klinker/android/send_message/f;->c()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p1}, Lcom/klinker/android/send_message/c;->k()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public o(Lcom/klinker/android/send_message/c;J)V
    .locals 6

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/klinker/android/send_message/i;->p(Lcom/klinker/android/send_message/c;JLandroid/os/Parcelable;Landroid/os/Parcelable;)V

    return-void
.end method

.method public p(Lcom/klinker/android/send_message/c;JLandroid/os/Parcelable;Landroid/os/Parcelable;)V
    .locals 8

    invoke-virtual {p1}, Lcom/klinker/android/send_message/c;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/klinker/android/send_message/i;->e:Z

    invoke-virtual {p0, p1}, Lcom/klinker/android/send_message/i;->f(Lcom/klinker/android/send_message/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    invoke-static {v0}, Le/a/b/f/c;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/klinker/android/send_message/i;->a:Landroid/content/Context;

    invoke-static {v0}, Le/a/b/f/a;->g(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/klinker/android/send_message/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/klinker/android/send_message/c;->e()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/klinker/android/send_message/c;->h()[Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/klinker/android/send_message/c;->g()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/klinker/android/send_message/c;->i()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lcom/klinker/android/send_message/c;->k()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/klinker/android/send_message/i;->m(Ljava/lang/String;[Ljava/lang/String;[Landroid/graphics/Bitmap;[Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/klinker/android/send_message/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/klinker/android/send_message/c;->e()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/klinker/android/send_message/c;->f()I

    move-result v5

    move-object v0, p0

    move-wide v3, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/klinker/android/send_message/i;->q(Ljava/lang/String;[Ljava/lang/String;JILandroid/os/Parcelable;Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method
