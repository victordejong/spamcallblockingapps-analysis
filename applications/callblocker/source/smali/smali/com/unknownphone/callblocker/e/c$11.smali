.class Lcom/unknownphone/callblocker/e/c$11;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/e/c;->c(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/e/c;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/e/c;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/unknownphone/callblocker/e/c$11;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$11;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->r()Landroidx/fragment/app/d;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/activity/MainActivity;

    .line 561
    if-eqz v0, :cond_0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/activity/MainActivity;->e(I)V

    .line 562
    :cond_0
    return-void
.end method
