.class Lcom/e/a/a/a$e;
.super Lcom/e/a/a/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/e/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, v0}, Lcom/e/a/a/a$a;-><init>(Lcom/e/a/a/a$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/e/a/a/a$1;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/e/a/a/a$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/e/a/a/a$c;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p2, "mWhiteListMap"

    .line 146
    invoke-static {p1, p2}, Lcom/e/a/a/a$e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 147
    instance-of v0, p2, Ljava/util/Map;

    const/4 v1, 0x0

    .line 149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 148
    check-cast p2, Ljava/util/Map;

    .line 149
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
