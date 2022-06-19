.class public final Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;
.super Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B\u008d\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0014R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u001a\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0013\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u001bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001dR\u0011\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001bR\u0011\u0010\u0012\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001b\u00a8\u0006!"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;",
        "leftTitle",
        "",
        "arrowResource",
        "",
        "numberOfCalls",
        "changeValue",
        "",
        "progress",
        "maxProgress",
        "type",
        "color",
        "colors",
        "",
        "showSeparator",
        "",
        "showProgress",
        "showTotal",
        "isEmptyState",
        "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;FII[IZZZZ)V",
        "getArrowResource",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getChangeValue",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "()Z",
        "getLeftTitle",
        "()Ljava/lang/String;",
        "getNumberOfCalls",
        "getShowProgress",
        "getShowTotal",
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
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Integer;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Float;

.field private final e:Z

.field private final f:Z

.field private final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;FII[IZZZZ)V
    .locals 8

    move-object v7, p0

    move-object v0, p0

    move-object v1, p5

    move v2, p6

    move v3, p7

    move/from16 v4, p8

    move-object/from16 v5, p9

    move/from16 v6, p10

    .line 18
    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;-><init>(Ljava/lang/Float;FII[IZ)V

    move-object v0, p1

    iput-object v0, v7, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->a:Ljava/lang/String;

    move-object v0, p2

    iput-object v0, v7, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->b:Ljava/lang/Integer;

    move-object v0, p3

    iput-object v0, v7, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->c:Ljava/lang/String;

    move-object v0, p4

    iput-object v0, v7, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->d:Ljava/lang/Float;

    move/from16 v0, p11

    iput-boolean v0, v7, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->e:Z

    move/from16 v0, p12

    iput-boolean v0, v7, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->f:Z

    move/from16 v0, p13

    iput-boolean v0, v7, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;FII[IZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move-object v8, v2

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    move-object v12, v2

    goto :goto_5

    :cond_5
    move-object/from16 v12, p9

    :goto_5
    and-int/lit16 v1, v0, 0x200

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    const/4 v13, 0x0

    goto :goto_6

    :cond_6
    move/from16 v13, p10

    :goto_6
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_7

    const/4 v14, 0x0

    goto :goto_7

    :cond_7
    move/from16 v14, p11

    :goto_7
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_8

    const/4 v15, 0x0

    goto :goto_8

    :cond_8
    move/from16 v15, p12

    :goto_8
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_9

    const/16 v16, 0x0

    goto :goto_9

    :cond_9
    move/from16 v16, p13

    :goto_9
    move-object/from16 v3, p0

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    .line 15
    invoke-direct/range {v3 .. v16}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;FII[IZZZZ)V

    return-void
.end method


# virtual methods
.method public final getArrowResource()Ljava/lang/Integer;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getChangeValue()Ljava/lang/Float;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->d:Ljava/lang/Float;

    return-object v0
.end method

.method public final getLeftTitle()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumberOfCalls()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowProgress()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->e:Z

    return v0
.end method

.method public final getShowTotal()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->f:Z

    return v0
.end method

.method public final isEmptyState()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;->g:Z

    return v0
.end method
