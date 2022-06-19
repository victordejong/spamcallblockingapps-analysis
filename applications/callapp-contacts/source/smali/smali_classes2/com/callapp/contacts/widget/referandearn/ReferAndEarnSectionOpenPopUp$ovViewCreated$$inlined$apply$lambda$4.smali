.class public final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "com/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp$ovViewCreated$1$4",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "onGlobalLayout",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lnl/dionsegijn/konfetti/KonfettiView;

.field final synthetic b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp;

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lnl/dionsegijn/konfetti/KonfettiView;Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$4;->a:Lnl/dionsegijn/konfetti/KonfettiView;

    iput-object p2, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$4;->b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp;

    iput-object p3, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$4;->c:Landroid/view/View;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 15

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$4;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$4;->a:Lnl/dionsegijn/konfetti/KonfettiView;

    .line 1046
    new-instance v1, Lnl/dionsegijn/konfetti/b;

    invoke-direct {v1, v0}, Lnl/dionsegijn/konfetti/b;-><init>(Lnl/dionsegijn/konfetti/KonfettiView;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    const v2, 0x7f060088

    .line 95
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3

    const v2, 0x7f060087

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    const/4 v4, 0x1

    aput v2, v0, v4

    const v2, 0x7f06008a

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    const/4 v5, 0x2

    aput v2, v0, v5

    const-string v2, "colors"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    iput-object v0, v1, Lnl/dionsegijn/konfetti/b;->c:[I

    .line 1119
    iget-object v0, v1, Lnl/dionsegijn/konfetti/b;->b:Lnl/dionsegijn/konfetti/c/b;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 2015
    iput-wide v6, v0, Lnl/dionsegijn/konfetti/c/b;->a:D

    .line 1120
    iget-object v0, v1, Lnl/dionsegijn/konfetti/b;->b:Lnl/dionsegijn/konfetti/c/b;

    const-wide v6, 0x4076700000000000L    # 359.0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 2022
    iput-object v2, v0, Lnl/dionsegijn/konfetti/c/b;->b:Ljava/lang/Double;

    .line 2138
    iget-object v0, v1, Lnl/dionsegijn/konfetti/b;->b:Lnl/dionsegijn/konfetti/c/b;

    const/4 v2, 0x0

    .line 3030
    iput v2, v0, Lnl/dionsegijn/konfetti/c/b;->c:F

    .line 2139
    iget-object v0, v1, Lnl/dionsegijn/konfetti/b;->b:Lnl/dionsegijn/konfetti/c/b;

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 3041
    invoke-static {v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    :cond_0
    iput-object v6, v0, Lnl/dionsegijn/konfetti/c/b;->d:Ljava/lang/Float;

    .line 3210
    iget-object v0, v1, Lnl/dionsegijn/konfetti/b;->f:Lnl/dionsegijn/konfetti/models/ConfettiConfig;

    invoke-virtual {v0, v4}, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->setFadeOut(Z)V

    .line 3228
    iget-object v0, v1, Lnl/dionsegijn/konfetti/b;->f:Lnl/dionsegijn/konfetti/models/ConfettiConfig;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v0, v6, v7}, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->setTimeToLive(J)V

    new-array v0, v5, [Lnl/dionsegijn/konfetti/models/Shape;

    .line 100
    sget-object v6, Lnl/dionsegijn/konfetti/models/Shape$Square;->INSTANCE:Lnl/dionsegijn/konfetti/models/Shape$Square;

    check-cast v6, Lnl/dionsegijn/konfetti/models/Shape;

    aput-object v6, v0, v3

    sget-object v6, Lnl/dionsegijn/konfetti/models/Shape$Circle;->INSTANCE:Lnl/dionsegijn/konfetti/models/Shape$Circle;

    check-cast v6, Lnl/dionsegijn/konfetti/models/Shape;

    aput-object v6, v0, v4

    const-string v6, "shapes"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4344
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    .line 4353
    aget-object v8, v0, v7

    instance-of v9, v8, Lnl/dionsegijn/konfetti/models/Shape;

    if-eqz v9, :cond_1

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4354
    :cond_2
    check-cast v6, Ljava/util/List;

    .line 4344
    check-cast v6, Ljava/util/Collection;

    new-array v0, v3, [Lnl/dionsegijn/konfetti/models/Shape;

    .line 4356
    invoke-interface {v6, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Lnl/dionsegijn/konfetti/models/Shape;

    iput-object v0, v1, Lnl/dionsegijn/konfetti/b;->e:[Lnl/dionsegijn/konfetti/models/Shape;

    new-array v0, v4, [Lnl/dionsegijn/konfetti/models/Size;

    .line 101
    new-instance v4, Lnl/dionsegijn/konfetti/models/Size;

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-direct {v4, v6, v2, v5, v7}, Lnl/dionsegijn/konfetti/models/Size;-><init>(IFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v4, v0, v3

    invoke-virtual {v1, v0}, Lnl/dionsegijn/konfetti/b;->a([Lnl/dionsegijn/konfetti/models/Size;)Lnl/dionsegijn/konfetti/b;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSectionOpenPopUp$ovViewCreated$$inlined$apply$lambda$4;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42480000    # 50.0f

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, -0x3db80000    # -50.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 5059
    iget-object v4, v0, Lnl/dionsegijn/konfetti/b;->a:Lnl/dionsegijn/konfetti/c/a;

    .line 6035
    iput v2, v4, Lnl/dionsegijn/konfetti/c/a;->a:F

    .line 6036
    iput-object v1, v4, Lnl/dionsegijn/konfetti/c/a;->b:Ljava/lang/Float;

    .line 5060
    iget-object v1, v0, Lnl/dionsegijn/konfetti/b;->a:Lnl/dionsegijn/konfetti/c/a;

    .line 6044
    iput v2, v1, Lnl/dionsegijn/konfetti/c/a;->c:F

    .line 6045
    iput-object v3, v1, Lnl/dionsegijn/konfetti/c/a;->d:Ljava/lang/Float;

    .line 103
    sget-wide v1, Lnl/dionsegijn/konfetti/a/c;->b:J

    .line 6266
    new-instance v3, Lnl/dionsegijn/konfetti/a/c;

    invoke-direct {v3}, Lnl/dionsegijn/konfetti/a/c;-><init>()V

    const/16 v4, 0x32

    invoke-static {v3, v4, v1, v2}, Lnl/dionsegijn/konfetti/a/c;->a(Lnl/dionsegijn/konfetti/a/c;IJ)Lnl/dionsegijn/konfetti/a/c;

    move-result-object v1

    .line 6267
    move-object v10, v1

    check-cast v10, Lnl/dionsegijn/konfetti/a/a;

    .line 6309
    new-instance v1, Lnl/dionsegijn/konfetti/a/b;

    iget-object v3, v0, Lnl/dionsegijn/konfetti/b;->a:Lnl/dionsegijn/konfetti/c/a;

    iget-object v4, v0, Lnl/dionsegijn/konfetti/b;->b:Lnl/dionsegijn/konfetti/c/b;

    iget-object v5, v0, Lnl/dionsegijn/konfetti/b;->g:Lnl/dionsegijn/konfetti/models/Vector;

    iget-object v6, v0, Lnl/dionsegijn/konfetti/b;->d:[Lnl/dionsegijn/konfetti/models/Size;

    iget-object v7, v0, Lnl/dionsegijn/konfetti/b;->e:[Lnl/dionsegijn/konfetti/models/Shape;

    iget-object v8, v0, Lnl/dionsegijn/konfetti/b;->c:[I

    iget-object v9, v0, Lnl/dionsegijn/konfetti/b;->f:Lnl/dionsegijn/konfetti/models/ConfettiConfig;

    const-wide/16 v11, 0x0

    const/16 v13, 0x100

    const/4 v14, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v14}, Lnl/dionsegijn/konfetti/a/b;-><init>(Lnl/dionsegijn/konfetti/c/a;Lnl/dionsegijn/konfetti/c/b;Lnl/dionsegijn/konfetti/models/Vector;[Lnl/dionsegijn/konfetti/models/Size;[Lnl/dionsegijn/konfetti/models/Shape;[ILnl/dionsegijn/konfetti/models/ConfettiConfig;Lnl/dionsegijn/konfetti/a/a;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lnl/dionsegijn/konfetti/b;->h:Lnl/dionsegijn/konfetti/a/b;

    .line 6319
    iget-object v1, v0, Lnl/dionsegijn/konfetti/b;->i:Lnl/dionsegijn/konfetti/KonfettiView;

    const-string v2, "particleSystem"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7074
    iget-object v2, v1, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7075
    iget-object v0, v1, Lnl/dionsegijn/konfetti/KonfettiView;->b:Lnl/dionsegijn/konfetti/b/a;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7076
    :cond_3
    invoke-virtual {v1}, Lnl/dionsegijn/konfetti/KonfettiView;->invalidate()V

    return-void
.end method
