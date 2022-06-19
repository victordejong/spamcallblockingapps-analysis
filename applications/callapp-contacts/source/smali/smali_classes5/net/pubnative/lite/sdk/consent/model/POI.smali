.class public final Lnet/pubnative/lite/sdk/consent/model/POI;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008/\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bk\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010.\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\u0010\u0010/\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u000b\u00100\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u00101\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\u0010\u00102\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\u000b\u00103\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001dJ\u0010\u00107\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001dJ\u0086\u0001\u00108\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00c6\u0001\u00a2\u0006\u0002\u00109J\u0013\u0010:\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010<\u001a\u00020\u0003H\u00d6\u0001J\t\u0010=\u001a\u00020\u0005H\u00d6\u0001R \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\u0008\u000e\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\"\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008!\u0010\u001d\"\u0004\u0008\"\u0010\u001fR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0012\"\u0004\u0008$\u0010\u0014R\"\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008%\u0010\u0016\"\u0004\u0008&\u0010\'R\"\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008(\u0010\u0016\"\u0004\u0008)\u0010\'R \u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0012\"\u0004\u0008+\u0010\u0014R \u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u0012\"\u0004\u0008-\u0010\u0014\u00a8\u0006>"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/consent/model/POI;",
        "",
        "id",
        "",
        "name",
        "",
        "place_taxonomy2_id",
        "place_taxonomy3_id",
        "zipcode",
        "zipcode_suffix",
        "country",
        "latitude",
        "",
        "longitude",
        "is_active",
        "",
        "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;)V",
        "getCountry",
        "()Ljava/lang/String;",
        "setCountry",
        "(Ljava/lang/String;)V",
        "getId",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "()Ljava/lang/Boolean;",
        "set_active",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getLatitude",
        "()Ljava/lang/Double;",
        "setLatitude",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "getLongitude",
        "setLongitude",
        "getName",
        "setName",
        "getPlace_taxonomy2_id",
        "setPlace_taxonomy2_id",
        "(Ljava/lang/Integer;)V",
        "getPlace_taxonomy3_id",
        "setPlace_taxonomy3_id",
        "getZipcode",
        "setZipcode",
        "getZipcode_suffix",
        "setZipcode_suffix",
        "component1",
        "component10",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;)Lnet/pubnative/lite/sdk/consent/model/POI;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "hybid.sdk.voyager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lnet/pubnative/lite/sdk/consent/db/Database;
    tableName = "poi"
.end annotation


# instance fields
.field private country:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "country"
    .end annotation
.end field

.field private final id:Ljava/lang/Integer;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        autoIncrease = true
        field = "Id"
        generatedId = true
        nonNullable = true
    .end annotation
.end field

.field private is_active:Ljava/lang/Boolean;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "is_active"
    .end annotation
.end field

.field private latitude:Ljava/lang/Double;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "latitude"
    .end annotation
.end field

.field private longitude:Ljava/lang/Double;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "longitude"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "name"
    .end annotation
.end field

.field private place_taxonomy2_id:Ljava/lang/Integer;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "place_taxonomy2_id"
    .end annotation
.end field

.field private place_taxonomy3_id:Ljava/lang/Integer;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "place_taxonomy3_id"
    .end annotation
.end field

.field private zipcode:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "zipcode"
    .end annotation
.end field

