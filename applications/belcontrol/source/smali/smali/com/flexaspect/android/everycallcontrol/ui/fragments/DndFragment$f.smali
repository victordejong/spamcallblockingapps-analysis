.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->H(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$c<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

.field public final synthetic c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;ILcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->a:I

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;Ljava/lang/Object;Ljava/lang/Object;Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;)V
    .locals 0

    check-cast p2, Ljava/lang/Long;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->b(Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;Ljava/lang/Long;Ljava/lang/Long;Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;)V

    return-void
.end method

.method public b(Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;Ljava/lang/Long;Ljava/lang/Long;Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kedlin/cca/ui/CCARangeSeekbarVertical<",
            "*>;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0xf

    mul-long v2, v2, v4

    const-wide/16 v6, 0x3c

    div-long/2addr v2, v6

    long-to-int v3, v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    mul-long v8, v8, v4

    rem-long/2addr v8, v6

    long-to-int v2, v8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    mul-long v8, v8, v4

    div-long/2addr v8, v6

    long-to-int v9, v8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    mul-long v10, v10, v4

    rem-long/2addr v10, v6

    long-to-int v6, v10

    iget-object v7, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    iget v8, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->a:I

    invoke-static {v7, v8}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->z(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;I)I

    iget-object v7, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    if-le v3, v9, :cond_0

    invoke-static {v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move v14, v9

    move v15, v6

    invoke-virtual/range {v10 .. v16}, Ljava/util/Calendar;->set(IIIIII)V

    move v15, v9

    goto :goto_0

    :cond_0
    invoke-static {v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)Ljava/util/Calendar;

    move-result-object v8

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move v15, v9

    move v9, v7

    move v12, v3

    move v13, v2

    invoke-virtual/range {v8 .. v14}, Ljava/util/Calendar;->set(IIIIII)V

    :goto_0
    iget-object v7, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object v7, v7, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->b:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-static {v8}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->B(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)Ljava/text/DateFormat;

    move-result-object v8

    iget-object v9, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-static {v9}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object v7, v7, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->b:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    mul-long v8, v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-static {v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    if-le v3, v15, :cond_1

    iget-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-static {v6}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move v12, v3

    move v13, v2

    invoke-virtual/range {v8 .. v14}, Ljava/util/Calendar;->set(IIIIII)V

    move v2, v15

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-static {v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move v14, v15

    move v2, v15

    move v15, v6

    invoke-virtual/range {v10 .. v16}, Ljava/util/Calendar;->set(IIIIII)V

    :goto_1
    iget-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object v6, v6, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->c:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-static {v7}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->B(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)Ljava/text/DateFormat;

    move-result-object v7

    iget-object v8, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-static {v8}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object v6, v6, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->c:Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    mul-long v7, v7, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object v4, v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->e:Lcom/kedlin/cca/ui/CCAManyStatesButton;

    if-eqz v4, :cond_3

    if-gt v3, v2, :cond_2

    sget-object v5, Lcom/kedlin/cca/ui/CCAManyStatesButton$b;->b:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/kedlin/cca/ui/CCAManyStatesButton$b;->c:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    :goto_2
    invoke-virtual {v4, v5}, Lcom/kedlin/cca/ui/CCAManyStatesButton;->setDayState(Lcom/kedlin/cca/ui/CCAManyStatesButton$b;)V

    :cond_3
    if-eqz v1, :cond_7

    const v4, 0x7f1102bf

    const v5, 0x7f1102c1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v3, v2, :cond_5

    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-static {v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->C(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)Landroid/widget/Toast;

    move-result-object v2

    sget-object v3, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;->a:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    if-ne v1, v3, :cond_4

    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object v4, v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v5, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object v5, v5, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {v1, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-static {v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->C(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)Landroid/widget/Toast;

    move-result-object v2

    sget-object v3, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;->b:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    if-ne v1, v3, :cond_6

    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object v5, v5, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->b:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {v1, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;

    iget-object v4, v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$j;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v5, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->C(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_7
    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$f;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;->C(Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :goto_4
    return-void
.end method
