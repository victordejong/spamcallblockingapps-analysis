.class public Lcom/google/android/mms/c/k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/c/k$b;,
        Lcom/google/android/mms/c/k$d;,
        Lcom/google/android/mms/c/k$c;
    }
.end annotation


# static fields
.field private static g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/io/ByteArrayOutputStream;

.field private b:Lcom/google/android/mms/c/f;

.field protected c:I

.field private d:Lcom/google/android/mms/c/k$b;

.field private final e:Landroid/content/ContentResolver;

.field private f:Lcom/google/android/mms/c/m;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/c/k;->g:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/google/android/mms/c/l;->a:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/google/android/mms/c/k;->g:Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/c/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/c/k;->a:Ljava/io/ByteArrayOutputStream;

    iput-object v0, p0, Lcom/google/android/mms/c/k;->b:Lcom/google/android/mms/c/f;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/mms/c/k;->c:I

    iput-object v0, p0, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    iput-object v0, p0, Lcom/google/android/mms/c/k;->f:Lcom/google/android/mms/c/m;

    iput-object p2, p0, Lcom/google/android/mms/c/k;->b:Lcom/google/android/mms/c/f;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/mms/c/k;->e:Landroid/content/ContentResolver;

    invoke-virtual {p2}, Lcom/google/android/mms/c/f;->b()Lcom/google/android/mms/c/m;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/mms/c/k;->f:Lcom/google/android/mms/c/m;

    new-instance p1, Lcom/google/android/mms/c/k$b;

    invoke-direct {p1, p0, v0}, Lcom/google/android/mms/c/k$b;-><init>(Lcom/google/android/mms/c/k;Lcom/google/android/mms/c/k$a;)V

    iput-object p1, p0, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/google/android/mms/c/k;->a:Ljava/io/ByteArrayOutputStream;

    iput v1, p0, Lcom/google/android/mms/c/k;->c:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/mms/c/k;)Lcom/google/android/mms/c/k$b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    return-object p0
.end method

