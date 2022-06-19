.class public Ld2/e3$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/e3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/e3;


# direct methods
.method public constructor <init>(Ld2/e3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/e3$m;->a:Ld2/e3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 11

    .line 1
    iget-object v0, p0, Ld2/e3$m;->a:Ld2/e3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    .line 3
    iget-object v2, p1, Ld2/t0;->b:Ld2/f4;

    const-string v3, "recipients"

    .line 4
    invoke-static {v2, v3}, Ld2/e4;->c(Ld2/f4;Ljava/lang/String;)Ld2/d4;

    move-result-object v3

    const-string v4, "html"

    .line 5
    invoke-static {v2, v4}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v4

    const-string v5, "subject"

    .line 6
    invoke-virtual {v2, v5}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "body"

    .line 7
    invoke-virtual {v2, v6}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ad_session_id"

    .line 8
    invoke-virtual {v2, v7}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v3}, Ld2/d4;->c()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 10
    :goto_0
    invoke-virtual {v3}, Ld2/d4;->c()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 11
    invoke-virtual {v3, v9}, Ld2/d4;->e(I)Ljava/lang/String;

    move-result-object v10

    .line 12
    aput-object v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 13
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_1

    const-string v4, "plain/text"

    .line 14
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v4, "android.intent.extra.SUBJECT"

    .line 15
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.EMAIL"

    .line 16
    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-static {v3}, Ld2/i3;->g(Landroid/content/Intent;)Z

    move-result v3

    const-string v4, "success"

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 18
    invoke-static {v1, v4, v3}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 19
    invoke-virtual {p1, v1}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    .line 20
    invoke-virtual {v0, v2}, Ld2/e3;->d(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v2}, Ld2/e3;->b(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v2}, Ld2/e3;->c(Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    const-string v0, "Failed to send email."

    .line 23
    invoke-static {v0, v8}, Ld2/i3;->l(Ljava/lang/String;I)Z

    .line 24
    invoke-static {v1, v4, v8}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 25
    invoke-virtual {p1, v1}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    :goto_1
    return-void
.end method
