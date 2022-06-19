.class Lc/e/a/a/a$g$a;
.super Ljava/lang/Object;
.source "LoadedApkHuaWei.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lc/e/a/a/a$d;

.field private volatile c:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lc/e/a/a/a$d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lc/e/a/a/a$g$a;->b:Lc/e/a/a/a$d;

    .line 4
    iput-object p1, p0, Lc/e/a/a/a$g$a;->a:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lc/e/a/a/a$d;Lc/e/a/a/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/e/a/a/a$g$a;-><init>(Ljava/lang/Object;Lc/e/a/a/a$d;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "registerReceiver"

    .line 2
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x3e8

    if-eqz v0, :cond_2

    .line 3
    iget p1, p0, Lc/e/a/a/a$g$a;->c:I

    if-lt p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lc/e/a/a/a$g$a;->b:Lc/e/a/a/a$d;

    if-eqz p1, :cond_0

    .line 5
    iget p2, p0, Lc/e/a/a/a$g$a;->c:I

    invoke-interface {p1, p2, v1}, Lc/e/a/a/a$d;->a(II)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_1
    iget p1, p0, Lc/e/a/a/a$g$a;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lc/e/a/a/a$g$a;->c:I

    .line 7
    iget-object p1, p0, Lc/e/a/a/a$g$a;->b:Lc/e/a/a/a$d;

    if-eqz p1, :cond_4

    .line 8
    iget v0, p0, Lc/e/a/a/a$g$a;->c:I

    invoke-interface {p1, v0, v1}, Lc/e/a/a/a$d;->a(II)V

    goto :goto_1

    :cond_2
    const-string v0, "unregisterReceiver"

    .line 9
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget p1, p0, Lc/e/a/a/a$g$a;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lc/e/a/a/a$g$a;->c:I

    .line 11
    iget p1, p0, Lc/e/a/a/a$g$a;->c:I

    if-gez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    iget p1, p0, Lc/e/a/a/a$g$a;->c:I

    :goto_0
    iput p1, p0, Lc/e/a/a/a$g$a;->c:I

    .line 12
    iget-object p1, p0, Lc/e/a/a/a$g$a;->b:Lc/e/a/a/a$d;

    if-eqz p1, :cond_4

    .line 13
    iget v0, p0, Lc/e/a/a/a$g$a;->c:I

    invoke-interface {p1, v0, v1}, Lc/e/a/a/a$d;->a(II)V

    .line 14
    :cond_4
    :goto_1
    iget-object p1, p0, Lc/e/a/a/a$g$a;->a:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
