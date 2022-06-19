.class Lcom/unknownphone/callblocker/e/c$3;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/e/c;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/unknownphone/callblocker/e/c;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/e/c;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/unknownphone/callblocker/e/c$3;->b:Lcom/unknownphone/callblocker/e/c;

    iput-object p2, p0, Lcom/unknownphone/callblocker/e/c$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$3;->b:Lcom/unknownphone/callblocker/e/c;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->r()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$3;->b:Lcom/unknownphone/callblocker/e/c;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->r()Landroidx/fragment/app/d;

    move-result-object v1

    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$3;->a:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 284
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v2, 0x2fb

    .line 283
    invoke-static {v1, v0, v2}, Landroidx/core/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$3;->b:Lcom/unknownphone/callblocker/e/c;

    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->g(Lcom/unknownphone/callblocker/e/c;)Lcom/google/android/material/bottomsheet/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->dismiss()V

    .line 286
    return-void
.end method
