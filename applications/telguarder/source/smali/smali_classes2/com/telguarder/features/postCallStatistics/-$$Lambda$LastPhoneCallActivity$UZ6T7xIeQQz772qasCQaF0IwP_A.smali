.class public final synthetic Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$UZ6T7xIeQQz772qasCQaF0IwP_A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$UZ6T7xIeQQz772qasCQaF0IwP_A;->f$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$UZ6T7xIeQQz772qasCQaF0IwP_A;->f$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->lambda$setMoreInfoLayoutListener$10$LastPhoneCallActivity(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
