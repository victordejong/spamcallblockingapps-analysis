.class Lcom/unknownphone/callblocker/e/c$2;
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
.field final synthetic a:Lcom/unknownphone/callblocker/e/c;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/e/c;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/unknownphone/callblocker/e/c$2;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$2;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->g(Lcom/unknownphone/callblocker/e/c;)Lcom/google/android/material/bottomsheet/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->dismiss()V

    .line 277
    return-void
.end method
