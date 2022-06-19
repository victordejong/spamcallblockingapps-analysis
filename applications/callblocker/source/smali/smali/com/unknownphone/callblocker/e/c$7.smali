.class Lcom/unknownphone/callblocker/e/c$7;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/e/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomsheet/a;

.field final synthetic b:Lcom/unknownphone/callblocker/e/c;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/e/c;Lcom/google/android/material/bottomsheet/a;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/unknownphone/callblocker/e/c$7;->b:Lcom/unknownphone/callblocker/e/c;

    iput-object p2, p0, Lcom/unknownphone/callblocker/e/c$7;->a:Lcom/google/android/material/bottomsheet/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$7;->a:Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->dismiss()V

    .line 486
    return-void
.end method
