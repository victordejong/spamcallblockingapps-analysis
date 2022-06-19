.class public Lf8/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf8/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li2/c;)V
    .locals 3

    .line 1
    iget p1, p1, Li2/c;->a:I

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lf8/a;->c:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 3
    sget-object p1, Lf8/a;->e:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    sget-object p1, Lf8/a;->b:Lcom/android/billingclient/api/a;

    .line 6
    new-instance v1, Li2/h;

    invoke-direct {v1}, Li2/h;-><init>()V

    const-string v2, "inapp"

    .line 7
    iput-object v2, v1, Li2/h;->a:Ljava/lang/String;

    .line 8
    iput-object v0, v1, Li2/h;->b:Ljava/util/List;

    .line 9
    sget-object v0, Lt4/d;->f:Lt4/d;

    invoke-virtual {p1, v1, v0}, Lcom/android/billingclient/api/a;->e(Li2/h;Li2/i;)V

    .line 10
    sget-object p1, Lf8/a;->h:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    sget-object p1, Lf8/a;->b:Lcom/android/billingclient/api/a;

    .line 13
    new-instance v1, Li2/h;

    invoke-direct {v1}, Li2/h;-><init>()V

    const-string v2, "subs"

    .line 14
    iput-object v2, v1, Li2/h;->a:Ljava/lang/String;

    .line 15
    iput-object v0, v1, Li2/h;->b:Ljava/util/List;

    .line 16
    sget-object v0, Lz2/o;->e:Lz2/o;

    invoke-virtual {p1, v1, v0}, Lcom/android/billingclient/api/a;->e(Li2/h;Li2/i;)V

    .line 17
    invoke-static {}, Lf8/a;->i()V

    :cond_0
    return-void
.end method
