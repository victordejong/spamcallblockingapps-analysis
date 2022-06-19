.class public Lcom/callerid/block/inapputil/GoogleBillingUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;,
        Lcom/callerid/block/inapputil/GoogleBillingUtil$b;,
        Lcom/callerid/block/inapputil/GoogleBillingUtil$c;,
        Lcom/callerid/block/inapputil/GoogleBillingUtil$e;,
        Lcom/callerid/block/inapputil/GoogleBillingUtil$d;
    }
.end annotation


# static fields
.field private static b:Z = false

.field private static c:[Ljava/lang/String;

.field private static d:[Ljava/lang/String;

.field private static e:Lcom/android/billingclient/api/c;

.field private static f:Lcom/android/billingclient/api/c$a;

.field private static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/inapputil/c;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callerid/block/inapputil/c;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Z

.field private static final j:Lcom/callerid/block/inapputil/GoogleBillingUtil;


# instance fields
.field private a:Lcom/callerid/block/inapputil/GoogleBillingUtil$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/callerid/block/inapputil/GoogleBillingUtil;->c:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->d:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->g:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->h:Ljava/util/Map;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->i:Z

    new-instance v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;

    invoke-direct {v0}, Lcom/callerid/block/inapputil/GoogleBillingUtil;-><init>()V

    sput-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->j:Lcom/callerid/block/inapputil/GoogleBillingUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/callerid/block/inapputil/GoogleBillingUtil$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callerid/block/inapputil/GoogleBillingUtil$d;-><init>(Lcom/callerid/block/inapputil/GoogleBillingUtil;Lcom/callerid/block/inapputil/GoogleBillingUtil$a;)V

    iput-object v0, p0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->a:Lcom/callerid/block/inapputil/GoogleBillingUtil$d;

    return-void
.end method

.method private A(Ljava/lang/String;)V
    .locals 1

    const-string v0, "inapp"

    invoke-direct {p0, p1, v0}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private C(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->e:Lcom/android/billingclient/api/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->J(Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_1
    sget-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->e:Lcom/android/billingclient/api/c;

    invoke-virtual {v0, p2}, Lcom/android/billingclient/api/c;->f(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$a;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$a;->c()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    sget-object v3, Lcom/callerid/block/inapputil/GoogleBillingUtil;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callerid/block/inapputil/c;

    iget-object v5, v4, Lcom/callerid/block/inapputil/c;->a:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, p2, v2, v5}, Lcom/callerid/block/inapputil/c;->h(Ljava/lang/String;Lcom/android/billingclient/api/Purchase;Z)Z

    move-result v4

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->b()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    const-string v5, "inapp"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-boolean v4, Lcom/callerid/block/inapputil/GoogleBillingUtil;->i:Z

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->f()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_5
    const-string v4, "subs"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/callerid/block/inapputil/GoogleBillingUtil;->i:Z

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->f()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u672a\u652f\u4ed8\u7684\u8ba2\u5355:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    return-object v0

    :cond_8
    :goto_2
    return-object v1
.end method

.method private D(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation

    const-string v0, "inapp"

    invoke-direct {p0, p1, v0}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static H([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    sput-object p0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->c:[Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    array-length p0, p1

    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    sput-object p0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->d:[Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private J(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->e:Lcom/android/billingclient/api/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "\u521d\u59cb\u5316\u5931\u8d25:mBillingClient==null"

    invoke-static {p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->v(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->e:Lcom/android/billingclient/api/c;

    new-instance v2, Lcom/callerid/block/inapputil/GoogleBillingUtil$a;

    invoke-direct {v2, p0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil$a;-><init>(Lcom/callerid/block/inapputil/GoogleBillingUtil;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/c;->h(Lcom/android/billingclient/api/e;)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/callerid/block/inapputil/GoogleBillingUtil;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->A(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/callerid/block/inapputil/GoogleBillingUtil;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->D(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->v(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/callerid/block/inapputil/GoogleBillingUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f()Z
    .locals 1

    sget-boolean v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->i:Z

    return v0
.end method

.method static synthetic g(Lcom/callerid/block/inapputil/GoogleBillingUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h()Z
    .locals 1

    sget-boolean v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->b:Z

    return v0
.end method

.method private i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object p3, Lcom/callerid/block/inapputil/GoogleBillingUtil;->e:Lcom/android/billingclient/api/c;

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/a;->b()Lcom/android/billingclient/api/a$a;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/billingclient/api/a$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/a$a;

    invoke-virtual {p3}, Lcom/android/billingclient/api/a$a;->a()Lcom/android/billingclient/api/a;

    move-result-object p2

    sget-object p3, Lcom/callerid/block/inapputil/GoogleBillingUtil;->e:Lcom/android/billingclient/api/c;

    new-instance v0, Lcom/callerid/block/inapputil/GoogleBillingUtil$b;

    invoke-direct {v0, p0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil$b;-><init>(Lcom/callerid/block/inapputil/GoogleBillingUtil;Ljava/lang/String;)V

    invoke-virtual {p3, p2, v0}, Lcom/android/billingclient/api/c;->a(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/b;)V

    return-void
.end method

.method private m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object p3, Lcom/callerid/block/inapputil/GoogleBillingUtil;->e:Lcom/android/billingclient/api/c;

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/h;->b()Lcom/android/billingclient/api/h$a;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/billingclient/api/h$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/h$a;

    invoke-virtual {p3}, Lcom/android/billingclient/api/h$a;->a()Lcom/android/billingclient/api/h;

    move-result-object p2

    sget-object p3, Lcom/callerid/block/inapputil/GoogleBillingUtil;->e:Lcom/android/billingclient/api/c;

    new-instance v0, Lcom/callerid/block/inapputil/GoogleBillingUtil$c;

    invoke-direct {v0, p0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil$c;-><init>(Lcom/callerid/block/inapputil/GoogleBillingUtil;Ljava/lang/String;)V

    invoke-virtual {p3, p2, v0}, Lcom/android/billingclient/api/c;->b(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/i;)V

    return-void
.end method

.method private o(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->J(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static p()Lcom/callerid/block/inapputil/GoogleBillingUtil;
    .locals 1

    sget-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->j:Lcom/callerid/block/inapputil/GoogleBillingUtil;

    return-object v0
.end method

.method private r(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic s(Landroid/app/Activity;Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/billingclient/api/f;->e()Lcom/android/billingclient/api/f$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/f$a;->b(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/f$a;

    invoke-virtual {p1}, Lcom/android/billingclient/api/f$a;->a()Lcom/android/billingclient/api/f;

    move-result-object p1

    sget-object p2, Lcom/callerid/block/inapputil/GoogleBillingUtil;->e:Lcom/android/billingclient/api/c;

    invoke-virtual {p2, p0, p1}, Lcom/android/billingclient/api/c;->d(Landroid/app/Activity;Lcom/android/billingclient/api/f;)Lcom/android/billingclient/api/g;

    :cond_0
    return-void
.end method

.method private synthetic t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->e:Lcom/android/billingclient/api/c;

    if-nez v0, :cond_1

    sget-object p2, Lcom/callerid/block/inapputil/GoogleBillingUtil;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/inapputil/c;

    sget-object v1, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->b:Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    iget-object v2, v0, Lcom/callerid/block/inapputil/c;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/callerid/block/inapputil/c;->d(Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;Z)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "inapp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/callerid/block/inapputil/GoogleBillingUtil;->c:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v1, "subs"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/callerid/block/inapputil/GoogleBillingUtil;->d:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/billingclient/api/l;->c()Lcom/android/billingclient/api/l$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/l$a;->b(Ljava/util/List;)Lcom/android/billingclient/api/l$a;

    invoke-virtual {v1, p2}, Lcom/android/billingclient/api/l$a;->c(Ljava/lang/String;)Lcom/android/billingclient/api/l$a;

    sget-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->e:Lcom/android/billingclient/api/c;

    invoke-virtual {v1}, Lcom/android/billingclient/api/l$a;->a()Lcom/android/billingclient/api/l;

    move-result-object v1

    new-instance v2, Lcom/callerid/block/inapputil/GoogleBillingUtil$e;

    invoke-direct {v2, p0, p2, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil$e;-><init>(Lcom/callerid/block/inapputil/GoogleBillingUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/c;->g(Lcom/android/billingclient/api/l;Lcom/android/billingclient/api/m;)V

    :cond_4
    return-void
.end method

.method private static v(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "GoogleBillingUtil-3.0.3"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private x(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->r(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/callerid/block/inapputil/GoogleBillingUtil;->e:Lcom/android/billingclient/api/c;

    if-nez v1, :cond_1

    sget-object p1, Lcom/callerid/block/inapputil/GoogleBillingUtil;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callerid/block/inapputil/c;

    sget-object p3, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->c:Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    iget-object v1, p2, Lcom/callerid/block/inapputil/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2, p3, v1}, Lcom/callerid/block/inapputil/c;->d(Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;Z)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->J(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->a:Lcom/callerid/block/inapputil/GoogleBillingUtil$d;

    iput-object v0, v1, Lcom/callerid/block/inapputil/GoogleBillingUtil$d;->a:Ljava/lang/String;

    sget-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->f:Lcom/android/billingclient/api/c$a;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$a;->c(Lcom/android/billingclient/api/k;)Lcom/android/billingclient/api/c$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/billingclient/api/l;->c()Lcom/android/billingclient/api/l$a;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/l$a;->b(Ljava/util/List;)Lcom/android/billingclient/api/l$a;

    invoke-virtual {p2, p3}, Lcom/android/billingclient/api/l$a;->c(Ljava/lang/String;)Lcom/android/billingclient/api/l$a;

    invoke-virtual {p2}, Lcom/android/billingclient/api/l$a;->a()Lcom/android/billingclient/api/l;

    move-result-object p2

    sget-object p3, Lcom/callerid/block/inapputil/GoogleBillingUtil;->e:Lcom/android/billingclient/api/c;

    new-instance v0, Lcom/callerid/block/inapputil/b;

    invoke-direct {v0, p1}, Lcom/callerid/block/inapputil/b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p3, p2, v0}, Lcom/android/billingclient/api/c;->g(Lcom/android/billingclient/api/l;Lcom/android/billingclient/api/m;)V

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/callerid/block/inapputil/GoogleBillingUtil;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callerid/block/inapputil/c;

    sget-object p3, Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;->c:Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;

    iget-object v1, p2, Lcom/callerid/block/inapputil/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2, p3, v1}, Lcom/callerid/block/inapputil/c;->d(Lcom/callerid/block/inapputil/GoogleBillingUtil$GoogleBillingListenerTag;Z)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/callerid/block/inapputil/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/callerid/block/inapputil/a;-><init>(Lcom/callerid/block/inapputil/GoogleBillingUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->o(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/String;)V
    .locals 1

    const-string v0, "subs"

    invoke-direct {p0, p1, v0}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->z(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public E(Landroid/app/Activity;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->r(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "subs"

    invoke-direct {p0, p1, v0}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public F(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->r(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    sget-object v1, Lcom/callerid/block/inapputil/GoogleBillingUtil;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/inapputil/c;

    iget-object v2, v1, Lcom/callerid/block/inapputil/c;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->G(Lcom/callerid/block/inapputil/c;)V

    sget-object v1, Lcom/callerid/block/inapputil/GoogleBillingUtil;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public G(Lcom/callerid/block/inapputil/c;)V
    .locals 1

    sget-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public I(Landroid/app/Activity;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->r(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->J(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public k(Landroid/app/Activity;Lcom/callerid/block/inapputil/c;)Lcom/callerid/block/inapputil/GoogleBillingUtil;
    .locals 3

    invoke-direct {p0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->r(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/callerid/block/inapputil/c;->a:Ljava/lang/String;

    sget-object v1, Lcom/callerid/block/inapputil/GoogleBillingUtil;->h:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->r(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/callerid/block/inapputil/GoogleBillingUtil;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    sget-object v1, Lcom/callerid/block/inapputil/GoogleBillingUtil;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/inapputil/c;

    iget-object v2, v1, Lcom/callerid/block/inapputil/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/callerid/block/inapputil/GoogleBillingUtil;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/callerid/block/inapputil/GoogleBillingUtil;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public l(Landroid/app/Activity;)Lcom/callerid/block/inapputil/GoogleBillingUtil;
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->a:Lcom/callerid/block/inapputil/GoogleBillingUtil$d;

    invoke-direct {p0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->r(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/callerid/block/inapputil/GoogleBillingUtil$d;->a:Ljava/lang/String;

    sget-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->e:Lcom/android/billingclient/api/c;

    if-nez v0, :cond_1

    sget-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->j:Lcom/callerid/block/inapputil/GoogleBillingUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/callerid/block/inapputil/GoogleBillingUtil;->e:Lcom/android/billingclient/api/c;

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/billingclient/api/c;->e(Landroid/content/Context;)Lcom/android/billingclient/api/c$a;

    move-result-object v1

    sput-object v1, Lcom/callerid/block/inapputil/GoogleBillingUtil;->f:Lcom/android/billingclient/api/c$a;

    iget-object v2, p0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->a:Lcom/callerid/block/inapputil/GoogleBillingUtil$d;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/c$a;->c(Lcom/android/billingclient/api/k;)Lcom/android/billingclient/api/c$a;

    invoke-virtual {v1}, Lcom/android/billingclient/api/c$a;->b()Lcom/android/billingclient/api/c$a;

    invoke-virtual {v1}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v1

    sput-object v1, Lcom/callerid/block/inapputil/GoogleBillingUtil;->e:Lcom/android/billingclient/api/c;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/callerid/block/inapputil/GoogleBillingUtil;->f:Lcom/android/billingclient/api/c$a;

    iget-object v2, p0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->a:Lcom/callerid/block/inapputil/GoogleBillingUtil$d;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/c$a;->c(Lcom/android/billingclient/api/k;)Lcom/android/billingclient/api/c$a;

    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    sget-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->f:Lcom/android/billingclient/api/c$a;

    iget-object v1, p0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->a:Lcom/callerid/block/inapputil/GoogleBillingUtil$d;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$a;->c(Lcom/android/billingclient/api/k;)Lcom/android/billingclient/api/c$a;

    :goto_1
    sget-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->j:Lcom/callerid/block/inapputil/GoogleBillingUtil;

    monitor-enter v0

    :try_start_1
    invoke-virtual {v0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->I(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->r(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->A(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->r(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->B(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->r(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->D(Ljava/lang/String;)Ljava/util/List;

    :cond_2
    monitor-exit v0

    return-object v0

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->c:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "inapp"

    return-object p1

    :cond_0
    sget-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->d:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "subs"

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/callerid/block/inapputil/GoogleBillingUtil;->f:Lcom/android/billingclient/api/c$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$a;->c(Lcom/android/billingclient/api/k;)Lcom/android/billingclient/api/c$a;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->F(Landroid/app/Activity;)V

    return-void
.end method

.method public y(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "subs"

    invoke-direct {p0, p1, p2, v0}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->x(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
