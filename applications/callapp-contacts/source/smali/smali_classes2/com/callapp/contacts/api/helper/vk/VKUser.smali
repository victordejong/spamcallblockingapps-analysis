.class public final Lcom/callapp/contacts/api/helper/vk/VKUser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/api/helper/vk/VKUser$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u00080\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 S2\u00020\u0001:\u0001SB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u00dd\u0001\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c\u00a2\u0006\u0002\u0010\u001dJ\t\u00106\u001a\u00020\u0006H\u00c6\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0019H\u00c6\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\t\u0010@\u001a\u00020\u001cH\u00c6\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\t\u0010E\u001a\u00020\u0006H\u00c6\u0003J\t\u0010F\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u00e5\u0001\u0010I\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001cH\u00c6\u0001J\u0008\u0010J\u001a\u00020\u0006H\u0016J\u0013\u0010K\u001a\u00020\u001c2\u0008\u0010L\u001a\u0004\u0018\u00010MH\u00d6\u0003J\t\u0010N\u001a\u00020\u0006H\u00d6\u0001J\t\u0010O\u001a\u00020\u0008H\u00d6\u0001J\u0018\u0010P\u001a\u00020Q2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010R\u001a\u00020\u0006H\u0016R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001fR\u0011\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0011\u0010\u001b\u001a\u00020\u001c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u001fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u001fR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u001fR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\"R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u001fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u001fR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\u001fR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010\u001fR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010\u001fR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\u001fR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010\u001fR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\u001fR\u0011\u0010\u000c\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u0010\"\u00a8\u0006T"
    }
    d2 = {
        "Lcom/callapp/contacts/api/helper/vk/VKUser;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "id",
        "",
        "firstName",
        "",
        "lastName",
        "photo",
        "birthDate",
        "verified",
        "blacklisted",
        "thumbnail",
        "screenName",
        "mobilePhone",
        "homePhone",
        "site",
        "facebook",
        "twitter",
        "skype",
        "city",
        "Lcom/callapp/contacts/api/helper/vk/VKApiCity;",
        "country",
        "Lcom/callapp/contacts/api/helper/vk/VKApiCountry;",
        "about",
        "deactivated",
        "",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/api/helper/vk/VKApiCity;Lcom/callapp/contacts/api/helper/vk/VKApiCountry;Ljava/lang/String;Z)V",
        "getAbout",
        "()Ljava/lang/String;",
        "getBirthDate",
        "getBlacklisted",
        "()I",
        "getCity",
        "()Lcom/callapp/contacts/api/helper/vk/VKApiCity;",
        "getCountry",
        "()Lcom/callapp/contacts/api/helper/vk/VKApiCountry;",
        "getDeactivated",
        "()Z",
        "getFacebook",
        "getFirstName",
        "getHomePhone",
        "getId",
        "getLastName",
        "getMobilePhone",
        "getPhoto",
        "getScreenName",
        "getSite",
        "getSkype",
        "getThumbnail",
        "getTwitter",
        "getVerified",
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
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "flags",
        "CREATOR",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/callapp/contacts/api/helper/vk/VKUser$CREATOR;


# instance fields
.field private final about:Ljava/lang/String;

.field private final birthDate:Ljava/lang/String;

.field private final blacklisted:I

.field private final city:Lcom/callapp/contacts/api/helper/vk/VKApiCity;

.field private final country:Lcom/callapp/contacts/api/helper/vk/VKApiCountry;

.field private final deactivated:Z

.field private final facebook:Ljava/lang/String;

.field private final firstName:Ljava/lang/String;

.field private final homePhone:Ljava/lang/String;

.field private final id:I

.field private final lastName:Ljava/lang/String;

.field private final mobilePhone:Ljava/lang/String;

.field private final photo:Ljava/lang/String;

.field private final screenName:Ljava/lang/String;

.field private final site:Ljava/lang/String;

.field private final skype:Ljava/lang/String;

.field private final thumbnail:Ljava/lang/String;

.field private final twitter:Ljava/lang/String;

