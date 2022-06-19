.class public Ld2/e2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/e2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/e2;


# direct methods
.method public constructor <init>(Ld2/e2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/e2$a;->a:Ld2/e2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 2

    .line 1
    invoke-static {}, Ld2/t;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    .line 3
    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p1, Ld2/t0;->b:Ld2/f4;

    const-string v1, "on_resume"

    .line 5
    invoke-static {v0, v1}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Ld2/e2$a;->a:Ld2/e2;

    .line 7
    iput-object p1, v0, Ld2/e2;->a:Ld2/t0;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Ld2/e2$a;->a:Ld2/e2;

    .line 9
    invoke-virtual {v0, p1}, Ld2/e2;->a(Ld2/t0;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p1, "Missing Activity reference, can\'t build AlertDialog."

    .line 10
    invoke-static {p1}, Landroidx/recyclerview/widget/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11
    invoke-static {v1, v1, p1, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    return-void
.end method
