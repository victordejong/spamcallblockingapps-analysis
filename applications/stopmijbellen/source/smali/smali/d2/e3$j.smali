.class public Ld2/e3$j;
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
    iput-object p1, p0, Ld2/e3$j;->a:Ld2/e3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 9

    .line 1
    iget-object v0, p0, Ld2/e3$j;->a:Ld2/e3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v1, p1, Ld2/t0;->b:Ld2/f4;

    .line 3
    new-instance v2, Ld2/f4;

    invoke-direct {v2}, Ld2/f4;-><init>()V

    const-string v3, "ad_session_id"

    .line 4
    invoke-virtual {v1, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "recipients"

    .line 5
    invoke-static {v1, v4}, Ld2/e4;->c(Ld2/f4;Ljava/lang/String;)Ld2/d4;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    .line 6
    :goto_0
    invoke-virtual {v4}, Ld2/d4;->c()I

    move-result v8

    if-ge v7, v8, :cond_1

    if-eqz v7, :cond_0

    const-string v8, ";"

    .line 7
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8
    :cond_0
    invoke-static {v6}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 9
    invoke-virtual {v4, v7}, Ld2/d4;->e(I)Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 11
    :cond_1
    new-instance v4, Landroid/content/Intent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "smsto:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v4, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "body"

    .line 12
    invoke-virtual {v1, v6}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "sms_body"

    .line 13
    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 14
    invoke-static {v1}, Ld2/i3;->g(Landroid/content/Intent;)Z

    move-result v1

    const-string v4, "success"

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 15
    invoke-static {v2, v4, v1}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 16
    invoke-virtual {p1, v2}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    .line 17
    invoke-virtual {v0, v3}, Ld2/e3;->d(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v3}, Ld2/e3;->b(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v3}, Ld2/e3;->c(Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    const-string v0, "Failed to create sms."

    .line 20
    invoke-static {v0, v5}, Ld2/i3;->l(Ljava/lang/String;I)Z

    .line 21
    invoke-static {v2, v4, v5}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 22
    invoke-virtual {p1, v2}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    :goto_1
    return-void
.end method