.field private zipcode_suffix:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/consent/db/Schema;
        field = "zipcode_suffix"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->id:Ljava/lang/Integer;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->name:Ljava/lang/String;

    iput-object p3, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->place_taxonomy2_id:Ljava/lang/Integer;

    iput-object p4, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->place_taxonomy3_id:Ljava/lang/Integer;

    iput-object p5, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->zipcode:Ljava/lang/String;

    iput-object p6, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->zipcode_suffix:Ljava/lang/String;

    iput-object p7, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->country:Ljava/lang/String;

    iput-object p8, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->latitude:Ljava/lang/Double;

    iput-object p9, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->longitude:Ljava/lang/Double;

    iput-object p10, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->is_active:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    and-int/lit8 v0, p11, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lnet/pubnative/lite/sdk/consent/model/POI;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic copy$default(Lnet/pubnative/lite/sdk/consent/model/POI;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;ILjava/lang/Object;)Lnet/pubnative/lite/sdk/consent/model/POI;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lnet/pubnative/lite/sdk/consent/model/POI;->id:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lnet/pubnative/lite/sdk/consent/model/POI;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lnet/pubnative/lite/sdk/consent/model/POI;->place_taxonomy2_id:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lnet/pubnative/lite/sdk/consent/model/POI;->place_taxonomy3_id:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lnet/pubnative/lite/sdk/consent/model/POI;->zipcode:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lnet/pubnative/lite/sdk/consent/model/POI;->zipcode_suffix:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lnet/pubnative/lite/sdk/consent/model/POI;->country:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lnet/pubnative/lite/sdk/consent/model/POI;->latitude:Ljava/lang/Double;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lnet/pubnative/lite/sdk/consent/model/POI;->longitude:Ljava/lang/Double;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lnet/pubnative/lite/sdk/consent/model/POI;->is_active:Ljava/lang/Boolean;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p10

    :goto_9
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lnet/pubnative/lite/sdk/consent/model/POI;->copy(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;)Lnet/pubnative/lite/sdk/consent/model/POI;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component10()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->is_active:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->place_taxonomy2_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->place_taxonomy3_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->zipcode:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->zipcode_suffix:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public final component9()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;)Lnet/pubnative/lite/sdk/consent/model/POI;
    .locals 12

    new-instance v11, Lnet/pubnative/lite/sdk/consent/model/POI;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lnet/pubnative/lite/sdk/consent/model/POI;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;)V

    return-object v11
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnet/pubnative/lite/sdk/consent/model/POI;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/pubnative/lite/sdk/consent/model/POI;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->id:Ljava/lang/Integer;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/POI;->id:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->name:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/POI;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->place_taxonomy2_id:Ljava/lang/Integer;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/POI;->place_taxonomy2_id:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->place_taxonomy3_id:Ljava/lang/Integer;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/POI;->place_taxonomy3_id:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->zipcode:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/POI;->zipcode:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->zipcode_suffix:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/POI;->zipcode_suffix:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->country:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/POI;->country:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->latitude:Ljava/lang/Double;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/POI;->latitude:Ljava/lang/Double;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->longitude:Ljava/lang/Double;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/model/POI;->longitude:Ljava/lang/Double;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->is_active:Ljava/lang/Boolean;

    iget-object p1, p1, Lnet/pubnative/lite/sdk/consent/model/POI;->is_active:Ljava/lang/Boolean;

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

.method public final getCountry()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/Integer;
    .locals 1

    .line 8
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLatitude()Ljava/lang/Double;
    .locals 1

    .line 15
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public final getLongitude()Ljava/lang/Double;
    .locals 1

    .line 16
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlace_taxonomy2_id()Ljava/lang/Integer;
    .locals 1

    .line 10
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->place_taxonomy2_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPlace_taxonomy3_id()Ljava/lang/Integer;
    .locals 1

    .line 11
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->place_taxonomy3_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getZipcode()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->zipcode:Ljava/lang/String;

    return-object v0
.end method

.method public final getZipcode_suffix()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->zipcode_suffix:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->id:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->place_taxonomy2_id:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->place_taxonomy3_id:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->zipcode:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->zipcode_suffix:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->country:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->latitude:Ljava/lang/Double;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->longitude:Ljava/lang/Double;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->is_active:Ljava/lang/Boolean;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_9
    add-int/2addr v0, v1

    return v0
.end method

.method public final is_active()Ljava/lang/Boolean;
    .locals 1

    .line 17
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->is_active:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setCountry(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->country:Ljava/lang/String;

    return-void
.end method

.method public final setLatitude(Ljava/lang/Double;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->latitude:Ljava/lang/Double;

    return-void
.end method

.method public final setLongitude(Ljava/lang/Double;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->longitude:Ljava/lang/Double;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->name:Ljava/lang/String;

    return-void
.end method

.method public final setPlace_taxonomy2_id(Ljava/lang/Integer;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->place_taxonomy2_id:Ljava/lang/Integer;

    return-void
.end method

.method public final setPlace_taxonomy3_id(Ljava/lang/Integer;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->place_taxonomy3_id:Ljava/lang/Integer;

    return-void
.end method

.method public final setZipcode(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->zipcode:Ljava/lang/String;

    return-void
.end method

.method public final setZipcode_suffix(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->zipcode_suffix:Ljava/lang/String;

    return-void
.end method

.method public final set_active(Ljava/lang/Boolean;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->is_active:Ljava/lang/Boolean;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "POI(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", place_taxonomy2_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->place_taxonomy2_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", place_taxonomy3_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->place_taxonomy3_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", zipcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->zipcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", zipcode_suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->zipcode_suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->latitude:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->longitude:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", is_active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/model/POI;->is_active:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
