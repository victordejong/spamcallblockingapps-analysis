.class public Lf2/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf2/b;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf2/b;


# direct methods
.method public constructor <init>(Lf2/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf2/b$c;->a:Lf2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Le2/g;Le2/b;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lf2/b$c;->a:Lf2/b;

    sget v0, Lf2/b;->t:I

    .line 2
    invoke-virtual {p2}, Lf2/b;->h()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    sget-object p2, Le2/b;->c:Le2/b;

    iget-object v0, p0, Lf2/b$c;->a:Lf2/b;

    .line 4
    invoke-virtual {v0}, Lf2/b;->c()Lf2/b$g;

    move-result-object v0

    .line 5
    iget v0, v0, Lf2/b$g;->d:I

    invoke-virtual {p1, p2, v0}, Le2/g;->h(Le2/b;I)V

    .line 6
    iget-object p1, p0, Lf2/b$c;->a:Lf2/b;

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "in_sub"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    iget-object p1, p0, Lf2/b$c;->a:Lf2/b;

    const/4 p2, -0x1

    .line 9
    invoke-virtual {p1, p2}, Lf2/b;->j(I)V

    .line 10
    iget-object p1, p0, Lf2/b$c;->a:Lf2/b;

    .line 11
    invoke-virtual {p1}, Lf2/b;->f()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :goto_0
    return-void
.end method
