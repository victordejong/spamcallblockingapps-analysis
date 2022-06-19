.class public Ld2/e3$i;
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
    iput-object p1, p0, Ld2/e3$i;->a:Ld2/e3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ld2/e3$i;->a:Ld2/e3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    .line 3
    iget-object v2, p1, Ld2/t0;->b:Ld2/f4;

    .line 4
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "tel:"

    invoke-static {v4}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "phone_number"

    .line 5
    invoke-virtual {v2, v5}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 7
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ad_session_id"

    .line 8
    invoke-virtual {v2, v4}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v3}, Ld2/i3;->g(Landroid/content/Intent;)Z

    move-result v3

    const-string v4, "success"

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 10
    invoke-static {v1, v4, v3}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 11
    invoke-virtual {p1, v1}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    .line 12
    invoke-virtual {v0, v2}, Ld2/e3;->d(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v2}, Ld2/e3;->b(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v2}, Ld2/e3;->c(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v2, "Failed to dial number."

    .line 15
    invoke-static {v2, v0}, Ld2/i3;->l(Ljava/lang/String;I)Z

    .line 16
    invoke-static {v1, v4, v0}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 17
    invoke-virtual {p1, v1}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    :goto_0
    return-void
.end method
