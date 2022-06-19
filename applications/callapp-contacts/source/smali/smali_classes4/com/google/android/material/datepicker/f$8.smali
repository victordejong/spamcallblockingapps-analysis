.class final Lcom/google/android/material/datepicker/f$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/f;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/f;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/google/android/material/datepicker/f$8;->a:Lcom/google/android/material/datepicker/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 423
    iget-object p1, p0, Lcom/google/android/material/datepicker/f$8;->a:Lcom/google/android/material/datepicker/f;

    .line 1357
    iget v0, p1, Lcom/google/android/material/datepicker/f;->h:I

    sget v1, Lcom/google/android/material/datepicker/f$a;->b:I

    if-ne v0, v1, :cond_0

    .line 1358
    sget v0, Lcom/google/android/material/datepicker/f$a;->a:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/f;->a(I)V

    return-void

    .line 1359
    :cond_0
    iget v0, p1, Lcom/google/android/material/datepicker/f;->h:I

    sget v1, Lcom/google/android/material/datepicker/f$a;->a:I

    if-ne v0, v1, :cond_1

    .line 1360
    sget v0, Lcom/google/android/material/datepicker/f$a;->b:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/f;->a(I)V

    :cond_1
    return-void
.end method
