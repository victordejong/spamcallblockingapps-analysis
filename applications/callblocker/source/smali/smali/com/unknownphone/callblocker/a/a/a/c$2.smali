.class Lcom/unknownphone/callblocker/a/a/a/c$2;
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
    .line 111
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/a/a/c$2;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/c$2;->a:Lcom/unknownphone/callblocker/a/a/a/c;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/a/c;->a(Lcom/unknownphone/callblocker/a/a/a/c;)Lcom/unknownphone/callblocker/f/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/unknownphone/callblocker/f/a;->d(I)V

    .line 115
    return-void
.end method
