.class Lcom/callapp/contacts/activity/calllog/CallLogAdapter$4;
.super Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->getItemAt(I)Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/callapp/contacts/activity/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/CallLogAdapter;ILjava/util/Date;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;IILjava/lang/String;Lcom/callapp/contacts/manager/sim/SimManager$SimId;IJ)V
    .locals 13

    move-object v12, p0

    move-object v0, p1

    .line 235
    iput-object v0, v12, Lcom/callapp/contacts/activity/calllog/CallLogAdapter$4;->g:Lcom/callapp/contacts/activity/calllog/CallLogAdapter;

    move-object v0, p0

    move v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move-wide/from16 v10, p11

    invoke-direct/range {v0 .. v11}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;-><init>(ILjava/util/Date;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;IILjava/lang/String;Lcom/callapp/contacts/manager/sim/SimManager$SimId;IJ)V

    return-void
.end method


# virtual methods
.method public getViewType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
