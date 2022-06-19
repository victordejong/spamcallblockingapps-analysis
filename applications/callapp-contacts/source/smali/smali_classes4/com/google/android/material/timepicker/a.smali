.class final Lcom/google/android/material/timepicker/a;
.super Landroidx/core/view/a;
.source "SourceFile"


# instance fields
.field private final b:Landroidx/core/view/a/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    .line 29
    new-instance v0, Landroidx/core/view/a/c$a;

    .line 31
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    invoke-direct {v0, p2, p1}, Landroidx/core/view/a/c$a;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/a;->b:Landroidx/core/view/a/c$a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/a/c;)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->a(Landroid/view/View;Landroidx/core/view/a/c;)V

    .line 37
    iget-object p1, p0, Lcom/google/android/material/timepicker/a;->b:Landroidx/core/view/a/c$a;

    invoke-virtual {p2, p1}, Landroidx/core/view/a/c;->a(Landroidx/core/view/a/c$a;)V

    return-void
.end method
