.class public final Lorg/mistergroup/shouldianswer/services/PublicService$a;
.super Landroid/os/Handler;
.source "PublicService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/services/PublicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/services/PublicService$a$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/services/PublicService$a$a;

# The value of this static final field might be set in the static constructor
.field private static final b:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/services/PublicService$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/services/PublicService$a$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/services/PublicService$a;->a:Lorg/mistergroup/shouldianswer/services/PublicService$a$a;

    const/4 v0, 0x1

    .line 70
    sput v0, Lorg/mistergroup/shouldianswer/services/PublicService$a;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 32
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 33
    sget v3, Lorg/mistergroup/shouldianswer/services/PublicService$a;->b:I

    if-ne v2, v3, :cond_1

    .line 34
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 35
    new-instance v3, Lkotlin/e/b/m$c;

    invoke-direct {v3}, Lkotlin/e/b/m$c;-><init>()V

    const-string v4, "number"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 36
    iget-object v2, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    .line 37
    iput-object v2, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 38
    :cond_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PublicService.handleMessage getNumberRating for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 39
    new-instance v2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    .line 40
    iget-object v4, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 41
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/utils/f;->a()Ljava/lang/String;

    move-result-object v5

    .line 42
    sget-object v6, Lorg/mistergroup/shouldianswer/model/k;->a:Lorg/mistergroup/shouldianswer/model/k;

    const/4 v7, 0x1

    .line 39
    invoke-direct {v2, v4, v5, v6, v7}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;Z)V

    .line 45
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 46
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v5

    check-cast v5, Lkotlin/c/f;

    new-instance v6, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;

    invoke-direct {v6, v4, v3, v2, v1}, Lorg/mistergroup/shouldianswer/services/PublicService$a$b;-><init>(Landroid/os/Bundle;Lkotlin/e/b/m$c;Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)V

    check-cast v6, Lkotlin/e/a/m;

    invoke-static {v5, v6}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;)Ljava/lang/Object;

    .line 55
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 56
    invoke-virtual {v2, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 57
    sget v3, Lorg/mistergroup/shouldianswer/services/PublicService$a;->b:I

    iput v3, v2, Landroid/os/Message;->what:I

    .line 58
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PublicService.handleMessage sending answer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 59
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
