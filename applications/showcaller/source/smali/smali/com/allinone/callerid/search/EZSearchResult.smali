.class public Lcom/allinone/callerid/search/EZSearchResult;
.super Ljava/lang/Object;
.source "EZSearchResult.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/allinone/callerid/search/EZSearchResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Report_count:I

.field private activity_count:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private block_count:I

.field private block_times:Ljava/lang/String;

.field private comment_tags:Ljava/lang/String;

.field private complaint_times:Ljava/lang/String;

.field private count:I

.field private country:Ljava/lang/String;

.field private date:J

.field private declined_count:I

.field private email:Ljava/lang/String;

.field private format_tel_number:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private incomingtime:J

.field private isContact:Z

.field private isSpam:Z

.field private is_activity:I

.field private issetfav:Z

.field private keyword:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private longnumberdate:J

.field private max_report:I

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private old_tel_number:Ljava/lang/String;

.field private onedayincomingah:I

.field private operator:Ljava/lang/String;

.field private raw_contact_id:I

.field private soft_comments:Ljava/lang/String;

.field private status:I

.field private subtype:Ljava/lang/String;

.field private subtype_cc:Ljava/lang/String;

.field private subtype_pdt:Ljava/lang/String;

.field private t_p:Ljava/lang/String;

.field private tag_main:Ljava/lang/String;

.field private tag_sub:Ljava/lang/String;

.field private tel_number:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private type_label:Ljava/lang/String;

.field private type_label_id:Ljava/lang/String;

.field private website:Ljava/lang/String;

.field private weekoutingnum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/search/EZSearchResult$a;

    invoke-direct {v0}, Lcom/allinone/callerid/search/EZSearchResult$a;-><init>()V

    sput-object v0, Lcom/allinone/callerid/search/EZSearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->type:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->location:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->email:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->isContact:Z

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->icon:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->website:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->address:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->Report_count:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->type_label:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->type_label_id:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/allinone/callerid/search/EZSearchResult;->date:J

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->old_tel_number:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->tel_number:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->format_tel_number:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->name:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->max_report:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->status:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->isSpam:Z

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/allinone/callerid/search/EZSearchResult;->issetfav:Z

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->block_times:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->complaint_times:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->number:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->tag_main:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->tag_sub:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->soft_comments:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->operator:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->t_p:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->comment_tags:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->country:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->subtype:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->subtype_cc:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->raw_contact_id:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->count:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->subtype_pdt:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->keyword:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->is_activity:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->activity_count:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->weekoutingnum:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->block_count:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->declined_count:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->incomingtime:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->onedayincomingah:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->longnumberdate:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActivity_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->activity_count:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBlock_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->block_count:I

    return v0
.end method

.method public getBlock_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->block_times:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_tags()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->comment_tags:Ljava/lang/String;

    return-object v0
.end method

.method public getComplaint_times()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->complaint_times:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->count:I

    return v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->date:J

    return-wide v0
.end method

.method public getDeclined_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->declined_count:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat_tel_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->format_tel_number:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIncomingtime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->incomingtime:J

    return-wide v0
.end method

.method public getIs_activity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->is_activity:I

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getLongnumberdate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->longnumberdate:J

    return-wide v0
.end method

.method public getMax_report()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->max_report:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getOld_tel_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->old_tel_number:Ljava/lang/String;

    return-object v0
.end method

.method public getOnedayincomingah()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->onedayincomingah:I

    return v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getRaw_contact_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->raw_contact_id:I

    return v0
.end method

.method public getReport_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->Report_count:I

    return v0
.end method

.method public getSoft_comments()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->soft_comments:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->status:I

    return v0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtype_cc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->subtype_cc:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtype_pdt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->subtype_pdt:Ljava/lang/String;

    return-object v0
.end method

.method public getT_p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->t_p:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_main()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->tag_main:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_sub()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->tag_sub:Ljava/lang/String;

    return-object v0
.end method

.method public getTel_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->tel_number:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getType_label()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->type_label:Ljava/lang/String;

    return-object v0
.end method

.method public getType_label_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->type_label_id:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->website:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekoutingnum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->weekoutingnum:I

    return v0
.end method

.method public isContact()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->isContact:Z

    return v0
.end method

.method public isIssetfav()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->issetfav:Z

    return v0
.end method

.method public isSpam()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->isSpam:Z

    return v0
.end method

.method public issetfav()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->issetfav:Z

    return v0
.end method

.method public setActivity_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->activity_count:Ljava/lang/String;

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->address:Ljava/lang/String;

    return-void
.end method

.method public setBlock_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->block_count:I

    return-void
.end method

