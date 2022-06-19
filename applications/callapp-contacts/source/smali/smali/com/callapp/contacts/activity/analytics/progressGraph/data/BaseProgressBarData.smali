.class public Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0016\u0018\u00002\u00020\u0001BA\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0015\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;",
        "",
        "progress",
        "",
        "maxProgress",
        "type",
        "",
        "color",
        "colors",
        "",
        "showSeparator",
        "",
        "(Ljava/lang/Float;FII[IZ)V",
        "getColor",
        "()I",
        "getColors",
        "()[I",
        "getMaxProgress",
        "()F",
        "getProgress",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "getShowSeparator",
        "()Z",
        "setShowSeparator",
        "(Z)V",
        "getType",
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
.field private final a:Ljava/lang/Float;

.field private final b:F

.field private final c:I

.field private final d:I

.field private final e:[I

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Float;FII[IZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;->a:Ljava/lang/Float;

    iput p2, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;->b:F

    iput p3, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;->c:I

    iput p4, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;->d:I

    iput-object p5, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;->e:[I

    iput-boolean p6, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Float;FII[IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const/high16 p2, 0x42c80000    # 100.0f

    const/high16 v2, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_1
    move v2, p2

    :goto_0
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v5, p5

    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_3

    const/4 p6, 0x0

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    move v6, p6

    :goto_1
    move-object v0, p0

    move v3, p3

    move v4, p4

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;-><init>(Ljava/lang/Float;FII[IZ)V

    return-void
.end method


# virtual methods
.method public final getColor()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;->d:I

    return v0
.end method

.method public final getColors()[I
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;->e:[I

    return-object v0
.end method

.method public final getMaxProgress()F
    .locals 1

    .line 5
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;->b:F

    return v0
.end method

.method public final getProgress()Ljava/lang/Float;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;->a:Ljava/lang/Float;

    return-object v0
.end method

.method public final getShowSeparator()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;->f:Z

    return v0
.end method

.method public final getType()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;->c:I

    return v0
.end method

.method public final setShowSeparator(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;->f:Z

    return-void
.end method
