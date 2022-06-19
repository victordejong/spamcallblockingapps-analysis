.class public final Li6/c;
.super Li6/e;
.source "SourceFile"


# static fields
.field public static final c:Lg6/a;


# instance fields
.field public final a:Lo6/h;

.field public final b:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v0

    sput-object v0, Li6/c;->c:Lg6/a;

    return-void
.end method

.method public constructor <init>(Lo6/h;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li6/e;-><init>()V

    .line 2
    iput-object p2, p0, Li6/c;->b:Landroid/content/Context;

    .line 3
    iput-object p1, p0, Li6/c;->a:Lo6/h;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 10

    .line 1
    iget-object v0, p0, Li6/c;->a:Lo6/h;

    invoke-virtual {v0}, Lo6/h;->W()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Li6/c;->c:Lg6/a;

    const-string v1, "URL is missing:"

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Li6/c;->a:Lo6/h;

    invoke-virtual {v3}, Lo6/h;->W()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg6/a;->c(Ljava/lang/String;)V

    return v2

    .line 5
    :cond_1
    iget-object v0, p0, Li6/c;->a:Lo6/h;

    invoke-virtual {v0}, Lo6/h;->W()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 7
    :goto_1
    sget-object v4, Li6/c;->c:Lg6/a;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "getResultUrl throws exception %s"

    invoke-virtual {v4, v0, v5}, Lg6/a;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    move-object v0, v3

    :goto_3
    const-string v4, "FirebasePerformance"

    if-nez v0, :cond_4

    .line 8
    sget-object v0, Li6/c;->c:Lg6/a;

    .line 9
    iget-boolean v1, v0, Lg6/a;->b:Z

    if-eqz v1, :cond_3

    .line 10
    iget-object v0, v0, Lg6/a;->a:Lg6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "URL cannot be parsed"

    .line 11
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    .line 12
    :cond_4
    iget-object v5, p0, Li6/c;->b:Landroid/content/Context;

    .line 13
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 14
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "firebase_performance_whitelisted_domains"

    const-string v8, "array"

    .line 15
    invoke-virtual {v6, v7, v8, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_5

    .line 16
    :cond_5
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v7

    .line 17
    iget-boolean v8, v7, Lg6/a;->b:Z

    if-eqz v8, :cond_6

    .line 18
    iget-object v7, v7, Lg6/a;->a:Lg6/b;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Detected domain allowlist, only allowlisted domains will be measured."

    .line 19
    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_6
    sget-object v7, Ly/d;->b:[Ljava/lang/String;

    if-nez v7, :cond_7

    .line 21
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Ly/d;->b:[Ljava/lang/String;

    .line 22
    :cond_7
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    goto :goto_5

    .line 23
    :cond_8
    sget-object v6, Ly/d;->b:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_a

    aget-object v9, v6, v8

    .line 24
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    :goto_5
    const/4 v5, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    :goto_6
    if-nez v5, :cond_b

    .line 25
    sget-object v1, Li6/c;->c:Lg6/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL fails allowlist rule: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg6/a;->c(Ljava/lang/String;)V

    return v2

    .line 26
    :cond_b
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 27
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 28
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 29
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xff

    if-gt v5, v6, :cond_c

    const/4 v5, 0x1

    goto :goto_7

    :cond_c
    const/4 v5, 0x0

    :goto_7
    if-nez v5, :cond_e

    .line 30
    sget-object v0, Li6/c;->c:Lg6/a;

    .line 31
    iget-boolean v1, v0, Lg6/a;->b:Z

    if-eqz v1, :cond_d

    .line 32
    iget-object v0, v0, Lg6/a;->a:Lg6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "URL host is null or invalid"

    .line 33
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v2

    .line 34
    :cond_e
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_f

    goto :goto_8

    :cond_f
    const-string v6, "http"

    .line 35
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "https"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_9

    :cond_10
    :goto_8
    const/4 v5, 0x0

    goto :goto_a

    :cond_11
    :goto_9
    const/4 v5, 0x1

    :goto_a
    if-nez v5, :cond_13

    .line 36
    sget-object v0, Li6/c;->c:Lg6/a;

    .line 37
    iget-boolean v1, v0, Lg6/a;->b:Z

    if-eqz v1, :cond_12

    .line 38
    iget-object v0, v0, Lg6/a;->a:Lg6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "URL scheme is null or invalid"

    .line 39
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return v2

    .line 40
    :cond_13
    invoke-virtual {v0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_14

    const/4 v5, 0x1

    goto :goto_b

    :cond_14
    const/4 v5, 0x0

    :goto_b
    if-nez v5, :cond_16

    .line 41
    sget-object v0, Li6/c;->c:Lg6/a;

    .line 42
    iget-boolean v1, v0, Lg6/a;->b:Z

    if-eqz v1, :cond_15

    .line 43
    iget-object v0, v0, Lg6/a;->a:Lg6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "URL user info is null"

    .line 44
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return v2

    .line 45
    :cond_16
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_18

    if-lez v0, :cond_17

    goto :goto_c

    :cond_17
    const/4 v0, 0x0

    goto :goto_d

    :cond_18
    :goto_c
    const/4 v0, 0x1

    :goto_d
    if-nez v0, :cond_1a

    .line 46
    sget-object v0, Li6/c;->c:Lg6/a;

    .line 47
    iget-boolean v1, v0, Lg6/a;->b:Z

    if-eqz v1, :cond_19

    .line 48
    iget-object v0, v0, Lg6/a;->a:Lg6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "URL port is less than or equal to 0"

    .line 49
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return v2

    .line 50
    :cond_1a
    iget-object v0, p0, Li6/c;->a:Lo6/h;

    invoke-virtual {v0}, Lo6/h;->Y()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Li6/c;->a:Lo6/h;

    invoke-virtual {v0}, Lo6/h;->O()Lo6/h$d;

    move-result-object v3

    :cond_1b
    if-eqz v3, :cond_1c

    .line 51
    sget-object v0, Lo6/h$d;->b:Lo6/h$d;

    if-eq v3, v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_e

    :cond_1c
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_1d

    .line 52
    sget-object v0, Li6/c;->c:Lg6/a;

    const-string v1, "HTTP Method is null or invalid: "

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Li6/c;->a:Lo6/h;

    invoke-virtual {v3}, Lo6/h;->O()Lo6/h$d;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg6/a;->c(Ljava/lang/String;)V

    return v2

    .line 53
    :cond_1d
    iget-object v0, p0, Li6/c;->a:Lo6/h;

    invoke-virtual {v0}, Lo6/h;->Z()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Li6/c;->a:Lo6/h;

    .line 54
    invoke-virtual {v0}, Lo6/h;->P()I

    move-result v0

    if-lez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_f

    :cond_1e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_1f

    .line 55
    sget-object v0, Li6/c;->c:Lg6/a;

    const-string v1, "HTTP ResponseCode is a negative value:"

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Li6/c;->a:Lo6/h;

    invoke-virtual {v3}, Lo6/h;->P()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg6/a;->c(Ljava/lang/String;)V

    return v2

    .line 56
    :cond_1f
    iget-object v0, p0, Li6/c;->a:Lo6/h;

    invoke-virtual {v0}, Lo6/h;->a0()Z

    move-result v0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_21

    iget-object v0, p0, Li6/c;->a:Lo6/h;

    .line 57
    invoke-virtual {v0}, Lo6/h;->R()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-ltz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_10

    :cond_20
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_21

    .line 58
    sget-object v0, Li6/c;->c:Lg6/a;

    const-string v1, "Request Payload is a negative value:"

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Li6/c;->a:Lo6/h;

    invoke-virtual {v3}, Lo6/h;->R()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg6/a;->c(Ljava/lang/String;)V

    return v2

    .line 59
    :cond_21
    iget-object v0, p0, Li6/c;->a:Lo6/h;

    invoke-virtual {v0}, Lo6/h;->b0()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Li6/c;->a:Lo6/h;

    .line 60
    invoke-virtual {v0}, Lo6/h;->S()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-ltz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_11

    :cond_22
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_23

    .line 61
    sget-object v0, Li6/c;->c:Lg6/a;

    const-string v1, "Response Payload is a negative value:"

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Li6/c;->a:Lo6/h;

    .line 62
    invoke-virtual {v3}, Lo6/h;->S()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lg6/a;->c(Ljava/lang/String;)V

    return v2

    .line 64
    :cond_23
    iget-object v0, p0, Li6/c;->a:Lo6/h;

    invoke-virtual {v0}, Lo6/h;->X()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Li6/c;->a:Lo6/h;

    invoke-virtual {v0}, Lo6/h;->M()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-gtz v0, :cond_24

    goto/16 :goto_15

    .line 65
    :cond_24
    iget-object v0, p0, Li6/c;->a:Lo6/h;

    invoke-virtual {v0}, Lo6/h;->c0()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Li6/c;->a:Lo6/h;

    .line 66
    invoke-virtual {v0}, Lo6/h;->T()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-ltz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_12

    :cond_25
    const/4 v0, 0x0

    :goto_12
    if-nez v0, :cond_26

    .line 67
    sget-object v0, Li6/c;->c:Lg6/a;

    const-string v1, "Time to complete the request is a negative value:"

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Li6/c;->a:Lo6/h;

    .line 68
    invoke-virtual {v3}, Lo6/h;->T()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lg6/a;->c(Ljava/lang/String;)V

    return v2

    .line 70
    :cond_26
    iget-object v0, p0, Li6/c;->a:Lo6/h;

    invoke-virtual {v0}, Lo6/h;->e0()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Li6/c;->a:Lo6/h;

    .line 71
    invoke-virtual {v0}, Lo6/h;->V()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-ltz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_13

    :cond_27
    const/4 v0, 0x0

    :goto_13
    if-nez v0, :cond_28

    .line 72
    sget-object v0, Li6/c;->c:Lg6/a;

    const-string v1, "Time from the start of the request to the start of the response is null or a negative value:"

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Li6/c;->a:Lo6/h;

    .line 73
    invoke-virtual {v3}, Lo6/h;->V()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lg6/a;->c(Ljava/lang/String;)V

    return v2

    .line 75
    :cond_28
    iget-object v0, p0, Li6/c;->a:Lo6/h;

    invoke-virtual {v0}, Lo6/h;->d0()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Li6/c;->a:Lo6/h;

    .line 76
    invoke-virtual {v0}, Lo6/h;->U()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-gtz v0, :cond_29

    goto :goto_14

    .line 77
    :cond_29
    iget-object v0, p0, Li6/c;->a:Lo6/h;

    invoke-virtual {v0}, Lo6/h;->Z()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 78
    sget-object v0, Li6/c;->c:Lg6/a;

    .line 79
    iget-boolean v1, v0, Lg6/a;->b:Z

    if-eqz v1, :cond_2a

    .line 80
    iget-object v0, v0, Lg6/a;->a:Lg6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Did not receive a HTTP Response Code"

    .line 81
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return v2

    :cond_2b
    return v1

    .line 82
    :cond_2c
    :goto_14
    sget-object v0, Li6/c;->c:Lg6/a;

    const-string v1, "Time from the start of the request to the end of the response is null, negative or zero:"

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Li6/c;->a:Lo6/h;

    .line 83
    invoke-virtual {v3}, Lo6/h;->U()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lg6/a;->c(Ljava/lang/String;)V

    return v2

    .line 85
    :cond_2d
    :goto_15
    sget-object v0, Li6/c;->c:Lg6/a;

    const-string v1, "Start time of the request is null, or zero, or a negative value:"

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Li6/c;->a:Lo6/h;

    .line 86
    invoke-virtual {v3}, Lo6/h;->M()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lg6/a;->c(Ljava/lang/String;)V

    return v2
.end method
