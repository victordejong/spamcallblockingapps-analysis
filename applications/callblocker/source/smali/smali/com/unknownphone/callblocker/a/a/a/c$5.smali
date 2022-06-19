.class Lcom/unknownphone/callblocker/a/a/a/c$5;
.super Ljava/lang/Object;
.source "ContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/a/a/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/a/a/a/c;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/a/a/c;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/a/a/c$5;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c$5;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/a/c;->a(Lcom/unknownphone/callblocker/a/a/a/c;)Lcom/unknownphone/callblocker/f/a;

    move-result-object v0

    const v1, 0x7f090114

    iget-object v2, p0, Lcom/unknownphone/callblocker/a/a/a/c$5;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    .line 151
    invoke-static {v2}, Lcom/unknownphone/callblocker/a/a/a/c;->a(Lcom/unknownphone/callblocker/a/a/a/c;)Lcom/unknownphone/callblocker/f/a;

    move-result-object v2

    iget-object v3, p0, Lcom/unknownphone/callblocker/a/a/a/c$5;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-static {v3}, Lcom/unknownphone/callblocker/a/a/a/c;->b(Lcom/unknownphone/callblocker/a/a/a/c;)Lcom/unknownphone/callblocker/a/a/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unknownphone/callblocker/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unknownphone/callblocker/i/b;->a(Lcom/unknownphone/callblocker/f/a;Ljava/lang/String;)Lcom/unknownphone/callblocker/i/b;

    move-result-object v2

    const/4 v3, 0x1

    .line 150
    invoke-interface {v0, v1, v2, v3}, Lcom/unknownphone/callblocker/f/a;->a(ILandroidx/fragment/app/Fragment;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method
