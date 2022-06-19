.class Lcom/unknownphone/callblocker/selector/SelectorActivity$4;
.super Ljava/lang/Object;
.source "SelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/selector/SelectorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/selector/SelectorActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/selector/SelectorActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/unknownphone/callblocker/selector/SelectorActivity$4;->a:Lcom/unknownphone/callblocker/selector/SelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/unknownphone/callblocker/selector/SelectorActivity$4;->a:Lcom/unknownphone/callblocker/selector/SelectorActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/selector/SelectorActivity;->finish()V

    .line 113
    return-void
.end method