.method public setBlock_times(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->block_times:Ljava/lang/String;

    return-void
.end method

.method public setComment_tags(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->comment_tags:Ljava/lang/String;

    return-void
.end method

.method public setComplaint_times(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->complaint_times:Ljava/lang/String;

    return-void
.end method

.method public setContact(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->isContact:Z

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->count:I

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->country:Ljava/lang/String;

    return-void
.end method

.method public setDate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->date:J

    return-void
.end method

.method public setDeclined_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->declined_count:I

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->email:Ljava/lang/String;

    return-void
.end method

.method public setFormat_tel_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->format_tel_number:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->icon:Ljava/lang/String;

    return-void
.end method

.method public setIncomingtime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->incomingtime:J

    return-void
.end method

.method public setIsSpam(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->isSpam:Z

    return-void
.end method

.method public setIs_activity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->is_activity:I

    return-void
.end method

.method public setIssetfav(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->issetfav:Z

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->location:Ljava/lang/String;

    return-void
.end method

.method public setLongnumberdate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->longnumberdate:J

    return-void
.end method

.method public setMax_report(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->max_report:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->number:Ljava/lang/String;

    return-void
.end method

.method public setOld_tel_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->old_tel_number:Ljava/lang/String;

    return-void
.end method

.method public setOnedayincomingah(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->onedayincomingah:I

    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->operator:Ljava/lang/String;

    return-void
.end method

.method public setRaw_contact_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->raw_contact_id:I

    return-void
.end method

.method public setReport_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->Report_count:I

    return-void
.end method

.method public setSoft_comments(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->soft_comments:Ljava/lang/String;

    return-void
.end method

.method public setSpam(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->isSpam:Z

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->status:I

    return-void
.end method

.method public setSubtype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->subtype:Ljava/lang/String;

    return-void
.end method

.method public setSubtype_cc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->subtype_cc:Ljava/lang/String;

    return-void
.end method

.method public setSubtype_pdt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->subtype_pdt:Ljava/lang/String;

    return-void
.end method

.method public setT_p(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->t_p:Ljava/lang/String;

    return-void
.end method

.method public setTag_main(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->tag_main:Ljava/lang/String;

    return-void
.end method

.method public setTag_sub(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->tag_sub:Ljava/lang/String;

    return-void
.end method

.method public setTel_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->tel_number:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->type:Ljava/lang/String;

    return-void
.end method

.method public setType_label(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->type_label:Ljava/lang/String;

    return-void
.end method

.method public setType_label_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->type_label_id:Ljava/lang/String;

    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->website:Ljava/lang/String;

    return-void
.end method

.method public setWeekoutingnum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/search/EZSearchResult;->weekoutingnum:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EZSearchResult{type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/search/EZSearchResult;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", location=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->location:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", email=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->email:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isContact="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->isContact:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", icon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", website=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->website:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", address=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", Report_count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->Report_count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type_label=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->type_label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type_label_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->type_label_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", date="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->date:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", old_tel_number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->old_tel_number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tel_number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->tel_number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", format_tel_number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->format_tel_number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", max_report="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->max_report:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isSpam="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->isSpam:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", issetfav="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->issetfav:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", block_times=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->block_times:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", complaint_times=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->complaint_times:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tag_main=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->tag_main:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tag_sub=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->tag_sub:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", soft_comments=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->soft_comments:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", operator=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->operator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", t_p=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->t_p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", comment_tags=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->comment_tags:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", country=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->country:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subtype=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subtype_cc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->subtype_cc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", raw_contact_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->raw_contact_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subtype_pdt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->subtype_pdt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", keyword=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", is_activity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->is_activity:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", activity_count=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/search/EZSearchResult;->activity_count:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", weekoutingnum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/allinone/callerid/search/EZSearchResult;->weekoutingnum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", block_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/allinone/callerid/search/EZSearchResult;->block_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", declined_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/allinone/callerid/search/EZSearchResult;->declined_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", incomingtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/allinone/callerid/search/EZSearchResult;->incomingtime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", onedayincomingah="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/allinone/callerid/search/EZSearchResult;->onedayincomingah:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", longnumberdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/allinone/callerid/search/EZSearchResult;->longnumberdate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->location:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->email:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-boolean p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->isContact:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 5
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->icon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->website:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->Report_count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->type_label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->type_label_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-wide v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->old_tel_number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->tel_number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->format_tel_number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->max_report:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget-boolean p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->isSpam:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 19
    iget-boolean p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->issetfav:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 20
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->block_times:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->complaint_times:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->tag_main:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->tag_sub:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->soft_comments:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->operator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->t_p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->comment_tags:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->country:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->subtype:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->subtype_cc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->raw_contact_id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->subtype_pdt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->keyword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->is_activity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->activity_count:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->weekoutingnum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->block_count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->declined_count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-wide v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->incomingtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    iget p2, p0, Lcom/allinone/callerid/search/EZSearchResult;->onedayincomingah:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-wide v0, p0, Lcom/allinone/callerid/search/EZSearchResult;->longnumberdate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
