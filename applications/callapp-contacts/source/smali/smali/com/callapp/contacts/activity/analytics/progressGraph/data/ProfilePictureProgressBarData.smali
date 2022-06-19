.class public final Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;
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
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001Bq\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0016R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u001b\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;",
        "Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;",
        "contactImage",
        "",
        "contactName",
        "contactId",
        "",
        "contactPhone",
        "imageView",
        "",
        "progress",
        "",
        "maxProgress",
        "type",
        "colors",
        "",
        "showSeparator",
        "",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;FI[IZ)V",
        "getContactId",
        "()J",
        "getContactImage",
        "()Ljava/lang/String;",
        "getContactName",
        "getContactPhone",
        "getImageView",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
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

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;FI[IZ)V
    .locals 8

    move-object v7, p0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    move-object/from16 v5, p10

    move/from16 v6, p11

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;-><init>(Ljava/lang/Float;FII[IZ)V

    move-object v0, p1

    iput-object v0, v7, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;->a:Ljava/lang/String;

    move-object v0, p2

    iput-object v0, v7, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;->b:Ljava/lang/String;

    move-wide v0, p3

    iput-wide v0, v7, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;->c:J

    move-object v0, p5

    iput-object v0, v7, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;->d:Ljava/lang/String;

    move-object v0, p6

    iput-object v0, v7, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;->e:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;FI[IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p12

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

    const-wide/16 v6, 0x0

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move-object v9, v2

    goto :goto_4

    :cond_4
    move-object/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object/from16 v10, p7

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v13, v2

    goto :goto_6

    :cond_6
    move-object/from16 v13, p10

    :goto_6
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    const/4 v14, 0x0

    goto :goto_7

    :cond_7
    move/from16 v14, p11

    :goto_7
    move-object v3, p0

    move/from16 v11, p8

    move/from16 v12, p9

    .line 15
    invoke-direct/range {v3 .. v14}, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;FI[IZ)V

    return-void
.end method


# virtual methods
.method public final getContactId()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;->c:J

    return-wide v0
.end method

.method public final getContactImage()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getContactName()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getContactPhone()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;->d:Ljava/lang/String;

    return-object v0
.end method
