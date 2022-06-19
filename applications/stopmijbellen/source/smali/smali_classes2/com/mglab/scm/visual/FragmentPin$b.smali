.class public Lcom/mglab/scm/visual/FragmentPin$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mglab/scm/visual/FragmentPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mglab/scm/visual/FragmentPin;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/FragmentPin;Lcom/mglab/scm/visual/FragmentPin$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mglab/scm/visual/FragmentPin$b;->a:Lcom/mglab/scm/visual/FragmentPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mglab/scm/visual/FragmentPin$b;->a:Lcom/mglab/scm/visual/FragmentPin;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, ""

    const-string p4, "psetasnip"

    .line 3
    invoke-static {p2, p4, p3}, Lf8/h;->d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "lfTY9y7#bhZA4qf8"

    .line 5
    invoke-static {p3, p2}, Lf8/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 6
    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/y;

    const-string p3, "correct pin"

    invoke-direct {p2, p3}, Lk8/y;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
