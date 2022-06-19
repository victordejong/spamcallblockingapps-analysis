.class public final synthetic Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSStatRowViewHolder$eLjDCWLLcOJl1gr5Pz0pwDVojvA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSStatRowViewHolder$eLjDCWLLcOJl1gr5Pz0pwDVojvA;->f$0:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSStatRowViewHolder$eLjDCWLLcOJl1gr5Pz0pwDVojvA;->f$0:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;

    invoke-virtual {v0, p1, p2}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->lambda$setupPanZoom$0$CSStatRowViewHolder(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
