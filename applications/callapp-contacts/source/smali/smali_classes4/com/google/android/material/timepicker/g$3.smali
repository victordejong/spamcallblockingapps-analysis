.class final Lcom/google/android/material/timepicker/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/g;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/TimeModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/timepicker/g;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/g;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/google/android/material/timepicker/g$3;->a:Lcom/google/android/material/timepicker/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/google/android/material/timepicker/g$3;->a:Lcom/google/android/material/timepicker/g;

    sget v1, Lcom/google/android/material/a$f;->selection_type:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/g;->a(I)V

    return-void
.end method
