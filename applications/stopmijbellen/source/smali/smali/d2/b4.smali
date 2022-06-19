.class public Ld2/b4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ld2/x3;


# direct methods
.method public constructor <init>(Ld2/x3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/b4;->a:Ld2/x3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ld2/b4;->a:Ld2/x3;

    .line 2
    iget-object v0, v0, Ld2/x3;->i:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    invoke-static {p1}, Ld2/i3;->g(Landroid/content/Intent;)Z

    .line 5
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p1

    invoke-virtual {p1}, Ld2/f1;->c()Ld2/e3;

    move-result-object p1

    iget-object v0, p0, Ld2/b4;->a:Ld2/x3;

    .line 6
    iget-object v0, v0, Ld2/x3;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v0}, Ld2/e3;->d(Ljava/lang/String;)V

    return-void
.end method
