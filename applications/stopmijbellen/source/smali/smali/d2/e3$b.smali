.class public Ld2/e3$b;
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
    iput-object p1, p0, Ld2/e3$b;->a:Ld2/e3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/e3$b;->a:Ld2/e3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v0, "ad_session_id"

    .line 4
    invoke-virtual {p1, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    .line 6
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    instance-of v1, v0, Lcom/adcolony/sdk/AdColonyAdViewActivity;

    .line 9
    instance-of v2, v0, Ld2/w;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 10
    check-cast v0, Lcom/adcolony/sdk/AdColonyAdViewActivity;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyAdViewActivity;->f()V

    goto :goto_1

    .line 11
    :cond_2
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    const-string v2, "id"

    .line 12
    invoke-static {v1, v2, p1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    new-instance p1, Ld2/t0;

    check-cast v0, Ld2/w;

    iget v0, v0, Ld2/w;->c:I

    const-string v2, "AdSession.on_request_close"

    invoke-direct {p1, v2, v0, v1}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {p1}, Ld2/t0;->b()V

    :goto_1
    return-void
.end method
