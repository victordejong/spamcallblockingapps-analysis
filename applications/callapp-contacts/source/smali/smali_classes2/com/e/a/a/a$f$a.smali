.class final Lcom/e/a/a/a$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/e/a/a/a$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lcom/e/a/a/a$c;

.field private volatile c:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/e/a/a/a$c;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/e/a/a/a$f$a;->b:Lcom/e/a/a/a$c;

    .line 111
    iput-object p1, p0, Lcom/e/a/a/a$f$a;->a:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/e/a/a/a$c;Lcom/e/a/a/a$1;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/e/a/a/a$f$a;-><init>(Ljava/lang/Object;Lcom/e/a/a/a$c;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 116
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "registerReceiver"

    .line 117
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget p1, p0, Lcom/e/a/a/a$f$a;->c:I

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_1

    .line 119
    iget-object p1, p0, Lcom/e/a/a/a$f$a;->b:Lcom/e/a/a/a$c;

    if-eqz p1, :cond_0

    .line 120
    invoke-interface {p1}, Lcom/e/a/a/a$c;->a()V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 124
    :cond_1
    iget p1, p0, Lcom/e/a/a/a$f$a;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/e/a/a/a$f$a;->c:I

    .line 125
    iget-object p1, p0, Lcom/e/a/a/a$f$a;->b:Lcom/e/a/a/a$c;

    if-eqz p1, :cond_4

    .line 126
    invoke-interface {p1}, Lcom/e/a/a/a$c;->a()V

    goto :goto_1

    :cond_2
    const-string v0, "unregisterReceiver"

    .line 128
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 129
    iget p1, p0, Lcom/e/a/a/a$f$a;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/e/a/a/a$f$a;->c:I

    .line 130
    iget p1, p0, Lcom/e/a/a/a$f$a;->c:I

    if-gez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/e/a/a/a$f$a;->c:I

    :goto_0
    iput p1, p0, Lcom/e/a/a/a$f$a;->c:I

    .line 131
    iget-object p1, p0, Lcom/e/a/a/a$f$a;->b:Lcom/e/a/a/a$c;

    if-eqz p1, :cond_4

    .line 132
    invoke-interface {p1}, Lcom/e/a/a/a$c;->a()V

    .line 135
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/e/a/a/a$f$a;->a:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
