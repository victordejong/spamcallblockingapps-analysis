.class final Lcom/google/android/material/datepicker/m$1;
.super Landroidx/recyclerview/widget/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/m;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/google/android/material/datepicker/m;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/m;Landroid/content/Context;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/google/android/material/datepicker/m$1;->f:Lcom/google/android/material/datepicker/m;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 45
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0
.end method
