.class public Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:I

.field c:I

.field private d:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->a:I

    .line 40
    iput p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->b:I

    .line 41
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->c:I

    const/16 p1, 0xf

    .line 42
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->setMask(I)V

    return-void
.end method


# virtual methods
.method final a(IIIF)I
    .locals 1

    .line 50
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->d:I

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    return p2

    :cond_0
    sub-int/2addr p3, p2

    int-to-float p1, p3

    mul-float p1, p1, p4

    float-to-int p1, p1

    add-int/2addr p2, p1

    return p2
.end method

.method public setMask(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->d:I

    return-void
.end method
