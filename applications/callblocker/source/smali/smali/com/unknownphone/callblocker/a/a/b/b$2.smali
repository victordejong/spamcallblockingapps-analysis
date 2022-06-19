.class Lcom/unknownphone/callblocker/a/a/b/b$2;
.super Lcom/unknownphone/callblocker/custom/c;
.source "RecentCallsAltFragment.java"


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
    .line 121
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/a/b/b$2;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b$2;->a:Lcom/unknownphone/callblocker/a/a/b/b;

    invoke-static {p1}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/a/a/b/b;->a(Lcom/unknownphone/callblocker/a/a/b/b;Ljava/lang/String;)V

    .line 125
    return-void
.end method
