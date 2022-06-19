.class final Lcom/linkedin/android/litr/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkedin/android/litr/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/linkedin/android/litr/e;


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/linkedin/android/litr/e;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 132
    iput-object p2, p0, Lcom/linkedin/android/litr/a$a;->a:Lcom/linkedin/android/litr/e;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/linkedin/android/litr/e;Lcom/linkedin/android/litr/a$1;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/linkedin/android/litr/a$a;-><init>(Landroid/os/Looper;Lcom/linkedin/android/litr/e;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 137
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "jobId"

    .line 140
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 145
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v0, 0x4

    if-eq v2, v0, :cond_1

    .line 169
    invoke-static {}, Lcom/linkedin/android/litr/a;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown event received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/linkedin/android/litr/a$a;->a:Lcom/linkedin/android/litr/e;

    invoke-interface {p1, v1}, Lcom/linkedin/android/litr/e;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "progress"

    .line 164
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    .line 165
    iget-object v0, p0, Lcom/linkedin/android/litr/a$a;->a:Lcom/linkedin/android/litr/e;

    invoke-interface {v0, v1, p1}, Lcom/linkedin/android/litr/e;->a(Ljava/lang/String;F)V

    return-void

    :cond_3
    const-string p1, "throwable"

    .line 159
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    .line 160
    iget-object v0, p0, Lcom/linkedin/android/litr/a$a;->a:Lcom/linkedin/android/litr/e;

    invoke-interface {v0, v1, p1}, Lcom/linkedin/android/litr/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 151
    :cond_4
    iget-object p1, p0, Lcom/linkedin/android/litr/a$a;->a:Lcom/linkedin/android/litr/e;

    invoke-interface {p1, v1}, Lcom/linkedin/android/litr/e;->b(Ljava/lang/String;)V

    return-void

    .line 147
    :cond_5
    iget-object p1, p0, Lcom/linkedin/android/litr/a$a;->a:Lcom/linkedin/android/litr/e;

    invoke-interface {p1, v1}, Lcom/linkedin/android/litr/e;->a(Ljava/lang/String;)V

    return-void

    .line 142
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Handler message doesn\'t contain an id!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
