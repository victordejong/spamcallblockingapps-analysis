.class Lcom/unknownphone/callblocker/a/a/b/b$3;
.super Ljava/lang/Object;
.source "RecentCallsAltFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/a/a/b/b;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/a/a/b/b;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/a/b/b;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/a/b/b$3;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b$3;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->f(Lcom/unknownphone/callblocker/a/a/b/b;)Lcom/unknownphone/callblocker/f/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/unknownphone/callblocker/f/a;->d(I)V

    .line 133
    return-void
.end method
