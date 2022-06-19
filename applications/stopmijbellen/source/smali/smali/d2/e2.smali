.class public Ld2/e2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ld2/t0;

.field public b:Landroid/app/AlertDialog;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ld2/e2$a;

    invoke-direct {v0, p0}, Ld2/e2$a;-><init>(Ld2/e2;)V

    const-string v1, "Alert.show"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    return-void
.end method


# virtual methods
.method public final a(Ld2/t0;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x1030226

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3
    iget-object v0, p1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "message"

    .line 4
    invoke-virtual {v0, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    .line 5
    invoke-virtual {v0, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "positive"

    .line 6
    invoke-virtual {v0, v4}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "negative"

    .line 7
    invoke-virtual {v0, v5}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 9
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 10
    new-instance v2, Ld2/e2$b;

    invoke-direct {v2, p0, p1}, Ld2/e2$b;-><init>(Ld2/e2;Ld2/t0;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v2, ""

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    new-instance v2, Ld2/e2$c;

    invoke-direct {v2, p0, p1}, Ld2/e2$c;-><init>(Ld2/e2;Ld2/t0;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 13
    :cond_1
    new-instance v0, Ld2/e2$d;

    invoke-direct {v0, p0, p1}, Ld2/e2$d;-><init>(Ld2/e2;Ld2/t0;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 14
    new-instance p1, Ld2/e2$e;

    invoke-direct {p1, p0, v1}, Ld2/e2$e;-><init>(Ld2/e2;Landroid/app/AlertDialog$Builder;)V

    invoke-static {p1}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    return-void
.end method