.field private final verified:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/api/helper/vk/VKUser$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/api/helper/vk/VKUser$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->CREATOR:Lcom/callapp/contacts/api/helper/vk/VKUser$CREATOR;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/api/helper/vk/VKApiCity;Lcom/callapp/contacts/api/helper/vk/VKApiCountry;Ljava/lang/String;Z)V
    .locals 2

    move-object v0, p0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->id:I

    move-object v1, p2

    iput-object v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->firstName:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->lastName:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->photo:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->birthDate:Ljava/lang/String;

    move v1, p6

    iput v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->verified:I

    move v1, p7

    iput v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->blacklisted:I

    move-object v1, p8

    iput-object v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->thumbnail:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->screenName:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->mobilePhone:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->homePhone:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->site:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->facebook:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->twitter:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->skype:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->city:Lcom/callapp/contacts/api/helper/vk/VKApiCity;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->country:Lcom/callapp/contacts/api/helper/vk/VKApiCountry;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->about:Ljava/lang/String;

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->deactivated:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/api/helper/vk/VKApiCity;Lcom/callapp/contacts/api/helper/vk/VKApiCountry;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 23

    move/from16 v0, p20

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    const-string v3, ""

    if-eqz v1, :cond_1

    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move-object v6, v3

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-object v7, v3

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move-object v8, v3

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    move/from16 v9, p6

    :goto_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    const/4 v10, 0x0

    goto :goto_6

    :cond_6
    move/from16 v10, p7

    :goto_6
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    move-object v11, v3

    goto :goto_7

    :cond_7
    move-object/from16 v11, p8

    :goto_7
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    move-object v12, v3

    goto :goto_8

    :cond_8
    move-object/from16 v12, p9

    :goto_8
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    move-object v13, v3

    goto :goto_9

    :cond_9
    move-object/from16 v13, p10

    :goto_9
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_a

    move-object v14, v3

    goto :goto_a

    :cond_a
    move-object/from16 v14, p11

    :goto_a
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_b

    move-object v15, v3

    goto :goto_b

    :cond_b
    move-object/from16 v15, p12

    :goto_b
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_c

    move-object/from16 v16, v3

    goto :goto_c

    :cond_c
    move-object/from16 v16, p13

    :goto_c
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_d

    move-object/from16 v17, v3

    goto :goto_d

    :cond_d
    move-object/from16 v17, p14

    :goto_d
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    move-object/from16 v18, v3

    goto :goto_e

    :cond_e
    move-object/from16 v18, p15

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move-object/from16 v21, v3

    goto :goto_f

    :cond_f
    move-object/from16 v21, p18

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    const/16 v22, 0x0

    goto :goto_10

    :cond_10
    move/from16 v22, p19

    :goto_10
    move-object/from16 v3, p0

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    .line 50
    invoke-direct/range {v3 .. v22}, Lcom/callapp/contacts/api/helper/vk/VKUser;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/api/helper/vk/VKApiCity;Lcom/callapp/contacts/api/helper/vk/VKApiCountry;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "parcel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 68
    const-class v1, Lcom/callapp/contacts/api/helper/vk/VKApiCity;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/callapp/contacts/api/helper/vk/VKApiCity;

    .line 69
    const-class v1, Lcom/callapp/contacts/api/helper/vk/VKApiCountry;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/callapp/contacts/api/helper/vk/VKApiCountry;

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v21, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v21, 0x0

    :goto_0
    move-object/from16 v2, p0

    .line 52
    invoke-direct/range {v2 .. v21}, Lcom/callapp/contacts/api/helper/vk/VKUser;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/api/helper/vk/VKApiCity;Lcom/callapp/contacts/api/helper/vk/VKApiCountry;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/callapp/contacts/api/helper/vk/VKUser;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/api/helper/vk/VKApiCity;Lcom/callapp/contacts/api/helper/vk/VKApiCountry;Ljava/lang/String;ZILjava/lang/Object;)Lcom/callapp/contacts/api/helper/vk/VKUser;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p20

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->id:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->firstName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->lastName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->photo:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->birthDate:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->verified:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->blacklisted:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->thumbnail:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->screenName:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->mobilePhone:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->homePhone:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->site:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->facebook:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->twitter:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->skype:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->city:Lcom/callapp/contacts/api/helper/vk/VKApiCity;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->country:Lcom/callapp/contacts/api/helper/vk/VKApiCountry;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->about:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v1, v1, v16

    if-eqz v1, :cond_12

    iget-boolean v1, v0, Lcom/callapp/contacts/api/helper/vk/VKUser;->deactivated:Z

    goto :goto_12

    :cond_12
    move/from16 v1, p19

    :goto_12
    move/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p18, v15

    move/from16 p19, v1

    invoke-virtual/range {p0 .. p19}, Lcom/callapp/contacts/api/helper/vk/VKUser;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/api/helper/vk/VKApiCity;Lcom/callapp/contacts/api/helper/vk/VKApiCountry;Ljava/lang/String;Z)Lcom/callapp/contacts/api/helper/vk/VKUser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->id:I

    return v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->mobilePhone:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->homePhone:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->site:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->facebook:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->twitter:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->skype:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Lcom/callapp/contacts/api/helper/vk/VKApiCity;
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->city:Lcom/callapp/contacts/api/helper/vk/VKApiCity;

    return-object v0
.end method

