.class Lcom/unknownphone/callblocker/b/a$1;
.super Ljava/lang/Object;
.source "UserTypeFreeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/b/a;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/b/a;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/b/a;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/unknownphone/callblocker/b/a$1;->a:Lcom/unknownphone/callblocker/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/unknownphone/callblocker/b/a$1;->a:Lcom/unknownphone/callblocker/b/a;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/b/a;->r()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/b/a$1;->a:Lcom/unknownphone/callblocker/b/a;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/b/a;->r()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/d;->finish()V

    .line 48
    :cond_0
    return-void
.end method
