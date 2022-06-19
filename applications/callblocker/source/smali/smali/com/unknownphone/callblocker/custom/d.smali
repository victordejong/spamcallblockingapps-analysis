.class public abstract Lcom/unknownphone/callblocker/custom/d;
.super Ljava/lang/Object;
.source "OnCustomClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/custom/d;->a(Landroid/view/View;)V

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unknownphone/callblocker/d/c;->a(Landroid/content/Context;)V

    .line 12
    return-void
.end method