.method public final component17()Lcom/callapp/contacts/api/helper/vk/VKApiCountry;
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->country:Lcom/callapp/contacts/api/helper/vk/VKApiCountry;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->about:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()Z
    .locals 1

    iget-boolean v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->deactivated:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->birthDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->verified:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->blacklisted:I

    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/api/helper/vk/VKApiCity;Lcom/callapp/contacts/api/helper/vk/VKApiCountry;Ljava/lang/String;Z)Lcom/callapp/contacts/api/helper/vk/VKUser;
    .locals 21

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    new-instance v20, Lcom/callapp/contacts/api/helper/vk/VKUser;

    move-object/from16 v0, v20

    invoke-direct/range {v0 .. v19}, Lcom/callapp/contacts/api/helper/vk/VKUser;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/api/helper/vk/VKApiCity;Lcom/callapp/contacts/api/helper/vk/VKApiCountry;Ljava/lang/String;Z)V

    return-object v20
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/callapp/contacts/api/helper/vk/VKUser;

    iget v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->id:I

    iget v1, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;->id:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->firstName:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;->firstName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->lastName:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;->lastName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->photo:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;->photo:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->birthDate:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;->birthDate:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->verified:I

    iget v1, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;->verified:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->blacklisted:I

    iget v1, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;->blacklisted:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->thumbnail:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;->thumbnail:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->screenName:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;->screenName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->mobilePhone:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;->mobilePhone:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->homePhone:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;->homePhone:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->site:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;->site:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->facebook:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;->facebook:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->twitter:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;->twitter:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->skype:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;->skype:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->city:Lcom/callapp/contacts/api/helper/vk/VKApiCity;

    iget-object v1, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;->city:Lcom/callapp/contacts/api/helper/vk/VKApiCity;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->country:Lcom/callapp/contacts/api/helper/vk/VKApiCountry;

    iget-object v1, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;->country:Lcom/callapp/contacts/api/helper/vk/VKApiCountry;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->about:Ljava/lang/String;

    iget-object v1, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;->about:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->deactivated:Z

    iget-boolean p1, p1, Lcom/callapp/contacts/api/helper/vk/VKUser;->deactivated:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAbout()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->about:Ljava/lang/String;

    return-object v0
.end method

.method public final getBirthDate()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->birthDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getBlacklisted()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->blacklisted:I

    return v0
.end method

.method public final getCity()Lcom/callapp/contacts/api/helper/vk/VKApiCity;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->city:Lcom/callapp/contacts/api/helper/vk/VKApiCity;

    return-object v0
.end method

.method public final getCountry()Lcom/callapp/contacts/api/helper/vk/VKApiCountry;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->country:Lcom/callapp/contacts/api/helper/vk/VKApiCountry;

    return-object v0
.end method

.method public final getDeactivated()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->deactivated:Z

    return v0
.end method

.method public final getFacebook()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->facebook:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirstName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public final getHomePhone()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->homePhone:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->id:I

    return v0
.end method

.method public final getLastName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public final getMobilePhone()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->mobilePhone:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoto()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public final getScreenName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSite()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->site:Ljava/lang/String;

    return-object v0
.end method

.method public final getSkype()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->skype:Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbnail()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public final getTwitter()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->twitter:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerified()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->verified:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->firstName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->lastName:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->photo:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->birthDate:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->verified:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->blacklisted:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->thumbnail:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->screenName:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->mobilePhone:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->homePhone:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->site:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->facebook:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->twitter:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->skype:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->city:Lcom/callapp/contacts/api/helper/vk/VKApiCity;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    const/4 v1, 0x0

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->country:Lcom/callapp/contacts/api/helper/vk/VKApiCountry;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    const/4 v1, 0x0

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->about:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->deactivated:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    :cond_f
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VKUser(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", photo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->photo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", birthDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->birthDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", verified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->verified:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", blacklisted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->blacklisted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->thumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", screenName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mobilePhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->mobilePhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", homePhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->homePhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", site="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->site:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", facebook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->facebook:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", twitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->twitter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", skype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->skype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->city:Lcom/callapp/contacts/api/helper/vk/VKApiCity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->country:Lcom/callapp/contacts/api/helper/vk/VKApiCountry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", about="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->about:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deactivated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->deactivated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->firstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->photo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->birthDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->verified:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->blacklisted:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->thumbnail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->screenName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->mobilePhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->homePhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->site:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->facebook:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->twitter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->skype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->city:Lcom/callapp/contacts/api/helper/vk/VKApiCity;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->country:Lcom/callapp/contacts/api/helper/vk/VKApiCountry;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 91
    iget-object p2, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->about:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-boolean p2, p0, Lcom/callapp/contacts/api/helper/vk/VKUser;->deactivated:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
