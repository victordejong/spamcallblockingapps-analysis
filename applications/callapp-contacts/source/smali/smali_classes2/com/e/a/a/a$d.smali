.class final Lcom/e/a/a/a$d;
.super Lcom/e/a/a/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/e/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, v0}, Lcom/e/a/a/a$a;-><init>(Lcom/e/a/a/a$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/e/a/a/a$1;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/e/a/a/a$d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/e/a/a/a$c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p2, "mWhiteList"

    .line 167
    invoke-static {p1, p2}, Lcom/e/a/a/a$d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 168
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 169
    check-cast p2, Ljava/util/List;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
