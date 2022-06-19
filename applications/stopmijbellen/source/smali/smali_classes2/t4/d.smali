.class public final synthetic Lt4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp6/f$a;
.implements Lw5/a$a;
.implements Lh5/a$a;
.implements Lr2/e;
.implements Lm7/h;
.implements Li2/i;
.implements Lm7/d;
.implements Ls4/c$a;
.implements Ld9/h$b;
.implements Le2/g$c;


# static fields
.field public static final synthetic b:Lt4/d;

.field public static final synthetic c:Lt4/d;

.field public static final synthetic d:Lt4/d;

.field public static final synthetic e:Lt4/d;

.field public static final synthetic f:Lt4/d;

.field public static final synthetic g:Lt4/d;

.field public static final synthetic h:Lt4/d;

.field public static final synthetic i:Lt4/d;

.field public static final synthetic j:Lt4/d;

.field public static final synthetic k:Lt4/d;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lt4/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt4/d;-><init>(I)V

    sput-object v0, Lt4/d;->b:Lt4/d;

    new-instance v0, Lt4/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lt4/d;-><init>(I)V

    sput-object v0, Lt4/d;->c:Lt4/d;

    new-instance v0, Lt4/d;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lt4/d;-><init>(I)V

    sput-object v0, Lt4/d;->d:Lt4/d;

    new-instance v0, Lt4/d;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lt4/d;-><init>(I)V

    sput-object v0, Lt4/d;->e:Lt4/d;

    new-instance v0, Lt4/d;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lt4/d;-><init>(I)V

    sput-object v0, Lt4/d;->f:Lt4/d;

    new-instance v0, Lt4/d;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lt4/d;-><init>(I)V

    sput-object v0, Lt4/d;->g:Lt4/d;

    new-instance v0, Lt4/d;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lt4/d;-><init>(I)V

    sput-object v0, Lt4/d;->h:Lt4/d;

    new-instance v0, Lt4/d;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lt4/d;-><init>(I)V

    sput-object v0, Lt4/d;->i:Lt4/d;

    new-instance v0, Lt4/d;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lt4/d;-><init>(I)V

    sput-object v0, Lt4/d;->j:Lt4/d;

    new-instance v0, Lt4/d;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lt4/d;-><init>(I)V

    sput-object v0, Lt4/d;->k:Lt4/d;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lt4/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ls6/k;

    sget-object p1, Lf8/a;->a:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ls6/i;->toString()Ljava/lang/String;

    const-string p1, "result"

    .line 2
    invoke-virtual {p2, p1}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object p1

    invoke-virtual {p1}, Ls6/i;->a()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lg5/v;

    .line 1
    sget-object v0, Lk5/a;->b:Lh5/a;

    invoke-virtual {v0, p1}, Lh5/a;->g(Lg5/v;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lt4/d;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lh5/a;->c(Landroid/util/JsonReader;)Lg5/v$d$d;

    move-result-object p1

    return-object p1

    :goto_0
    invoke-static {p1}, Lh5/a;->a(Landroid/util/JsonReader;)Lg5/v$d$d$a$b$d$a;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Landroid/content/Context;

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public d(Lw5/b;)V
    .locals 0

    sget p1, Lz4/s;->c:I

    return-void
.end method

.method public e(Li2/c;Ljava/util/List;)V
    .locals 4

    sget-object v0, Lf8/a;->a:Landroid/content/Context;

    .line 1
    iget p1, p1, Li2/c;->a:I

    if-nez p1, :cond_1

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v1, p2, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    const-string v2, "price"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Price"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p2, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    const-string v2, "price_amount_micros"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "PriceAmountMicros"

    .line 7
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8
    sget-object v1, Lf8/a;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    move-result-object p2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lf8/a;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public f(Ld9/h;Ljava/lang/Throwable;)V
    .locals 1

    iget p1, p0, Lt4/d;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "Transaction error"

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/a;->l(Ljava/lang/String;ILba/b;)V

    return-void

    .line 2
    :goto_0
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    const/16 p2, 0xb

    invoke-static {p2, p1}, La6/d;->f(ILba/b;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public g(Le2/g;Le2/b;)V
    .locals 1

    sget p1, Lcom/mglab/scm/visual/FragmentDev;->b:I

    .line 1
    new-instance p1, Lw8/f;

    invoke-direct {p1}, Lw8/f;-><init>()V

    .line 2
    const-class p2, Lh8/l;

    .line 3
    new-instance v0, Lw8/g;

    invoke-direct {v0, p1, p2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {v0}, Lw8/d;->d()V

    return-void
.end method

.method public then(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/net/InetAddress;

    sget-object v0, Lk7/h;->f:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    return-object p1
.end method
