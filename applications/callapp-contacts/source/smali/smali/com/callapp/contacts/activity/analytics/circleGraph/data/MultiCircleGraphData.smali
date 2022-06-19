.class public final Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;
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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008Y\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0008\u0016\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005B\u00f5\u0001\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010 J\u000f\u0010[\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010\\\u001a\u00020\nH\u00c6\u0003J\u0010\u0010]\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010&J\u000b\u0010^\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u0010\u0010`\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003\u00a2\u0006\u0002\u0010SJ\u000b\u0010a\u001a\u0004\u0018\u00010\u0019H\u00c6\u0003J\u0010\u0010b\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u0010+J\u000b\u0010c\u001a\u0004\u0018\u00010\u001cH\u00c6\u0003J\u0010\u0010d\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010&J\u0010\u0010e\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u0010+J\u000b\u0010f\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u0010\u0010g\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u0010+J\u0010\u0010h\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010&J\u0010\u0010i\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u0010+J\u000b\u0010j\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010k\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u0010\u0010l\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010&J\u0010\u0010m\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u0010+J\u0010\u0010n\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010&J\u0080\u0002\u0010o\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\n2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u000cH\u00c6\u0001\u00a2\u0006\u0002\u0010pJ\u0013\u0010q\u001a\u00020\u00172\u0008\u0010r\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010s\u001a\u00020\nH\u00d6\u0001J\t\u0010t\u001a\u00020\u0008H\u00d6\u0001R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010)\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010.\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\"\"\u0004\u00080\u0010$R\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010)\u001a\u0004\u00081\u0010&\"\u0004\u00082\u0010(R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010.\u001a\u0004\u00083\u0010+\"\u0004\u00084\u0010-R\u001e\u0010\u001d\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010)\u001a\u0004\u00085\u0010&\"\u0004\u00086\u0010(R\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010.\u001a\u0004\u00087\u0010+\"\u0004\u00088\u0010-R \u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010\u0005R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010)\u001a\u0004\u0008<\u0010&\"\u0004\u0008=\u0010(R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010.\u001a\u0004\u0008B\u0010+\"\u0004\u0008C\u0010-R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010\"\"\u0004\u0008E\u0010$R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010\"\"\u0004\u0008G\u0010$R\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\u001e\u0010\u001f\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010.\u001a\u0004\u0008L\u0010+\"\u0004\u0008M\u0010-R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010V\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010UR\u001e\u0010\u0011\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010)\u001a\u0004\u0008W\u0010&\"\u0004\u0008X\u0010(R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010\"\"\u0004\u0008Z\u0010$\u00a8\u0006u"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
        "",
        "circleData",
        "",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;",
        "(Ljava/util/List;)V",
        "circleGraphDataList",
        "centerText",
        "",
        "centerTextColor",
        "",
        "centerTextSize",
        "",
        "bottomText",
        "subBottomText",
        "bottomTextColor",
        "bottomTextSize",
        "resourceTextToUpdate",
        "circleGraphProgressValue",
        "circleGraphImage",
        "circleGraphProfilePicture",
        "circleGraphProfileName",
        "needToShowProfile",
        "",
        "circleGraphImageColorFilter",
        "Landroid/graphics/PorterDuffColorFilter;",
        "circleGraphImageRadius",
        "events",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;",
        "circleGraphBackground",
        "circleGraphBackgroundRadius",
        "circleRadius",
        "(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/graphics/PorterDuffColorFilter;Ljava/lang/Float;Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V",
        "getBottomText",
        "()Ljava/lang/String;",
        "setBottomText",
        "(Ljava/lang/String;)V",
        "getBottomTextColor",
        "()Ljava/lang/Integer;",
        "setBottomTextColor",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getBottomTextSize",
        "()Ljava/lang/Float;",
        "setBottomTextSize",
        "(Ljava/lang/Float;)V",
        "Ljava/lang/Float;",
        "getCenterText",
        "setCenterText",
        "getCenterTextColor",
        "setCenterTextColor",
        "getCenterTextSize",
        "setCenterTextSize",
        "getCircleGraphBackground",
        "setCircleGraphBackground",
        "getCircleGraphBackgroundRadius",
        "setCircleGraphBackgroundRadius",
        "getCircleGraphDataList",
        "()Ljava/util/List;",
        "setCircleGraphDataList",
        "getCircleGraphImage",
        "setCircleGraphImage",
        "getCircleGraphImageColorFilter",
        "()Landroid/graphics/PorterDuffColorFilter;",
        "setCircleGraphImageColorFilter",
        "(Landroid/graphics/PorterDuffColorFilter;)V",
        "getCircleGraphImageRadius",
        "setCircleGraphImageRadius",
        "getCircleGraphProfileName",
        "setCircleGraphProfileName",
        "getCircleGraphProfilePicture",
        "setCircleGraphProfilePicture",
        "getCircleGraphProgressValue",
        "()I",
        "setCircleGraphProgressValue",
        "(I)V",
        "getCircleRadius",
        "setCircleRadius",
        "getEvents",
        "()Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;",
        "setEvents",
        "(Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;)V",
        "getNeedToShowProfile",
        "()Ljava/lang/Boolean;",
        "setNeedToShowProfile",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getResourceTextToUpdate",
        "setResourceTextToUpdate",
        "getSubBottomText",
        "setSubBottomText",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/graphics/PorterDuffColorFilter;Ljava/lang/Float;Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
        "equals",
        "other",
        "hashCode",
        "toString",
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
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Float;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/Float;

.field private i:Ljava/lang/Integer;

.field private j:I

.field private k:Ljava/lang/Integer;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/Boolean;

.field private o:Landroid/graphics/PorterDuffColorFilter;

.field private p:Ljava/lang/Float;

.field private q:Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;

.field private r:Ljava/lang/Integer;

.field private s:Ljava/lang/Float;

.field private t:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "circleData"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v21, 0xffffe

    const/16 v22, 0x0

    .line 29
    invoke-direct/range {v0 .. v22}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/graphics/PorterDuffColorFilter;Ljava/lang/Float;Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/graphics/PorterDuffColorFilter;Ljava/lang/Float;Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Landroid/graphics/PorterDuffColorFilter;",
            "Ljava/lang/Float;",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const-string v2, "circleGraphDataList"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->a:Ljava/util/List;

    move-object v1, p2

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->b:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->c:Ljava/lang/Integer;

    move-object v1, p4

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->d:Ljava/lang/Float;

    move-object v1, p5

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->e:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->f:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->g:Ljava/lang/Integer;

    move-object v1, p8

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->h:Ljava/lang/Float;

    move-object v1, p9

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->i:Ljava/lang/Integer;

    move v1, p10

    iput v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->j:I

    move-object v1, p11

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->k:Ljava/lang/Integer;

    move-object v1, p12

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->l:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->m:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->n:Ljava/lang/Boolean;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->o:Landroid/graphics/PorterDuffColorFilter;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->p:Ljava/lang/Float;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->q:Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->r:Ljava/lang/Integer;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->s:Ljava/lang/Float;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->t:Ljava/lang/Float;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/graphics/PorterDuffColorFilter;Ljava/lang/Float;Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    move/from16 v0, p21

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p9

    :goto_7
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move/from16 v10, p10

    :goto_8
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_9

    move-object v11, v2

    goto :goto_9

    :cond_9
    move-object/from16 v11, p11

    :goto_9
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_a

    move-object v12, v2

    goto :goto_a

    :cond_a
    move-object/from16 v12, p12

    :goto_a
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_b

    move-object v13, v2

    goto :goto_b

    :cond_b
    move-object/from16 v13, p13

    :goto_b
    and-int/lit16 v14, v0, 0x2000

    if-eqz v14, :cond_c

    .line 20
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p14

    :goto_c
    and-int/lit16 v15, v0, 0x4000

    if-eqz v15, :cond_d

    move-object v15, v2

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_e

    move-object/from16 v16, v2

    goto :goto_e

    :cond_e
    move-object/from16 v16, p16

    :goto_e
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    move-object/from16 v17, v2

    goto :goto_f

    :cond_f
    move-object/from16 v17, p17

    :goto_f
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_10

    move-object/from16 v18, v2

    goto :goto_10

    :cond_10
    move-object/from16 v18, p18

    :goto_10
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_11

    move-object/from16 v19, v2

    goto :goto_11

    :cond_11
    move-object/from16 v19, p19

    :goto_11
    const/high16 v20, 0x80000

    and-int v0, v0, v20

    if-eqz v0, :cond_12

    goto :goto_12

    :cond_12
    move-object/from16 v2, p20

    :goto_12
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v1

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    move-object/from16 p11, v9

    move/from16 p12, v10

    move-object/from16 p13, v11

    move-object/from16 p14, v12

    move-object/from16 p15, v13

    move-object/from16 p16, v14

    move-object/from16 p17, v15

    move-object/from16 p18, v16

    move-object/from16 p19, v17

    move-object/from16 p20, v18

    move-object/from16 p21, v19

    move-object/from16 p22, v2

    .line 26
    invoke-direct/range {p2 .. p22}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/graphics/PorterDuffColorFilter;Ljava/lang/Float;Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->c:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->c:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->d:Ljava/lang/Float;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->d:Ljava/lang/Float;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->g:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->g:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->h:Ljava/lang/Float;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->h:Ljava/lang/Float;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->i:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->i:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->j:I

    iget v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->j:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->k:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->k:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->l:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->m:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->n:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->n:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->o:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->o:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->p:Ljava/lang/Float;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->p:Ljava/lang/Float;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->q:Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->q:Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->r:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->r:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->s:Ljava/lang/Float;

    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->s:Ljava/lang/Float;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->t:Ljava/lang/Float;

    iget-object p1, p1, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->t:Ljava/lang/Float;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getBottomText()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getBottomTextColor()Ljava/lang/Integer;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBottomTextSize()Ljava/lang/Float;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->h:Ljava/lang/Float;

    return-object v0
.end method

.method public final getCenterText()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getCenterTextColor()Ljava/lang/Integer;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCenterTextSize()Ljava/lang/Float;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->d:Ljava/lang/Float;

    return-object v0
.end method

.method public final getCircleGraphBackground()Ljava/lang/Integer;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->r:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCircleGraphBackgroundRadius()Ljava/lang/Float;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->s:Ljava/lang/Float;

    return-object v0
.end method

.method public final getCircleGraphDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->a:Ljava/util/List;

    return-object v0
.end method

.method public final getCircleGraphImage()Ljava/lang/Integer;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->k:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCircleGraphImageColorFilter()Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->o:Landroid/graphics/PorterDuffColorFilter;

    return-object v0
.end method

.method public final getCircleGraphImageRadius()Ljava/lang/Float;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->p:Ljava/lang/Float;

    return-object v0
.end method

.method public final getCircleGraphProfileName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final getCircleGraphProfilePicture()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final getCircleGraphProgressValue()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->j:I

    return v0
.end method

.method public final getCircleRadius()Ljava/lang/Float;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->t:Ljava/lang/Float;

    return-object v0
.end method

.method public final getEvents()Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->q:Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;

    return-object v0
.end method

.method public final getNeedToShowProfile()Ljava/lang/Boolean;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->n:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getResourceTextToUpdate()Ljava/lang/Integer;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSubBottomText()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->d:Ljava/lang/Float;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->g:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->h:Ljava/lang/Float;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->i:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->j:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->k:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->l:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->m:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->n:Ljava/lang/Boolean;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->o:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->p:Ljava/lang/Float;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->q:Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->r:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_10
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->s:Ljava/lang/Float;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_11
    const/4 v2, 0x0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->t:Ljava/lang/Float;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_12
    add-int/2addr v0, v1

    return v0
.end method

.method public final setBottomText(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->e:Ljava/lang/String;

    return-void
.end method

.method public final setBottomTextColor(Ljava/lang/Integer;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->g:Ljava/lang/Integer;

    return-void
.end method

.method public final setBottomTextSize(Ljava/lang/Float;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->h:Ljava/lang/Float;

    return-void
.end method

.method public final setCenterText(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->b:Ljava/lang/String;

    return-void
.end method

.method public final setCenterTextColor(Ljava/lang/Integer;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->c:Ljava/lang/Integer;

    return-void
.end method

.method public final setCenterTextSize(Ljava/lang/Float;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->d:Ljava/lang/Float;

    return-void
.end method

.method public final setCircleGraphBackground(Ljava/lang/Integer;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->r:Ljava/lang/Integer;

    return-void
.end method

.method public final setCircleGraphBackgroundRadius(Ljava/lang/Float;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->s:Ljava/lang/Float;

    return-void
.end method

.method public final setCircleGraphImage(Ljava/lang/Integer;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->k:Ljava/lang/Integer;

    return-void
.end method

.method public final setCircleGraphImageColorFilter(Landroid/graphics/PorterDuffColorFilter;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->o:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public final setCircleGraphImageRadius(Ljava/lang/Float;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->p:Ljava/lang/Float;

    return-void
.end method

.method public final setCircleGraphProgressValue(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->j:I

    return-void
.end method

.method public final setCircleRadius(Ljava/lang/Float;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->t:Ljava/lang/Float;

    return-void
.end method

.method public final setEvents(Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->q:Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;

    return-void
.end method

.method public final setResourceTextToUpdate(Ljava/lang/Integer;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->i:Ljava/lang/Integer;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiCircleGraphData(circleGraphDataList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", centerText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", centerTextColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", centerTextSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->d:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subBottomText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomTextColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomTextSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->h:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resourceTextToUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->i:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", circleGraphProgressValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", circleGraphImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->k:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", circleGraphProfilePicture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", circleGraphProfileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", needToShowProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->n:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", circleGraphImageColorFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->o:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", circleGraphImageRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->p:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->q:Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", circleGraphBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->r:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", circleGraphBackgroundRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->s:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", circleRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->t:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
