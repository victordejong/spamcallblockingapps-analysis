.class Lcom/unknownphone/callblocker/a/a/a/e$1;
.super Lcom/unknownphone/callblocker/custom/f;
.source "ContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/a/a/a/e;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/a/a/a/e;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/a/a/e;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/a/a/e$1;->a:Lcom/unknownphone/callblocker/a/a/a/e;

    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e$1;->a:Lcom/unknownphone/callblocker/a/a/a/e;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/a/e;->a(Lcom/unknownphone/callblocker/a/a/a/e;)Lcom/unknownphone/callblocker/f/a;

    move-result-object v1

    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e$1;->a:Lcom/unknownphone/callblocker/a/a/a/e;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/a/e;->b(Lcom/unknownphone/callblocker/a/a/a/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/a/a/a/a;

    invoke-static {v1, v0}, Lcom/unknownphone/callblocker/a/a/a/c;->a(Lcom/unknownphone/callblocker/f/a;Lcom/unknownphone/callblocker/a/a/a/a;)Lcom/unknownphone/callblocker/a/a/a/c;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/e$1;->a:Lcom/unknownphone/callblocker/a/a/a/e;

    invoke-static {v1}, Lcom/unknownphone/callblocker/a/a/a/e;->a(Lcom/unknownphone/callblocker/a/a/a/e;)Lcom/unknownphone/callblocker/f/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unknownphone/callblocker/f/a;->b(Landroidx/fragment/app/Fragment;)V

    .line 84
    return-void
.end method
