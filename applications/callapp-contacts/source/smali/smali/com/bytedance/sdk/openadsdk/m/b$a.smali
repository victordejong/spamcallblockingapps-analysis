.class Lcom/bytedance/sdk/openadsdk/m/b$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/m/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/m/b;

.field private final b:Lcom/bytedance/sdk/openadsdk/m/f;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/m/b;Lcom/bytedance/sdk/openadsdk/m/f;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->a:Lcom/bytedance/sdk/openadsdk/m/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 106
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->b:Lcom/bytedance/sdk/openadsdk/m/f;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/m/b;Lcom/bytedance/sdk/openadsdk/m/f;Lcom/bytedance/sdk/openadsdk/m/b$1;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/m/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/m/b;Lcom/bytedance/sdk/openadsdk/m/f;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 116
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->b:Lcom/bytedance/sdk/openadsdk/m/f;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/m/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/m/b$a;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->b:Lcom/bytedance/sdk/openadsdk/m/f;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/m/f;->c()I

    move-result p1

    if-nez p1, :cond_2

    .line 124
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->a:Lcom/bytedance/sdk/openadsdk/m/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/m/b;->a(Lcom/bytedance/sdk/openadsdk/m/b;)Lcom/bytedance/sdk/openadsdk/m/g;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->b:Lcom/bytedance/sdk/openadsdk/m/f;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/m/g;->c(Lcom/bytedance/sdk/openadsdk/m/f;)V

    return-object v0

    .line 127
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->b:Lcom/bytedance/sdk/openadsdk/m/f;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/m/f;->c()I

    move-result p1

    if-lez p1, :cond_8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/m/b$a;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_8

    .line 129
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->b:Lcom/bytedance/sdk/openadsdk/m/f;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/m/f;->c()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 130
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->a:Lcom/bytedance/sdk/openadsdk/m/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/m/b;->a(Lcom/bytedance/sdk/openadsdk/m/b;)Lcom/bytedance/sdk/openadsdk/m/g;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->b:Lcom/bytedance/sdk/openadsdk/m/f;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/m/g;->a(Lcom/bytedance/sdk/openadsdk/m/f;)V

    .line 132
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->a:Lcom/bytedance/sdk/openadsdk/m/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/m/b;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_2

    .line 137
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->b:Lcom/bytedance/sdk/openadsdk/m/f;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/m/f;->b()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v1

    .line 140
    new-instance v2, Lcom/bytedance/sdk/adnet/b/j;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1, v1}, Lcom/bytedance/sdk/adnet/b/j;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 141
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    const/16 v3, 0x2710

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/adnet/b/j;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    .line 142
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/j/e;->e()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    :try_start_1
    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-object p1, v0

    :goto_1
    const-string v1, "trackurl"

    if-eqz p1, :cond_5

    .line 151
    :try_start_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/m;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 153
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->a:Lcom/bytedance/sdk/openadsdk/m/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/m/b;->a(Lcom/bytedance/sdk/openadsdk/m/b;)Lcom/bytedance/sdk/openadsdk/m/g;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->b:Lcom/bytedance/sdk/openadsdk/m/f;

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/openadsdk/m/g;->c(Lcom/bytedance/sdk/openadsdk/m/f;)V

    .line 154
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/q;->c()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "track success : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->b:Lcom/bytedance/sdk/openadsdk/m/f;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/m/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 159
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/q;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "track fail : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->b:Lcom/bytedance/sdk/openadsdk/m/f;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/m/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->b:Lcom/bytedance/sdk/openadsdk/m/f;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/m/f;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/m/f;->a(I)V

    .line 164
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->b:Lcom/bytedance/sdk/openadsdk/m/f;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/m/f;->c()I

    move-result p1

    if-nez p1, :cond_7

    .line 165
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->a:Lcom/bytedance/sdk/openadsdk/m/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/m/b;->a(Lcom/bytedance/sdk/openadsdk/m/b;)Lcom/bytedance/sdk/openadsdk/m/g;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->b:Lcom/bytedance/sdk/openadsdk/m/f;

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/openadsdk/m/g;->c(Lcom/bytedance/sdk/openadsdk/m/f;)V

    .line 166
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/q;->c()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "track fail and delete : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->b:Lcom/bytedance/sdk/openadsdk/m/f;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/m/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 171
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->a:Lcom/bytedance/sdk/openadsdk/m/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/m/b;->a(Lcom/bytedance/sdk/openadsdk/m/b;)Lcom/bytedance/sdk/openadsdk/m/g;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/m/b$a;->b:Lcom/bytedance/sdk/openadsdk/m/f;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/m/g;->b(Lcom/bytedance/sdk/openadsdk/m/f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :catchall_1
    nop

    goto/16 :goto_0

    :cond_8
    :goto_2
    return-object v0
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/m/b$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