.method private c(Lcom/google/android/mms/c/e;)Lcom/google/android/mms/c/e;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/mms/c/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/c/k;->r(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/mms/c/e;->c(Lcom/google/android/mms/c/e;)Lcom/google/android/mms/c/e;

    move-result-object p1

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const-string v0, "/TYPE=PLMN"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/mms/c/e;->b([B)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    const-string v0, "/TYPE=IPV4"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/mms/c/e;->b([B)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne v1, v0, :cond_2

    const-string v0, "/TYPE=IPV6"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/mms/c/e;->b([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private f(I)I
    .locals 9

    const/16 v0, 0x80

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/16 v4, 0x81

    const/4 v5, 0x1

    const/4 v6, 0x2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x3

    return p1

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/mms/c/k;->f:Lcom/google/android/mms/c/m;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/c/m;->b(I)Lcom/google/android/mms/c/e;

    move-result-object v0

    if-nez v0, :cond_0

    return v6

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/k;->h(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/k;->e(Lcom/google/android/mms/c/e;)V

    goto/16 :goto_5

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/k;->h(I)V

    iget-object v0, p0, Lcom/google/android/mms/c/k;->f:Lcom/google/android/mms/c/m;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/c/m;->e(I)I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x12

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/k;->k(I)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/mms/c/k;->f:Lcom/google/android/mms/c/m;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/c/m;->f(I)[B

    move-result-object v0

    if-nez v0, :cond_2

    return v6

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/k;->h(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/k;->n([B)V

    goto/16 :goto_5

    :pswitch_4
    iget-object v2, p0, Lcom/google/android/mms/c/k;->f:Lcom/google/android/mms/c/m;

    invoke-virtual {v2, p1}, Lcom/google/android/mms/c/m;->f(I)[B

    move-result-object v2

    if-nez v2, :cond_3

    return v6

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/k;->h(I)V

    const-string p1, "advertisement"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v4}, Lcom/google/android/mms/c/k;->h(I)V

    goto/16 :goto_5

    :cond_4
    const-string p1, "auto"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x83

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/k;->h(I)V

    goto/16 :goto_5

    :cond_5
    const-string p1, "personal"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_6

    goto/16 :goto_3

    :cond_6
    const-string p1, "informational"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x82

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v2}, Lcom/google/android/mms/c/k;->n([B)V

    goto/16 :goto_5

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/k;->h(I)V

    iget-object v2, p0, Lcom/google/android/mms/c/k;->f:Lcom/google/android/mms/c/m;

    invoke-virtual {v2, p1}, Lcom/google/android/mms/c/m;->b(I)Lcom/google/android/mms/c/e;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/google/android/mms/c/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/c/e;->g()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "insert-address-token"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v2}, Lcom/google/android/mms/c/k$b;->c()V

    iget-object v2, p0, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v2}, Lcom/google/android/mms/c/k$b;->b()Lcom/google/android/mms/c/k$d;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/k;->b(I)V

    invoke-direct {p0, p1}, Lcom/google/android/mms/c/k;->c(Lcom/google/android/mms/c/e;)Lcom/google/android/mms/c/e;

    move-result-object p1

    if-nez p1, :cond_9

    return v5

    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/k;->e(Lcom/google/android/mms/c/e;)V

    invoke-virtual {v2}, Lcom/google/android/mms/c/k$d;->c()I

    move-result p1

    goto :goto_2

    :cond_a
    :goto_1
    invoke-virtual {p0, v5}, Lcom/google/android/mms/c/k;->b(I)V

    invoke-virtual {p0, v4}, Lcom/google/android/mms/c/k;->b(I)V

    goto/16 :goto_5

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/mms/c/k;->f:Lcom/google/android/mms/c/m;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/c/m;->d(I)J

    move-result-wide v7

    cmp-long v0, v2, v7

    if-nez v0, :cond_b

    return v6

    :cond_b
    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/k;->h(I)V

    iget-object p1, p0, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {p1}, Lcom/google/android/mms/c/k$b;->c()V

    iget-object p1, p0, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {p1}, Lcom/google/android/mms/c/k$b;->b()Lcom/google/android/mms/c/k$d;

    move-result-object p1

    invoke-virtual {p0, v4}, Lcom/google/android/mms/c/k;->b(I)V

    invoke-virtual {p0, v7, v8}, Lcom/google/android/mms/c/k;->g(J)V

    invoke-virtual {p1}, Lcom/google/android/mms/c/k$d;->c()I

    move-result p1

    :goto_2
    iget-object v0, p0, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v0}, Lcom/google/android/mms/c/k$b;->d()V

    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/google/android/mms/c/k;->p(J)V

    iget-object p1, p0, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {p1}, Lcom/google/android/mms/c/k$b;->a()V

    goto :goto_5

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/mms/c/k;->f:Lcom/google/android/mms/c/m;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/c/m;->e(I)I

    move-result v0

    if-nez v0, :cond_c

    return v6

    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/k;->h(I)V

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/k;->h(I)V

    goto :goto_5

    :pswitch_8
    iget-object v0, p0, Lcom/google/android/mms/c/k;->f:Lcom/google/android/mms/c/m;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/c/m;->d(I)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_d

    return v6

    :cond_d
    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/k;->h(I)V

    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/c/k;->d(J)V

    goto :goto_5

    :pswitch_9
    iget-object v0, p0, Lcom/google/android/mms/c/k;->f:Lcom/google/android/mms/c/m;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/c/m;->c(I)[Lcom/google/android/mms/c/e;

    move-result-object v0

    if-nez v0, :cond_e

    return v6

    :cond_e
    const/4 v2, 0x0

    :goto_4
    array-length v3, v0

    if-ge v2, v3, :cond_10

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/google/android/mms/c/k;->c(Lcom/google/android/mms/c/e;)Lcom/google/android/mms/c/e;

    move-result-object v3

    if-nez v3, :cond_f

    return v5

    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/k;->h(I)V

    invoke-virtual {p0, v3}, Lcom/google/android/mms/c/k;->e(Lcom/google/android/mms/c/e;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    :goto_5
    return v1

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_9
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method protected static r(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x5

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const-string v1, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string v1, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const-string v1, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    return v0
.end method

.method private t()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/mms/c/k;->a:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/c/k;->a:Ljava/io/ByteArrayOutputStream;

    iput v1, p0, Lcom/google/android/mms/c/k;->c:I

    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/k;->h(I)V

    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/k;->h(I)V

    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    return v1
.end method

.method private u()I
    .locals 16

    move-object/from16 v1, p0

    const-string v2, ">"

    const-string v3, "<"

    iget-object v0, v1, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v0}, Lcom/google/android/mms/c/k$b;->c()V

    iget-object v0, v1, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v0}, Lcom/google/android/mms/c/k$b;->b()Lcom/google/android/mms/c/k$d;

    move-result-object v4

    new-instance v0, Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/mms/c/k;->f:Lcom/google/android/mms/c/m;

    const/16 v6, 0x84

    invoke-virtual {v5, v6}, Lcom/google/android/mms/c/m;->f(I)[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    sget-object v5, Lcom/google/android/mms/c/k;->g:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v5, 0x1

    if-nez v0, :cond_0

    return v5

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/mms/c/k;->k(I)V

    iget-object v0, v1, Lcom/google/android/mms/c/k;->b:Lcom/google/android/mms/c/f;

    check-cast v0, Lcom/google/android/mms/c/v;

    invoke-virtual {v0}, Lcom/google/android/mms/c/g;->g()Lcom/google/android/mms/c/j;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_14

    invoke-virtual {v6}, Lcom/google/android/mms/c/j;->d()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_7

    :cond_1
    const/16 v8, 0x3e

    const/16 v9, 0x3c

    :try_start_0
    invoke-virtual {v6, v7}, Lcom/google/android/mms/c/j;->c(I)Lcom/google/android/mms/c/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mms/c/o;->d()[B

    move-result-object v10

    if-eqz v10, :cond_3

    const/16 v11, 0x8a

    invoke-virtual {v1, v11}, Lcom/google/android/mms/c/k;->h(I)V

    aget-byte v11, v10, v7

    if-ne v9, v11, :cond_2

    array-length v11, v10

    sub-int/2addr v11, v5

    aget-byte v11, v10, v11

    if-ne v8, v11, :cond_2

    invoke-virtual {v1, v10}, Lcom/google/android/mms/c/k;->n([B)V

    goto :goto_0

    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/google/android/mms/c/k;->m(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/16 v10, 0x89

    invoke-virtual {v1, v10}, Lcom/google/android/mms/c/k;->h(I)V

    invoke-virtual {v0}, Lcom/google/android/mms/c/o;->g()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/mms/c/k;->n([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v10, "PduComposer"

    const-string v11, "logging error"

    invoke-static {v10, v11, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :goto_1
    invoke-virtual {v4}, Lcom/google/android/mms/c/k$d;->c()I

    move-result v0

    iget-object v4, v1, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v4}, Lcom/google/android/mms/c/k$b;->d()V

    int-to-long v10, v0

    invoke-virtual {v1, v10, v11}, Lcom/google/android/mms/c/k;->p(J)V

    iget-object v0, v1, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v0}, Lcom/google/android/mms/c/k$b;->a()V

    invoke-virtual {v6}, Lcom/google/android/mms/c/j;->d()I

    move-result v0

    int-to-long v10, v0

    invoke-virtual {v1, v10, v11}, Lcom/google/android/mms/c/k;->o(J)V

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_13

    invoke-virtual {v6, v4}, Lcom/google/android/mms/c/j;->c(I)Lcom/google/android/mms/c/o;

    move-result-object v10

    iget-object v11, v1, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v11}, Lcom/google/android/mms/c/k$b;->c()V

    iget-object v11, v1, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v11}, Lcom/google/android/mms/c/k$b;->b()Lcom/google/android/mms/c/k$d;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v12}, Lcom/google/android/mms/c/k$b;->c()V

    iget-object v12, v1, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v12}, Lcom/google/android/mms/c/k$b;->b()Lcom/google/android/mms/c/k$d;

    move-result-object v12

    invoke-virtual {v10}, Lcom/google/android/mms/c/o;->g()[B

    move-result-object v13

    if-nez v13, :cond_4

    return v5

    :cond_4
    sget-object v14, Lcom/google/android/mms/c/k;->g:Ljava/util/HashMap;

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    if-nez v14, :cond_5

    invoke-virtual {v1, v13}, Lcom/google/android/mms/c/k;->n([B)V

    goto :goto_3

    :cond_5
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/google/android/mms/c/k;->k(I)V

    :goto_3
    invoke-virtual {v10}, Lcom/google/android/mms/c/o;->l()[B

    move-result-object v13

    if-nez v13, :cond_6

    invoke-virtual {v10}, Lcom/google/android/mms/c/o;->k()[B

    move-result-object v13

    if-nez v13, :cond_6

    invoke-virtual {v10}, Lcom/google/android/mms/c/o;->e()[B

    move-result-object v13

    if-nez v13, :cond_6

    return v5

    :cond_6
    const/16 v14, 0x85

    invoke-virtual {v1, v14}, Lcom/google/android/mms/c/k;->h(I)V

    invoke-virtual {v1, v13}, Lcom/google/android/mms/c/k;->n([B)V

    invoke-virtual {v10}, Lcom/google/android/mms/c/o;->b()I

    move-result v13

    if-eqz v13, :cond_7

    const/16 v14, 0x81

    invoke-virtual {v1, v14}, Lcom/google/android/mms/c/k;->h(I)V

    invoke-virtual {v1, v13}, Lcom/google/android/mms/c/k;->k(I)V

    :cond_7
    invoke-virtual {v12}, Lcom/google/android/mms/c/k$d;->c()I

    move-result v12

    iget-object v13, v1, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v13}, Lcom/google/android/mms/c/k$b;->d()V

    int-to-long v12, v12

    invoke-virtual {v1, v12, v13}, Lcom/google/android/mms/c/k;->p(J)V

    iget-object v12, v1, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v12}, Lcom/google/android/mms/c/k$b;->a()V

    invoke-virtual {v10}, Lcom/google/android/mms/c/o;->d()[B

    move-result-object v12

    if-eqz v12, :cond_9

    const/16 v13, 0xc0

    invoke-virtual {v1, v13}, Lcom/google/android/mms/c/k;->h(I)V

    aget-byte v13, v12, v7

    if-ne v9, v13, :cond_8

    array-length v13, v12

    sub-int/2addr v13, v5

    aget-byte v13, v12, v13

    if-ne v8, v13, :cond_8

    invoke-virtual {v1, v12}, Lcom/google/android/mms/c/k;->j([B)V

    goto :goto_4

    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/google/android/mms/c/k;->i(Ljava/lang/String;)V

    :cond_9
    :goto_4
    invoke-virtual {v10}, Lcom/google/android/mms/c/o;->e()[B

    move-result-object v12

    if-eqz v12, :cond_a

    const/16 v13, 0x8e

    invoke-virtual {v1, v13}, Lcom/google/android/mms/c/k;->h(I)V

    invoke-virtual {v1, v12}, Lcom/google/android/mms/c/k;->n([B)V

    :cond_a
    invoke-virtual {v11}, Lcom/google/android/mms/c/k$d;->c()I

    move-result v12

    invoke-virtual {v10}, Lcom/google/android/mms/c/o;->h()[B

    move-result-object v13

    if-eqz v13, :cond_b

    array-length v10, v13

    invoke-virtual {v1, v13, v7, v10}, Lcom/google/android/mms/c/k;->q([BII)V

    array-length v10, v13

    goto :goto_6

    :cond_b
    const/4 v13, 0x0

    const/16 v14, 0x400

    :try_start_1
    new-array v14, v14, [B

    iget-object v15, v1, Lcom/google/android/mms/c/k;->e:Landroid/content/ContentResolver;

    invoke-virtual {v10}, Lcom/google/android/mms/c/o;->j()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13

    const/4 v10, 0x0

    :goto_5
    invoke-virtual {v13, v14}, Ljava/io/InputStream;->read([B)I

    move-result v15

    const/4 v8, -0x1

    if-eq v15, v8, :cond_c

    iget-object v8, v1, Lcom/google/android/mms/c/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8, v14, v7, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget v8, v1, Lcom/google/android/mms/c/k;->c:I

    add-int/2addr v8, v15

    iput v8, v1, Lcom/google/android/mms/c/k;->c:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v10, v15

    const/16 v8, 0x3e

    goto :goto_5

    :cond_c
    if-eqz v13, :cond_d

    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    nop

    :cond_d
    :goto_6
    invoke-virtual {v11}, Lcom/google/android/mms/c/k$d;->c()I

    move-result v8

    sub-int/2addr v8, v12

    if-ne v10, v8, :cond_e

    iget-object v8, v1, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v8}, Lcom/google/android/mms/c/k$b;->d()V

    int-to-long v11, v12

    invoke-virtual {v1, v11, v12}, Lcom/google/android/mms/c/k;->o(J)V

    int-to-long v10, v10

    invoke-virtual {v1, v10, v11}, Lcom/google/android/mms/c/k;->o(J)V

    iget-object v8, v1, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v8}, Lcom/google/android/mms/c/k$b;->a()V

    add-int/lit8 v4, v4, 0x1

    const/16 v8, 0x3e

    goto/16 :goto_2

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "BUG: Length sanity check failed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    if-eqz v13, :cond_f

    :try_start_3
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_f
    throw v0

    :catch_3
    nop

    if-eqz v13, :cond_10

    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_10
    return v5

    :catch_5
    nop

    if-eqz v13, :cond_11

    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :catch_6
    :cond_11
    return v5

    :catch_7
    nop

    if-eqz v13, :cond_12

    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :catch_8
    :cond_12
    return v5

    :cond_13
    return v7

    :cond_14
    :goto_7
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mms/c/k;->o(J)V

    iget-object v0, v1, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v0}, Lcom/google/android/mms/c/k$b;->d()V

    iget-object v0, v1, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v0}, Lcom/google/android/mms/c/k$b;->a()V

    return v7
.end method

.method private v()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/mms/c/k;->a:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/c/k;->a:Ljava/io/ByteArrayOutputStream;

    iput v1, p0, Lcom/google/android/mms/c/k;->c:I

    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/k;->h(I)V

    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/k;->h(I)V

    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/16 v0, 0x95

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private w()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/mms/c/k;->a:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/c/k;->a:Ljava/io/ByteArrayOutputStream;

    iput v1, p0, Lcom/google/android/mms/c/k;->c:I

    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/k;->h(I)V

    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/k;->h(I)V

    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x8b

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/16 v0, 0x97

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x89

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    const/16 v0, 0x9b

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method private x()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/mms/c/k;->a:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/c/k;->a:Ljava/io/ByteArrayOutputStream;

    iput v1, p0, Lcom/google/android/mms/c/k;->c:I

    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/k;->h(I)V

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/k;->h(I)V

    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/k;->h(I)V

    iget-object v2, p0, Lcom/google/android/mms/c/k;->f:Lcom/google/android/mms/c/m;

    invoke-virtual {v2, v0}, Lcom/google/android/mms/c/m;->f(I)[B

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/k;->n([B)V

    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    const/16 v0, 0x89

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/16 v0, 0x97

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    const/16 v0, 0x82

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    move-result v0

    if-eq v0, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    const/16 v0, 0x81

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    move-result v0

    if-eq v0, v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-nez v1, :cond_6

    return v2

    :cond_6
    const/16 v0, 0x96

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    const/16 v0, 0x8a

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    const/16 v0, 0x88

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    const/16 v0, 0x8f

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    const/16 v0, 0x86

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    const/16 v0, 0x90

    invoke-direct {p0, v0}, Lcom/google/android/mms/c/k;->f(I)I

    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/k;->h(I)V

    invoke-direct {p0}, Lcom/google/android/mms/c/k;->u()I

    move-result v0

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transaction-ID is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected b(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/mms/c/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget p1, p0, Lcom/google/android/mms/c/k;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/mms/c/k;->c:I

    return-void
.end method

.method protected d(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/c/k;->g(J)V

    return-void
.end method

.method protected e(Lcom/google/android/mms/c/e;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/mms/c/e;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/mms/c/e;->g()[B

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v1}, Lcom/google/android/mms/c/k$b;->c()V

    iget-object v1, p0, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v1}, Lcom/google/android/mms/c/k$b;->b()Lcom/google/android/mms/c/k$d;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/k;->k(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/k;->n([B)V

    invoke-virtual {v1}, Lcom/google/android/mms/c/k$d;->c()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {v0}, Lcom/google/android/mms/c/k$b;->d()V

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/mms/c/k;->p(J)V

    iget-object p1, p0, Lcom/google/android/mms/c/k;->d:Lcom/google/android/mms/c/k$b;

    invoke-virtual {p1}, Lcom/google/android/mms/c/k$b;->a()V

    return-void
.end method

.method protected g(J)V
    .locals 9

    const/4 v0, 0x0

    move-wide v1, p1

    const/4 v3, 0x0

    :goto_0
    const-wide/16 v4, 0x0

    const/16 v6, 0x8

    cmp-long v7, v1, v4

    if-eqz v7, :cond_0

    if-ge v3, v6, :cond_0

    ushr-long/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/mms/c/k;->l(I)V

    add-int/lit8 v1, v3, -0x1

    mul-int/lit8 v1, v1, 0x8

    :goto_1
    if-ge v0, v3, :cond_1

    ushr-long v4, p1, v1

    const-wide/16 v7, 0xff

    and-long/2addr v4, v7

    long-to-int v2, v4

    invoke-virtual {p0, v2}, Lcom/google/android/mms/c/k;->b(I)V

    sub-int/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected h(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/k;->b(I)V

    return-void
.end method

.method protected i(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/k;->j([B)V

    return-void
.end method

.method protected j([B)V
    .locals 2

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/k;->b(I)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/c/k;->q([BII)V

    invoke-virtual {p0, v1}, Lcom/google/android/mms/c/k;->b(I)V

    return-void
.end method

.method protected k(I)V
    .locals 0

    or-int/lit16 p1, p1, 0x80

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/k;->b(I)V

    return-void
.end method

.method protected l(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/k;->b(I)V

    return-void
.end method

.method protected m(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/k;->n([B)V

    return-void
.end method

.method protected n([B)V
    .locals 3

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x7f

    if-le v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/mms/c/k;->b(I)V

    :cond_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/mms/c/k;->q([BII)V

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/k;->b(I)V

    return-void
.end method

.method protected o(J)V
    .locals 7

    const-wide/16 v0, 0x7f

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_0
    const/4 v5, 0x5

    if-ge v2, v5, :cond_1

    cmp-long v5, p1, v3

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v2, :cond_2

    mul-int/lit8 v3, v2, 0x7

    ushr-long v3, p1, v3

    and-long/2addr v3, v0

    const-wide/16 v5, 0x80

    or-long/2addr v3, v5

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v4, v3

    invoke-virtual {p0, v4}, Lcom/google/android/mms/c/k;->b(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    and-long/2addr p1, v0

    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/mms/c/k;->b(I)V

    return-void
.end method

.method protected p(J)V
    .locals 3

    const-wide/16 v0, 0x1f

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/mms/c/k;->l(I)V

    return-void

    :cond_0
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/k;->b(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/c/k;->o(J)V

    return-void
.end method

.method protected q([BII)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/mms/c/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget p1, p0, Lcom/google/android/mms/c/k;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/mms/c/k;->c:I

    return-void
.end method

.method public s()[B
    .locals 3

    iget-object v0, p0, Lcom/google/android/mms/c/k;->b:Lcom/google/android/mms/c/f;

    invoke-virtual {v0}, Lcom/google/android/mms/c/f;->a()I

    move-result v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x83

    if-eq v0, v1, :cond_2

    const/16 v1, 0x85

    if-eq v0, v1, :cond_1

    const/16 v1, 0x87

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-direct {p0}, Lcom/google/android/mms/c/k;->w()I

    move-result v0

    if-eqz v0, :cond_4

    return-object v2

    :cond_1
    invoke-direct {p0}, Lcom/google/android/mms/c/k;->t()I

    move-result v0

    if-eqz v0, :cond_4

    return-object v2

    :cond_2
    invoke-direct {p0}, Lcom/google/android/mms/c/k;->v()I

    move-result v0

    if-eqz v0, :cond_4

    return-object v2

    :cond_3
    invoke-direct {p0}, Lcom/google/android/mms/c/k;->x()I

    move-result v0

    if-eqz v0, :cond_4

    return-object v2

    :cond_4
    iget-object v0, p0, Lcom/google/android/mms/c/k;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
