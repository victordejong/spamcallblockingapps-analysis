.class public final Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/CallLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MissedCallData"
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/util/Date;

.field public final c:Lcom/callapp/framework/phone/Phone;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:J

.field public final g:Ljava/lang/Long;

.field public final h:Ljava/lang/Long;


# direct methods
.method public constructor <init>(JLjava/util/Date;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;IJ)V
    .locals 11

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v9, p7

    .line 147
    invoke-direct/range {v0 .. v10}, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;-><init>(JLjava/util/Date;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;J)V

    return-void
.end method

.method public constructor <init>(JLjava/util/Date;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;J)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-wide p1, p0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->a:J

    .line 152
    iput-object p3, p0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->b:Ljava/util/Date;

    .line 153
    iput-object p4, p0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    .line 154
    iput-object p5, p0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->d:Ljava/lang/String;

    .line 155
    iput p6, p0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->e:I

    .line 156
    iput-object p7, p0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->h:Ljava/lang/Long;

    .line 157
    iput-object p8, p0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->g:Ljava/lang/Long;

    .line 158
    iput-wide p9, p0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->f:J

    return-void
.end method
