.class final Lcom/google/android/material/timepicker/g$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/button/MaterialButtonToggleGroup$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/timepicker/g;
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

    .line 179
    iput-object p1, p0, Lcom/google/android/material/timepicker/g$4;->a:Lcom/google/android/material/timepicker/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 0

    .line 183
    sget p2, Lcom/google/android/material/a$f;->material_clock_period_pm_button:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 184
    :goto_0
    iget-object p2, p0, Lcom/google/android/material/timepicker/g$4;->a:Lcom/google/android/material/timepicker/g;

    .line 1054
    iget-object p2, p2, Lcom/google/android/material/timepicker/g;->a:Lcom/google/android/material/timepicker/TimeModel;

    .line 184
    invoke-virtual {p2, p1}, Lcom/google/android/material/timepicker/TimeModel;->setPeriod(I)V

    return-void
.end method
