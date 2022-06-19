.class public Lcom/criteo/publisher/context/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/context/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/context/a;->b:Landroid/content/Context;

    .line 38
    const-class p1, Lcom/criteo/publisher/context/a;

    invoke-static {p1}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object p1

    const-string v0, "LoggerFactory.getLogger(\u2026nTypeFetcher::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/criteo/publisher/context/a;->a:Lcom/criteo/publisher/logging/g;

    return-void
.end method

.method private static a(I)Lcom/criteo/publisher/context/a$a;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 147
    sget-object p0, Lcom/criteo/publisher/context/a$a;->d:Lcom/criteo/publisher/context/a$a;

    goto :goto_0

    .line 146
    :pswitch_0
    sget-object p0, Lcom/criteo/publisher/context/a$a;->h:Lcom/criteo/publisher/context/a$a;

    goto :goto_0

    .line 145
    :pswitch_1
    sget-object p0, Lcom/criteo/publisher/context/a$a;->g:Lcom/criteo/publisher/context/a$a;

    goto :goto_0

    .line 141
    :pswitch_2
    sget-object p0, Lcom/criteo/publisher/context/a$a;->f:Lcom/criteo/publisher/context/a$a;

    goto :goto_0

    .line 130
    :pswitch_3
    sget-object p0, Lcom/criteo/publisher/context/a$a;->e:Lcom/criteo/publisher/context/a$a;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/criteo/publisher/context/a$a;
    .locals 7

    .line 42
    iget-object v0, p0, Lcom/criteo/publisher/context/a;->b:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    .line 1091
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1092
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_2

    .line 1093
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_2

    sget-object v0, Lcom/criteo/publisher/context/a$a;->b:Lcom/criteo/publisher/context/a$a;

    :goto_1
    move-object v2, v0

    goto/16 :goto_4

    :cond_2
    if-eqz v4, :cond_3

    .line 1094
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v1, :cond_3

    sget-object v0, Lcom/criteo/publisher/context/a$a;->c:Lcom/criteo/publisher/context/a$a;

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_a

    .line 1095
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-static {v3}, Lcom/criteo/publisher/context/a;->a(I)Lcom/criteo/publisher/context/a$a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 49
    iget-object v4, p0, Lcom/criteo/publisher/context/a;->a:Lcom/criteo/publisher/logging/g;

    const-string v5, "Deprecated way to get connection type is not available, fallback on new API"

    invoke-virtual {v4, v5, v3}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2056
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v3

    .line 2057
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v3, "networkCapabilities"

    .line 2061
    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 2074
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2061
    sget-object v2, Lcom/criteo/publisher/context/a$a;->b:Lcom/criteo/publisher/context/a$a;

    goto :goto_4

    .line 2062
    :cond_4
    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2080
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2062
    sget-object v2, Lcom/criteo/publisher/context/a$a;->c:Lcom/criteo/publisher/context/a$a;

    goto :goto_4

    .line 2063
    :cond_5
    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 2086
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2064
    iget-object v0, p0, Lcom/criteo/publisher/context/a;->b:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    move-object v2, v0

    :goto_2
    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_9

    .line 2115
    iget-object v0, p0, Lcom/criteo/publisher/context/a;->b:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v4}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_9

    .line 2107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    .line 2108
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    invoke-static {v0}, Lcom/criteo/publisher/context/a;->a(I)Lcom/criteo/publisher/context/a$a;

    move-result-object v0

    goto/16 :goto_1

    .line 2110
    :cond_8
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Lcom/criteo/publisher/context/a;->a(I)Lcom/criteo/publisher/context/a$a;

    move-result-object v0

    goto/16 :goto_1

    .line 2106
    :cond_9
    sget-object v0, Lcom/criteo/publisher/context/a$a;->d:Lcom/criteo/publisher/context/a$a;

    goto/16 :goto_1

    :cond_a
    :goto_4
    return-object v2
.end method
